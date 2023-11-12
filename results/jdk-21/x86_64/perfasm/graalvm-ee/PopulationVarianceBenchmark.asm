# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 117.373 ms/op
# Warmup Iteration   2: 92.221 ms/op
# Warmup Iteration   3: 90.415 ms/op
# Warmup Iteration   4: 90.495 ms/op
# Warmup Iteration   5: 91.514 ms/op
Iteration   1: 89.147 ms/op
Iteration   2: 90.053 ms/op
Iteration   3: 92.936 ms/op
Iteration   4: 89.670 ms/op
Iteration   5: 89.649 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer":
  90.291 ±(99.9%) 5.827 ms/op [Average]
  (min, avg, max) = (89.147, 90.291, 92.936), stdev = 1.513
  CI (99.9%): [84.464, 96.118] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer:asm":
PrintAssembly processed: 344165 total address lines.
Perf output processed (skipped 67.726 seconds):
 Column 1: cycles (309504 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 

   0.01%         0x00007f04bedbf89f:   mov    %esi,0x14(%r11)
   0.00%         0x00007f04bedbf8a3:   mov    %r11,%rsi
   0.00%         0x00007f04bedbf8a6:   xor    %rax,%rsi
                 0x00007f04bedbf8a9:   test   $0xffffffffffe00000,%rsi
          ╭      0x00007f04bedbf8b0:   je     0x00007f04bedbf8d6
          │      0x00007f04bedbf8b6:   test   %rax,%rax
          │╭     0x00007f04bedbf8b9:   je     0x00007f04bedbf8d6
          ││     0x00007f04bedbf8bf:   mov    0x40(%rsp),%r10
          ││     0x00007f04bedbf8c4:   mov    %r11,%rsi
          ││     0x00007f04bedbf8c7:   shr    $0x9,%rsi
   0.00%  ││     0x00007f04bedbf8cb:   cmpb   $0x2,(%rsi,%r10,1)
          ││     0x00007f04bedbf8d0:   jne    0x00007f04bedbfcc5           ;*putfield result {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.util.concurrent.RecursiveTask::exec@5 (line 110)
          ││                                                               ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                                                               ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.01%  ↘↘     0x00007f04bedbf8d6:   mov    0xc(%r11),%r10d              ;* unwind (locked if synchronized)
                                                                           ; - jdk.internal.misc.Unsafe::getIntVolatile@-3
                                                                           ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@3 (line 3190)
                                                                           ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
                                                                           ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.01%         0x00007f04bedbf8da:   mov    %r10d,%r8d
   0.00%         0x00007f04bedbf8dd:   or     $0x80000000,%r8d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::setDone@8 (line 317)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.00%         0x00007f04bedbf8e4:   mov    %r8d,0x3c(%rsp)
   0.01%         0x00007f04bedbf8e9:   mov    %r10d,%eax
                 0x00007f04bedbf8ec:   lock cmpxchg %r8d,0xc(%r11)
   0.35%         0x00007f04bedbf8f2:   jne    0x00007f04bedc01b7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@21 (line 3191)
                                                                           ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
                                                                           ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                 0x00007f04bedbf8f8:   mov    0x10(%r11),%r9d              ;*getfield aux {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::signalWaiters@1 (line 301)
                                                                           ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.02%         0x00007f04bedbf8fc:   nopl   0x0(%rax)
                 0x00007f04bedbf900:   test   %r9d,%r9d
                 0x00007f04bedbf903:   jne    0x00007f04bedbfe98           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::signalWaiters@6 (line 301)
                                                                           ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                 0x00007f04bedbf909:   test   $0x10000,%r10d
                 0x00007f04bedbf910:   jne    0x00007f04bedc004d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@20 (line 669)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                 0x00007f04bedbf916:   mov    0x14(%r11),%esi              ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@29 (line 671)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.02%         0x00007f04bedbf91a:   nopw   0x0(%rax,%rax,1)
                 0x00007f04bedbf920:   test   %esi,%esi
                 0x00007f04bedbf922:   je     0x00007f04bedc0026
                 0x00007f04bedbf928:   cmpl   $0x324e8,0x8(,%rsi,8)        ;   {metadata(&apos;java/lang/Double&apos;)}
   0.01%         0x00007f04bedbf933:   jne    0x00007f04bedc011d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@109 (line 103)
                 0x00007f04bedbf939:   mov    0x10(%rsp),%r10              ; ImmutableOopMap {r10=Oop r11=Oop [16]=Oop }
                                                                           ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.concurrent.ForkJoinTask::setDone@14 (line 319)
                                                                           ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                           ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.00%         0x00007f04bedbf93e:   vmovsd 0x10(,%rsi,8),%xmm0          ; implicit exception: dispatches to 0x00007f04bedc027b
                 0x00007f04bedbf947:   vmovsd %xmm0,0x40(%rsp)
   0.01%         0x00007f04bedbf94d:   mov    0xc(%r10),%r11d              ;*getfield status {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@1 (line 650)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.00%         0x00007f04bedbf951:   test   %r11d,%r11d
                 0x00007f04bedbf954:   jl     0x00007f04bedbfe90           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@6 (line 650)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                 0x00007f04bedbf95a:   and    $0x40000,%r11d               ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@13 (line 651)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                 0x00007f04bedbf961:   mov    %r10,%rsi
   0.01%         0x00007f04bedbf964:   mov    %r11d,%edx
                 0x00007f04bedbf967:   mov    $0x0,%rcx                    ;*invokevirtual awaitDone {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@15 (line 651)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                 0x00007f04bedbf96e:   nop
                 0x00007f04bedbf96f:   call   0x00007f04be764380           ; ImmutableOopMap {[16]=Oop }
                                                                           ;*invokevirtual awaitDone {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@15 (line 651)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                           ;   {optimized virtual_call}
                 0x00007f04bedbf974:   nopl   0x5000664(%rax,%rax,1)       ;   {other}
                 0x00007f04bedbf97c:   mov    %eax,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@19 (line 652)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.02%         0x00007f04bedbf97f:   nop
                 0x00007f04bedbf980:   test   $0x10000,%r10d
                 0x00007f04bedbf987:   jne    0x00007f04bedbffd5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinTask::join@23 (line 652)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                 0x00007f04bedbf98d:   mov    0x10(%rsp),%rsi
   0.02%         0x00007f04bedbf992:   mov    0x14(%rsi),%eax              ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                           ; - java.util.concurrent.ForkJoinTask::join@32 (line 654)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.00%         0x00007f04bedbf995:   test   %eax,%eax
                 0x00007f04bedbf997:   je     0x00007f04bedc0157
   0.00%         0x00007f04bedbf99d:   data16 xchg %ax,%ax
                 0x00007f04bedbf9a0:   cmpl   $0x324e8,0x8(,%rax,8)        ;   {metadata(&apos;java/lang/Double&apos;)}
   0.01%         0x00007f04bedbf9ab:   jne    0x00007f04bedc0145           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@119 (line 103)
   0.00%         0x00007f04bedbf9b1:   vmovsd 0x40(%rsp),%xmm0             ; ImmutableOopMap {rsi=Oop [16]=Oop }
                                                                           ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.concurrent.ForkJoinTask::join@19 (line 652)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.00%         0x00007f04bedbf9b7:   vaddsd 0x10(,%rax,8),%xmm0,%xmm1    ; implicit exception: dispatches to 0x00007f04bedc029e
   0.02%         0x00007f04bedbf9c0:   mov    0x1b8(%r15),%rax
                 0x00007f04bedbf9c7:   lea    0x18(%rax),%r11
                 0x00007f04bedbf9cb:   cmp    0x1c8(%r15),%r11
                 0x00007f04bedbf9d2:   ja     0x00007f04bedbfd4a
   0.01%         0x00007f04bedbf9d8:   mov    %r11,0x1b8(%r15)
                 0x00007f04bedbf9df:   prefetchw 0xd8(%rax)
   0.00%         0x00007f04bedbf9e6:   movq   $0x1,(%rax)
                 0x00007f04bedbf9ed:   movl   $0x324e8,0x8(%rax)           ;   {metadata(&apos;java/lang/Double&apos;)}
   0.02%         0x00007f04bedbf9f4:   vmovsd %xmm1,0x10(%rax)             ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Double::valueOf@-3
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
   0.00%         0x00007f04bedbf9f9:   mov    0x50(%rsp),%rbp
                 0x00007f04bedbf9fe:   add    $0x58,%rsp
                 0x00007f04bedbfa02:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f04bedbfa09:   ja     0x00007f04bedc01fe
   0.01%         0x00007f04bedbfa0f:   vzeroupper 
   0.02%         0x00007f04bedbfa12:   ret                                 ; ImmutableOopMap {rdx=Oop rsi=Oop r11=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@0 (line 90)
                 0x00007f04bedbfa13:   mov    0xc(,%r10,8),%eax            ; implicit exception: dispatches to 0x00007f04bedc02c1
   0.01%         0x00007f04bedbfa1b:   mov    %eax,%r10d
                 0x00007f04bedbfa1e:   xchg   %ax,%ax
                 0x00007f04bedbfa20:   cmp    %rbx,%r10
                 0x00007f04bedbfa23:   jbe    0x00007f04bedc01a5
                 0x00007f04bedbfa29:   cmp    %r9d,%eax
                 0x00007f04bedbfa2c:   jbe    0x00007f04bedc00f4           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%         0x00007f04bedbfa32:   data16 nopw 0x0(%rax,%rax,1)
                 0x00007f04bedbfa3c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@6 (line 53)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ↗    0x00007f04bedbfa40:   vmovsd 0x10(%rdx,%r9,8),%xmm1       ;*daload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.47%    │    0x00007f04bedbfa47:   vmovsd 0x10(,%r11,8),%xmm2          ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@1
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    │    0x00007f04bedbfa51:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.04%    │    0x00007f04bedbfa55:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.04%    │    0x00007f04bedbfa59:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.04%    │    0x00007f04bedbfa5d:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            │    0x00007f04bedbfa60:   cmp    %r9d,%edi
            ╰    0x00007f04bedbfa63:   jg     0x00007f04bedbfa40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                 0x00007f04bedbfa65:   cmp    %r9d,%ecx
                 0x00007f04bedbfa68:   jle    0x00007f04bedbfe1f
                 0x00007f04bedbfa6e:   mov    %r9d,%eax
   0.01%         0x00007f04bedbfa71:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f04bedbfa7c:   data16 data16 xchg %ax,%ax
             ↗   0x00007f04bedbfa80:   vmovsd 0x10(%rdx,%rax,8),%xmm1
             │   0x00007f04bedbfa86:   movslq %eax,%rsi
   0.53%     │   0x00007f04bedbfa89:   vmovsd 0x18(%rdx,%rsi,8),%xmm3
   0.00%     │   0x00007f04bedbfa8f:   vmovsd 0x20(%rdx,%rsi,8),%xmm4
   0.03%     │   0x00007f04bedbfa95:   vmovsd 0x28(%rdx,%rsi,8),%xmm5
   0.00%     │   0x00007f04bedbfa9b:   vmovsd 0x30(%rdx,%rsi,8),%xmm6
   0.49%     │   0x00007f04bedbfaa1:   vmovsd 0x38(%rdx,%rsi,8),%xmm7
   0.00%     │   0x00007f04bedbfaa7:   vmovsd 0x40(%rdx,%rsi,8),%xmm8
   1.25%     │   0x00007f04bedbfaad:   vmovsd 0x48(%rdx,%rsi,8),%xmm9      ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.05%     │   0x00007f04bedbfab3:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.49%     │   0x00007f04bedbfab7:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%     │   0x00007f04bedbfabb:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.61%     │   0x00007f04bedbfabf:   vsubsd %xmm2,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%     │   0x00007f04bedbfac3:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%     │   0x00007f04bedbfac7:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.05%     │   0x00007f04bedbfacb:   vsubsd %xmm2,%xmm4,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%     │   0x00007f04bedbfacf:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%     │   0x00007f04bedbfad3:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.59%     │   0x00007f04bedbfad7:   vsubsd %xmm2,%xmm5,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%     │   0x00007f04bedbfadb:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%     │   0x00007f04bedbfadf:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.37%     │   0x00007f04bedbfae3:   vsubsd %xmm2,%xmm6,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%     │   0x00007f04bedbfae7:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             │   0x00007f04bedbfaeb:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.07%     │   0x00007f04bedbfaef:   vsubsd %xmm2,%xmm7,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%     │   0x00007f04bedbfaf3:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             │   0x00007f04bedbfaf7:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.15%     │   0x00007f04bedbfafb:   vsubsd %xmm2,%xmm8,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%     │   0x00007f04bedbfaff:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             │                                                             ;   {no_reloc}
   0.04%     │   0x00007f04bedbfb03:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.96%     │   0x00007f04bedbfb07:   vsubsd %xmm2,%xmm9,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%     │   0x00007f04bedbfb0b:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             │   0x00007f04bedbfb0f:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.99%     │   0x00007f04bedbfb13:   lea    0x8(%rax),%eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%     │   0x00007f04bedbfb16:   cmp    %eax,%ecx
             ╰   0x00007f04bedbfb18:   jg     0x00007f04bedbfa80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                 0x00007f04bedbfb1e:   xchg   %ax,%ax
                 0x00007f04bedbfb20:   cmp    %eax,%r8d
                 0x00007f04bedbfb23:   jle    0x00007f04bedbf609
   0.01%         0x00007f04bedbfb29:   nopl   0x0(%rax)
              ↗  0x00007f04bedbfb30:   vmovsd 0x10(%rdx,%rax,8),%xmm1      ;*daload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.04%      │  0x00007f04bedbfb36:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
              │  0x00007f04bedbfb3a:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%      │  0x00007f04bedbfb3e:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.17%      │  0x00007f04bedbfb42:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
              │  0x00007f04bedbfb44:   cmp    %eax,%r8d
              │  0x00007f04bedbfb47:   jle    0x00007f04bedbf609
              ╰  0x00007f04bedbfb4d:   jmp    0x00007f04bedbfb30
                 0x00007f04bedbfb4f:   cmp    $0x102ba78,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f044002ba78&apos;)}
....................................................................................................
  20.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 

               0x00007f04bedbfb47:   jle    0x00007f04bedbf609
               0x00007f04bedbfb4d:   jmp    0x00007f04bedbfb30
               0x00007f04bedbfb4f:   cmp    $0x102ba78,%eax              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f044002ba78&apos;)}
               0x00007f04bedbfb55:   jne    0x00007f04bedc00af           ;*invokeinterface compute {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
               0x00007f04bedbfb5b:   nopl   0x0(%rax,%rax,1)
               0x00007f04bedbfb60:   cmp    %r9d,%r8d
               0x00007f04bedbfb63:   jle    0x00007f04bedbf609           ; ImmutableOopMap {rdx=Oop [32]=Oop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@0 (line 90)
   0.01%       0x00007f04bedbfb69:   mov    0xc(,%r10,8),%eax            ; implicit exception: dispatches to 0x00007f04bedc02e4
               0x00007f04bedbfb71:   mov    %eax,%esi
               0x00007f04bedbfb73:   cmp    %rbx,%rsi
               0x00007f04bedbfb76:   jbe    0x00007f04bedc00c6
   0.00%       0x00007f04bedbfb7c:   nopl   0x0(%rax)
   0.01%       0x00007f04bedbfb80:   cmp    %r9d,%eax
               0x00007f04bedbfb83:   jbe    0x00007f04bedc018d           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
               0x00007f04bedbfb89:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@5 (line 39)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ↗    0x00007f04bedbfb90:   vaddsd 0x10(%rdx,%r9,8),%xmm0,%xmm0 ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.47%  │    0x00007f04bedbfb97:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%  │    0x00007f04bedbfb9a:   cmp    %r9d,%edi
          ╰    0x00007f04bedbfb9d:   jg     0x00007f04bedbfb90           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
               0x00007f04bedbfb9f:   nop
   0.01%       0x00007f04bedbfba0:   cmp    %r9d,%ecx
               0x00007f04bedbfba3:   jle    0x00007f04bedbfe71
               0x00007f04bedbfba9:   mov    %r9d,%eax
               0x00007f04bedbfbac:   nopl   0x0(%rax)
   0.51%   ↗   0x00007f04bedbfbb0:   vaddsd 0x10(%rdx,%rax,8),%xmm0,%xmm0
   1.57%   │   0x00007f04bedbfbb6:   movslq %eax,%rsi
           │   0x00007f04bedbfbb9:   vmovsd 0x18(%rdx,%rsi,8),%xmm1
           │   0x00007f04bedbfbbf:   vmovsd 0x20(%rdx,%rsi,8),%xmm2
   0.61%   │   0x00007f04bedbfbc5:   vmovsd 0x28(%rdx,%rsi,8),%xmm3
   0.00%   │   0x00007f04bedbfbcb:   vmovsd 0x30(%rdx,%rsi,8),%xmm4
   0.01%   │   0x00007f04bedbfbd1:   vmovsd 0x38(%rdx,%rsi,8),%xmm5
   0.00%   │   0x00007f04bedbfbd7:   vmovsd 0x40(%rdx,%rsi,8),%xmm6      ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.78%   │   0x00007f04bedbfbdd:   vaddsd %xmm1,%xmm0,%xmm0
   1.00%   │   0x00007f04bedbfbe1:   vaddsd %xmm2,%xmm0,%xmm0
   1.98%   │   0x00007f04bedbfbe5:   vaddsd %xmm3,%xmm0,%xmm0
   2.04%   │   0x00007f04bedbfbe9:   vaddsd %xmm4,%xmm0,%xmm0
   1.99%   │   0x00007f04bedbfbed:   vaddsd %xmm5,%xmm0,%xmm0
   2.05%   │   0x00007f04bedbfbf1:   vaddsd %xmm6,%xmm0,%xmm0
   2.11%   │   0x00007f04bedbfbf5:   vaddsd 0x48(%rdx,%rsi,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.09%   │   0x00007f04bedbfbfb:   lea    0x8(%rax),%eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
           │   0x00007f04bedbfbfe:   xchg   %ax,%ax
           │   0x00007f04bedbfc00:   cmp    %eax,%ecx
           ╰   0x00007f04bedbfc02:   jg     0x00007f04bedbfbb0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%       0x00007f04bedbfc04:   cmp    %eax,%r8d
               0x00007f04bedbfc07:   jle    0x00007f04bedbf609
               0x00007f04bedbfc0d:   data16 xchg %ax,%ax
            ↗  0x00007f04bedbfc10:   vaddsd 0x10(%rdx,%rax,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.17%    │  0x00007f04bedbfc16:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            │  0x00007f04bedbfc18:   nopl   0x0(%rax,%rax,1)
            │  0x00007f04bedbfc20:   cmp    %eax,%r8d
            │  0x00007f04bedbfc23:   jle    0x00007f04bedbf609
   0.05%    ╰  0x00007f04bedbfc29:   jmp    0x00007f04bedbfc10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
               0x00007f04bedbfc2b:   mov    0x18(%rsp),%rsi
               0x00007f04bedbfc30:   lea    0x14(%rsi),%r10
               0x00007f04bedbfc34:   mov    (%r10),%r10d
               0x00007f04bedbfc37:   test   %r10d,%r10d
               0x00007f04bedbfc3a:   je     0x00007f04bedbfdaa
               0x00007f04bedbfc40:   mov    0x28(%r15),%r11
               0x00007f04bedbfc44:   shl    $0x3,%r10
....................................................................................................
  19.45%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda.0x00007f044002bc90::compute, version 2, compile id 1105 

                --------------------------------------------------------------------------------
                [Constant Pool (empty)]
                --------------------------------------------------------------------------------
                [Entry Point]
                  # {method} {0x00007f043b4e3f98} &apos;compute&apos; &apos;([DII)D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f044002bc90&apos;
                  # this:     rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f044002bc90&apos;
                  # parm0:    rdx:rdx   = &apos;[D&apos;
                  # parm1:    rcx       = int
                  # parm2:    r8        = int
                  #           [sp+0x20]  (sp of caller)
   0.00%          0x00007f04bedd9080:   mov    0x8(%rsi),%r10d
                  0x00007f04bedd9084:   movabs $0x7f043f000000,%r12
                  0x00007f04bedd908e:   add    %r12,%r10
                  0x00007f04bedd9091:   xor    %r12,%r12
   0.00%          0x00007f04bedd9094:   cmp    %r10,%rax
                  0x00007f04bedd9097:   jne    0x00007f04be764080           ;   {runtime_call ic_miss_stub}
                  0x00007f04bedd909d:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007f04bedd90a0:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007f04bedd90a7:   sub    $0x18,%rsp
                  0x00007f04bedd90ab:   nop
                  0x00007f04bedd90ac:   cmpl   $0x1,0x20(%r15)
                  0x00007f04bedd90b4:   jne    0x00007f04bedd9279
   0.00%          0x00007f04bedd90ba:   mov    %rbp,0x10(%rsp)
                  0x00007f04bedd90bf:   vxorpd %xmm0,%xmm0,%xmm0            ;*dconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@0 (line 52)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                  0x00007f04bedd90c3:   cmp    %ecx,%r8d
          ╭       0x00007f04bedd90c6:   jg     0x00007f04bedd90ee
          │  ↗↗   0x00007f04bedd90cc:   mov    0x10(%rsp),%rbp
          │  ││   0x00007f04bedd90d1:   add    $0x18,%rsp
   0.00%  │  ││   0x00007f04bedd90d5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  ││   0x00007f04bedd90e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  ││   0x00007f04bedd90e7:   ja     0x00007f04bedd9289
          │  ││   0x00007f04bedd90ed:   ret                                 ; ImmutableOopMap {rdx=Oop rsi=Oop }
          │  ││                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@0
          ↘  ││   0x00007f04bedd90ee:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f04bedd929d
   0.00%     ││   0x00007f04bedd90f2:   movslq %ecx,%r11
             ││   0x00007f04bedd90f5:   mov    %r8d,%r9d
             ││   0x00007f04bedd90f8:   sub    %ecx,%r9d
             ││   0x00007f04bedd90fb:   movslq %r9d,%r9
   0.01%     ││   0x00007f04bedd90fe:   add    %r9,%r11
             ││   0x00007f04bedd9101:   dec    %r11
             ││   0x00007f04bedd9104:   mov    %r10d,%r9d
             ││   0x00007f04bedd9107:   cmp    %r11,%r9
             ││   0x00007f04bedd910a:   jbe    0x00007f04bedd9256
   0.00%     ││   0x00007f04bedd9110:   cmp    %ecx,%r10d
             ││   0x00007f04bedd9113:   jbe    0x00007f04bedd9256           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             ││   0x00007f04bedd9119:   vmovsd 0x10(%rsi),%xmm1             ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@1
             ││   0x00007f04bedd911e:   mov    %ecx,%r10d
             ││   0x00007f04bedd9121:   inc    %r10d
   0.00%     ││   0x00007f04bedd9124:   cmp    %r10d,%r8d
             ││   0x00007f04bedd9127:   mov    %r8d,%r11d
             ││   0x00007f04bedd912a:   cmovg  %r10d,%r11d
             ││   0x00007f04bedd912e:   xchg   %ax,%ax                      ;*iload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@6 (line 53)
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%   ↗ ││   0x00007f04bedd9130:   vmovsd 0x10(%rdx,%rcx,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.84%   │ ││   0x00007f04bedd9136:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.03%   │ ││   0x00007f04bedd913a:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.02%   │ ││   0x00007f04bedd913e:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.02%   │ ││   0x00007f04bedd9142:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
           │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
           │ ││   0x00007f04bedd9144:   cmp    %ecx,%r11d
           ╰ ││   0x00007f04bedd9147:   jg     0x00007f04bedd9130           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             ││   0x00007f04bedd9149:   lea    -0x8(%r8),%r10d
             ││   0x00007f04bedd914d:   cmp    $0x80000008,%r8d
   0.01%     ││   0x00007f04bedd9154:   mov    $0x80000000,%r11d
             ││   0x00007f04bedd915a:   cmovl  %r11d,%r10d
             ││   0x00007f04bedd915e:   xchg   %ax,%ax
             ││   0x00007f04bedd9160:   cmp    %ecx,%r10d
             ││   0x00007f04bedd9163:   jle    0x00007f04bedd9251
   0.00%     ││   0x00007f04bedd9169:   mov    %ecx,%r11d
             ││   0x00007f04bedd916c:   nopl   0x0(%rax)
            ↗││   0x00007f04bedd9170:   vmovsd 0x10(%rdx,%r11,8),%xmm2
            │││   0x00007f04bedd9177:   movslq %r11d,%r9
   0.31%    │││   0x00007f04bedd917a:   vmovsd 0x18(%rdx,%r9,8),%xmm3
   0.00%    │││   0x00007f04bedd9181:   vmovsd 0x20(%rdx,%r9,8),%xmm4
   0.02%    │││   0x00007f04bedd9188:   vmovsd 0x28(%rdx,%r9,8),%xmm5
            │││   0x00007f04bedd918f:   vmovsd 0x30(%rdx,%r9,8),%xmm6
   0.30%    │││   0x00007f04bedd9196:   vmovsd 0x38(%rdx,%r9,8),%xmm7
   0.00%    │││   0x00007f04bedd919d:   vmovsd 0x40(%rdx,%r9,8),%xmm8
   0.73%    │││   0x00007f04bedd91a4:   vmovsd 0x48(%rdx,%r9,8),%xmm9       ;*daload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.03%    │││   0x00007f04bedd91ab:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.29%    │││   0x00007f04bedd91af:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd91b3:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.40%    │││   0x00007f04bedd91b7:   vsubsd %xmm1,%xmm3,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91bb:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91bf:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.22%    │││   0x00007f04bedd91c3:   vsubsd %xmm1,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91c7:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91cb:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.53%    │││   0x00007f04bedd91cf:   vsubsd %xmm1,%xmm5,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91d3:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd91d7:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.79%    │││   0x00007f04bedd91db:   vsubsd %xmm1,%xmm6,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd91df:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │││                                                             ;   {no_reloc}
            │││   0x00007f04bedd91e3:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.25%    │││   0x00007f04bedd91e7:   vsubsd %xmm1,%xmm7,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.01%    │││   0x00007f04bedd91eb:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │││   0x00007f04bedd91ef:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.29%    │││   0x00007f04bedd91f3:   vsubsd %xmm1,%xmm8,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd91f7:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.02%    │││   0x00007f04bedd91fb:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.20%    │││   0x00007f04bedd91ff:   vsubsd %xmm1,%xmm9,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd9203:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
            │││   0x00007f04bedd9207:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   1.16%    │││   0x00007f04bedd920b:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
            │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%    │││   0x00007f04bedd920f:   cmp    %r11d,%r10d
            ╰││   0x00007f04bedd9212:   jg     0x00007f04bedd9170           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
             ││   0x00007f04bedd9218:   nopl   0x0(%rax,%rax,1)
             ││   0x00007f04bedd9220:   cmp    %r11d,%r8d
             ╰│   0x00007f04bedd9223:   jle    0x00007f04bedd90cc
   0.00%      │   0x00007f04bedd9229:   nopl   0x0(%rax)
              │↗  0x00007f04bedd9230:   vmovsd 0x10(%rdx,%r11,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.04%      ││  0x00007f04bedd9237:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              ││  0x00007f04bedd923b:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.00%      ││  0x00007f04bedd923f:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
   0.10%      ││  0x00007f04bedd9243:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
              ││  0x00007f04bedd9246:   cmp    %r11d,%r8d
              ╰│  0x00007f04bedd9249:   jle    0x00007f04bedd90cc
               ╰  0x00007f04bedd924f:   jmp    0x00007f04bedd9230           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002bc90::compute@7
                  0x00007f04bedd9251:   mov    %ecx,%r11d
....................................................................................................
  11.73%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 

 <region is too big to display, has 1031 lines, but threshold is 1000>
....................................................................................................
  11.65%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 

             0x00007f04bedcfafa:   vxorpd %xmm0,%xmm0,%xmm0            ;*dconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@0 (line 38)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
             0x00007f04bedcfafe:   xchg   %ax,%ax
   0.01%     0x00007f04bedcfb00:   cmp    %ecx,%eax
             0x00007f04bedcfb02:   jle    0x00007f04bedcfe6e           ; ImmutableOopMap {r13=Oop [48]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop }
                                                                       ;*dup {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.concurrent.ForkJoinTask::doExec@4 (line 385)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
             0x00007f04bedcfb08:   mov    0xc(,%r8,8),%esi             ; implicit exception: dispatches to 0x00007f04bedd1160
             0x00007f04bedcfb10:   movslq %ecx,%rdx
             0x00007f04bedcfb13:   movslq %ebp,%r8
   0.01%     0x00007f04bedcfb16:   add    %r8,%rdx
             0x00007f04bedcfb19:   dec    %rdx
             0x00007f04bedcfb1c:   mov    %esi,%r8d
             0x00007f04bedcfb1f:   nop
   0.01%     0x00007f04bedcfb20:   cmp    %rdx,%r8
             0x00007f04bedcfb23:   jbe    0x00007f04bedd0d05
   0.00%     0x00007f04bedcfb29:   cmp    %ecx,%esi
             0x00007f04bedcfb2b:   jbe    0x00007f04bedd0fad           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.00%     0x00007f04bedcfb31:   mov    %ecx,%esi
             0x00007f04bedcfb33:   inc    %esi
   0.00%     0x00007f04bedcfb35:   cmp    %esi,%eax
             0x00007f04bedcfb37:   mov    %eax,%edx
             0x00007f04bedcfb39:   cmovg  %esi,%edx
             0x00007f04bedcfb3c:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@5 (line 39)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.00%  ↗  0x00007f04bedcfb40:   vaddsd 0x10(%r13,%rcx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
          │                                                            ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.91%  │  0x00007f04bedcfb47:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
          │                                                            ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.00%  │  0x00007f04bedcfb49:   cmp    %ecx,%edx
          ╰  0x00007f04bedcfb4b:   jg     0x00007f04bedcfb40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
             0x00007f04bedcfb4d:   lea    -0x8(%rax),%esi
   0.00%     0x00007f04bedcfb50:   cmp    $0x80000008,%eax
             0x00007f04bedcfb56:   mov    $0x80000000,%edx
             0x00007f04bedcfb5b:   cmovl  %edx,%esi
             0x00007f04bedcfb5e:   xchg   %ax,%ax
   0.00%     0x00007f04bedcfb60:   cmp    %ecx,%esi
             0x00007f04bedcfb62:   jle    0x00007f04bedcfe77
             0x00007f04bedcfb68:   mov    %ecx,%edx
             0x00007f04bedcfb6a:   nopw   0x0(%rax,%rax,1)
             0x00007f04bedcfb70:   vaddsd 0x10(%r13,%rdx,8),%xmm0,%xmm0
   1.24%     0x00007f04bedcfb77:   movslq %edx,%rcx
             0x00007f04bedcfb7a:   vmovsd 0x18(%r13,%rcx,8),%xmm1
             0x00007f04bedcfb81:   vmovsd 0x20(%r13,%rcx,8),%xmm2
   0.36%     0x00007f04bedcfb88:   vmovsd 0x28(%r13,%rcx,8),%xmm3
   0.00%     0x00007f04bedcfb8f:   vmovsd 0x30(%r13,%rcx,8),%xmm4      ;   {no_reloc}
   0.01%     0x00007f04bedcfb96:   vmovsd 0x38(%r13,%rcx,8),%xmm5
   0.00%     0x00007f04bedcfb9d:   vmovsd 0x40(%r13,%rcx,8),%xmm6      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.97%     0x00007f04bedcfba4:   vaddsd %xmm1,%xmm0,%xmm0
   0.62%     0x00007f04bedcfba8:   vaddsd %xmm2,%xmm0,%xmm0
   1.35%     0x00007f04bedcfbac:   vaddsd %xmm3,%xmm0,%xmm0
   1.07%     0x00007f04bedcfbb0:   vaddsd %xmm4,%xmm0,%xmm0
   1.19%     0x00007f04bedcfbb4:   vaddsd %xmm5,%xmm0,%xmm0
   1.24%     0x00007f04bedcfbb8:   vaddsd %xmm6,%xmm0,%xmm0
   1.28%     0x00007f04bedcfbbc:   vaddsd 0x48(%r13,%rcx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   1.26%     0x00007f04bedcfbc3:   lea    0x8(%rdx),%edx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f044002ba78::compute@3
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                       ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                       ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                       ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec@194 (line 1351)
                                                                       ; - java.util.concurrent.ForkJoinTask::awaitDone@128 (line 422)
   0.00%     0x00007f04bedcfbc6:   cmp    %edx,%esi
             0x00007f04bedcfbc8:   jg     0x00007f04bedcfb70           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
....................................................................................................
  11.52%  <total for region 5>

....[Hottest Regions]...............................................................................
  20.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 
  19.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 
  11.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda.0x00007f044002bc90::compute, version 2, compile id 1105 
  11.65%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
  11.52%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
   8.58%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
   4.64%              kernel  [unknown] 
   3.92%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
   1.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 
   1.12%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
   0.73%              kernel  [unknown] 
   0.70%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1160 
   0.63%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
   0.44%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
   0.33%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
   0.32%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1160 
   0.19%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
   0.17%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1081 
   0.15%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
   0.10%              kernel  [unknown] 
   2.02%  <...other 1863 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  41.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 4, compile id 1131 
  24.79%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 9, compile id 1279 
  13.86%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1147 
  11.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda.0x00007f044002bc90::compute, version 2, compile id 1105 
   6.82%              kernel  [unknown] 
   1.02%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1160 
   0.20%                      <unknown> 
   0.17%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1081 
   0.03%      jvmci, level 4  java.util.concurrent.ForkJoinPool::helpJoin, version 4, compile id 1152 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 4, compile id 1376 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.24%  <...other 330 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.67%      jvmci, level 4
   6.82%              kernel
   0.20%                    
   0.17%           libjvm.so
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.01%    Unknown, level 0
   0.00%              [vdso]
   0.00%         interpreter
   0.00%    perf-2139366.map
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional

# Run progress: 33.33% complete, ETA 00:04:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 414.684 ms/op
# Warmup Iteration   2: 390.444 ms/op
# Warmup Iteration   3: 389.521 ms/op
# Warmup Iteration   4: 398.797 ms/op
# Warmup Iteration   5: 388.978 ms/op
Iteration   1: 387.308 ms/op
Iteration   2: 410.124 ms/op
Iteration   3: 411.916 ms/op
Iteration   4: 412.672 ms/op
Iteration   5: 414.722 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional":
  407.348 ±(99.9%) 43.603 ms/op [Average]
  (min, avg, max) = (387.308, 407.348, 414.722), stdev = 11.324
  CI (99.9%): [363.745, 450.952] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional:asm":
PrintAssembly processed: 298696 total address lines.
Perf output processed (skipped 69.060 seconds):
 Column 1: cycles (272923 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.AbstractTask::compute, version 4, compile id 1297 

                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.89%    0x00007faa66de0909:   vmovsd 0x10(,%rbp,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de0912:   vmovsd 0x10(%rsi,%rax,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de0918:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de091c:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.45%    0x00007faa66de0920:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.93%    0x00007faa66de0924:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.58%    0x00007faa66de0928:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.72%    0x00007faa66de092c:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.74%    0x00007faa66de0930:   vmovsd %xmm1,0x18(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de0939:   vmovsd %xmm4,0x10(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de0942:   vaddsd 0x20(,%rbp,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
                                                                      ;   {no_reloc}
   0.00%    0x00007faa66de094b:   vmovsd %xmm1,0x20(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.44%    0x00007faa66de0954:   vmovsd 0x18(,%rbp,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.84%    0x00007faa66de095d:   vmovsd 0x10(,%rbp,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de0966:   movslq %eax,%r10
            0x00007faa66de0969:   vmovsd 0x18(%rsi,%r10,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.01%    0x00007faa66de0970:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de0974:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de0978:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.88%    0x00007faa66de097c:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.59%    0x00007faa66de0980:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.75%    0x00007faa66de0984:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.76%    0x00007faa66de0988:   vmovsd %xmm1,0x18(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de0991:   vmovsd %xmm4,0x10(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de099a:   vaddsd 0x20(,%rbp,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de09a3:   vmovsd %xmm1,0x20(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.42%    0x00007faa66de09ac:   vmovsd 0x18(,%rbp,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.87%    0x00007faa66de09b5:   vmovsd 0x10(,%rbp,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de09be:   vmovsd 0x20(%rsi,%r10,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.12%    0x00007faa66de09c5:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.02%    0x00007faa66de09c9:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.46%    0x00007faa66de09cd:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.84%    0x00007faa66de09d1:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.67%    0x00007faa66de09d5:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.68%    0x00007faa66de09d9:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.75%    0x00007faa66de09dd:   vmovsd %xmm1,0x18(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.46%    0x00007faa66de09e6:   vmovsd %xmm4,0x10(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de09ef:   vaddsd 0x20(,%rbp,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de09f8:   vmovsd %xmm1,0x20(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.44%    0x00007faa66de0a01:   vmovsd 0x18(,%rbp,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.85%    0x00007faa66de0a0a:   vmovsd 0x10(,%rbp,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de0a13:   vmovsd 0x28(%rsi,%r10,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de0a1a:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de0a1e:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de0a22:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.87%    0x00007faa66de0a26:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.61%    0x00007faa66de0a2a:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.76%    0x00007faa66de0a2e:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.75%    0x00007faa66de0a32:   vmovsd %xmm1,0x18(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.45%    0x00007faa66de0a3b:   vmovsd %xmm4,0x10(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de0a44:   vaddsd 0x20(,%rbp,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
                                                                      ;   {no_reloc}
            0x00007faa66de0a4d:   vmovsd %xmm1,0x20(,%rbp,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
....................................................................................................
  36.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.AbstractTask::compute, version 4, compile id 1297 

                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@3 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.45%    0x00007faa66de172a:   vmovsd 0x10(%rsi,%rax,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de1730:   vmovsd %xmm1,0x20(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de173a:   vsubsd 0x18(,%r10,8),%xmm2,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   2.58%    0x00007faa66de1744:   vmovsd 0x10(,%r10,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de174e:   vaddsd %xmm3,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.69%    0x00007faa66de1752:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.74%    0x00007faa66de1756:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.75%    0x00007faa66de175a:   vmovsd %xmm1,0x18(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de1764:   vmovsd %xmm4,0x10(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de176e:   vaddsd 0x28(,%r10,8),%xmm2,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de1778:   vmovsd %xmm1,0x28(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de1782:   vaddsd 0x20(,%r10,8),%xmm0,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@3 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de178c:   movslq %eax,%r11
            0x00007faa66de178f:   vmovsd 0x18(%rsi,%r11,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
                                                                      ;   {no_reloc}
   0.43%    0x00007faa66de1796:   vmovsd %xmm1,0x20(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de17a0:   vsubsd 0x18(,%r10,8),%xmm2,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   2.72%    0x00007faa66de17aa:   vmovsd 0x10(,%r10,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de17b4:   vaddsd %xmm3,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.77%    0x00007faa66de17b8:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.74%    0x00007faa66de17bc:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.77%    0x00007faa66de17c0:   vmovsd %xmm1,0x18(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.46%    0x00007faa66de17ca:   vmovsd %xmm4,0x10(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de17d4:   vaddsd 0x28(,%r10,8),%xmm2,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de17de:   vmovsd %xmm1,0x28(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de17e8:   vaddsd 0x20(,%r10,8),%xmm0,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@3 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de17f2:   vmovsd 0x20(%rsi,%r11,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.11%    0x00007faa66de17f9:   vmovsd %xmm1,0x20(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de1803:   vsubsd 0x18(,%r10,8),%xmm2,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   2.58%    0x00007faa66de180d:   vmovsd 0x10(,%r10,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de1817:   vaddsd %xmm3,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.76%    0x00007faa66de181b:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.76%    0x00007faa66de181f:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.71%    0x00007faa66de1823:   vmovsd %xmm1,0x18(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.43%    0x00007faa66de182d:   vmovsd %xmm4,0x10(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de1837:   vaddsd 0x28(,%r10,8),%xmm2,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de1841:   vmovsd %xmm1,0x28(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.44%    0x00007faa66de184b:   vaddsd 0x20(,%r10,8),%xmm0,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@3 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de1855:   vmovsd 0x28(%rsi,%r11,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de185c:   vmovsd %xmm1,0x20(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.45%    0x00007faa66de1866:   vsubsd 0x18(,%r10,8),%xmm2,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   2.55%    0x00007faa66de1870:   vmovsd 0x10(,%r10,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de187a:   vaddsd %xmm3,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.74%    0x00007faa66de187e:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.72%    0x00007faa66de1882:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   1.70%    0x00007faa66de1886:   vmovsd %xmm1,0x18(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
                                                                      ;   {no_reloc}
   0.44%    0x00007faa66de1890:   vmovsd %xmm4,0x10(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
            0x00007faa66de189a:   vaddsd 0x28(,%r10,8),%xmm2,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.00%    0x00007faa66de18a4:   vmovsd %xmm1,0x28(,%r10,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
                                                                      ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
                                                                      ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                      ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
                                                                      ; - java.util.Spliterator$OfDouble::forEachRemaining@12 (line 843)
                                                                      ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                      ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@15 (line 960)
                                                                      ; - java.util.stream.ReduceOps$ReduceTask::doLeaf@1 (line 934)
                                                                      ; - java.util.stream.AbstractTask::compute@129 (line 327)
   0.41%    0x00007faa66de18ae:   lea    0x4(%rax),%eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  36.62%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 10, compile id 1135 

             0x00007faa66db23c0:   cmp    %r9d,%r11d
             0x00007faa66db23c3:   jle    0x00007faa66db2534
             0x00007faa66db23c9:   nopl   0x0(%rax)
          ↗  0x00007faa66db23d0:   vmovsd 0x18(,%rax,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db23d9:   vmovsd 0x10(,%rax,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db23e2:   vmovsd 0x10(%r10,%r9,8),%xmm3       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
          │  0x00007faa66db23e9:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  │  0x00007faa66db23ed:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.17%  │  0x00007faa66db23f1:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  │  0x00007faa66db23f5:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.58%  │  0x00007faa66db23f9:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.64%  │  0x00007faa66db23fd:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.63%  │  0x00007faa66db2401:   vmovsd %xmm1,0x18(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db240a:   vmovsd %xmm4,0x10(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2413:   vaddsd 0x20(,%rax,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db241c:   vmovsd %xmm1,0x20(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.17%  │  0x00007faa66db2425:   vmovsd 0x18(,%rax,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.31%  │  0x00007faa66db242e:   vmovsd 0x10(,%rax,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2437:   movslq %r9d,%rcx
          │  0x00007faa66db243a:   vmovsd 0x18(%r10,%rcx,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  │  0x00007faa66db2441:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db2445:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2449:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  │  0x00007faa66db244d:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.58%  │  0x00007faa66db2451:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.67%  │  0x00007faa66db2455:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.67%  │  0x00007faa66db2459:   vmovsd %xmm1,0x18(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │                                                            ;   {no_reloc}
   0.17%  │  0x00007faa66db2462:   vmovsd %xmm4,0x10(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db246b:   vaddsd 0x20(,%rax,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  │  0x00007faa66db2474:   vmovsd %xmm1,0x20(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db247d:   vmovsd 0x18(,%rax,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db2486:   vmovsd 0x10(,%rax,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db248f:   vmovsd 0x20(%r10,%rcx,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.04%  │  0x00007faa66db2496:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.01%  │  0x00007faa66db249a:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.17%  │  0x00007faa66db249e:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.69%  │  0x00007faa66db24a2:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.58%  │  0x00007faa66db24a6:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.65%  │  0x00007faa66db24aa:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.66%  │  0x00007faa66db24ae:   vmovsd %xmm1,0x18(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db24b7:   vmovsd %xmm4,0x10(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db24c0:   vaddsd 0x20(,%rax,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db24c9:   vmovsd %xmm1,0x20(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.15%  │  0x00007faa66db24d2:   vmovsd 0x18(,%rax,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.33%  │  0x00007faa66db24db:   vmovsd 0x10(,%rax,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db24e4:   vmovsd 0x28(%r10,%rcx,8),%xmm3      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  │  0x00007faa66db24eb:   vsubsd %xmm0,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  │  0x00007faa66db24ef:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fa9ec02b178::applyAsDouble@5
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db24f3:   vsubsd %xmm1,%xmm3,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  │  0x00007faa66db24f7:   vaddsd %xmm2,%xmm1,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.59%  │  0x00007faa66db24fb:   vsubsd %xmm2,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.65%  │  0x00007faa66db24ff:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.65%  │  0x00007faa66db2503:   vmovsd %xmm1,0x18(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.17%  │  0x00007faa66db250c:   vmovsd %xmm4,0x10(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2515:   vaddsd 0x20(,%rax,8),%xmm3,%xmm1    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db251e:   vmovsd %xmm1,0x20(,%rax,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03e2d8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.16%  │  0x00007faa66db2527:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
          │  0x00007faa66db252b:   cmp    %r9d,%r11d
          ╰  0x00007faa66db252e:   jg     0x00007faa66db23d0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
             0x00007faa66db2534:   cmp    %r9d,%r8d
....................................................................................................
  13.62%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 10, compile id 1135 

             0x00007faa66db29d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
          ↗  0x00007faa66db29e0:   mov    %ebx,%r9d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
          │  0x00007faa66db29e3:   vaddsd 0x20(,%rsi,8),%xmm0,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@3 (line 495)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │                                                            ;   {no_reloc}
   0.33%  │  0x00007faa66db29ec:   vmovsd 0x10(%r10,%r9,8),%xmm2       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.09%  │  0x00007faa66db29f3:   vmovsd %xmm1,0x20(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db29fc:   vsubsd 0x18(,%rsi,8),%xmm2,%xmm3    ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.92%  │  0x00007faa66db2a05:   vmovsd 0x10(,%rsi,8),%xmm4          ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a0e:   vaddsd %xmm4,%xmm3,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.31%  │  0x00007faa66db2a12:   vsubsd %xmm4,%xmm5,%xmm4            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.27%  │  0x00007faa66db2a16:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.34%  │  0x00007faa66db2a1a:   vmovsd %xmm3,0x18(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db2a23:   vmovsd %xmm5,0x10(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a2c:   vaddsd 0x28(,%rsi,8),%xmm2,%xmm2    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a35:   vmovsd %xmm2,0x28(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db2a3e:   movslq %r9d,%rbx
          │  0x00007faa66db2a41:   vmovsd 0x18(%r10,%rbx,8),%xmm4      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  │  0x00007faa66db2a48:   vaddsd %xmm0,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@5 (line 495)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a4c:   vmovsd %xmm1,0x20(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db2a55:   vsubsd %xmm3,%xmm4,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.33%  │  0x00007faa66db2a59:   vaddsd %xmm5,%xmm1,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.30%  │  0x00007faa66db2a5d:   vsubsd %xmm5,%xmm3,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.28%  │  0x00007faa66db2a61:   vsubsd %xmm1,%xmm5,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.29%  │  0x00007faa66db2a65:   vmovsd %xmm1,0x18(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.32%  │  0x00007faa66db2a6e:   vmovsd %xmm3,0x10(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a77:   vaddsd %xmm4,%xmm2,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a7b:   vmovsd %xmm1,0x28(,%rsi,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fa9ec03c0a8::accept@5
          │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          │  0x00007faa66db2a84:   lea    0x2(%r9),%ebx                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
   0.33%  │  0x00007faa66db2a88:   cmp    %ebx,%edi
          ╰  0x00007faa66db2a8a:   jg     0x00007faa66db29e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
             0x00007faa66db2a90:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
             0x00007faa66db2a93:   jmp    0x00007faa66db25ae           ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@67 (line 1324)
             0x00007faa66db2a98:   mov    $0x0,%rax
             0x00007faa66db2a9f:   nop
             0x00007faa66db2aa0:   jmp    0x00007faa66db2141
....................................................................................................
  12.06%  <total for region 4>

....[Hottest Regions]...............................................................................
  36.78%      jvmci, level 4  java.util.stream.AbstractTask::compute, version 4, compile id 1297 
  36.62%      jvmci, level 4  java.util.stream.AbstractTask::compute, version 4, compile id 1297 
  13.62%      jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 10, compile id 1135 
  12.06%      jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 10, compile id 1135 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.60%  <...other 862 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.41%      jvmci, level 4  java.util.stream.AbstractTask::compute, version 4, compile id 1297 
  25.69%      jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 10, compile id 1135 
   0.68%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  _IO_fflush 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%  <...other 113 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.10%      jvmci, level 4
   0.68%              kernel
   0.08%                    
   0.06%           libjvm.so
   0.05%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2146835.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative

# Run progress: 66.67% complete, ETA 00:02:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 437.058 ms/op
# Warmup Iteration   2: 432.498 ms/op
# Warmup Iteration   3: 432.494 ms/op
# Warmup Iteration   4: 432.467 ms/op
# Warmup Iteration   5: 432.868 ms/op
Iteration   1: 432.678 ms/op
Iteration   2: 432.879 ms/op
Iteration   3: 432.314 ms/op
Iteration   4: 432.447 ms/op
Iteration   5: 432.462 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative":
  432.556 ±(99.9%) 0.858 ms/op [Average]
  (min, avg, max) = (432.314, 432.556, 432.879), stdev = 0.223
  CI (99.9%): [431.698, 433.414] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative:asm":
PrintAssembly processed: 260152 total address lines.
Perf output processed (skipped 69.128 seconds):
 Column 1: cycles (52507 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 1107 

              0x00007f7a7adae2c0:   inc    %r11
              0x00007f7a7adae2c3:   cmp    %r11,%rbx
              0x00007f7a7adae2c6:   jbe    0x00007f7a7adae3c5
              0x00007f7a7adae2cc:   cmp    %r9d,%r10d
              0x00007f7a7adae2cf:   jbe    0x00007f7a7adae3c5
              0x00007f7a7adae2d5:   mov    %r8d,%r11d
              0x00007f7a7adae2d8:   nopl   0x0(%rax,%rax,1)
          ↗   0x00007f7a7adae2e0:   vmovsd 0x10(%rsi,%r11,8),%xmm1
          │   0x00007f7a7adae2e7:   vmovsd 0x18(%rsi,%r11,8),%xmm4      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@46 (line 37)
   8.54%  │   0x00007f7a7adae2ee:   vsubsd %xmm3,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.02%  │   0x00007f7a7adae2f2:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          │   0x00007f7a7adae2f6:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
  19.92%  │   0x00007f7a7adae2fa:   vsubsd %xmm3,%xmm4,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.12%  │   0x00007f7a7adae2fe:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.09%  │   0x00007f7a7adae302:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
  21.66%  │   0x00007f7a7adae306:   lea    0x2(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@59 (line 36)
   0.02%  │   0x00007f7a7adae30a:   cmp    %r11d,%ecx
          ╰   0x00007f7a7adae30d:   jg     0x00007f7a7adae2e0
           ╭  0x00007f7a7adae30f:   jmp    0x00007f7a7adae336
           │  0x00007f7a7adae314:   nopl   0x0(%rax,%rax,1)
           │  0x00007f7a7adae31c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@38 (line 36)
           │  0x00007f7a7adae320:   vmovsd 0x10(%rsi,%r11,8),%xmm1      ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@46 (line 37)
   0.00%   │  0x00007f7a7adae327:   vsubsd %xmm3,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
           │  0x00007f7a7adae32b:   vmulsd %xmm1,%xmm1,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
           │  0x00007f7a7adae32f:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
           │  0x00007f7a7adae333:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@59 (line 36)
           ↘  0x00007f7a7adae336:   cmp    %r11d,%r10d
              0x00007f7a7adae339:   ja     0x00007f7a7adae320           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 1107 

             0x00007f7a7adae379:   jbe    0x00007f7a7adae3e8
             0x00007f7a7adae37f:   inc    %rdi
             0x00007f7a7adae382:   cmp    %rdi,%rbx
             0x00007f7a7adae385:   jbe    0x00007f7a7adae3e8
             0x00007f7a7adae38b:   cmp    %r9d,%r10d
             0x00007f7a7adae38e:   jbe    0x00007f7a7adae3e8
             0x00007f7a7adae394:   nopl   0x0(%rax,%rax,1)
             0x00007f7a7adae39c:   data16 data16 xchg %ax,%ax
          ↗  0x00007f7a7adae3a0:   vaddsd 0x10(%rsi,%r8,8),%xmm1,%xmm1 ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@13 (line 30)
  23.63%  │  0x00007f7a7adae3a7:   vaddsd 0x18(%rsi,%r8,8),%xmm1,%xmm1 ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
  24.29%  │  0x00007f7a7adae3ae:   lea    0x2(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@16 (line 29)
   0.00%  │  0x00007f7a7adae3b2:   cmp    %r8d,%ecx
          ╰  0x00007f7a7adae3b5:   jg     0x00007f7a7adae3a0
             0x00007f7a7adae3b7:   jmp    0x00007f7a7adae22a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@7 (line 29)
             0x00007f7a7adae3bc:   mov    %r8d,%r11d
             0x00007f7a7adae3bf:   nop
             0x00007f7a7adae3c0:   jmp    0x00007f7a7adae336
             0x00007f7a7adae3c5:   movl   $0xffffffe5,0x484(%r15)      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@46 (line 37)
             0x00007f7a7adae3d0:   movq   $0x318,0x490(%r15)
....................................................................................................
  47.93%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 1107 
  47.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 1107 
   0.22%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 1107 
   1.35%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  fileStream::write 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%      jvmci, level 4
   1.35%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2146912.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:14

REMEMBER: The numbers below are just data. To gain reusable insights, you need to follow up on
why the numbers are the way they are. Use profilers (see -prof, -lprof), design factorial
experiments, perform baseline and negative tests that provide experimental control, make sure
the benchmarking environment is safe on JVM/OS/HW level, ask for reviews from the domain experts.
Do not assume the numbers tell you what you want them to tell.

NOTE: Current JVM experimentally supports Compiler Blackholes, and they are in use. Please exercise
extra caution when trusting the results, look into the generated code to check the benchmark still
works, and factor in a small probability of new VM bugs. Additionally, while comparisons between
different JVMs are already problematic, the performance difference caused by different Blackhole
modes can be very significant. Please make sure you use the consistent Blackhole mode for comparisons.

Benchmark                                           Mode  Cnt    Score    Error  Units
PopulationVarianceBenchmark.divide_and_conquer      avgt    5   90.291 ±  5.827  ms/op
PopulationVarianceBenchmark.divide_and_conquer:asm  avgt           NaN             ---
PopulationVarianceBenchmark.functional              avgt    5  407.348 ± 43.603  ms/op
PopulationVarianceBenchmark.functional:asm          avgt           NaN             ---
PopulationVarianceBenchmark.iterative               avgt    5  432.556 ±  0.858  ms/op
PopulationVarianceBenchmark.iterative:asm           avgt           NaN             ---
