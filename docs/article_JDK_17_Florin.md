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

```aidl
for (i = start; i*i < MAX; ++i) {
}

// is equivalent to:

for (i = 0; i != sqrt(MAX) - start; ++i) {
}
```

Source code:<<link to GitHub benchmark>>

<<IMG: CanonicalizeInductionVariableBenchmark.svg>>

#### Conclusions:
We can see that OpenJDK and GraalVM (CE or EE) perform the same in the `canonicalize` benchmark method.
Neither are able to remove the loop completely and return a constant.

Regarding the `baseline`, OpenJDK and GraalVM EE have identical performance. Upon checking the assembly generated, 
both JVMs are able to remove the loop completely and directly return the result.

```aidl
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

```aidl
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

```aidl
benchMethod() {
  return method(1.0, 2.0, ... 64.0);
}

method(double d00, double d01, ... double d63) {
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

```aidl
  0x71ba0:   nopl   0x0(%rax,%rax,1)
  0x71ba5:   mov	$0xcc,%rax       <--- Return constant; no method call is generated
  0x71bac:   mov	0x348(%r15),%rcx	 
  0x71bb3:   test   %eax,(%rcx)              	;   {poll_return}       
  0x71bb5:   ret
```

OpenJDK fails to compile with C2 and uses a C1 compiled method instead. C1 does not inline the method
and passes the call arguments on the stack.

```aidl
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

```aidl
field = new Object();

benchMethod() {
    field = new Object();  // dead allocation. Should be removed if allocateMethod() is inlined.
    allocateMethod();
    return field;
}

allocateMethod() {
    field = new Object();
}
```

Source code:<<link to GitHub benchmark>>

<<IMG: DeadLocalAllocationStoreBenchmark.svg>>

#### Conclusions:
We can see that in general GraalVM CE, EE and OpenJDK have similar performance. However, there are some outliers:
 - For `wrapper_obj_baseline` GraalVM EE performs 1.8x faster than OpenJDK and GraalVM CE.
 - For `wrapper_obj_dse_inter_procedural` GraalVM EE performs around 3.4x faster than OpenJDK and GraalVM CE.

By checking the assembly generated for the benchmark methods between the three JVMs we can see that the reason
GraalVM EE performs better is that it is able to inline the `Wrapper` constructor and remove the dead allocations.

### StackSpillingBenchmark

This benchmark measures the cost of stack spilling. Stack spilling occurs when the register allocator
runs out of registers and starts using the stack to store intermediate values. Load and storing from/to
memory is much slower than using CPU registers.

The benchmark methods contain a series of loads followed by a series of stores. Normally, the JIT compiler
is expected to group together loads and stores, resulting in less register pressure. In order to force all 
the reads to be grouped before all the writes, the `load_store_spill*` benchmarks contain a volatile read
after the loads and before the stores.

Additionally, the register allocator in C2 is able to [use FPU registers](https://shipilev.net/jvm/anatomy-quarks/20-fpu-spills/) 
to store intermediate values before spilling on the stack. GraalVM CE and EE do not have this optimization. 

Source code: <<link to GitHub benchmark>>

<<IMG: StackSpillingBenchmark.svg>>

#### Conclusions:
 
The assembly generated for the `load_store_no_spill` benchmark has the following pattern where the 
loads and stores are grouped together and the stack is not used:
```aidl
...
0x8e4f1:   mov    0x64(%rbx),%r10d  --> load from field loadXX
0x8e4f5:   mov    %r10d,0xc8(%rbx)  --> store to field storeXX
...
```

For the `load_store_spill*` benchmarks, the stack is used to spill intermediate values. The assembly
generated is similar to the following:
```aidl
0x8eb69:   mov    0x40(%rbx),%r10d  --> load field loadXX
0x8eb6d:   mov    %r10d,0x3c(%rsp)  --> store field on the stack
...
...
0x8ebe0:   mov    0x3c(%rsp),%r10d  --> load value from stack
0x8ebe5:   mov    %r10d,0xa4(%rbx)  --> store to field storeXX
```