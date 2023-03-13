## JIT Compilers

This section describes the results obtained from the running the JIT benchmarks. The current JIT benchmarks
focus on various optimizations that are generally available in compilers: #TODO list some optimizations 
based on the included benchmarks.

The benchmarks were run on two JIT compilers:

    1. C2 (Server) - the JIT compiler available in the release build of OpenJDK 17.0.6
    2. Graal JIT - the JIT compiler available in GraalVM Community Edition (CE) 22.3.0
    3. Graal JIT - the JIT compiler available in GraalVM Enterprise Edition (EE) 22.3.0
The difference between Graal CE and EE is that EE has additional built-in optimizations, such as 
better vectorization, intrinsics, register allocation, etc.

### Benchmarks

### CanonicalizeInductionVariableBenchmark

This transformation analyzes loops and tries to transform the induction variable and computations that
depend on it into a simpler form. In some cases, the loop can be removed and replaced with a 
constant value.

```
// Formula: reducedLength = sqrt(length) - start
final long length = 4202496L * 4202496L;
final long reducedLength = 4194304L;
final long start = 8192;

// Baseline. Empty loop. Should be easily removed by the JIT.
@Benchmark 
public long baseline() {
  long result;
  for (result = 0; result != reducedLength; ++result) {}
  return result;
}

// Canonicalize. Loop should be computed and replaced with a constant.
@Benchmark
public long canonicalize() {
  long result = 0;
  for (long l = start; l * l < reducedLength; ++l) {
    result++;
  }
  return result;
}
```

Source code:<<link to GitHub benchmark>>

<<IMG: CanonicalizeInductionVariableBenchmark.svg>>

#### Conclusions:
We can see that OpenJDK and GraalVM (CE or EE) perform the same in the `canonicalize` benchmark method.
Neither are able to remove the loop completely and return a constant.

Regarding the `baseline`, OpenJDK and GraalVM EE have identical performance. Upon checking the assembly generated, 
both JVMs are able to remove the loop completely and directly return the result.

```
  0x85320:   sub	$0x18,%rsp
  0x85327:   mov	%rbp,0x10(%rsp)
  0x8532c:   mov	$0x400000,%eax    <--- return constant; no loop is generated
  0x85331:   add	$0x10,%rsp
  0x85335:   pop	%rbp
  0x85336:   cmp	0x340(%r15),%rsp      ;   {poll_return}
  0x08533d:   ja 	0x00007f18ed085344
  0x85343:   ret

```

GraalVM CE also returns a constant but fails to remove the loop. The resulting loop is 
empty bodied. This might be a bug in the version of GraalVM CE used in this benchmark.

```
  0x6f3a0:   nopl   0x0(%rax,%rax,1)
  0x6f3a5:   mov	$0x1,%rax
  0x6f3ac:   jmp	0x6f3c3
  0x6f3b1:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x6f3bc:   data16 data16 xchg %ax,%ax
  0x6f3c0:   inc	%rax                <--- Loop Begin
  0x6f3c3:   cmp	$0x400000,%rax
  0x6f3ca:   jne	0x6f3c0             <--- Loop End
  0x6f3cc:   mov	$0x400000,%rax      <--- Move the loop computation to a reg as a constant. 
  0x6f3d3:   mov	0x348(%r15),%rcx
  0x6f3da:   test   %eax,(%rcx)              	;   {poll_return}
  0x6f3dc:   ret
```


### MethodArgsBusterBenchmark

This benchmark is used to test how the JIT compiler handles methods that take a huge number of arguments.
Normally, the JIT compiler should be able to inline the method and return a constant value. However,
if a method takes a large number of arguments, the JIT may bail out when trying to compile the method.

```
@Benchmark
public long method_args_buster() {
  return tooManyArgsMethod(1.0, 2.0, ..., 64.0);
}

long tooManyArgsMethod(double d00, double d01, ... double d63) {
  return Math.round(d00) +
    Math.round(d01) +
    ... +
    Math.round(d63);
}
```

Source code:<<link to GitHub benchmark>>

<<IMG: MethodArgsBusterBenchmark.svg>>

#### Conclusions:

We can see that both GraalVM CE and EE offer the same performance. They are able to inline the method and return a constant value. 
This is confirmed by the generated assembly.

```
  0x71ba0:   nopl   0x0(%rax,%rax,1)
  0x71ba5:   mov	$0xcc,%rax       <--- Return constant; no method call is generated
  0x71bac:   mov	0x348(%r15),%rcx	 
  0x71bb3:   test   %eax,(%rcx)              	;   {poll_return}       
  0x71bb5:   ret
```

OpenJDK fails to compile with C2 and uses a C1 compiled method instead. C1 does not inline the method
and passes the call arguments on the stack.

```
 ...
  0x855b0:   mov	%r10,0x1b0(%rsp) 
  0x855b8:   movabs $0x4019333333333333,%r10 
  0x855c2:   mov	%r10,0x1b8(%rsp)  <--- Set the call arguments using the stack
 ...
  0x855ca:   nopl   0x0(%rax,%rax,1) 
  0x855cf:   call   0x85bc0           <--- Call the target method
```

### DeadLocalAllocationStoreBenchmark

This benchmark tests how the JIT compiler handles dead local allocations. A dead local allocation is 
an allocation that is not used by subsequent instructions. The JIT compiler should be able to remove
dead allocations even across function boundaries, provided the functions are inlined.

```
Object object;

@Benchmark
public Object obj_dse() {
    object = new Object();  // dead allocation. Should be removed if allocateMethod is inlined.
    allocateMethod();
    return object;
}

private void allocate() {
    object = new Object();
}
```

Source code:<<link to GitHub benchmark>>

<<IMG: DeadLocalAllocationStoreBenchmark.svg>>

#### Conclusions:
We can see that in general GraalVM CE, EE and OpenJDK have similar performance. However, there are some outliers:
 - For `wrapper_obj_baseline` GraalVM EE performs 1.8x faster than OpenJDK and GraalVM CE. The reason behind is
that GraalVM EE groups the assembly instructions needed to perform object allocation together. This allows the compiler
to generate more compact code and make use of better instruction prefetching and pipelining.
    ```
    ...
    0x1c428:   lea    0x60(%rax),%r8     <--- Load (from the TLAB) the address where the nth object will be allocated.
    0x1c42c:   lea    0x70(%rax),%r9     ^ Same as above but for nth + 1 object.
    0x1c430:   lea    0x80(%rax),%rcx    ^ Same as above but for nth + 2 object    
    ...
    0x1c46a:   shr    $0x3,%r8           <--- Compressed oops: shift the address of the nth object by 3 bits
    0x1c46e:   mov    %r8d,0x18(%rax)    <--- Store the address of the nth object as a field in the Wrapper.
    0x1c472:   shr    $0x3,%r9           ^ Same as above but for nth + 1 object
    0x1c476:   mov    %r9d,0x1c(%rax)    ^ Same as above but for nth + 1 object
    0x1c47a:   shr    $0x3,%rcx          ^ Same as above but for nth + 2 object
    0x1c47e:   mov    %ecx,0x20(%rax)    ^ Same as above but for nth + 2 object
    ...
    0x1c4bc:   movq   $0x1,0x60(%rax)    <--- Finish object initialization for the nth object. Set the mark word bit.
    0x1c4c4:   movl   $0xd68,0x68(%rax)  <--- Set the klass word for the nth object to java/lang/Object.
    0x1c4cb:   movq   $0x1,0x70(%rax)    ^ Same as above but for nth + 1 object
    0x1c4d3:   movl   $0xd68,0x78(%rax)  ^ Same as above but for nth + 1 object
    0x1c4da:   movq   $0x1,0x80(%rax)    ^ Same as above but for nth + 2 object
    0x1c4e5:   movl   $0xd68,0x88(%rax)  ^ Same as above but for nth + 2 object
    ```
    
    On the other hand, both OpenJDK and GraalVM CE do not group together the object allocation instructions 
    and the subsequently generate a larger amount of code. This results in a performance penalty.


- For `wrapper_obj_dse_inter_procedural` GraalVM EE performs around 3.4x faster than OpenJDK and GraalVM CE. The reason
behind is that GraalVM EE is able to inline the `Wrapper` constructor, remove dead allocations and perform the same 
set of optimizations as in the `wrapper_obj_baseline` case. OpenJDK and GraalVM CE do not inline the `Wrapper` 
constructor and therefore are not able to remove the dead allocations.

### StackSpillingBenchmark

This benchmark measures the cost of stack spilling. Stack spilling occurs when the register allocator
runs out of registers and starts using the stack to store intermediate values. Load and storing from/to
memory is much slower than using CPU registers.

The benchmark methods contain a series of loads followed by a series of stores. Normally, the JIT compiler
is expected to group together loads and stores, resulting in less register pressure. In order to force all 
the reads to be grouped before all the writes, the `load_store_spill*` benchmarks contain a volatile read
after the loads and before the stores.

Additionally, the register allocator in C2 is able to [use FPU registers](https://shipilev.net/jvm/anatomy-quarks/20-fpu-spills/) 
to store intermediate values before starting to spill on the stack. GraalVM CE and EE do not have this optimization. 

Source code: <<link to GitHub benchmark>>

<<IMG: StackSpillingBenchmark.svg>>

#### Conclusions:
 
The assembly generated for the `load_store_no_spill` benchmark has the following pattern where the 
loads and stores are grouped together and the stack is not used:
```
...
0x8e4f1:   mov    0x64(%rbx),%r10d  --> load from field loadXX
0x8e4f5:   mov    %r10d,0xc8(%rbx)  --> store to field storeXX
...
```

For the `load_store_spill*` benchmarks, the stack is used to spill intermediate values. The assembly
generated is similar to the following:
```
0x8eb69:   mov    0x40(%rbx),%r10d  --> load field loadXX
0x8eb6d:   mov    %r10d,0x3c(%rsp)  --> store field on the stack
...
...
0x8ebe0:   mov    0x3c(%rsp),%r10d  --> load value from stack
0x8ebe5:   mov    %r10d,0xa4(%rbx)  --> store to field storeXX
```

### MegamorphicMethodCallBenchmark

This benchmark tests the performance of virtual calls with a different number of targets. The JVM is expected to 
optimize virtual calls that have up to a certain number of targets. It also tests the performance of manually splitting
the call site into multiple monomorphic call sites.

In general, the runtime collects receiver-type statistics per call site during the execution of profiled code 
(in the interpreter or the C1 JIT). These statistics are further used in the optimizing compiler (e.g., C2 JIT).
If, for example, one call site `class.method()` has received only `Type1` even though there exists a `Type2` in the 
type hierarchy, the compiler can add a guard that checks the receiver type is `Type1` and then call the `Type1` method
directly. This is called a `monomorphic call site`:

```
// High-level pseudo-code of the monomorphic call site optimization
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else {
    // slow path. Will deoptimize and rerun in the interpreter
    deoptimize();
}
```

A `bimorphic call site` is a call site that can check for two receivers types:
```
// High-level pseudo-code of the bimorphic call site optimization
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else if (receiver instanceof Type2) {
    // fast path
    Type2.method();
} else {
    // slow path. Will deoptimize and rerun in the interpreter. Next time it JITs, it will use a virtual call.
    deoptimize();
}
```
Once a call site becomes static, the compiler will be able to inline the target method and perform further 
optimizations. OpenJDK (using the C2 compiler) can devirtualize up to two different targets of a virtual call, for more targets a vtable/itable call is used.

Source code: <<link to GitHub benchmark>>

The `virtual_call` benchmark measures the performance of virtual calls with a different number of targets. The
`devirtualize_to_monomorphic` benchmark tries to manually devirtualize call sites to be monomorphic.

<<IMG: MegamorphicMethodCallBenchmark.svg>>

#### Conclusions:

Looking at the figure above and the assembly generated for the `virtual_call` benchmark we conclude the following:
- OpenJDK is able to devirtualize (and inline) call sites that use up to two different targets. For more targets,
it will always use a virtual call.
- GraalVM CE is able to devirtualize (and inline) call sites regardless of the number of targets (up to eight 
in the benchmark). <br> **Note**: When generating the assembly, we forced the compiler not to inline the benchmark 
method into the JMH stub. In this case, the `virtual_call[MEGAMORPHIC_8]` performed similar to the other benchmarks. 
Therefore, the number of targets is limited by other factors, such as inlining.
- GraalVM EE is able to devirtualize (and inline) up to three different targets per call site. If the number of targets
is higher, then it will use a virtual call for the remaining targets: <br>
```
// High level pseudo-code of the GraalVM EE devirtualization of call sites with more than three targets.
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else if (receiver instanceof Type2) {
    // fast path
    Type2.method();
} else if (receiver instanceof Type3) {
    // fast path
    Type3.method();
} else {
    // slow path. Will not deoptimize, but rather use a virtual call for the remaining targets.
    receiver.method();
}
```

Next, we look at the `devirtualize_to_monomorphic` benchmark. Overall, all JVMs perform the same and are able to 
devirtualize and inline at the call sites. The only exception in regard to the performance of the benchmark is
with OpenJDK in `devirtualize_to_monomorphic[MEGAMORPHIC_8]`. In this case, the C2 compiler switches from 
using a `lookupswitch` to a `tableswitch` due to the large number of cases in the switch statement, which
also results in a performance degradation. However, it remains faster than the `virtual_call[MEGAMORPHIC_8]` benchmark.

### MegamorphicInterfaceCallBenchmark

This benchmark tests the performance of interface calls with a different number of targets. The JVM is expected to
optimize interface calls similarly to how it optimizes virtual calls. It also tests the performance of manually
splitting the call site into multiple monomorphic call sites.

The class hierarchy used in the benchmark is the following:
```
private static class C{1,..,6} implements I {}
interface I extends I5 {
    private void baz() { foot_5(); }
    default void foo() { baz(); }
}

interface I5 extends I4 {
    private void baz_5() { foot_4(); }
    default void foo_5() { baz_5(); }
}
...
interface I1 {
    static Wrapper wrapper = new Wrapper();
    default void baz_1() { wrapper.x++; }
    private void foo_1() { baz_1(); }
```

Source code: <<link to GitHub benchmark>>

The `virtual_calls_chain` benchmark measures the performance of interface calls with a different number of targets. 
The `devirtualize_to_monomorphic` benchmark tries to manually devirtualize call sites to be monomorphic.

<<IMG: MegamorphicInterfaceCallBenchmark.svg>>

#### Conclusions:

Looking at the figure above and the assembly generated for the `virtual_calls_chain` benchmark we conclude the following:
- OpenJDK is able to devirtualize (and inline) through the class hierarchy call sites that use up to two different targets.
In these cases, it also does loop unrolling by a factor of four. <br>
Starting from three targets or more that are evenly distributed in the benchmark, it always uses a series of interface calls
to reach the target method. <br> If a dominant target is present (`virtual_calls_chain[MEGAMORPHIC_6_DOMINANT_TARGET]`),
then C2 will add a guard, devirtualize and inline the call to the dominant target:
```
// High-level pseudo-code of the optmization for a dominant target
if (receiver instanceof DominantTarget) {
    // fast path. 
    DominantTarget.method(); // inlined
} else {
    // slow path. Use an interface call to reach the target method.
    receiver.method();
}
```
- GraalVM CE is able to devirtualize (and inline) through the class hierarchy regardless of the number of call sites. It does
not perform loop unrolling but uses a series of compare and jumps to check if the receiver is an instance of expected target types. 
Since in our benchmark all interface calls finally resolve to the same method, GraalVM CE is able to inline only once the
target method.
- GraalVM EE is able to devirtualize (and inline) up to three different targets per call site. If the number of targets
is higher, then it uses an interface call for the remaining targets (similar to how it does for virtual calls).

Next, we look at the `devirtualize_to_monomorphic` benchmark. When there is a uniform distribution, both 
GraalVM CE and OpenJDK devirtualize and inline the call sites. 

For GraalVM EE, if more than four targets are present, it is able to fully devirtualize and inline only for some call sites 
in the benchmark. For the remaining call sites, it manages to devirtualize only up to a certain depth in the class hierarchy
In the example below it is shown how GraalVM EE generates a virtual call to `foo_4`: 
```
0x91157:   movabs $0x26408,%rdi     ;   {metadata('com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark$C6')}
0x91161:   cmp    %rcx,%rdi
0x91164:   jne    0x915b7
0x9116a:   mov    0x18(%rsp),%r10
0x9116f:   call   0x8f140           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=NarrowOop }
                                    ;*invokeinterface foo_4 {reexecute=0 rethrow=0 return_oop=0}
                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 237)
                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 241)
                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 247)
                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 251)
                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 165)
                                    ;   {optimized virtual_call}
                                    ^^ Directly calls foo_4
```

In the case of a dominant target (`devirtualize_to_monomorphic[MEGAMORPHIC_6_DOMINANT_TARGET]`), OpenJDK and GraalVM CE are able to devirtualize and inline the call sites. 
GraalVM EE is able to devirtualize only up to a certain depth in the class hierarchy. 
