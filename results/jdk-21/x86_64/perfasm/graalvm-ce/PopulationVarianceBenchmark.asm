# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
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
# Warmup Iteration   1: 106.178 ms/op
# Warmup Iteration   2: 93.737 ms/op
# Warmup Iteration   3: 95.313 ms/op
# Warmup Iteration   4: 92.404 ms/op
# Warmup Iteration   5: 93.226 ms/op
Iteration   1: 90.920 ms/op
Iteration   2: 93.238 ms/op
Iteration   3: 94.353 ms/op
Iteration   4: 93.422 ms/op
Iteration   5: 92.390 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer":
  92.865 ±(99.9%) 4.973 ms/op [Average]
  (min, avg, max) = (90.920, 92.865, 94.353), stdev = 1.291
  CI (99.9%): [87.892, 97.838] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer:asm":
PrintAssembly processed: 310829 total address lines.
Perf output processed (skipped 67.207 seconds):
 Column 1: cycles (309505 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 

                      0x00007f713725e6e0:   test   $0x10000,%r11d
                      0x00007f713725e6e7:   jne    0x00007f713725f1b7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@20 (line 669)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                      0x00007f713725e6ed:   mov    0x14(%r10),%esi              ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@29 (line 671)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                      0x00007f713725e6f1:   test   %esi,%esi
                      0x00007f713725e6f3:   je     0x00007f713725ec2a
   0.03%              0x00007f713725e6f9:   mov    0x8(,%rsi,8),%edx
                      0x00007f713725e700:   movabs $0x7f70bb000000,%rcx
                      0x00007f713725e70a:   lea    (%rcx,%rdx,1),%rdx
   0.00%              0x00007f713725e70e:   test   %esi,%esi
                      0x00007f713725e710:   je     0x00007f713725e9d8
   0.04%              0x00007f713725e716:   mov    0x60(%rsp),%r11
   0.00%              0x00007f713725e71b:   nopl   0x0(%rax,%rax,1)
                      0x00007f713725e720:   cmp    %rdx,%r11
                      0x00007f713725e723:   jne    0x00007f713725f0e2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@109 (line 103)
   0.00%              0x00007f713725e729:   mov    0x10(%rsp),%r13              ; ImmutableOopMap {r10=Oop r13=Oop [16]=Oop }
                                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) java.util.concurrent.ForkJoinTask::signalWaiters@60 (line 310)
                                                                                ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
   0.04%              0x00007f713725e72e:   vmovsd 0x10(,%rsi,8),%xmm0          ; implicit exception: dispatches to 0x00007f713725f2cd
                      0x00007f713725e737:   mov    0xc(%r13),%r10d              ;*getfield status {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@1 (line 650)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.02%              0x00007f713725e73b:   nopl   0x0(%rax,%rax,1)
   0.00%              0x00007f713725e740:   test   %r10d,%r10d
                      0x00007f713725e743:   jl     0x00007f713725ef80           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@6 (line 650)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.04%              0x00007f713725e749:   vmovsd %xmm0,0x68(%rsp)
                      0x00007f713725e74f:   and    $0x40000,%r10d               ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@13 (line 651)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                      0x00007f713725e756:   mov    %r13,%rsi
   0.00%              0x00007f713725e759:   mov    %r10d,%edx                   ;*invokevirtual awaitDone {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@15 (line 651)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                                ;   {no_reloc}
   0.04%              0x00007f713725e75c:   mov    $0x0,%rcx
                      0x00007f713725e763:   call   0x00007f712f8a3a20           ; ImmutableOopMap {[16]=Oop }
                                                                                ;*invokevirtual awaitDone {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@15 (line 651)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                                ;   {optimized virtual_call}
   0.01%              0x00007f713725e768:   nopl   0x5000758(%rax,%rax,1)       ;   {other}
   0.00%              0x00007f713725e770:   mov    %eax,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@19 (line 652)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.04%              0x00007f713725e773:   test   $0x10000,%r10d
                      0x00007f713725e77a:   jne    0x00007f713725f1ef           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@23 (line 652)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.00%              0x00007f713725e780:   mov    0x10(%rsp),%r13
   0.01%              0x00007f713725e785:   mov    0x14(%r13),%eax              ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                                ; - java.util.concurrent.ForkJoinTask::join@32 (line 654)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.04%              0x00007f713725e789:   test   %eax,%eax
                      0x00007f713725e78b:   je     0x00007f713725ec36
   0.00%              0x00007f713725e791:   mov    0x8(,%rax,8),%esi
   0.00%              0x00007f713725e798:   movabs $0x7f70bb000000,%r11
                      0x00007f713725e7a2:   lea    (%r11,%rsi,1),%rsi
   0.04%              0x00007f713725e7a6:   test   %eax,%eax
          ╭           0x00007f713725e7a8:   je     0x00007f713725e9ce
          │           0x00007f713725e7ae:   mov    0x60(%rsp),%r11
   0.00%  │           0x00007f713725e7b3:   cmp    %rsi,%r11
          │           0x00007f713725e7b6:   jne    0x00007f713725f14e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@119 (line 103)
   0.00%  │        ↗  0x00007f713725e7bc:   vmovsd 0x68(%rsp),%xmm0             ; ImmutableOopMap {r13=Oop }
          │        │                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) java.util.concurrent.ForkJoinTask::join@19 (line 652)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
   0.04%  │        │  0x00007f713725e7c2:   vaddsd 0x10(,%rax,8),%xmm0,%xmm1    ; implicit exception: dispatches to 0x00007f713725f2f0
   0.01%  │        │  0x00007f713725e7cb:   mov    0x1b8(%r15),%rax
   0.00%  │        │  0x00007f713725e7d2:   lea    0x18(%rax),%rsi
   0.03%  │        │  0x00007f713725e7d6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │        │  0x00007f713725e7e0:   cmp    0x1c8(%r15),%rsi
          │        │  0x00007f713725e7e7:   ja     0x00007f713725ed6b
   0.00%  │        │  0x00007f713725e7ed:   mov    %rsi,0x1b8(%r15)
          │        │  0x00007f713725e7f4:   prefetchw 0xd8(%rax)
   0.04%  │        │  0x00007f713725e7fb:   movq   $0x1,(%rax)
   0.00%  │        │  0x00007f713725e802:   movl   $0x324e8,0x8(%rax)           ;   {metadata(&apos;java/lang/Double&apos;)}
   0.00%  │        │  0x00007f713725e809:   movl   $0x0,0xc(%rax)
   0.00%  │        │  0x00007f713725e810:   movq   $0x0,0x10(%rax)
   0.03%  │        │  0x00007f713725e818:   vmovsd %xmm1,0x10(%rax)             ;* unwind (locked if synchronized)
          │        │                                                            ; - java.lang.Double::valueOf@-3
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
   0.00%  │        │  0x00007f713725e81d:   mov    0x80(%rsp),%rbp
   0.00%  │        │  0x00007f713725e825:   add    $0x88,%rsp
   0.00%  │        │  0x00007f713725e82c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │        │  0x00007f713725e833:   ja     0x00007f713725f24c
   0.03%  │        │  0x00007f713725e839:   vzeroupper 
   0.04%  │        │  0x00007f713725e83c:   ret                                 ; ImmutableOopMap {rcx=Oop rsi=Oop [56]=Oop }
          │        │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@0 (line 90)
   0.02%  │        │  0x00007f713725e83d:   mov    0xc(,%r10,8),%r10d           ; implicit exception: dispatches to 0x00007f713725f313
   0.00%  │        │  0x00007f713725e845:   cmp    %edi,%eax
          │╭       │  0x00007f713725e847:   jg     0x00007f713725e99a
          ││      ↗│  0x00007f713725e84d:   cmp    %r8d,%r10d
          ││      ││  0x00007f713725e850:   jbe    0x00007f713725f20c           ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%  ││      ││  0x00007f713725e856:   vaddsd 0x10(%rcx,%r8,8),%xmm0,%xmm0 ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   3.66%  ││      ││  0x00007f713725e85d:   lea    0x2(%r8),%esi
   0.00%  ││      ││  0x00007f713725e861:   cmp    %esi,%eax
          ││      ││  0x00007f713725e863:   mov    %eax,%r10d
   0.02%  ││      ││  0x00007f713725e866:   cmovg  %esi,%r10d
          ││╭     ││  0x00007f713725e86a:   jmp    0x00007f713725e888           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@5 (line 39)
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │││     ││  0x00007f713725e86f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││     ││  0x00007f713725e87a:   data16 data16 xchg %ax,%ax
          │││     ││  0x00007f713725e87e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          │││     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%  │││↗    ││  0x00007f713725e880:   vaddsd 0x10(%rcx,%rdi,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.03%  ││││    ││  0x00007f713725e886:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││↘│    ││  0x00007f713725e888:   cmp    %edi,%r10d
          ││ ╰    ││  0x00007f713725e88b:   jg     0x00007f713725e880
          ││      ││  0x00007f713725e88d:   mov    %edi,%esi
   0.02%  ││  ╭   ││  0x00007f713725e88f:   jmp    0x00007f713725e95a
          ││  │   ││  0x00007f713725e894:   nopl   0x0(%rax,%rax,1)
          ││  │   ││  0x00007f713725e89c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
          ││  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││  │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.54%  ││  │↗  ││  0x00007f713725e8a0:   vaddsd 0x10(%rcx,%rsi,8),%xmm0,%xmm0
   1.62%  ││  ││  ││  0x00007f713725e8a6:   movslq %esi,%r10
          ││  ││  ││  0x00007f713725e8a9:   vmovsd 0x18(%rcx,%r10,8),%xmm1
   0.06%  ││  ││  ││  0x00007f713725e8b0:   vmovsd 0x20(%rcx,%r10,8),%xmm2
   0.56%  ││  ││  ││  0x00007f713725e8b7:   vmovsd 0x28(%rcx,%r10,8),%xmm3
   0.01%  ││  ││  ││  0x00007f713725e8be:   vmovsd 0x30(%rcx,%r10,8),%xmm4
   0.00%  ││  ││  ││  0x00007f713725e8c5:   vmovsd 0x38(%rcx,%r10,8),%xmm5
   1.12%  ││  ││  ││  0x00007f713725e8cc:   vmovsd 0x40(%rcx,%r10,8),%xmm6
   0.53%  ││  ││  ││  0x00007f713725e8d3:   vmovsd 0x48(%rcx,%r10,8),%xmm7
   0.02%  ││  ││  ││  0x00007f713725e8da:   vmovsd 0x50(%rcx,%r10,8),%xmm8
   0.01%  ││  ││  ││  0x00007f713725e8e1:   vmovsd 0x58(%rcx,%r10,8),%xmm9
   0.27%  ││  ││  ││  0x00007f713725e8e8:   vmovsd 0x60(%rcx,%r10,8),%xmm10
   0.53%  ││  ││  ││  0x00007f713725e8ef:   vmovsd 0x68(%rcx,%r10,8),%xmm11
   0.04%  ││  ││  ││  0x00007f713725e8f6:   vmovsd 0x70(%rcx,%r10,8),%xmm12
   0.00%  ││  ││  ││  0x00007f713725e8fd:   vmovsd 0x78(%rcx,%r10,8),%xmm13
   1.42%  ││  ││  ││  0x00007f713725e904:   vmovsd 0x80(%rcx,%r10,8),%xmm14     ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.55%  ││  ││  ││  0x00007f713725e90e:   vaddsd %xmm1,%xmm0,%xmm0
   0.03%  ││  ││  ││  0x00007f713725e912:   vaddsd %xmm2,%xmm0,%xmm0
   2.08%  ││  ││  ││  0x00007f713725e916:   vaddsd %xmm3,%xmm0,%xmm0
   2.02%  ││  ││  ││  0x00007f713725e91a:   vaddsd %xmm4,%xmm0,%xmm0
   2.18%  ││  ││  ││  0x00007f713725e91e:   vaddsd %xmm5,%xmm0,%xmm0
   2.09%  ││  ││  ││  0x00007f713725e922:   vaddsd %xmm6,%xmm0,%xmm0
   2.07%  ││  ││  ││  0x00007f713725e926:   vaddsd %xmm7,%xmm0,%xmm0
   2.10%  ││  ││  ││  0x00007f713725e92a:   vaddsd %xmm8,%xmm0,%xmm0            ;   {no_reloc}
   2.17%  ││  ││  ││  0x00007f713725e92f:   vaddsd %xmm9,%xmm0,%xmm0
   2.15%  ││  ││  ││  0x00007f713725e934:   vaddsd %xmm10,%xmm0,%xmm0
   2.17%  ││  ││  ││  0x00007f713725e939:   vaddsd %xmm11,%xmm0,%xmm0
   2.15%  ││  ││  ││  0x00007f713725e93e:   vaddsd %xmm12,%xmm0,%xmm0
   2.15%  ││  ││  ││  0x00007f713725e943:   vaddsd %xmm13,%xmm0,%xmm0
   2.13%  ││  ││  ││  0x00007f713725e948:   vaddsd %xmm14,%xmm0,%xmm0
   2.20%  ││  ││  ││  0x00007f713725e94d:   vaddsd 0x88(%rcx,%r10,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.18%  ││  ││  ││  0x00007f713725e957:   lea    0x10(%rsi),%esi              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││  ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%  ││  ↘│  ││  0x00007f713725e95a:   nopw   0x0(%rax,%rax,1)
          ││   │  ││  0x00007f713725e960:   cmp    %esi,%edx
          ││   ╰  ││  0x00007f713725e962:   jg     0x00007f713725e8a0
   0.02%  ││    ╭ ││  0x00007f713725e968:   jmp    0x00007f713725e990
          ││    │ ││  0x00007f713725e96d:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    │ ││  0x00007f713725e978:   data16 data16 xchg %ax,%ax
          ││    │ ││  0x00007f713725e97c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%  ││    │↗││  0x00007f713725e980:   vaddsd 0x10(%rcx,%rsi,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.73%  ││    ││││  0x00007f713725e986:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@18 (line 39)
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││    ││││  0x00007f713725e988:   nopl   0x0(%rax,%rax,1)
          ││    ↘│││  0x00007f713725e990:   cmp    %esi,%eax
          ││     │││  0x00007f713725e992:   jle    0x00007f713725e334
   0.23%  ││     ╰││  0x00007f713725e998:   jmp    0x00007f713725e980           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@8 (line 39)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%  │↘      ││  0x00007f713725e99a:   movslq %edi,%rsi
          │       ││  0x00007f713725e99d:   mov    %eax,%r11d
          │       ││  0x00007f713725e9a0:   sub    %edi,%r11d
          │       ││  0x00007f713725e9a3:   movslq %r11d,%r11
   0.02%  │       ││  0x00007f713725e9a6:   add    %r11,%rsi
          │       ││  0x00007f713725e9a9:   dec    %rsi
          │       ││  0x00007f713725e9ac:   mov    %r10d,%r11d
          │       ││  0x00007f713725e9af:   cmp    %rsi,%r11
          │       ││  0x00007f713725e9b2:   jbe    0x00007f713725f00d
   0.02%  │       ││  0x00007f713725e9b8:   nopl   0x0(%rax,%rax,1)
          │       ││  0x00007f713725e9c0:   cmp    %edi,%r10d
          │       ╰│  0x00007f713725e9c3:   ja     0x00007f713725e84d
          │        │  0x00007f713725e9c9:   jmp    0x00007f713725f10d           ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@15 (line 40)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02ba78::compute@3
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ↘        │  0x00007f713725e9ce:   mov    0x60(%rsp),%r11
                   ╰  0x00007f713725e9d3:   jmp    0x00007f713725e7bc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@119 (line 103)
                      0x00007f713725e9d8:   mov    0x60(%rsp),%r11
....................................................................................................
  42.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 

                  0x00007f713725ea1d:   jl     0x00007f713725ea00
                  0x00007f713725ea1f:   nop
                  0x00007f713725ea20:   jmp    0x00007f713725efcd
                  0x00007f713725ea25:   mov    %r10,0x20(%rbx)              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::push@171 (line 1152)
                                                                            ; - java.util.concurrent.ForkJoinTask::fork@52 (line 633)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@73 (line 98)
                  0x00007f713725ea29:   jmp    0x00007f713725e51d           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@0 (line 90)
                                                                            ;   {no_reloc}
   0.01%          0x00007f713725ea2e:   test   %eax,0x0(,%r10,8)            ; implicit exception: deoptimizes
                                                                            ; ImmutableOopMap {rcx=Oop r10=NarrowOop r11=NarrowOop [56]=Oop }
   0.01%          0x00007f713725ea36:   cmp    %r8d,%eax
                  0x00007f713725ea39:   jg     0x00007f713725ecf9           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                  0x00007f713725ea3f:   vmovsd 0x10(,%r11,8),%xmm1          ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@1
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%          0x00007f713725ea49:   cmp    %edi,%eax
   0.00%          0x00007f713725ea4b:   mov    %eax,%esi
   0.01%          0x00007f713725ea4d:   cmovg  %edi,%esi
          ╭       0x00007f713725ea50:   jmp    0x00007f713725ea76           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@6 (line 53)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │       0x00007f713725ea55:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%  │↗      0x00007f713725ea60:   vmovsd 0x10(%rcx,%r8,8),%xmm2       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   3.43%  ││      0x00007f713725ea67:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.09%  ││      0x00007f713725ea6b:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.07%  ││      0x00007f713725ea6f:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.09%  ││      0x00007f713725ea73:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%  ↘│      0x00007f713725ea76:   cmp    %r8d,%esi
           ╰      0x00007f713725ea79:   jg     0x00007f713725ea60
                  0x00007f713725ea7b:   mov    %r8d,%esi
                  0x00007f713725ea7e:   xchg   %ax,%ax
   0.01%    ╭     0x00007f713725ea80:   jmp    0x00007f713725ebf3
            │     0x00007f713725ea85:   data16 data16 nopw 0x0(%rax,%rax,1)
            │     0x00007f713725ea90:   data16 data16 xchg %ax,%ax
            │     0x00007f713725ea94:   nopl   0x0(%rax,%rax,1)
            │     0x00007f713725ea9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    │↗    0x00007f713725eaa0:   vmovsd 0x10(%rcx,%rsi,8),%xmm2
            ││    0x00007f713725eaa6:   movslq %esi,%r10
   0.53%    ││    0x00007f713725eaa9:   vmovsd 0x18(%rcx,%r10,8),%xmm3
   0.00%    ││    0x00007f713725eab0:   vmovsd 0x20(%rcx,%r10,8),%xmm4
   0.04%    ││    0x00007f713725eab7:   vmovsd 0x28(%rcx,%r10,8),%xmm5
            ││    0x00007f713725eabe:   vmovsd 0x30(%rcx,%r10,8),%xmm6
   0.51%    ││    0x00007f713725eac5:   vmovsd 0x38(%rcx,%r10,8),%xmm7
   0.00%    ││    0x00007f713725eacc:   vmovsd 0x40(%rcx,%r10,8),%xmm8
   1.62%    ││    0x00007f713725ead3:   vmovsd 0x48(%rcx,%r10,8),%xmm9
   0.05%    ││    0x00007f713725eada:   vmovsd 0x50(%rcx,%r10,8),%xmm10
   0.53%    ││    0x00007f713725eae1:   vmovsd 0x58(%rcx,%r10,8),%xmm11
   0.03%    ││    0x00007f713725eae8:   vmovsd 0x60(%rcx,%r10,8),%xmm12
   0.24%    ││    0x00007f713725eaef:   vmovsd 0x68(%rcx,%r10,8),%xmm13
            ││    0x00007f713725eaf6:   vmovsd 0x70(%rcx,%r10,8),%xmm14
   0.54%    ││    0x00007f713725eafd:   vmovsd 0x78(%rcx,%r10,8),%xmm15
   0.00%    ││    0x00007f713725eb04:   vmovsd %xmm15,0x68(%rsp)
   0.06%    ││    0x00007f713725eb0a:   vmovsd 0x80(%rcx,%r10,8),%xmm15
   1.17%    ││    0x00007f713725eb14:   vmovsd %xmm15,0x60(%rsp)
   0.55%    ││    0x00007f713725eb1a:   vmovsd 0x88(%rcx,%r10,8),%xmm15     ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb24:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb28:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││                                                              ;   {no_reloc}
            ││    0x00007f713725eb2c:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.51%    ││    0x00007f713725eb30:   vsubsd %xmm1,%xmm3,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb34:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.03%    ││    0x00007f713725eb38:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.54%    ││    0x00007f713725eb3c:   vsubsd %xmm1,%xmm4,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb40:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb44:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.77%    ││    0x00007f713725eb48:   vsubsd %xmm1,%xmm5,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.12%    ││    0x00007f713725eb4c:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb50:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.78%    ││    0x00007f713725eb54:   vsubsd %xmm1,%xmm6,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.26%    ││    0x00007f713725eb58:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725eb5c:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.79%    ││    0x00007f713725eb60:   vsubsd %xmm1,%xmm7,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb64:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb68:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.08%    ││    0x00007f713725eb6c:   vsubsd %xmm1,%xmm8,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb70:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb74:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.13%    ││    0x00007f713725eb78:   vsubsd %xmm1,%xmm9,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb7c:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ││    0x00007f713725eb80:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   1.96%    ││    0x00007f713725eb84:   vsubsd %xmm1,%xmm10,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb88:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725eb8c:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.24%    ││    0x00007f713725eb90:   vsubsd %xmm1,%xmm11,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.02%    ││    0x00007f713725eb94:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eb98:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.10%    ││    0x00007f713725eb9c:   vsubsd %xmm1,%xmm12,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eba0:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725eba4:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.11%    ││    0x00007f713725eba8:   vsubsd %xmm1,%xmm13,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ││    0x00007f713725ebac:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ││    0x00007f713725ebb0:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.15%    ││    0x00007f713725ebb4:   vsubsd %xmm1,%xmm14,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.01%    ││    0x00007f713725ebb8:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725ebbc:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.10%    ││    0x00007f713725ebc0:   vmovsd 0x68(%rsp),%xmm2
   0.01%    ││    0x00007f713725ebc6:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725ebca:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725ebce:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.18%    ││    0x00007f713725ebd2:   vmovsd 0x60(%rsp),%xmm2
   0.01%    ││    0x00007f713725ebd8:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725ebdc:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ││    0x00007f713725ebe0:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.36%    ││    0x00007f713725ebe4:   vsubsd %xmm1,%xmm15,%xmm2           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ││    0x00007f713725ebe8:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
            ││    0x00007f713725ebec:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   2.07%    ││    0x00007f713725ebf0:   lea    0x10(%rsi),%esi              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%    ↘│    0x00007f713725ebf3:   cmp    %esi,%edx
             ╰    0x00007f713725ebf5:   jg     0x00007f713725eaa0
              ╭   0x00007f713725ebfb:   jmp    0x00007f713725ec20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
              │↗  0x00007f713725ec00:   vmovsd 0x10(%rcx,%rsi,8),%xmm2      ;*daload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.00%      ││  0x00007f713725ec06:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
              ││  0x00007f713725ec0a:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@27 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.27%      ││  0x00007f713725ec0e:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
   0.53%      ││  0x00007f713725ec12:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
              ││  0x00007f713725ec14:   nopl   0x0(%rax,%rax,1)
              ││  0x00007f713725ec1c:   data16 data16 xchg %ax,%ax
              ↘│  0x00007f713725ec20:   cmp    %esi,%eax
               │  0x00007f713725ec22:   jle    0x00007f713725e334
   0.28%       ╰  0x00007f713725ec28:   jmp    0x00007f713725ec00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f70bc02bc90::compute@7
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                            ;   {no_reloc}
                  0x00007f713725ec2a:   mov    $0x0,%rdx
                  0x00007f713725ec31:   jmp    0x00007f713725e70e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@109 (line 103)
                  0x00007f713725ec36:   mov    $0x0,%rsi
                  0x00007f713725ec3d:   data16 xchg %ax,%ax
                  0x00007f713725ec40:   jmp    0x00007f713725e7a6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  42.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  42.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 
  42.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 
   4.36%              kernel  [unknown] 
   3.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 
   2.04%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1247 
   0.79%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1247 
   0.69%              kernel  [unknown] 
   0.50%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1246 
   0.12%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  MethodMatcher::matches 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   2.38%  <...other 3121 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute, version 5, compile id 1086 
   6.39%              kernel  [unknown] 
   2.83%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::tryRemoveAndExec, version 4, compile id 1247 
   1.06%                      <unknown> 
   0.50%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 10, compile id 1246 
   0.12%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%           libjvm.so  MethodMatcher::matches 
   0.04%      jvmci, level 4  java.util.concurrent.ForkJoinPool::helpJoin, version 6, compile id 1311 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 2, compile id 1328 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  JVM_GetStackAccessControlContext 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __memset_avx2_erms 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.27%  <...other 427 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.03%      jvmci, level 4
   6.39%              kernel
   1.06%                    
   0.38%           libjvm.so
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%         interpreter
   0.00%              [vdso]
   0.00%    perf-2118838.map
   0.00%    Unknown, level 0
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
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
# Warmup Iteration   1: 732.136 ms/op
# Warmup Iteration   2: 717.309 ms/op
# Warmup Iteration   3: 714.995 ms/op
# Warmup Iteration   4: 715.990 ms/op
# Warmup Iteration   5: 714.926 ms/op
Iteration   1: 727.298 ms/op
Iteration   2: 727.374 ms/op
Iteration   3: 721.505 ms/op
Iteration   4: 715.369 ms/op
Iteration   5: 722.143 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional":
  722.738 ±(99.9%) 19.104 ms/op [Average]
  (min, avg, max) = (715.369, 722.738, 727.374), stdev = 4.961
  CI (99.9%): [703.634, 741.842] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional:asm":
PrintAssembly processed: 269094 total address lines.
Perf output processed (skipped 70.622 seconds):
 Column 1: cycles (271046 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 5, compile id 988 

              0x00007f9773242b7d:   mov    0x8(%rsp),%rdx
              0x00007f9773242b82:   jmp    0x00007f97732428cb           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                        ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
              0x00007f9773242b87:   mov    %edi,%r10d
          ╭   0x00007f9773242b8a:   jmp    0x00007f9773242c2d
          │   0x00007f9773242b8f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9773242b9a:   data16 data16 xchg %ax,%ax
          │   0x00007f9773242b9e:   xchg   %ax,%ax                      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   1.27%  │↗  0x00007f9773242ba0:   mov    0x10(%rdx),%esi              ; ImmutableOopMap {rdx=Oop r11=Oop [0]=Oop [8]=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   0.63%  ││  0x00007f9773242ba3:   mov    0x34(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f9773242f22
          ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r11=Oop [0]=Oop [8]=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   6.18%  ││  0x00007f9773242baa:   cmpl   $0x102b178,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007f9773242f45
          ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/functional/FunctionalVariance$$Lambda+0x00007f96f802b178&apos;)}
   7.89%  ││  0x00007f9773242bb5:   jne    0x00007f9773242ccd           ;*invokeinterface applyAsDouble {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.31%  ││  0x00007f9773242bbb:   mov    0xc(%rdx),%ecx               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   0.02%  ││  0x00007f9773242bbe:   test   %eax,0x0(,%rcx,8)            ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=NarrowOop r11=Oop [0]=Oop [8]=Oop }
   0.00%  ││  0x00007f9773242bc5:   vmovsd 0x10(,%rsi,8),%xmm0          ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007f96f802b178::applyAsDouble@1
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.29%  ││  0x00007f9773242bce:   vmovsd 0x10(%r11,%r10,8),%xmm1      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.73%  ││  0x00007f9773242bd5:   shl    $0x3,%rcx                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@1 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007f9773242bd9:   vsubsd %xmm0,%xmm1,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007f96f802b178::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   3.06%  ││  0x00007f9773242bdd:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007f96f802b178::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   5.30%  ││  0x00007f9773242be1:   mov    %rcx,%rsi                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.01%  ││  0x00007f9773242be4:   mov    %r10d,0x10(%rsp)
          ││  0x00007f9773242be9:   movabs $0xffffffffffffffff,%rax
          ││  0x00007f9773242bf3:   call   0x00007f9772c2f680           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││                                                            ;   {virtual_call}
   0.00%  ││  0x00007f9773242bf8:   nopl   0x10000768(%rax,%rax,1)      ;   {other}
          ││  0x00007f9773242c00:   mov    0x10(%rsp),%r10d
   3.80%  ││  0x00007f9773242c05:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
   1.26%  ││  0x00007f9773242c08:   mov    0x20(%rsp),%r9d
   0.02%  ││  0x00007f9773242c0d:   cmp    %r10d,%r9d
          ││  0x00007f9773242c10:   jle    0x00007f9773242789           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
   1.34%  ││  0x00007f9773242c16:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.stream.DoublePipeline$2$1::accept@22 (line 213)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.04%  ││  0x00007f9773242c1d:   test   %eax,(%rsi)                  ;   {poll}
   4.83%  ││  0x00007f9773242c1f:   mov    (%rsp),%r11
   0.00%  ││  0x00007f9773242c23:   mov    0x24(%rsp),%r8d
   0.05%  ││  0x00007f9773242c28:   mov    0x8(%rsp),%rdx               ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   0.00%  ↘│  0x00007f9773242c2d:   cmp    %r10d,%r8d
           ╰  0x00007f9773242c30:   ja     0x00007f9773242ba0
              0x00007f9773242c36:   jmp    0x00007f9773242ca4           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
              0x00007f9773242c3b:   mov    %r10d,%r8d
              0x00007f9773242c3e:   mov    $0x794,%r11
              0x00007f9773242c45:   mov    $0xffffffcd,%r10d
              0x00007f9773242c4b:   mov    %r10d,0x484(%r15)            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
                                                                        ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
....................................................................................................
  39.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 5, compile id 988 

                                                                           ;   {section_word}
                 0x00007f97732428df:   nop
          ╭      0x00007f97732428e0:   je     0x00007f97732428f8
          │      0x00007f97732428e6:   cmp    -0x21d(%rip),%r10        # 0x00007f97732426d0
          │                                                                ;   {section_word}
          │      0x00007f97732428ed:   je     0x00007f9773242b87
          │      0x00007f97732428f3:   jmp    0x00007f9773242d85
          ↘      0x00007f97732428f8:   mov    %edi,%r10d
           ╭     0x00007f97732428fb:   jmp    0x00007f97732429f5           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   1.36%   │  ↗  0x00007f9773242900:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop r11=Oop [0]=Oop [8]=Oop }
           │  │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
   0.00%   │  │  0x00007f9773242903:   mov    0x8(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007f9773242e96
   0.01%   │  │  0x00007f977324290a:   mov    0xc(%rdx),%ecx               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@5 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
           │  │  0x00007f977324290d:   test   %ecx,%ecx
           │  │  0x00007f977324290f:   je     0x00007f9773242a05
   1.31%   │  │  0x00007f9773242915:   mov    0x8(,%rcx,8),%edi
           │  │  0x00007f977324291c:   movabs $0x7f96f7000000,%rax
   0.00%   │  │  0x00007f9773242926:   lea    (%rax,%rdi,1),%rdi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803e2d8::accept@1
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
           │  │  0x00007f977324292a:   vmovsd 0x10(%r11,%r10,8),%xmm0      ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   1.69%   │  │  0x00007f9773242931:   movabs $0x7f96f7000000,%rax
           │  │  0x00007f977324293b:   lea    (%rax,%rsi,1),%rsi
   0.00%   │  │  0x00007f977324293f:   cmp    -0x26e(%rip),%rsi        # 0x00007f97732426d8
           │  │                                                            ;   {section_word}
           │╭ │  0x00007f9773242946:   je     0x00007f977324295e
           ││ │  0x00007f977324294c:   cmp    -0x273(%rip),%rsi        # 0x00007f97732426e0
           ││ │                                                            ;   {section_word}
           ││ │  0x00007f9773242953:   je     0x00007f9773242a11
           ││ │  0x00007f9773242959:   jmp    0x00007f9773242c3b
   1.34%   │↘ │  0x00007f977324295e:   xchg   %ax,%ax
           │  │  0x00007f9773242960:   test   %ecx,%ecx
           │ ╭│  0x00007f9773242962:   je     0x00007f9773242971           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@1
           │ ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │ ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
           │ ││  0x00007f9773242968:   cmp    %rdi,%rbx
           │ ││  0x00007f977324296b:   jne    0x00007f9773242c66           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop r11=Oop [0]=Oop [8]=Oop }
           │ ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
           │ ↘│  0x00007f9773242971:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f9773242eb9
   1.35%   │  │  0x00007f9773242979:   jb     0x00007f9773242dba           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
           │  │  0x00007f977324297f:   vaddsd 0x20(,%rcx,8),%xmm1,%xmm2    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@5 (line 495)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.32%   │  │  0x00007f9773242988:   vmovsd %xmm2,0x20(,%rcx,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%   │  │  0x00007f9773242991:   vsubsd 0x18(,%rcx,8),%xmm0,%xmm2    ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.03%   │  │  0x00007f977324299a:   vmovsd 0x10(,%rcx,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.28%   │  │  0x00007f97732429a3:   vaddsd %xmm3,%xmm2,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   3.97%   │  │  0x00007f97732429a7:   vsubsd %xmm3,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   5.29%   │  │  0x00007f97732429ab:   vsubsd %xmm2,%xmm3,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   5.26%   │  │  0x00007f97732429af:   vmovsd %xmm2,0x18(,%rcx,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.31%   │  │  0x00007f97732429b8:   vmovsd %xmm4,0x10(,%rcx,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
           │  │  0x00007f97732429c1:   vaddsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%   │  │  0x00007f97732429ca:   vmovsd %xmm0,0x28(,%rcx,8)          ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
           │  │                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007f96f803c0a8::accept@5
           │  │                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.34%   │  │  0x00007f97732429d3:   mov    %r10d,%esi
           │  │  0x00007f97732429d6:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
           │  │  0x00007f97732429d8:   nopl   0x0(%rax,%rax,1)
           │  │  0x00007f97732429e0:   cmp    %esi,%r9d
           │  │  0x00007f97732429e3:   jle    0x00007f9773242789           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
   1.30%   │  │  0x00007f97732429e9:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop r11=Oop [0]=Oop [8]=Oop }
           │  │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
           │  │  0x00007f97732429f0:   test   %eax,(%rcx)                  ;   {poll}
           │  │  0x00007f97732429f2:   mov    %esi,%r10d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@49 (line 1322)
           ↘  │  0x00007f97732429f5:   cmp    %r10d,%r8d
              ╰  0x00007f97732429f8:   ja     0x00007f9773242900
                 0x00007f97732429fe:   xchg   %ax,%ax
                 0x00007f9773242a00:   jmp    0x00007f9773242cea           ;*daload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  28.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.stream.DoublePipeline::lambda$sum$2, version 2, compile id 991 

            JVMCI data     [0x00007f9773246760,0x00007f9773246778] = 24
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f96ec30b318} &apos;lambda$sum$2&apos; &apos;([DD)V&apos; in &apos;java/util/stream/DoublePipeline&apos;
             # parm0:    rsi:rsi   = &apos;[D&apos;
             # parm1:    xmm0:xmm0   = double
             #           [sp+0x20]  (sp of caller)
   0.00%     0x00007f9773246500:   mov    %eax,-0x14000(%rsp)
   1.33%     0x00007f9773246507:   sub    $0x18,%rsp
             0x00007f977324650b:   nop
   0.00%     0x00007f977324650c:   cmpl   $0x1,0x20(%r15)
   1.31%     0x00007f9773246514:   jne    0x00007f9773246591
   0.02%     0x00007f977324651a:   mov    %rbp,0x10(%rsp)
             0x00007f977324651f:   nop                                 ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.DoublePipeline::lambda$sum$2@0 (line 452)
   0.00%     0x00007f9773246520:   cmpl   $0x3,0xc(%rsi)               ; implicit exception: dispatches to 0x00007f97732465b5
   1.32%  ╭  0x00007f9773246524:   jb     0x00007f977324656e
   0.02%  │  0x00007f977324652a:   vsubsd 0x18(%rsi),%xmm0,%xmm1       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   0.12%  │  0x00007f977324652f:   vmovsd 0x10(%rsi),%xmm2             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   0.02%  │  0x00007f9773246534:   vaddsd %xmm2,%xmm1,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   1.39%  │  0x00007f9773246538:   vsubsd %xmm2,%xmm3,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@23 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   1.45%  │  0x00007f977324653c:   vsubsd %xmm1,%xmm2,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   4.88%  │  0x00007f9773246540:   vmovsd %xmm1,0x18(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
   1.33%  │  0x00007f9773246545:   vmovsd %xmm3,0x10(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          │  0x00007f977324654a:   vaddsd 0x20(%rsi),%xmm0,%xmm0       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
   0.01%  │  0x00007f977324654f:   vmovsd %xmm0,0x20(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
   0.00%  │  0x00007f9773246554:   mov    0x10(%rsp),%rbp
   1.31%  │  0x00007f9773246559:   add    $0x18,%rsp
          │  0x00007f977324655d:   data16 xchg %ax,%ax
   0.01%  │  0x00007f9773246560:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f9773246567:   ja     0x00007f97732465a1
   0.00%  │  0x00007f977324656d:   ret                                 ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          │                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ↘  0x00007f977324656e:   movl   $0xffffffe5,0x484(%r15)      ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
                                                                       ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
             0x00007f9773246579:   movq   $0x0,0x490(%r15)
             0x00007f9773246584:   call   0x00007f9772c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) java.util.stream.DoublePipeline::lambda$sum$2@0 (line 452)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  14.52%  <total for region 3>

....[Hottest Regions]...............................................................................
  39.05%       jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 5, compile id 988 
  28.16%       jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 5, compile id 988 
  14.52%       jvmci, level 4  java.util.stream.DoublePipeline::lambda$sum$2, version 2, compile id 991 
   9.44%       jvmci, level 4  java.util.stream.ReduceOps$13ReducingSink::accept, version 3, compile id 981 
   6.62%       jvmci, level 4  java.util.stream.ReduceOps$13ReducingSink::accept, version 3, compile id 981 
   0.11%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%               kernel  [unknown] 
   0.06%            libjvm.so  MethodMatcher::matches 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.graph.iterators.NodePredicates$PositiveTypePredicate::apply 
   0.01%               kernel  [unknown] 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.graph.Node::hashCode 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%  libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::getHashIndex 
   0.01%               kernel  [unknown] 
   1.72%  <...other 2296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.21%       jvmci, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 5, compile id 988 
  16.06%       jvmci, level 4  java.util.stream.ReduceOps$13ReducingSink::accept, version 3, compile id 981 
  14.52%       jvmci, level 4  java.util.stream.DoublePipeline::lambda$sum$2, version 2, compile id 991 
   0.79%               kernel  [unknown] 
   0.11%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.10%                       <unknown> 
   0.06%            libjvm.so  MethodMatcher::matches 
   0.02%  libjvmcicompiler.so  org.graalvm.compiler.graph.iterators.PredicatedProxyNodeIterator::forward 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.graph.iterators.NodePredicates$PositiveTypePredicate::apply 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.genscavenge.GreyToBlackObjectVisitor::visitObjectInline 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.graph.Node::hashCode 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%  libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::putHashEntry 
   0.01%  libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::getHashIndex 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%  libjvmcicompiler.so  org.graalvm.collections.EconomicMapImpl::get 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.phases.common.CanonicalizerPhase::processNode 
   0.01%  libjvmcicompiler.so  java.util.RegularEnumSet::contains 
   0.01%            libjvm.so  defaultStream::write 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.genscavenge.GreyToBlackObjRefVisitor::visitObjectReferenceInline 
   1.01%  <...other 1026 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.79%       jvmci, level 4
   0.91%  libjvmcicompiler.so
   0.79%               kernel
   0.30%            libjvm.so
   0.10%                     
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2126089.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative

# Run progress: 66.67% complete, ETA 00:02:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 457.792 ms/op
# Warmup Iteration   2: 429.086 ms/op
# Warmup Iteration   3: 429.126 ms/op
# Warmup Iteration   4: 429.053 ms/op
# Warmup Iteration   5: 429.067 ms/op
Iteration   1: 429.100 ms/op
Iteration   2: 429.081 ms/op
Iteration   3: 429.067 ms/op
Iteration   4: 429.123 ms/op
Iteration   5: 429.083 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative":
  429.091 ±(99.9%) 0.083 ms/op [Average]
  (min, avg, max) = (429.067, 429.091, 429.123), stdev = 0.021
  CI (99.9%): [429.008, 429.173] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative:asm":
PrintAssembly processed: 236748 total address lines.
Perf output processed (skipped 69.274 seconds):
 Column 1: cycles (52084 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 9, compile id 1106 

              0x00007f46472600fe:   ret                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@34 (line 36)
              0x00007f46472600ff:   mov    %r9d,%r8d
          ╭   0x00007f4647260102:   jmp    0x00007f4647260273
          │   0x00007f4647260107:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4647260112:   data16 data16 xchg %ax,%ax
          │   0x00007f4647260116:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@38 (line 36)
          │↗  0x00007f4647260120:   vmovsd 0x10(%rsi,%r8,8),%xmm3
          ││  0x00007f4647260127:   movslq %r8d,%r9
   0.75%  ││  0x00007f464726012a:   vmovsd 0x18(%rsi,%r9,8),%xmm4
          ││  0x00007f4647260131:   vmovsd 0x20(%rsi,%r9,8),%xmm5
          ││  0x00007f4647260138:   vmovsd 0x28(%rsi,%r9,8),%xmm6
          ││  0x00007f464726013f:   vmovsd 0x30(%rsi,%r9,8),%xmm7
   0.76%  ││  0x00007f4647260146:   vmovsd 0x38(%rsi,%r9,8),%xmm8
   0.00%  ││  0x00007f464726014d:   vmovsd 0x40(%rsi,%r9,8),%xmm9
          ││  0x00007f4647260154:   vmovsd 0x48(%rsi,%r9,8),%xmm10
          ││  0x00007f464726015b:   vmovsd 0x50(%rsi,%r9,8),%xmm11
   0.77%  ││  0x00007f4647260162:   vmovsd 0x58(%rsi,%r9,8),%xmm12
          ││  0x00007f4647260169:   vmovsd 0x60(%rsi,%r9,8),%xmm13
   0.01%  ││  0x00007f4647260170:   vmovsd 0x68(%rsi,%r9,8),%xmm14
   0.00%  ││  0x00007f4647260177:   vmovsd 0x70(%rsi,%r9,8),%xmm15
   3.80%  ││  0x00007f464726017e:   vmovsd 0x78(%rsi,%r9,8),%xmm2
   0.04%  ││  0x00007f4647260185:   vmovsd %xmm2,0x8(%rsp)
   0.05%  ││  0x00007f464726018b:   vmovsd 0x80(%rsi,%r9,8),%xmm2
   0.01%  ││  0x00007f4647260195:   vmovsd %xmm2,(%rsp)
   0.76%  ││  0x00007f464726019a:   vmovsd 0x88(%rsi,%r9,8),%xmm2       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@46 (line 37)
   0.00%  ││  0x00007f46472601a4:   vsubsd %xmm1,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.02%  ││  0x00007f46472601a8:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.00%  ││  0x00007f46472601ac:   vaddsd %xmm0,%xmm3,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   0.76%  ││  0x00007f46472601b0:   vsubsd %xmm1,%xmm4,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          ││  0x00007f46472601b4:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.01%  ││  0x00007f46472601b8:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.08%  ││  0x00007f46472601bc:   vsubsd %xmm1,%xmm5,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.02%  ││  0x00007f46472601c0:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f46472601c4:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   4.16%  ││  0x00007f46472601c8:   vsubsd %xmm1,%xmm6,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.20%  ││  0x00007f46472601cc:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.02%  ││  0x00007f46472601d0:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   0.99%  ││  0x00007f46472601d4:   vsubsd %xmm1,%xmm7,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.34%  ││  0x00007f46472601d8:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f46472601dc:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.49%  ││  0x00007f46472601e0:   vsubsd %xmm1,%xmm8,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.01%  ││  0x00007f46472601e4:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.01%  ││  0x00007f46472601e8:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.91%  ││  0x00007f46472601ec:   vsubsd %xmm1,%xmm9,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.02%  ││  0x00007f46472601f0:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││                                                            ;   {no_reloc}
          ││  0x00007f46472601f4:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.99%  ││  0x00007f46472601f8:   vsubsd %xmm1,%xmm10,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.00%  ││  0x00007f46472601fc:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.02%  ││  0x00007f4647260200:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.83%  ││  0x00007f4647260204:   vsubsd %xmm1,%xmm11,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.00%  ││  0x00007f4647260208:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f464726020c:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   3.06%  ││  0x00007f4647260210:   vsubsd %xmm1,%xmm12,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          ││  0x00007f4647260214:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.00%  ││  0x00007f4647260218:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.73%  ││  0x00007f464726021c:   vsubsd %xmm1,%xmm13,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.02%  ││  0x00007f4647260220:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f4647260224:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.91%  ││  0x00007f4647260228:   vsubsd %xmm1,%xmm14,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          ││  0x00007f464726022c:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.03%  ││  0x00007f4647260230:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.82%  ││  0x00007f4647260234:   vsubsd %xmm1,%xmm15,%xmm3           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.01%  ││  0x00007f4647260238:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f464726023c:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.78%  ││  0x00007f4647260240:   vmovsd 0x8(%rsp),%xmm3
   0.00%  ││  0x00007f4647260246:   vsubsd %xmm1,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
   0.00%  ││  0x00007f464726024a:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
   0.02%  ││  0x00007f464726024e:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   3.12%  ││  0x00007f4647260252:   vmovsd (%rsp),%xmm3
          ││  0x00007f4647260257:   vsubsd %xmm1,%xmm3,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          ││  0x00007f464726025b:   vmulsd %xmm3,%xmm3,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f464726025f:   vaddsd %xmm3,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   3.19%  ││  0x00007f4647260263:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          ││  0x00007f4647260267:   vmulsd %xmm2,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@55 (line 37)
          ││  0x00007f464726026b:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   2.66%  ││  0x00007f464726026f:   lea    0x10(%r8),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@59 (line 36)
          ↘│  0x00007f4647260273:   cmp    %r8d,%r11d
           ╰  0x00007f4647260276:   jg     0x00007f4647260120
              0x00007f464726027c:   nopl   0x0(%rax)
              0x00007f4647260280:   jmp    0x00007f46472602c0
              0x00007f4647260285:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f4647260290:   data16 data16 xchg %ax,%ax
              0x00007f4647260294:   nopl   0x0(%rax,%rax,1)
              0x00007f464726029c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 9, compile id 1106 

             0x00007f464725ff60:   cmp    $0x2,%r10d
             0x00007f464725ff64:   jae    0x00007f46472602d4           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@13 (line 30)
             0x00007f464725ff6a:   vaddsd 0x10(%rsi),%xmm0,%xmm1       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
             0x00007f464725ff6f:   mov    $0x1,%ebx
             0x00007f464725ff74:   jmp    0x00007f4647260068           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@4 (line 29)
             0x00007f464725ff79:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@7 (line 29)
   0.69%  ↗  0x00007f464725ff80:   vaddsd 0x10(%rsi,%rbx,8),%xmm1,%xmm1
   2.33%  │  0x00007f464725ff86:   movslq %ebx,%rdi
          │  0x00007f464725ff89:   vmovsd 0x18(%rsi,%rdi,8),%xmm2
          │  0x00007f464725ff8f:   vmovsd 0x20(%rsi,%rdi,8),%xmm3
   0.78%  │  0x00007f464725ff95:   vmovsd 0x28(%rsi,%rdi,8),%xmm4
          │  0x00007f464725ff9b:   vmovsd 0x30(%rsi,%rdi,8),%xmm5
   0.00%  │  0x00007f464725ffa1:   vmovsd 0x38(%rsi,%rdi,8),%xmm6
   0.00%  │  0x00007f464725ffa7:   vmovsd 0x40(%rsi,%rdi,8),%xmm7
   0.74%  │  0x00007f464725ffad:   vmovsd 0x48(%rsi,%rdi,8),%xmm8
          │  0x00007f464725ffb3:   vmovsd 0x50(%rsi,%rdi,8),%xmm9
   0.01%  │  0x00007f464725ffb9:   vmovsd 0x58(%rsi,%rdi,8),%xmm10
          │  0x00007f464725ffbf:   vmovsd 0x60(%rsi,%rdi,8),%xmm11
   0.65%  │  0x00007f464725ffc5:   vmovsd 0x68(%rsi,%rdi,8),%xmm12
          │  0x00007f464725ffcb:   vmovsd 0x70(%rsi,%rdi,8),%xmm13
   0.75%  │  0x00007f464725ffd1:   vmovsd 0x78(%rsi,%rdi,8),%xmm14
   0.01%  │  0x00007f464725ffd7:   vmovsd 0x80(%rsi,%rdi,8),%xmm15     ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@13 (line 30)
   0.80%  │  0x00007f464725ffe0:   vaddsd %xmm2,%xmm1,%xmm1
   0.00%  │  0x00007f464725ffe4:   vaddsd %xmm3,%xmm1,%xmm1
   2.93%  │  0x00007f464725ffe8:   vaddsd %xmm4,%xmm1,%xmm1
   2.93%  │  0x00007f464725ffec:   vaddsd %xmm5,%xmm1,%xmm1
   3.10%  │  0x00007f464725fff0:   vaddsd %xmm6,%xmm1,%xmm1
   3.04%  │  0x00007f464725fff4:   vaddsd %xmm7,%xmm1,%xmm1
   2.78%  │  0x00007f464725fff8:   vaddsd %xmm8,%xmm1,%xmm1
   2.97%  │  0x00007f464725fffd:   vaddsd %xmm9,%xmm1,%xmm1            ;   {no_reloc}
   2.92%  │  0x00007f4647260002:   vaddsd %xmm10,%xmm1,%xmm1
   2.99%  │  0x00007f4647260007:   vaddsd %xmm11,%xmm1,%xmm1
   2.89%  │  0x00007f464726000c:   vaddsd %xmm12,%xmm1,%xmm1
   2.90%  │  0x00007f4647260011:   vaddsd %xmm13,%xmm1,%xmm1
   2.87%  │  0x00007f4647260016:   vaddsd %xmm14,%xmm1,%xmm1
   3.04%  │  0x00007f464726001b:   vaddsd %xmm15,%xmm1,%xmm1
   3.02%  │  0x00007f4647260020:   vaddsd 0x88(%rsi,%rdi,8),%xmm1,%xmm1;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
   2.98%  │  0x00007f4647260029:   lea    0x10(%rbx),%ebx              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@16 (line 29)
          │  0x00007f464726002c:   nopl   0x0(%rax)
          │  0x00007f4647260030:   cmp    %ebx,%r11d
          ╰  0x00007f4647260033:   jg     0x00007f464725ff80
             0x00007f4647260039:   jmp    0x00007f4647260050
             0x00007f464726003e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@7 (line 29)
             0x00007f4647260040:   vaddsd 0x10(%rsi,%rbx,8),%xmm1,%xmm1;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
....................................................................................................
  48.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 9, compile id 1106 
  48.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 9, compile id 1106 
   0.29%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.84%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 9, compile id 1106 
   1.35%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.01%      hsdis-amd64.so  putop 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%      jvmci, level 4
   1.35%              kernel
   0.12%           libjvm.so
   0.11%                    
   0.07%        libc-2.31.so
   0.02%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:16

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
PopulationVarianceBenchmark.divide_and_conquer      avgt    5   92.865 ±  4.973  ms/op
PopulationVarianceBenchmark.divide_and_conquer:asm  avgt           NaN             ---
PopulationVarianceBenchmark.functional              avgt    5  722.738 ± 19.104  ms/op
PopulationVarianceBenchmark.functional:asm          avgt           NaN             ---
PopulationVarianceBenchmark.iterative               avgt    5  429.091 ±  0.083  ms/op
PopulationVarianceBenchmark.iterative:asm           avgt           NaN             ---
