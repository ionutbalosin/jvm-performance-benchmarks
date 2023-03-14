# Authors

Ionut Balosin
- Website: www.ionutbalosin.com
- Twitter: @ionutbalosin
- Mastodon: ionutbalosin@mastodon.social

Florin Blanaru
- Twitter: @gigiblender
- Mastodon: gigiblender@mastodon.online

# Content

- [Context](#context)
- [SetUp](#setup)
- [JIT Compilers](#jit-compilers)
  - [Benchmarks](#jit-benchmarks)
  - [Geometric Mean](#jit-geometric-mean)
- [Garbage Collectors](#garbage-collectors)
  - [Overview](#gc-overview)
  - [Barriers](#gc-barriers)
  - [Benchmarks](#gc-benchmarks)
  - [Geometric Mean](#gc-geometric-mean)
- [Macro](#macro)
  - [Benchmarks](#macro-benchmarks)
  - [Geometric Mean](#macro-geometric-mean)
- [Final Thoughts](#final-thoughts)
- [References](#references)


# Context

The current article describes a series of Java Virtual Machine (JVM) benchmarks targeting for both the Just-In-Time (JIT) Compiler and the Garbage Collectors (GC) to assess:

- different JIT Compiler optimizations by following specific code patterns. At a first glance, even though some of these patterns might rarely appear directly in the user programs, they could occur after a few optimizations (e.g., inlining of high-level operations)
- different Garbage Collectors' efficiency in both allocating but also reclaiming objects

In addition, there is a small set of benchmarks (i.e., a macro category) covering larger programs (e.g., Fibonacci, Huffman coding/encoding, factorial, palindrome, etc.) using some high-level Java APIs (e.g., streams, lambdas, fork-join, etc.). Nevertheless, this is only complementary but not the main purpose of this work.

For a few benchmarks (i.e., the most representative, in our opinion) we provide an in-depth analysis (i.e., optimized generated assembly code, flame graphs, etc.), as well as the geometric mean.

The list of included GCs is:
- Serial GC
- Parallel GC
- Garbage First (G1) GC (default)
- Shenandoah GC
- ZGC
- Epsilon GC (experimental, used only in a small set of the benchmarks as a baseline)

The list of included JIT compilers is:
- C2 (Server) JIT
- Graal JIT

The list of included JMVs is:
- OpenJDK 17.0.6
- GraalVM Community Edition (CE) 22.3.0
- GraalVM Enterprise Edition (EE) 22.3.0

The list of included architectures is:
- x86_64
- arm64

> The reference architecture (and, subsequently, the benchmarks analysis) for this article is x86_64, and arm64 is only included in the geometric mean score section for comparison.

This article is based on the [jvm-performance-benchmarks](https://github.com/ionutbalosin/jvm-performance-benchmarks) repository. For further details (e.g., benchmarks source code, results, etc.,) please check out the sources.

# SetUp

- Java Development Kit (JDK) 17
- Java Microbenchmark Harness (JMH) v1.36
- each benchmark uses 5x10s warm-up iterations, 5x10s measurement iterations, and 5 JVM forks, both single-threaded but also (in a few cases) multi-threaded workloads
- the benchmarks were run on the below machines:
  1. MacBook Pro, M1 Chip 10-Core, 16-Core Neutral Engine, 32GB RAM, iOS ???
  2. **TODO: Florin - add config**
- to eliminate potential sources of performance non-determinism, the below OS tunings were performed on the Intel machine: 
  1. disabled the turbo-boost mode
  2. set CPU governor to _performance_
  3. disabled CPU hyper-threading
  4. **TODO: Florin - sth else?**

# JIT Compilers

This section describes the results obtained from running the JIT benchmarks. The current benchmarks focus on various optimizations that are generally available in compilers, such as inlining, loop unrolling, escape analysis, devirtualization, null-check, and range-check elimination, dead code elimination, etc.

The list of JIT compilers (including the JVM and the architecture) is:

No. | JIT       | JVM                | Arcitecture 
----|-----------|--------------------|----------------
1   | C2 JIT    | OpenJDK 17.0.6     | x86_64, arm64         
2   | Graal JIT | GraalVM CE 22.3.0  | x86_64, arm64      
3   | Graal JIT | GraalVM EE 22.3.0  | x86_64, arm64      

The difference between GraalVM CE and EE is that EE has additional built-in optimizations, such as
better vectorization, intrinsics, register allocation, etc.

## JIT Benchmarks

## CanonicalizeInductionVariableBenchmark

This transformation analyzes loops and tries to transform the induction variable and computations that
depend on it into a simpler form. In some cases, the loop can be removed and replaced with a
constant value.

```
  // Baseline. Empty loop, should be easily removed by the JIT
  @Benchmark
  public long baseline() {
    long result;
    for (result = 0; result != reducedLength; ++result) {}
    return result;
  }

  // Canonicalize. Loop should be computed and replaced with a constant
  @Benchmark
  public long canonicalize() {
    long result = 0;
    for (long l = start; l * l < reducedLength; ++l) {
      result++;
    }
    return result;
  }
```

Source code: [CanonicalizeInductionVariableBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/CanonicalizeInductionVariableBenchmark.java) 

<img src="https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/CanonicalizeInductionVariableBenchmark.svg">

### Conclusions:
We can see that OpenJDK and GraalVM (CE or EE) perform the same in the `canonicalize` benchmark method.
Neither are able to remove the loop completely and return a constant.

Regarding the `baseline`, OpenJDK and GraalVM EE have identical performance. Upon checking the assembly generated,
both JVMs are able to remove the loop completely and directly return the result.

```
  0x85320:   sub	$0x18,%rsp
  0x85327:   mov	%rbp,0x10(%rsp)
  0x8532c:   mov	$0x400000,%eax        <--- return constant; no loop is generated
  0x85331:   add	$0x10,%rsp
  0x85335:   pop	%rbp
  0x85336:   cmp	0x340(%r15),%rsp      ;{poll_return}
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
  0x6f3bc:   data16 data16 xchg %ax,%ax <--- nops
  0x6f3c0:   inc	%rax                <--- loop begin
  0x6f3c3:   cmp	$0x400000,%rax
  0x6f3ca:   jne	0x6f3c0             <--- loop end
  0x6f3cc:   mov	$0x400000,%rax      <--- move the loop computation to a reg as a constant. 
  0x6f3d3:   mov	0x348(%r15),%rcx
  0x6f3da:   test   %eax,(%rcx)         ;{poll_return}
  0x6f3dc:   ret
```

## DeadLocalAllocationStoreBenchmark

This benchmark tests how the JIT compiler handles dead local allocations. A dead local allocation is
an allocation that is not used by subsequent instructions. The JIT compiler should be able to remove
dead allocations even across function boundaries, provided the functions are inlined.

```
  @Benchmark
  public Wrapper wrapper_obj_dse_inter_procedural() {
    Object obj1 = new Object();
    ...
    Object obj8 = new Object();
    // inlining of the default constructor should enable the DSE
    // see the Wrapper() constructor
    return new Wrapper(obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }  

  @Benchmark
  public Wrapper wrapper_obj_baseline() {
    return new Wrapper();
  }  
```

Source code: [DeadLocalAllocationStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark.java)

<<IMG: DeadLocalAllocationStoreBenchmark.svg>>

### Conclusions:
We can see that in general GraalVM CE, EE and OpenJDK have similar performance. However, there are some outliers:
- For `wrapper_obj_baseline` GraalVM EE performs 1.8x faster than OpenJDK and GraalVM CE. The reason behind is
  that GraalVM EE groups the assembly instructions needed to perform object allocation together. This allows the compiler
  to generate more compact code and make use of better instruction prefetching and pipelining.
   ```
   ...
   0x1c428:   lea    0x60(%rax),%r8     <--- load (from the TLAB) the address where the nth object will be allocated.
   0x1c42c:   lea    0x70(%rax),%r9     ^ same as above but for nth + 1 object.
   0x1c430:   lea    0x80(%rax),%rcx    ^ same as above but for nth + 2 object    
   ...
   0x1c46a:   shr    $0x3,%r8           <--- compressed oops: shift the address of the nth object by 3 bits
   0x1c46e:   mov    %r8d,0x18(%rax)    <--- store the address of the nth object as a field in the Wrapper.
   0x1c472:   shr    $0x3,%r9           ^ same as above but for nth + 1 object
   0x1c476:   mov    %r9d,0x1c(%rax)    ^ same as above but for nth + 1 object
   0x1c47a:   shr    $0x3,%rcx          ^ same as above but for nth + 2 object
   0x1c47e:   mov    %ecx,0x20(%rax)    ^ same as above but for nth + 2 object
   ...
   0x1c4bc:   movq   $0x1,0x60(%rax)    <--- finish object initialization for the nth object. Set the mark word bit.
   0x1c4c4:   movl   $0xd68,0x68(%rax)  <--- set the klass word for the nth object to java/lang/Object.
   0x1c4cb:   movq   $0x1,0x70(%rax)    ^ same as above but for nth + 1 object
   0x1c4d3:   movl   $0xd68,0x78(%rax)  ^ same as above but for nth + 1 object
   0x1c4da:   movq   $0x1,0x80(%rax)    ^ same as above but for nth + 2 object
   0x1c4e5:   movl   $0xd68,0x88(%rax)  ^ same as above but for nth + 2 object
   ```

  On the other hand, both OpenJDK and GraalVM CE do not group the object allocation instructions, and they subsequently generate a larger amount of code. This results in a performance penalty.

- For `wrapper_obj_dse_inter_procedural` GraalVM EE performs around 3.4x faster than OpenJDK and GraalVM CE. The reason
  behind is that GraalVM EE is able to inline the `Wrapper` constructor, remove dead allocations and perform the same
  set of optimizations as in the `wrapper_obj_baseline` case. OpenJDK and GraalVM CE do not inline the `Wrapper`
  constructor and therefore are not able to remove the dead allocations.

## DeadMethodCallStoreBenchmark

The benchmark assesses how the compiler could remove code (i.e., a dead method call store) that does not affect the program results.

```
  @Benchmark
  public double method_call_dse() {
    double pi;
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    return circleRadius * circleRadius * pi;
  }
  
  @Benchmark
  public double method_call_baseline() {
    double pi = computePi();
    return circleRadius * circleRadius * pi;
  }  
```

Source code: [DeadMethodCallStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadMethodCallStoreBenchmark.java)

<<IMG: DeadMethodCallStoreBenchmark.svg>>

### Conclusions:

Looking at the assembly generated by the `method_call_dse` we can summarize:

- C2 JIT does inlining of all the methods, nevertheless, it cannot completly remove the loops pertaining to the dead store method calls.

  For example, the below snapshot appears 4 times in the caller method, which correspond to the number of dead loops after inlining of the method `computePi()`:
```
  0x7fffe0ef1793:   add    $0x20,%r10d        <--- loop begin
  0x7fffe0ef17a0:   cmp    $0x3e2,%r10d       <--- compare against 994
  0x7fffe0ef17a7:   jl     0x7fffe0ef1793     <--- loop end
```
Then, the main loop (that one that matters for the result) uses vectorized instructions and is unrolled by a factor of 16:

```
  0x7fffe0ef1800:   vaddsd %xmm1,%xmm0,%xmm0     <--- loop begin
  0x7fffe0ef1804:   mov    %r10d,%ecx 
  ...
  0x7fffe0ef192f:   vsubsd %xmm3,%xmm0,%xmm0
  0x7fffe0ef1933:   mov    %ecx,%r10d
  0x7fffe0ef1936:   add    $0x20,%r10d           <--- loop counter
  0x7fffe0ef193a:   vcvtsi2sd %r10d,%xmm1,%xmm1
  0x7fffe0ef193f:   vdivsd %xmm1,%xmm2,%xmm1
  0x7fffe0ef1943:   cmp    $0x3e2,%r10d
  0x7fffe0ef194a:   jl     0x7fffe0ef1800        <--- loop end
```

- GraalVM CE JIT has a similar behaviour as C2 JIT, nevertheless, there is one important difference: it does not do any loop unrolling, hence it is the slowest.

```
                                              <--- loop begin
  0x7fffdef45310:   cmp    $0x3e8,%r10d       <--- compare against 1000 (i.e., the loop limit)
  0x7fffdef45317:   jge    0x7fffdef4534c     ;*if_icmpge
  ...
  0x7fffdef4532d:   lea    0x2(%r10),%r10d    <--- inc by loop stride
  ...
  0x7fffdef4534a:   jmp    0x7fffdef45310     <--- loop end
```

- GraalVM EE JIT completely removes the dead code and the main loop is unrolled by a factor of 8 (using vectorized instructions), similar to C2 JIT.

Looking at the assembly generated by the `method_call_baseline()` we can summarize:

- GraalVM EE JIT triggers the loop unrolling for the main loop, then the remaining elements are handled by two post loops (i.e., standard loop optimizations)

- C2 JIT handles it in a similar manner as GraalVM EE JIT (in terms of loop optimizations), nevertheless the generated assembly instructions are less optimal

- GraalVM CE JIT does not trigger any loop unrolling, therefore it is the slowest

## EnumValueLookupBenchmark

This benchmark iterates through the enum values list and returns the enum constant matching a lookup value. It emphasizes the cost of calling the values() method on an eum versus caching the values and using the cached version.

This pattern is often seen in real business applications where, for example, the microservices RESTful APIs defined in OpenAPI/Swagger use enums.
The input request parameters are deserialized and wrapped to enum values.

Source code: [EnumValueLookupBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark.java)

<<IMG: EnumValueLookupBenchmark.svg>>

### Conclusions:

The `enum_values` benchmark is impacted by the object allocations triggered by the `enum::values()` call that is an invoke virtual to `clone()` method.

Caching these values and using the cached structure instead of calling `enum::values()` reduces the number of allocations.

## IfConditionalBranchBenchmark

Tests the conditional branch optimizations within a loop using:
- a predictable branch pattern
- an unpredictable branch pattern
- no branch at all

```
  @Benchmark
  public int no_if_branch() {
    int sum = 0;

    for (final int value : array) {
      sum += value;
    }

    return sum;
  }
  
  @Benchmark
  public int unpredictable_if_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value <= (THRESHOLD / 2)) {
        sum += value;
      }
    }

    return sum;
  }  
```

Source code: [IfConditionalBranchBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/IfConditionalBranchBenchmark.java)

<<IMG: IfConditionalBranchBenchmark.svg>>

### Conclusions:

C2 JIT

- for the simplest case (e.g., `no_if_branch` benchmark) the C2 JIT unrolls the loop by a factor of 8 and sums the elements array
```
  0x7fa610ef2140:   add    0x10(%r9,%rcx,4),%eax  <--- loop begin
  0x7fa610ef2145:   add    0x14(%r9,%rcx,4),%eax
  0x7fa610ef214a:   add    0x18(%r9,%rcx,4),%eax
  0x7fa610ef214f:   add    0x1c(%r9,%rcx,4),%eax
  0x7fa610ef2154:   add    0x20(%r9,%rcx,4),%eax
  0x7fa610ef2159:   add    0x24(%r9,%rcx,4),%eax
  0x7fa610ef215e:   add    0x28(%r9,%rcx,4),%eax
  0x7fa610ef2163:   add    0x2c(%r9,%rcx,4),%eax
  0x7fa610ef2168:   add    $0x8,%ecx              <--- inc by unrolling factor
  0x7fa610ef216b:   cmp    %r11d,%ecx
  0x7fa610ef216e:   jl     0x7fa610ef2140         <--- loop end
```

- for the `predictable_if_branch` and `unpredictable_if_branch` benchmarks, the C2 JIT unrolls the loop by a factor of 8 and sums the elements array, nevertheless, to handle the if comparisons, conditional instructions are emitted in the assembly code

This is an example using the conditional move instruction (e.g., _cmovle_) from the `unpredictable_if_branch` that adds one element array to the sum

```
  0x7f5ebcef3471:   lea    (%r12,%rbp,8),%r14       <--- getfield array
  ...
  0x7f927cf64d60:   mov    0x10(%r14,%rbp,4),%r10d  <--- loop begin
  0x7f927cf64d65:   mov    0x14(%r14,%rbp,4),%r8d
  0x7f927cf64d6a:   mov    0x18(%r14,%rbp,4),%r11d
  0x7f927cf64d6f:   mov    0x1c(%r14,%rbp,4),%ecx
  0x7f927cf64d74:   mov    0x20(%r14,%rbp,4),%r9d
  0x7f927cf64d79:   mov    0x24(%r14,%rbp,4),%edi
  0x7f927cf64d7e:   mov    0x28(%r14,%rbp,4),%ebx
  0x7f927cf64d83:   mov    0x2c(%r14,%rbp,4),%esi
  0x7f927cf64d88:   mov    %eax,%edx
  0x7f927cf64d8a:   add    %r10d,%edx
  0x7f927cf64d8d:   cmp    $0x800,%r10d            <--- compare against 2048 (i.e., THRESHOLD / 2)
  0x7f927cf64d94:   cmovle %edx,%eax
  ...
  0x7f927cf64e08:   add    $0x8,%ebp               <--- inc by unrolling factor
  0x7f927cf64e0b:   cmp    %r13d,%ebp
  0x7f927cf64e0e:   jl     0x7f927cf64d60          <--- loop end
```

GraalVM EE JIT
- in all the cases GraalVM EE JIT does to sum of elements array using vectorized instructions. This is the explanation why it is the fastest

This is an example using vectorized instructions from the `unpredictable_if_branch`:

```
  0x7f860699030b:   mov    $0x0,%r8
  ...
  0x7f8606990320:   vmovdqu (%rax,%r8,4),%ymm2        <--- loop begin
  0x7f8606990326:   vpaddd %ymm2,%ymm0,%ymm3
  0x7f860699032a:   vpcmpgtd %ymm2,%ymm1,%ymm2
  0x7f860699032e:   vpblendvb %ymm2,%ymm3,%ymm0,%ymm0
  0x7f8606990334:   lea    0x8(%r8),%r8
  0x7f8606990338:   cmp    %r11,%r8                   <--- compare against array length
  0x7f860699033b:   jle    0x7f8606990320             <--- loop end
```

GraalVM CE JIT
- in case of `no_if_branch` it unrolls the loop by a factor of 16, but the emitted instruction code is less optimal than in the case of C2 JIT
- in case of `predictable_if_branch` and `unpredictable_if_branch` it does not unroll the loop, this is why it is also the slowest

## LockCoarseningBenchmark

Test how the compiler can effectively coarsen/merge several adjacent synchronized blocks into one synchronized block, thus reducing the locking overhead. This optimization can be applied if the same lock object is used by all methods. Compilers can help to coarsen/merge the locks, but that is not guaranteed!

OpenJDK specifics:
- prior JDK 15: with biased locking enabled, compare-and-swap atomic operation are basically no-ops when acquiring a monitor, in case of uncontended locking. It assumes that a monitor remains owned by a given thread until a different thread tries to acquire it
- starting JDK 15: without biased locking (or some improved version of non-biased locking), in case of uncontended locking, certain synchronized scenarios might become slightly slower (i.e., since synchronized calls come now with atomic compare-and-swap on lock)

*Note:* ZGC and Shenandoah GC have biased locking disabled to prevent safepoint operations (e.g., biased locking revocation), avoiding stop-the-world pauses.

```
  @Benchmark
  public int nested_synchronized() {
  int result = defaultValue << 1;

      synchronized (this) {
        result += incrementValue;
        synchronized (this) {
          result += incrementValue;
          ...
        }
      }

      return result;
}
```

Source code: [LockCoarseningBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockCoarseningBenchmark.java)

<<IMG: LockCoarseningBenchmark_withBiasedLocking.svg>>

### Conclusions:

- Overall GraalVM EE JIT does a better job then GraalVM CE JIT and C2 JIT

What is of a particular interest is the `nested_synchronized` benchmark that is almost 3 orders of magnitude slower than GraalVM CE/EE.

The reason for that is the fact the OpenJDK fails to reduce the deoptimization rate (and hits a recompilation limit), therefore the method is abandoned to the Template Interpreter:

```
<make_not_compilable osr='0' level='3' reason='MethodCompilable_not_at_tier' method='LockCoarseningBenchmark nested_synchronized ()I'/>
<make_not_compilable osr='0' level='4' reason='MethodCompilable_not_at_tier' method='LockCoarseningBenchmark nested_synchronized ()I'/>
```

The hottest regions in the report emphasizes this:

```
  ....[Hottest Regions]...............................................
  12.94%        interpreter  monitorenter  194 monitorenter  
  10.15%        interpreter  fast_iaccess_0  221 fast_iaccess_0  
  9.18%         interpreter  monitorexit  195 monitorexit  
  9.00%         interpreter  goto  167 goto  
  7.74%         interpreter  dup  89 dup  
  7.01%         interpreter  istore_1  60 istore_1  
  6.60%         interpreter  fast_aload_0  220 fast_aload_0  
  5.98%         interpreter  iadd  96 iadd  
  5.90%         interpreter  aload  25 aload  
  5.38%         interpreter  astore  58 astore  
  3.45%         interpreter  iload_1  27 iload_1  
  2.25%         interpreter  monitorexit  195 monitorexit  
  1.13%         interpreter  method entry point (kind = zerolocals)
```

By contrast, GraalVM EE JIT can coarse all the nested locks in one block and perform all the operations inside. Nevertheless, since biased locking is enabled and there is no contention this is a no-op when acquiring a monitor, hence no `lock cmpxchg` instruction is emitted.

```
  0x7fbfd6b19a90:   jne    0x7fbfd6b19acb  <--- coarsed section (i.e., no lock)
  0x7fbfd6b19a96:   mov    0x14(%r11),%eax
  0x7fbfd6b19a9a:   add    %eax,%r9d
  0x7fbfd6b19a9d:   add    %eax,%r9d
  0x7fbfd6b19aa0:   add    %eax,%r9d
  0x7fbfd6b19aa3:   add    %eax,%r9d
  0x7fbfd6b19aa6:   add    %eax,%r9d
  0x7fbfd6b19aa9:   add    %eax,%r9d
  0x7fbfd6b19aac:   add    %eax,%r9d
  0x7fbfd6b19aaf:   add    %eax,%r9d
  0x7fbfd6b19ab2:   mov    %r9d,%eax       <--- ireturn
```

<<IMG: LockCoarseningBenchmark_withoutBiasedLocking.svg>>

### Conclusions:

- Similar trends as before, GraalVM EE JIT does a better job than GraalVM CE JIT and C2 JIT

The `nested_synchronized` from OpenJDK HotSpot VM is (again) much slower than GraalVM EE/CE. The reason is the same, it does not get compiled by C1 JIT nor C2 JIT, but Template Interpreter is used to generating the assembly code snippets for each bytecode.

By contrast, GraalVM EE JIT merges all the nested locks in one synchronized block and performs all the additions inside that synchronized block. The main difference is that now since the biased locking is disabled, a compare-and-swap atomic instruction guard that section.

```
0x7f3926b18d90:   lock cmpxchg %rsi,(%r11)   <--- coarsed section (i.e., CAS)
0x7f3926b18d95:   jne    0x7f3926b18e6b      <--- jump if comparation fails
0x7f3926b18d9b:   add    %r8d,%r9d 
0x7f3926b18d9e:   add    %r8d,%r9d
0x7f3926b18da1:   add    %r8d,%r9d
0x7f3926b18da4:   add    %r8d,%r9d
0x7f3926b18da7:   add    %r8d,%r9d
0x7f3926b18daa:   add    %r8d,%r9d  
0x7f3926b18dad:   add    %r8d,%r9d
0x7f3926b18db0:   add    %r8d,%r9d
0x7f3926b18db3:   mov    %r9d,%eax           <--- ireturn
```

In summary, running non-contented code with biased locking disabled adds the overhead of the compare-and-swap atomic operation, in comparison to the biased locking scheme, nevertheless, this is probably not very often in the modern applications.

## LockElisionBenchmark

Test how the compiler can elide/remove several adjacent locking blocks on non-shared objects, thus reducing the locking overhead.
Synchronization on non-shared objects is pointless, and runtime does not have to do anything there.

```
  @Benchmark
  public int nested_synchronized() {
  int result = defaultValue << 1;

      Object lock = new Object();

      synchronized (lock) {
        result += incrementValue;
        synchronized (lock) {
          result += incrementValue;
          ...
        }
      }

      return result;
  }
  
  @Benchmark
  public int recursive_method_calls() {
    int result = defaultValue << 1;
    result = recursiveSum(result, DEPTH);
    return result;
  }

  public int recursiveSum(int aValue, int depth) {
    Object lock = new Object();
    synchronized (lock) {
      if (depth == 0) {
        return aValue;
      }
      return incrementValue + recursiveSum(aValue, depth - 1);
    }
  }  
```

Source code: [LockElisionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LockElisionBenchmark.java)

<<IMG: LockElisionBenchmark.svg>>

### Conclusions:

Except for `nested_synchronized` and `recursive_method_calls` benchmarks all three compilers behave similarly.

The `nested_synchronized` from OpenJDK HotSpot VM does not get compiled by C1 JIT nor C2 JIT, but Template Interpreter is used to generating the assembly code snippets for each bytecode. There is the same limitation as in the case of LockCoarseningBenchmark.

The `recursive_method_calls` is explained in details for every compiler, as per below:

- GraalVM EE JIT inlines all the recursive calls so there is no virtual method call involved anymore
- GraalVM CE JIT can remove the recursive calls, nevertheless, there is still a virtual method call involved.

  The `recursive_method_calls` benchmark has only one virtual call to the recursive method `recursiveSum`:
```
  0x7fed52ffc750:   mov    0x10(%rsi),%edx      <--- getfield defaultValue 
  0x7fed52ffc753:   mov    0x14(%rsi),%r10d     <--- getfield incrementValue 
  0x7fed52ffc757:   shl    %edx                 <--- ishl 
  0x7fed52ffc759:   mov    $0x2,%ecx 
  0x7fed52ffc75e:   mov    %r10d,0x4(%rsp)
  0x7fed52ffc763:   call   0x7fed52ffc240       <--- invokevirtual recursiveSum
  ...
  0x7fed52ffc793:   ret
```

and the `recursiveSum` (i.e., the recursive callee method) has no any virtual method call involved, everything get's inlined:

```
  0x7fed52ffc2b5:   add    0x4(%rsp),%eax       <--- iadd 
  0x7fed52ffc2b9:   add    0x4(%rsp),%eax       <--- iadd 
  0x7fed52ffc2bd:   add    0x4(%rsp),%eax       <--- iadd 
  0x7fed52ffc2c1:   mov    0x4(%rsp),%r10d
  0x7fed52ffc2c6:   add    %r10d,%eax           <--- iadd 
  ...
  0x7fed52ffc2f0:   ret                         <--- ireturn 
```

- C2 JIT is not able to get rid of the recursive calls, this is why it is the slowest

  For example, the `recursiveSum` (i.e., the recursive method called from `recursive_method_calls` benchmark) has a call to itself:

```
  0x7f18dcf646d0:   mov    0x14(%rsi),%ebp      <--- getfield incrementValue 
  0x7f18dcf646d3:   cmp    $0x1,%ecx
  0x7f18dcf646d6:   je     0x7f18dcf646fb
  0x7f18dcf646d8:   add    $0xfffffffe,%ecx
  0x7f18dcf646db:   call   0x7f18dcf646c0       <--- invokevirtual recursiveSum 
  0x7f18dcf646e0:   add    %ebp,%eax 
  ...
  0x7f18dcf646f6:   ret
```

## LoopFusionBenchmark

The benchmark assesses if the compiler triggers loop fusion, an optimization aimed to merge the adjacent loops into one loop to reduce the loop overhead and improve run-time performance.

```
  @Benchmark
  public void initial_loops() {
    // first loop
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
    }

    // second loop 
    for (int i = 1; i < size; i++) {
      B[i] = B[i - 1] + A[i];
    }
  }
```

Source code: [LoopFusionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopFusionBenchmark.java)

<<IMG: LoopFusionBenchmark.svg>>

### Conclusions:

None of the compilers has implemented this optimization.

Even though, an interesting case is why OpenJDK runs faster than GraalVM EE/CE the `initial_loops` benchmark.

The C2 JIT unrolls each of these loops by a factor of 8. For example, the code from below pertains to the first loop:

For example, the code snapshot from below pertains to the first loop:
```
                                                     <--- loop begin
  0x7f880cf64940:   mov    0x10(%rsi,%r10,4),%edx    <--- load
  0x7f880cf64945:   add    0xc(%rax,%r10,4),%edx
  0x7f880cf6494a:   mov    %edx,0x10(%rax,%r10,4)    <--- store
  0x7f880cf6494f:   add    0xc(%rsi,%r10,4),%edx
  0x7f880cf64954:   mov    %edx,0x10(%rsi,%r10,4)    <--- store 
  ...
  0x7f880cf64a08:   add    $0x8,%r10d                <--- loop is unroled by a factor of 8
  0x7f880cf64a0c:   cmp    %ecx,%r10d
  0x7f880cf64a0f:   jl     0x7f880cf64940            <--- loop end
```

GraalVM EE JIT emits the same instructions, nevertheless, the loop unrolling factor is 4 (as opposed to 8).

GraalVM CE JIT emits less optimal code instruction (i.e., additional loads), even though the unrolling factor is 8 (similar to C2 JIT).

```
                                                      <--- loop begin
  0x7f1d9affc620:   mov    0x10(%r9,%r11,4),%r8d      <--- load 
  0x7f1d9affc628:   add    0xc(%rcx,%rdi,4),%r8d 
  0x7f1d9affc62d:   mov    %r8d,0x10(%rcx,%r11,4)     <--- store
  0x7f1d9affc632:   mov    0x14(%r9,%rdi,4),%r8d      <--- load
  0x7f1d9affc637:   add    0x10(%rcx,%r11,4),%r8d
  0x7f1d9affc63c:   mov    %r8d,0x14(%rcx,%rdi,4)     <--- store
  ...
  0x7f1d9affc69b:   lea    0x8(%r11),%r11d            <--- loop is unroled by a factor of 8
  0x7f1d9affc6a0:   cmp    %r11d,%ebx
  0x7f1d9affc6a3:   jg     0x7f1d9affc620             <--- loop end
```

## LoopInvariantCodeMotionBenchmark

Test how the compiler deals with loop invariant code motion, in essence how it is able to move the invariant code before and after a loop.
Hoisting and sinking are terms that Compiler refers to moving operations outside loops:
- hoisting a load means to move the load so that it occurs before the loop
- sinking a store means to move a store to occur after a loop

Source code: [LoopInvariantCodeMotionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopInvariantCodeMotionBenchmark.java)

<<IMG: LoopInvariantCodeMotionBenchmark.svg>>

### Conclusions:

GraalVM EE JIT looks better overall, nevertheless, a case where there is a noticeable difference is for the `initial_loop` benchmark.

The hot methods reported by the `-prof perfasm` belongs to the runtime-generated stub, so it makes it difficult to grasp the optimizations from the benchmark method. Nevertheless, at first glance, based on the hottest methods, it looks like C2 JIT spends the majority of time in the `StubRoutines::libmTan`, much more than GraalVM CE/EE JIT.

```
  OpenJDK hottest region
  ....[Hottest Methods (after inlining)]....
  71.71%        runtime stub  StubRoutines::libmTan
  12.97%          libjava.so  jatan
  6.09%         c2, level 4  LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 479
  4.79%    Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 474
  2.61%          libjava.so  jfabs
```

```
  GraalVM CE hottest region
  ....[Hottest Methods (after inlining)]....
  45.01%                       <unknown>
  27.19%           libjava.so  jatan
  10.66%       jvmci, level 4  LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 729
  8.53%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 725
  5.57%           libjava.so  jfabs
```

```
  GraalVM EE hottest region
  ....[Hottest Methods (after inlining)]....
  37.50%                       <unknown>
  31.58%           libjava.so  jatan
  11.73%     Unknown, level 0  java.lang.StrictMath::atan, version 1, compile id 727
  9.98%       jvmci, level 4  LoopInvariantCodeMotionBenchmark::initial_loop, version 4, compile id 732
  6.57%           libjava.so  jfabs
```

A small remark, in the case of GraalVM CE/EE it would be better to have, instead of the `<unknown>` block, the exact dynamic shared object name.

## LoopReductionBenchmark

Loop reduction (or loop reduce) benchmark tests if a loop could be reduced by the number of additions within that loop.
This optimization is based on the induction variable to strength the additions.

```
  @Benchmark
  public void initial_loop() {
    auto_reduction(iterations, offset);
  }

  private int auto_reduction(final int iterations, int accumulator) {
    for (int i = 0; i < iterations; ++i) {
      accumulator++;
    }
    return accumulator;
  }
```

Source code: [LoopReductionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/LoopReductionBenchmark.java)

<<IMG: LoopReductionBenchmark.svg>>

### Conclusions:

GraalVM EE JIT implements the reduction using a conditional move instruction (e.g., `cmovl`), as below:

```
  0x7f40c2b1a3a5:   test   %edx,%edx
  0x7f40c2b1a3a7:   mov    $0x0,%eax
  0x7f40c2b1a3ac:   cmovl  %eax,%edx
  0x7f40c2b1a3af:   add    %edx,%ecx
  0x7f40c2b1a3b1:   mov    %ecx,%eax
```

C2 JIT uses the same optimization but conditional jump instructions  are emitted (e.g., `cmp` and `jmp`).

The generated code by GraalVM EE JIT is abysmal:

```
  0x7f4d56ffaf3b:   mov    $0x1,%r10d
  0x7f4d56ffaf41:   jmp    0x7f4d56ffaf65
  0x7f4d56ffaf60:   inc    %ecx               <--- loop 1 begin
  0x7f4d56ffaf62:   inc    %r10d
  0x7f4d56ffaf65:   cmp    %r10d,%eax
  0x7f4d56ffaf68:   jg     0x7f4d56ffaf60     <--- loop 1 end

  0x7f4d56ffaf6a:   lea    -0x10(%rdx),%eax
  0x7f4d56ffaf6d:   mov    %r10d,%r11d
  0x7f4d56ffaf70:   mov    %ecx,%r10d

  0x7f4d56ffaf73:   jmp    0x7f4d56ffaf88
  0x7f4d56ffaf80:   lea    0x10(%r11),%r11d   <--- loop 2 begin
  0x7f4d56ffaf84:   lea    0x10(%r10),%r10d   <--- increment
  0x7f4d56ffaf88:   cmp    %r11d,%eax
  0x7f4d56ffaf8b:   jg     0x7f4d56ffaf80     <--- loop 2 end
  0x7f4d56ffaf8d:   jmp    0x7f4d56ffafb0

  0x7f4d56ffafa0:   inc    %r11d              <--- loop 3 begin
  0x7f4d56ffafa3:   inc    %r10d
  0x7f4d56ffafb0:   cmp    %r11d,%edx
  0x7f4d56ffafb3:   jg     0x7f4d56ffafa0     <--- loop 3 end
  0x7f4d56ffafb5:   mov    %r10d,%eax         <--- return
  0x7f4d56ffafc1:   ret
```

## MandelbrotVectorApiBenchmark

This benchmark tests the performance of Project Panama's Vector API when used to compute the Mandelbrot set.
As of the time of writing, the Vector API is still an incubator module in OpenJDK and the API and the implementation
are subject to change between releases.

Source code: [MandelbrotVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MandelbrotVectorApiBenchmark.java)

<<IMG: MandelbrotVectorApiBenchmark.svg>>

### Conclusions:

In the `baseline` benchmark the Mandelbrot set is computed using non-vectorized instructions. In this case, all three JVMs
perform equally regardless of the data size and the number of iterations.

In the `vectorized` benchmark the Mandelbrot set is computed using the Vector API. In this case, OpenJDK performs better than
both GraalVM CE and EE. This is because C2 contains all the compiler intrinsics for the Vector API, while GraalVM CE and
EE do not. This can be seen from the generated assembly code and by looking at the hottest regions of code in the
`perf` output:

```
OpenJDK vectorized hottest region
....[Hottest Methods (after inlining)]....
98.25%  c2, level 4  MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 884
... 
```

```
GraalVM CE vectorized hottest region
....[Hottest Methods (after inlining)]....
59.51%  jvmci, level 4  MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
15.11%  jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1016 
11.80%  jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1008 
10.23%  jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
```

```
GraalVM EE vectorized hottest region
....[Hottest Methods (after inlining)]....
74.23%  jvmci, level 4  MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1038 
22.04%  jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 1040 
```

## MegamorphicMethodCallBenchmark

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
    // slow path. Will deoptimize and rerun in the interpreter. Next time it JITs, it will use a virtual call
    deoptimize();
}
```

Once a call site becomes static, the compiler will be able to inline the target method and perform further
optimizations. OpenJDK (using the C2 JIT) can devirtualize up to two different targets of a virtual call, for more targets a vtable/itable call is used.

Source code: [MegamorphicMethodCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark.java)

The `virtual_call` benchmark measures the performance of virtual calls with a different number of targets. The
`devirtualize_to_monomorphic` benchmark tries to manually devirtualize call sites to be monomorphic.

<<IMG: MegamorphicMethodCallBenchmark.svg>>

### Conclusions:

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
with OpenJDK in `devirtualize_to_monomorphic[MEGAMORPHIC_8]`. In this case, the C2 JIT switches from
using a `lookupswitch` to a `tableswitch` due to the large number of cases in the switch statement, which
also results in a performance degradation. However, it remains faster than the `virtual_call[MEGAMORPHIC_8]` benchmark.

## MegamorphicInterfaceCallBenchmark

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
    private void foo_1() { baz_1(); 
  }
```

Source code: [MegamorphicInterfaceCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicInterfaceCallBenchmark.java)

The `virtual_calls_chain` benchmark measures the performance of interface calls with a different number of targets.
The `devirtualize_to_monomorphic` benchmark tries to manually devirtualize call sites to be monomorphic.

<<IMG: MegamorphicInterfaceCallBenchmark.svg>>

### Conclusions:

Looking at the figure above and the assembly generated for the `virtual_calls_chain` benchmark we conclude the following:
- OpenJDK is able to devirtualize (and inline) through the class hierarchy call sites that use up to two different targets.
  In these cases, it also does loop unrolling by a factor of four. <br>
  Starting from three targets or more that are evenly distributed in the benchmark, it always uses a series of interface calls
  to reach the target method. <br> If a dominant target is present (`virtual_calls_chain[MEGAMORPHIC_6_DOMINANT_TARGET]`),
  then C2 JIT will add a guard, devirtualize and inline the call to the dominant target:
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
  0x91157:   movabs $0x26408,%rdi   ; {metadata('MegamorphicInterfaceCallBenchmark$C6')}
  0x91161:   cmp    %rcx,%rdi
  0x91164:   jne    0x915b7
  0x9116a:   mov    0x18(%rsp),%r10
  0x9116f:   call   0x8f140         ;*invokeinterface foo_4()
                                    ; - MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 237)
                                    ; - MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 241)
                                    ; - MegamorphicInterfaceCallBenchmark$I::baz@1 (line 247)
                                    ; - MegamorphicInterfaceCallBenchmark$I::foo@1 (line 251)
                                    ; - MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 165)
                                    ;   {optimized virtual_call}
                                    ^^ Directly calls foo_4()
```

In the case of a dominant target (`devirtualize_to_monomorphic[MEGAMORPHIC_6_DOMINANT_TARGET]`), OpenJDK and GraalVM CE are able to devirtualize and inline the call sites.
GraalVM EE is able to devirtualize only up to a certain depth in the class hierarchy.

## MethodArgsBusterBenchmark

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

Source code: [MethodArgsBusterBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MethodArgsBusterBenchmark.java)

<<IMG: MethodArgsBusterBenchmark.svg>>

### Conclusions:

We can see that both GraalVM CE and EE offer the same performance. They are able to inline the method and return a constant value.
This is confirmed by the generated assembly.

```
  0x71ba0:   nopl   0x0(%rax,%rax,1)
  0x71ba5:   mov    $0xcc,%rax           <--- return constant; no method call is generated
  0x71bac:   mov    0x348(%r15),%rcx	 
  0x71bb3:   test   %eax,(%rcx)          ;{poll_return}       
  0x71bb5:   ret
```

OpenJDK fails to compile with C2 JIT and uses a C1 compiled method instead. C1 JIT does not inline the method
and passes the call arguments on the stack.

```
 ...
  0x855b0:   mov    %r10,0x1b0(%rsp) 
  0x855b8:   movabs $0x4019333333333333,%r10 
  0x855c2:   mov    %r10,0x1b8(%rsp)         <--- set call arguments on stack
 ...
  0x855ca:   nopl   0x0(%rax,%rax,1) 
  0x855cf:   call   0x85bc0                  <--- call the target method
```

## NpeControlFlowBenchmark

Iterates through an array of objects (containing either null and not null values) and compute the sum of all elements using different comparison/filtering strategies.
Since the array elements might be null, some tests explicitly check for null others just uses the objects as is but guard the code by try {} catch blocks (letting NullPointerException be thrown and catch).

```
  @Benchmark
  public int try_npe_catch() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      try {
        sum += array[i].x;
      } catch (NullPointerException ignored) {
        sink(ignored);
      }
    }
    return sum;
  }
```

Source code: [NpeControlFlowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark.java)

<<IMG: NpeControlFlowBenchmark.svg>>

### Conclusions:

C2 JIT behaves better than GraalVM CE/EE JIT

In particalar, the `try_npe_catch` benchmark is orders of magnitude slower with GraalVM CE/EE JIT:

GraalVM EE JIT unrolls the main loop by a factor of 8 but there is no explicit null check while accessing array elements:

```
                                                        
  0x7f6a6ab1ac80:   mov    0x10(%rax,%r9,4),%ecx    <--- Loop begin 
  0x7f6a6ab1ac85:   mov    %r8d,%ebx
  0x7f6a6ab1ac88:   add    0xc(,%rcx,8),%ebx        <--- implicit exception: dispatches to 0x7f6a6ab1adab
  0x7f6a6ab1ac8f:   mov    0x14(%rax,%r9,4),%ecx
  0x7f6a6ab1ac94:   mov    0xc(,%rcx,8),%ecx        <--- implicit exception: dispatches to 0x7f6a6ab1adc7
  0x7f6a6ab1ac9b:   mov    0x18(%rax,%r9,4),%edi
  0x7f6a6ab1aca0:   mov    0xc(,%rdi,8),%edi        <--- implicit exception: dispatches to 0x7f6a6ab1ade6
  ...  
  0x7f6a6ab1ace8:   add    %ecx,%ebx
  0x7f6a6ab1acea:   add    %edi,%ebx
  ...  
  0x7f6a6ab1acfd:   lea    0x8(%r9),%r9d            <--- loop is unroled by a factor of 8
  0x7f6a6ab1ad01:   mov    %ebx,%r8d
  0x7f6a6ab1ad04:   cmp    %r9d,%r11d
  0x7f6a6ab1ad07:   jg     0x7f6a6ab1ac80           <--- Loop end
```

Instead of explicit guarding for null, it just lets SIGSEGV happen and (in case it happens) dispatches the execution to a specific handler. But if there are a lot of null values the cost of this mechanism is not neglectable.

GraalVM CE JIT does not do any loop unrolling but relies on the same optimistic approach (nulls are likely to happen) that takes a toll.

By contrast, C2 JIT the null checks in the final optimized code version (within the unrolled loop instructions).

```
  0x7fae4cf666d0:   mov    0x14(%rdi,%r11,4),%r10d
  0x7fae4cf666d5:   test   %r10d,%r10d              <--- null check
  0x7fae4cf666d8:   je     0x7fae4cf66751           <--- get x
  0x7fae4cf666de:   add    0xc(%r12,%r10,8),%ebx
  ...
  0x7fae4cf666e3:   mov    0x18(%rdi,%r11,4),%edx
  0x7fae4cf666e8:   test   %edx,%edx                <--- null check 
  0x7fae4cf666ea:   je     0x7fae4cf66756           <--- get x
  0x7fae4cf666f0:   add    0xc(%r12,%rdx,8),%ebx
```

On modern hardware guarding for nulls is (probably) cheap and it could bring a significant improvement for datasets where nulls are dominating (versus handling the SIGSEGV in specific routines).

## NpeThrowBenchmark

This benchmark tests the implicit vs explicit throw and catch of `NullPointerException` in a hot loop. 
The caller method contains a loop that catches the `NullPointerException` thrown by the callee. The callee is never inlined:

```
  @Benchmark
  public void throw_npe() {
    for (Wrapper object : A) {
      try {
        {implicit, explicit}ThrowNpe(object);
      } catch (NullPointerException e) {
        // swallow exception
      }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int explicitThrowNpe(Wrapper o) {
    if (o == null) {
      throw new NullPointerException("Oops!");
    }
    return o.x;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int implicitThrowNpe(Wrapper o) {
    return o.x;
  }
```

For `threshold = 0`, the benchmark does not throw any `NullPointerException`. For `threshold = 1`, the
benchmark always throws `NullPointerException`.

Source code: [NpeThrowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeThrowBenchmark.java)

<<IMG: NpeThrowBenchmark.svg>>

### Conclusions:

For explicit throws, OpenJDK, GraalVM CE and GraalVM EE are very close in performance. <br>
For implicit throws however, OpenJDK is around 35x faster than both GraalVM CE and EE. In order to understand why,
we look at the flamegraphs generated by JMH (and [async-profiler](https://github.com/async-profiler/async-profiler))
for the `implicit_throw_npe` benchmark.

<<IMG: jvm-performance-benchmarks/results/jdk-17/x86_64/flamegraph/openjdk-hotspot-vm/NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.cpu.html>>
<br> The flame graph generated by OpenJDK for the `implicit_throw_npe` benchmark.

<<IMG: jvm-performance-benchmarks/results/jdk-17/x86_64/flamegraph/graalvm-ce/NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.cpu.html>>
<br> The flame graph generated by GraalVM CE for the `implicit_throw_npe` benchmark. GraalVM EE generates a similar flame graph.

Looking at the flame graph for GraalVM CE (and EE), we can see that a call to
`JVMCIRuntime::throw_and_post_jvmti_exception` is made. One of the things this method does is to allocate a new
`NullPointerException` object which will be later caught by the caller. Instantiating a new `NullPointerException`
object, walking and filling a stack trace is expensive, as can be seen in the right part of the flame graph.

OpenJDK, on the other hand, does not allocate a new `NullPointerException` object. Instead, it completely omits collecting
the stack trace and directly calls into the exception handler (`OptoRuntime::handle_exception_C`). This optimization can
be disabled by setting the `-XX:-OmitStackTraceInFastThrow` flag.

## RecursiveMethodCallBenchmark

The benchmark tests the performance of recursive method calls in classes, interfaces and lambda functions.
Additionally, it tests the performance of static vs non-static recursive calls.

In this benchmark, the ability to inline recursive calls plays an important role in the performance.

Source code: [RecursiveMethodCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark.java)

<<IMG: RecursiveMethodCallBenchmark.svg>>

### Conclusions:

For lambda recursive calls, all three JVMs are able to fully inline and remove the recursive calls.

For class and interface recursive calls (static and non-static):
- OpenJDK always generates a recursive call (static or virtual)
- GraalVM CE is able to partially inline up to a depth of 6 
- GraalVM EE will go up to a depth of 8

For example, the below code instructions pertains to GraalVM CE:
```
  0xfcd23:   je     0xfcda2           <--- jump to return statement
                                      ; - cls_non_static@1 (line 108)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
  0xfcd29:   lea    -0x6(%rdx),%edx   <--- subtract 0x6 from the counter
                                      ; - cls_non_static@11 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
  0xfcd2c:   data16 xchg %ax,%ax      <--- nops
  0xfcd2f:   call   0xfccc0           <--- call to cls_non_static six layers deep
                                      ;*invokevirtual cls_non_static
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ; - cls_non_static@12 (line 111)
                                      ;   {optimized virtual_call}
```

## ScalarReplacementBenchmark

Compiler analyses the scope of a new object and decides whether it might be allocated or not on the heap.
The method is called Escape Analysis (EA), which identifies if the newly created object is escaping or not into the heap.
To not be confused, EA is not an optimization but rather an analysis phase for the optimizer.
There are few escape states:
- NoEscape - the object cannot be visible outside the current method and thread.
- ArgEscape - the object is passed as an argument to a method but cannot otherwise be visible outside the method or by other threads.
- GlobalEscape - the object can escape the method or the thread. It means that an object with GlobalEscape state is visible outside method/thread.
  For NoEscape objects, the Compiler can remap accesses to the object fields to accesses to synthetic local operands: which leads to so-called Scalar Replacement optimization. If stack allocation was really done, it would allocate the entire object storage on the stack, including the header and the fields, and reference it in the generated code.

```
  @Benchmark
  public HeavyWrapper branch_escape_obj() {
    HeavyWrapper wrapper = new HeavyWrapper(value, size);
    HeavyWrapper result;

    // wrapper is NoEscape, because "objectEscapes" is always false, hence branch is never executed
    if (objectEscapes) {
      result = wrapper;
    } else {
      result = CACHED_WRAPPER;
    }

    return result;
  }

  @Benchmark
  public boolean arg_escape_obj() {
    HeavyWrapper wrapper1 = new HeavyWrapper(value, size);
    HeavyWrapper wrapper2 = new HeavyWrapper(value, size);
    boolean match = false;

    if (wrapper1.equals(wrapper2)) match = true;

    return match;
  }
```

Source code: [ScalarReplacementBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark.java)

<<IMG: ScalarReplacementBenchmark.svg>>

### Conclusions:

Both GraalVM CE/EE JIT performs better than C2 JIT.

A matter of particular interest is, for example, the `branch_escape_obj` benchmark where C2 JIT is one order of magnitude slower.

Looking at the generated assembly code generated by the C2 JIT we can see the first object is allocated (since it is declared at the beginning of the method) and then the comparison is made and the result is returned.
Nevertheless, since the comparison always evaluates to false, the previously allocated object is useless.

```
                    ...
                    <--- allocates the HeavyWrapper object -->
                    ... 
  0x7ffb58f6315a:   mov    0x10(%rsp),%r10
  0x7ffb58f6315f:   movzbl 0x14(%r10),%ebp     <--- get objectEscapes
  0x7ffb58f63164:   test   %ebp,%ebp
  0x7ffb58f63166:   jne    0x7ffb58f631aa
  0x7ffb58f63168:   mov    0x18(%r10),%r10d
  0x7ffb58f6316c:   mov    %r10,%rax
  0x7ffb58f6316f:   shl    $0x3,%rax           <--- get CACHED_WRAPPER
  0x7ffb58f63185:   ret
```

In comparison, GraalVM EE JIT does a smarter job: it allocates the object only if the boolean condition imposes that, otherwise it just uses the cached wrapper object, hence preventing unnecessary allocations.

```
  0x7fe836b18d30:   cmpb   $0x0,0x14(%rsi)
  0x7fe836b18d34:   jne    0x7fe836b18d64     <--- if ne allocates the new array
  0x7fe836b18d3a:   nopw   0x0(%rax,%rax,1)
  0x7fe836b18d40:   cmpl   $0x0,0x10(%rsi)
  0x7fe836b18d44:   jl     0x7fe836b18d86
  0x7fe836b18d4a:   mov    0x18(%rsi),%eax
  0x7fe836b18d4d:   shl    $0x3,%rax          <--- get CACHED_WRAPPER 
  0x7fe836b18d63:   ret                       <--- return the CACHED_WRAPPER
```

The same optimization happens in GraalVM CE JIT, which explains why this benchmark is much better in GraalVM.

In the case of `arg_escape_obj` benchmark, the C2 JIT is (again) one order of magnitude slower, GraalVM CE/EE JIT succeeds to optimize everything and returns just the constant:

```
  0x7f662eb1d030:   cmpl   $0x0,0x10(%rsi)
  0x7f662eb1d034:   jl     0x7f662eb1d052   <--- if ne allocates the new array
  0x7f662eb1d03a:   mov    $0x1,%eax        <--- return the constant true
  0x7f662eb1d051:   ret
```

## SepiaVectorApiBenchmark

This benchmark is similar to the `MandelbrotVectorApiBenchmark` in that it tests the performance of Project Panama's
Vector API. However, in this benchmark the Vector API is used to apply a sepia filter to an input image.

Source code: [SepiaVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/SepiaVectorApiBenchmark.java)

<<IMG: SepiaVectorApiBenchmark.svg>>

### Conclusions:

Once again, in the `baseline` benchmark the Sepia filter is applied using non-vectorized instructions. In this case, all three JVMs
perform equally regardless of the input image size.

In the `vectorized` benchmark the Sepia filter is applied using the Vector API. OpenJDK performs better than
both GraalVM CE and EE. This is because C2 contains all the compiler intrinsics for the Vector API, while GraalVM CE and
EE do not.

```
  OpenJDK vectorized hottest region
  ....[Hottest Regions]....
  98.47%  c2, level 4  SepiaVectorApiBenchmark::vectorized, version 3, compile id 988
  ... 
```

```
  GraalVM CE vectorized hottest region
  ....[Hottest Methods (after inlining)]....
  40.03%  jvmci, level 4  SepiaVectorApiBenchmark::vectorized, version 4, compile id 1010 
  39.78%  jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 959 
   9.34%  jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 997 
   7.90%  jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 990
   ... 
```


## StackSpillingBenchmark

This benchmark measures the cost of stack spilling. Stack spilling occurs when the register allocator
runs out of registers and starts using the stack to store intermediate values. Load and storing from/to
memory is much slower than using CPU registers.

The benchmark methods contain a series of loads followed by a series of stores. Normally, the JIT compiler
is expected to group together loads and stores, resulting in less register pressure. In order to force all
the reads to be grouped before all the writes, the `load_store_spill*` benchmarks contain a volatile read
after the loads and before the stores.

Additionally, the register allocator in C2 JIT is able to [use FPU registers](https://shipilev.net/jvm/anatomy-quarks/20-fpu-spills/)
to store intermediate values before starting to spill on the stack. GraalVM CE and EE do not have this optimization.

Source code: [StackSpillingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/StackSpillingBenchmark.java)

<<IMG: StackSpillingBenchmark.svg>>

### Conclusions:

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

## JIT Geometric Mean

The Geometric Mean (GM) for the JIT benchmarks on each architecture is described below.

This is purely informative to have a high-level understanding on the overall benchmark scores.

## x86_64

No. | JIT            | Arcitecture | Geometric Mean | Unit
----|----------------|-------------|----------------|--------
1   | GraalVM EE JIT | x86_64      | 4643.97        | ns/op
2   | C2 JIT         | x86_64      | 6453.77        | ns/op
3   | GraalVM CE JIT | x86_64      | 8248.09        | ns/op

**Note:** The first in the row is the fastest JIT, and the last in the row is the slowest JIT

## arm64

No. | JIT            | Arcitecture | Geometric Mean | Unit
----|----------------|-------------|----------------|--------
1   | GraalVM EE JIT | arm64       | 2328.49        | ns/op
2   | C2 JIT         | arm64       | 2819.29        | ns/op
3   | GraalVM CE JIT | arm64       | 4419.11        | ns/op

**Note:** The first in the row is the fastest JIT, and the last in the row is the slowest JIT

To summarize, on both architectures the geometric mean is consistent:

1. GraalVM EE JIT is the fastest
2. C2 JIT is in the middle
3. GraalVM CE JIT is the slowest

# Garbage Collectors

This section describes the results obtained from running the GC benchmarks. The current benchmarks focus on various metrics:
- the efficiency of a GC objects allocation/reclamation with
    - different allocation rates
    - different object sizes
    - different pre-allocated objects on the heap
    - different number of allocator threads (e.g., 1 or 2)
- the impact of the barriers (e.g., read, write barriers) while traversing and/or updating heap data structures, trying to avoid any explicit allocation, in the benchmark method, unless it is induced by the underlying ecosystem.

In general, running single-threaded workloads against concurrent GCs could result in better throughput (or lower pause times) than in the case of the STW collectors, because the concurrent collectors are able to offload the GC work on otherwise idle cores.

The list of GC (including the JVM(s) and the architectures) is:

No. | GC         | JVM              | Arcitecture 
----|------------|------------------|----------------
1   | Serial     | OpenJDK 17.0.6   | x86_64, arm64         
2   | Parallel   | OpenJDK 17.0.6   | x86_64, arm64      
3   | G1         | OpenJDK 17.0.6   | x86_64, arm64   
3   | ZGC        | OpenJDK 17.0.6   | x86_64, arm64   
3   | Shenandoah | OpenJDK 17.0.6   | x86_64, arm64   
3   | Epsilon    | OpenJDK 17.0.6   | x86_64, arm64   

> At the moment, GraalVM CE/EE (i.e., HotSpot-based mode) does not properly support either ZGC or Shenandoah GC. The Graal compiler has not implemented any specific Shenandoah/ZGC barrier, therefore it makes no sense to compare these GCs across an extended list of JVMs (OpenJDK vs. GraalVM CE/EE).

## GC Overview

### Serial GC
- generational collector, stop-the-world (STW) pauses
- it has the smallest footprint and is desired especially for resource-constrained environments where latency is not an issue

### Parallel GC
- generational collector, stop-the-world (STW) pauses
- also called a throughput collector, it is desired for applications where throughput is more important than latency

### G1 GC
- generational collector, region based, stop-the-world (STW) pauses, concurrent phases
- strives for a balance between latency and throughput (with a desired maximum pause time of 200 ms)

### Shenandoah GC
- uni-generational, region based (like G1 GC), fully concurrent
- target low-latency applications (for both large-heaps but also resource-constrained environments) with a few ms target pause times

### ZGC
- uni-generational, mostly concurrent phases, but there are some STW pauses
- target low-latency applications (for both large-heaps but also resource-constrained environments) with a few ms target pause times (similar to Shenandoah GC)

## GC Barriers

Most GCs require different barriers that need to be implemented in the runtime, interpreter, C1 JIT and C2 JIT. Such barriers affect application performance even when no actual GC work is happening. Below is a summary of such barriers mostly specific to each GC from JDK 17.

### Epsilon GC
- does not add any barrier on top of the default/shared barriers (e.g., C1 or C2 compiler barriers). It might be the baseline (since it has the smallest overhead) in comparison to all the others, nevertheless it is still experimental at the moment.

### Serial GC
- a card-table write barrier (to track the references from Tenured Generation to Young Generation). In this technique, the heap is partitioned into equal-sized cards, and a card table array is allocated, with an entry for each card of the heap. Card table entries are initially clean; the mutator write barrier marks the card containing the updated field (or the head of the object containing the field, in a variant) dirty. The collector must scan the card table to find dirty entries, and then scan the corresponding dirty cards to find the cross-generational pointers, if any, created by the writes.

### Parallel GC
- a card-table write barrier (similar to Serial GC)

### G1 GC
- a pre-write barrier is required in case of concurrent marking by Snapshot-At-The-Beginning (SATB) to make sure all objects live at the start of the marking are kept alive, all the reference updates need to any previous reference stored before writing
- a post-write barrier to track object references between different regions to enable the evacuation of old regions, which is done as part of mixed collections. References are tracked in remembered sets and are continuously updated with the help of the post-barrier
- a read barrier is added when a read access is performed to the referent field of a java.lang.ref.Reference. This will result in the referent being marked live
- two arraycopy barriers (e.g., pre-write and post-write barriers)
- CAS object barrier that handles atomic compare and swap related methods
- an object clone barrier to deal with cloning objects on the heap

### Shenandoah GC
- load-reference barrier employed after a load from a reference field or array element and before the loaded object is given to the rest of the application code
- Snapshot-At-The-Beginning (SATB) write barrier employed before reference writes and used in case of concurrent marking. This is very similar to G1's SATB barrier, it intercepts writes and marks through "previous" objects
- an arraycopy barrier to deal with array copies (a better arraycopy-barrier-scheme in comparison to, for example, the G1's arraycopy barriers implemented in the C1/C2 JIT or Graal JIT)
- CAS object barrier that handles atomic compare and swap related methods
- an object clone barrier to deal with cloning objects on the heap
- a keep-alive barrier for java.lang.ref.Reference to handle the cases when the referent field of a java.lang.ref.Reference object is read
- nmethod-barriers (i.e., a mechanism to arm nmethods) for concurrent unloading. For example, code cache unloading needs to know about on-stack nmethods. Arming the nmethods enables GC callbacks when they are called.
- stack-watermark barrier for concurrent thread-scanning

_Note:_ depending on the mode, some of these barriers might be disabled.

### ZGC
- load-reference barrier employed when references are loaded from the Heap. It ensures that
  references pointing into a relocated memory area will be caught and handled (i.e., the load barrier performs further actions to remap pointers that actually point into the relocated memory area, without the need to read that memory)
  references pointing into the newly allocated memory will pass through the barrier without further actions
- weak load barrier may be provided for loading a pointer “weakly” (i.e., load the pointer without keeping its target object alive in the context of garbage collection). Examples where a weak load barrier may be useful include reading a StringTable object in the JVM
- arraycopy barriers to deal with array copies
- CAS object barrier that handles atomic compare and swap related methods
- an object clone barrier to deal with cloning objects on the heap
- a keep-alive barrier used during the concurrent marking phase
- a mark barrier used during the concurrent marking phase
- nmethod-barriers and stack-watermark barriers (similar to Shenandoah GC)

## GC Benchmarks

## BurstHeapMemoryAllocatorBenchmark

This benchmark allocates arrays of temporary objects until it fills up a certain percent of the heap (e.g., 30%, 60%) and then releases them so that they all become eligible for Garbage Collector.

Source code: [BurstHeapMemoryAllocatorBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/BurstHeapMemoryAllocatorBenchmark.java)

<<IMG: BurstHeapMemoryAllocatorBenchmark_1thread_openjdk_hotspot_vm.svg>>

### Conclusions:
- ZGC performs significantly better than all the other collectors (around 3x times faster than G1 GC), followed by G1 GC, ShenandoahGC, and Serial GC (for both 30% but also 60% allocated heap)
- Parallel GC offers the worst throughput

<<IMG: BurstHeapMemoryAllocatorBenchmark_2threads_openjdk_hotspot_vm.svg>>

### Conclusions:
- Increasing the number of allocator threads minimizes the gap between the ZGC and G1 GC, the latter one performing even better in case of the 60% allocated heap
- Parallel GC offers (again, for this benchmark) the worst throughput, about ~10x slower than the best throughput

In general, under heavy burst allocations (e.g., 60% of the heap), the generational collectors (e.g., Serial GC, Parallel GC) fall into premature full GCs syndrome causing longer STW pauses in comparison to concurrent, single-generational, collectors.

## HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark

This benchmark initially allocates (during setup) lists of chained objects (e.g., Object 1 -> Object 2 -> … ), until it fills up a certain percent of the heap (e.g., 25%, 50%, 75%). Each object list (i.e., the list header) is stored in an array-based structure that keeps strong references to each chain.
Such a chain looks like (head) Object 1 -> Object 2 -> … -> Object 32 where every object consists of a pointer to the next object and,in addition, an array of allocated longs. Some objects within the chain are potentially considered big, so they would normally follow the slow path allocation, residing directly in the Tenured Generation (in the case of generational collectors), increasing the likelihood of full GCs.
The chaining might have an impact on the GC roots traversal, since the degree of pointer indirection (i.e., reference processing) is not negligible, while traversing the object graph dependencies.
Then, in the benchmark method, similar object chains are allocated, and they replace, one by one (i.e., incrementally),the ones from the initial array so that the former ones become eligible for garbage collection.
During the lifecycle of the benchmark, the footprint of live memory is (trying to be) kept constant.

Source code: [HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark.java)

<<IMG: HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_1thread_openjdk_hotspot_vm.svg>>

<<IMG: HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_2thread2_openjdk_hotspot_vm.svg>>

### Conclusions:
- ZGC offers the highest throughput when the percentage of the heap is up to 50%
- when the retained heap (i.e., the ballast) is 70%, G1 GC followed by the Parallel GC offers a better throughput
- Serial GC has the lowers throughput in all the cases

The cost of marking the entire heap to reclaim the garbage is not neglectable for the non-generational, concurrent, collectors (e.g., ZGC, and Shenandoah GC) in cases where the ballast takes a significant part of the heap (e.g., 70% of the heap), otherwise easy to remove (young) garbage by the generational GCs (e.g., G1 GC, and Parallel GC). This might be partially mitigated by increasing the number of concurrent GC threads using `-XX:ConcGCThreads=<n>`.

## HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark

This benchmark initially allocates (during setup) lists of chained objects (e.g., Object 1 -> Object 2 -> … ), until it fills up a certain percent of the heap (e.g., 30%, 60%). Each object list (i.e., the list header) is stored in an array-based structure that keeps strong references to each chain.
Such a chain looks like (head) Object 1 -> Object 2 -> … -> Object 32 where every object consists of a pointer to the next object and, in addition, an array of allocated longs. Some objects within the chain are potentially considered big, so they would normally follow the slow path allocation, residing directly in the Tenured Generation (in the case of generational collectors), increasing the likelihood of full GCs.

The chaining might have an impact on the GC roots traversal, since the degree of pointer indirection (i.e., reference processing)  is not negligible, while traversing the object graph dependencies.
Then, in the benchmark method, similar object chains are allocated until they fill up 80% of the entire heap and then immediately released, so they become eligible for Garbage Collector.
During the lifecycle of the benchmark, the amount of retained memory by strong references is fixed (i.e., the objects allocated in the benchmark setup phase are kept alive during the benchmark method)

Source code: [HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark.java)

<<IMG: HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_1thread_openjdk_hotspot_vm.svg>>

<<IMG: HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_2threads_openjdk_hotspot_vm.svg>>

### Conclusions:
- G1 GC and/or Parallel GC offers (in general) the highest throughput in both benchmarks

The cost of marking the entire heap to reclaim the garbage strikes even worse (in this benchmark) the non-generational, concurrent, collectors (ZGC and Shenandoah GC).
One additional remark: since ZGC has Compressed OOPs disabled by design, within the same amount of memory, ZGC will allocate less number of objects (hence less objects to collect), in comparison to the other collectors that have Compressed OOPs enabled by default (in the case of Heap sizes up to 32 GB and on 64-bit platforms). Or, the other way around: trying to allocate the same number of objects (as the other collectors)  ZGC would need more memory for such allocations. For example, for this benchmark, increasing the amount of memory to allocate from 80% to 90% will make ZGC fail with OOME.

## HeapMemoryBandwidthAllocatorBenchmark

This benchmark tests the allocation rate for chunks of byte arrays having different sizes. In comparison to the previous benchmarks (e.g., HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark, HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark), it just allocates the byte arrays and immediately releases them, without keeping any strong references.

Source code: [HeapMemoryBandwidthAllocatorBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/HeapMemoryBandwidthAllocatorBenchmark.java)

<<IMG: HeapMemoryBandwidthAllocatorBenchmark_1thread_openjdk_hotspot_vm.svg>>

<<IMG: HeapMemoryBandwidthAllocatorBenchmark_2threads_openjdk_hotspot_vm.svg>>

### Conclusions:
- for array chunks of 32 B and 8 MB Parallel GC and Serial GC seem to offer a tinny higher throughput, but not by a relevant difference
- for array chunks of 16 KB Serial GC and ZGC looks slightly better, but not by a relevant difference

##  ReadBarriersChainOfReferencesBenchmark

Test the overhead of read barriers while iterating through a chain of pre-allocated objects (e.g., Object 1 -> Object 2 -> ...) and returns the sum of their field properties (e.g., Object1.field + Object2.field + ...)

Source code: [ReadBarriersChainOfReferencesBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/ReadBarriersChainOfReferencesBenchmark.java)

<<IMG: ReadBarriersChainOfReferencesBenchmark_openjdk_hotspot_vm.svg>>

### Conclusions:

- ZGC offers the best throughput, around 1.5x times better than the others
- Surprisingly, Epsilon GC since it does not have any barrier in the GC set, is not the leader

##  ReadBarriersLoopingOverArrayBenchmark

Test the overhead of read barriers while iterating through an array of pre-allocated objects and reading each object field.
Note: looping over an array favors algorithms that can hoist the barrier without accounting really on the cost of the barrier itself.

Source code: [ReadBarriersLoopingOverArrayBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/ReadBarriersLoopingOverArrayBenchmark.java)

<<IMG: ReadBarriersLoopingOverArrayBenchmark_openjdk_hotspot_vm.svg>>

### Conclusions:
- ZGC offers the lowest throughput (~ 1.5x times slower than the highest throughput). It could be explained by the absence of Compressed OOPs. The array the benchmark walks, and the accessed objects are larger and have less chances to be cached in same-sized CPU caches (i.e., more CPU cache misses) in comparison to the other collectors using Compressed OOPs.

## ReadWriteBarriersBenchmark

Test the overhead of read/write barriers while iterating through an array of Integers and exchanging the values between two array entries (i.e., array[i] <-> array[j]).

Source code: [ReadWriteBarriersBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/ReadWriteBarriersBenchmark.java)

<<IMG: ReadWriteBarriersBenchmark_openjdk_hotspot_vm.svg>>

### Conclusions:
- Epsilon GC, since it does not use any GC barrier, offers the best throughput. It was included to have a baseline in comparison to other collectors
- ZGC seems to perform better than any other collector
- G1 GC offers the worst throughput, more than  ~10x-14x slower than the rest. In such a case, the post-write barriers (i.e., remembered sets management across G1 regions) might be the reason behind

##  WriteBarriersLoopingOverArrayBenchmark

Test the overhead of write barriers while iterating through the elements of an array of objects and updating every element (i.e., reference).

Source code: [WriteBarriersLoopingOverArrayBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/micro/gc/WriteBarriersLoopingOverArrayBenchmark.java)

<<IMG: WriteBarriersLoopingOverArrayBenchmark_openjdk_hotspot_vm.svg>>

### Conclusions:
- Epsilon GC, since it does not use any GC barrier, offers the best throughput. It was included to have a baseline in comparison to other collectors
- Shenandoah GC seems to perform better than any other collector, but with a marginal difference in comparison to ZGC
- G1 GC offers the worst throughput, about ~10x-20x slower than the rest. Most probably it has the same root cause as in the previous benchmark (i.e. post-write barriers overhead)

## GC Geometric Mean

The Geometric Mean (GM) for the Garbage Collector benchmarks on each architecture is described below.

This is purely informative to have a high-level understanding on the overall benchmark scores.

## OpenJDK on x86_64

No. | JVM distribution | Arcitecture | Geometric Mean | Unit
----|------------------|-------------|----------------|--------
1   | ZGC              | x86_64      | 43,267.97      | ops/ms
2   | G1 GC            | x86_64      | 29,158.73      | ops/ms
3   | Parallel GC      | x86_64      | 24,303.27      | ops/ms
4   | Shenandoah GC    | x86_64      | 23,475.71      | ops/ms
5   | Serial GC        | x86_64      | 17,129.77      | ops/ms

**Note:** The first in the row is the fastest GC, and the last in the row is the slowest GC

## OpenJDK on arm64

No. | JVM distribution | Arcitecture | Geometric Mean | Unit
----|------------------|-------------|----------------|--------
1   | ZGC              | arm64       | 1,22,010.74    | ops/ms
2   | Shenandoah GC    | arm64       | 79,957.41      | ops/ms
3   | G1 GC            | arm64       | 79,251.23      | ops/ms
4   | Parallel GC      | arm64       | 62,358.15      | ops/ms
5   | Serial GC        | arm64       | 43,756.39      | ops/ms

**Note:** The first in the row is the fastest GC, and the last in the row is the slowest GC

To summarize, on both architectures:

1. ZGC offers the highest throughput
2. Shenandoah GC has a fluctuant position: it is better on arm64 and slower on x86_64

# Macro

This set of benchmarks is dedicated to larger programs using high-level Java APIs (e.g., stream, lambda, fork-join, etc.). It is created to complement the existing JIT and GC benchmarks with another class of benchmarks.

## Macro Benchmarks

## HuffmanCodingBenchmark

Huffman encoding is an algorithm devised by David A. Huffman of MIT in 1952 for compressing text data to make a file occupy a smaller number of bytes. This relatively simple compression algorithm is powerful enough that variations of it are still used today in computer networks, fax machines, modems, HDTV, and other areas.

The steps involved in Huffman encoding a given text source file into a destination compressed file are:
- count frequencies: examine a source file's contents and count the number of occurrences of each character
- build encoding tree: build a binary tree with a particular structure, where each node represents a character and its count of occurrences in the file. A priority queue is used to help build the tree along the way.
- build encoding map: traverse the binary tree to discover the binary encodings of each character
- encode data: re-examine the source file's contents, and for each character, output the encoded binary version of that character to the destination file.

Source code: [HuffmanCodingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/macro/huffmancoding/HuffmanCodingBenchmark.java)

<<IMG: HuffmanCodingBenchmark.svg>>

## PalindromeBenchmark

Iterates through a list of Strings read from a file and checks, for each String, if it is a palindrome.
The benchmark uses a few alternative approaches:
- trampolines
- recursive
- iterative

The trampoline pattern is used for implementing algorithms recursively but without blowing the stack (as an alternative to recursive functions). A trampoline is an iteration applying a list of functions, where each function returns the next function to be called.

Source code: [PalindromeBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/macro/palindrome/PalindromeBenchmark.java)

<<IMG: PalindromeBenchmark.svg>>

## PopulationVarianceBenchmark

This benchmark generates a population of different ages and then calculates the age variation.
Population variance is the average of the distances from each data point in a particular population to the mean squared. It indicates how data points spread out in the population. Population variance is an important measure of dispersion used in statistics.

Source code: [PopulationVarianceBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/macro/populationvariance/PopulationVarianceBenchmark.java)

<<IMG: PopulationVarianceBenchmark.svg>>

## PrimesBenchmark

Computes the number of prime numbers until a threshold (e.g., N) number. The benchmark uses a few alternative approaches:
- sieve of Eratosthenes
- a stream of prime numbers

Source code: [PrimesBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/macro/prime/PrimesBenchmark.java)

<<IMG: PrimesBenchmark.svg>>

## WordFrequencyBenchmark

Computes the word frequencies/occurrences from a text file. The benchmark uses a few alternative approaches:
- iterative
- parallel streams
- pattern streams

Source code: [WordFrequencyBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/macro/wordfrequency/WordFrequencyBenchmark.java)

<<IMG: WordFrequencyBenchmark.svg>>

## Macro Geometric Mean

The Geometric Mean (GM) for the macro benchmarks category on each architecture is described below.

This is purely informative to have a high-level understanding on the overall benchmark scores.

## x86_64

No. | JVM distribution | Arcitecture | Geometric Mean | Unit
----|------------------|-------------|----------------|--------
1   | GraalVM EE       | x86_64      | 4,224,822.25   | ns/op
2   | OpenJDK          | x86_64      | 4,638,065.96   | ns/op
3   | GraalVM CE       | x86_64      | 5,028,870.69   | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

## arm64

No. | JVM distribution | Arcitecture | Geometric Mean | Unit
----|------------------|-------------|----------------|--------
1   | GraalVM EE       | arm64       | 2,425,617.28   | ns/op
2   | OpenJDK          | arm64       | 2,614,295.98   | ns/op
3   | GraalVM CE       | arm64       | 2,899,319.25   | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

To summarize, on both architectures the geometric mean is consistent:

1. GraalVM EE is the fastest
2. OpenJDK is in the middle
3. GraalVM CE is the slowest

# Final Thoughts

**TODO: Florin/Ionut**

# References
- [OpenJDK sources](https://github.com/openjdk/jdk)
- [GraalVM sources](https://github.com/oracle/graal)
- [JHM sources](https://github.com/openjdk/jmh)
- [ZGC Wiki](https://wiki.openjdk.org/display/zgc/Main)
- [Shenandoah GC Wiki](https://wiki.openjdk.org/display/shenandoah/Main)
- [Efficient reference classification and quick memory reuse in a system that supports concurrent garbage collection](https://patents.google.com/patent/US9921959B2/en) - Per A. Liden, Stefan Mats Rikard Karlsson
- [Concurrent Remembered Set Refinement in Generational Garbage Collection](https://www.researchgate.net/publication/220817732_Concurrent_Remembered_Set_Refinement_in_Generational_Garbage_Collection) - David Detlefs, Ross Knippel, William D. Clinger, Matthias Jacob
- [Aleksey Shipilëv: One Stop Page](https://shipilev.net)
- [Renaissance: Benchmarking Suite for Parallel Applications on the JVM](https://renaissance.dev/resources/docs/renaissance-suite.pdf)