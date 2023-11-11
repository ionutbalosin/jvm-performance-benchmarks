# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 101.487 ms/op
# Warmup Iteration   2: 92.369 ms/op
# Warmup Iteration   3: 91.593 ms/op
# Warmup Iteration   4: 91.195 ms/op
# Warmup Iteration   5: 91.334 ms/op
Iteration   1: 90.788 ms/op
Iteration   2: 91.482 ms/op
Iteration   3: 91.353 ms/op
Iteration   4: 90.790 ms/op
Iteration   5: 90.971 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer":
  91.077 ±(99.9%) 1.244 ms/op [Average]
  (min, avg, max) = (90.788, 91.077, 91.482), stdev = 0.323
  CI (99.9%): [89.833, 92.321] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.divide_and_conquer:asm":
PrintAssembly processed: 212839 total address lines.
Perf output processed (skipped 64.335 seconds):
 Column 1: cycles (311078 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 701 

                               0x00007f5f04670840:   cmp    0x1c8(%r15),%r10
                               0x00007f5f04670847:   jae    0x00007f5f04671168           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                         ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                         ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                               0x00007f5f0467084d:   mov    %r10,0x1b8(%r15)
                               0x00007f5f04670854:   prefetchw 0xc0(%r10)
   0.02%                       0x00007f5f0467085c:   movq   $0x1,(%rax)
                               0x00007f5f04670863:   movl   $0x324e8,0x8(%rax)           ;   {metadata(&apos;java/lang/Double&apos;)}
                               0x00007f5f0467086a:   mov    %r12d,0xc(%rax)
                               0x00007f5f0467086e:   mov    %r12,0x10(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - java.lang.Double::valueOf@0 (line 773)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                         ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                         ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.02%                       0x00007f5f04670872:   vmovsd %xmm0,0x10(%rax)             ;*synchronization entry
                                                                                         ; - java.lang.Double::&lt;init&gt;@-1 (line 866)
                                                                                         ; - java.lang.Double::valueOf@5 (line 773)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                         ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                         ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                               0x00007f5f04670877:   movabs $0x7f5f15064000,%rbx
                               0x00007f5f04670881:   mov    0x10(%rsp),%r13
   0.00%                       0x00007f5f04670886:   mov    %rax,%rbp
   0.02%  ╭                    0x00007f5f04670889:   jmp    0x00007f5f04670ad8           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                              ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                              ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                    0x00007f5f0467088e:   mov    0x24(%r13),%r10d             ;*getfield ages {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@24 (line 93)
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                              ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                              ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%  │                    0x00007f5f04670892:   mov    0x20(%r13),%ebp              ;*getfield sequentialTask {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@20 (line 93)
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                              ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                              ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.02%  │                    0x00007f5f04670896:   data16 nopw 0x0(%rax,%rax,1)
          │                    0x00007f5f046708a0:   mov    0x8(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f5f046714e8
   0.00%  │                    0x00007f5f046708a5:   movslq %r8d,%r11
   0.00%  │                    0x00007f5f046708a8:   mov    %r11,%rcx
   0.02%  │                    0x00007f5f046708ab:   dec    %rcx
          │                    0x00007f5f046708ae:   mov    $0xffffffff80000000,%rdx
   0.00%  │                    0x00007f5f046708b5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%  │                    0x00007f5f046708c0:   cmp    $0x102af78,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f5e8c02af78&apos;)}
          │╭                   0x00007f5f046708c6:   je     0x00007f5f0467098b
   0.01%  ││                   0x00007f5f046708cc:   cmp    $0x102b190,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f5e8c02b190&apos;)}
          ││                   0x00007f5f046708d2:   jne    0x00007f5f046713fc
          ││                   0x00007f5f046708d8:   cmp    %r8d,%r9d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                             ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                             ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                   0x00007f5f046708db:   nopl   0x0(%rax,%rax,1)
          ││                   0x00007f5f046708e0:   jge    0x00007f5f04671029
   0.01%  ││                   0x00007f5f046708e6:   lea    (%r12,%rbp,8),%rbx           ;*invokeinterface compute {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                             ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                             ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                   0x00007f5f046708ea:   vmovsd 0x10(%rbx),%xmm2             ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@1
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                             ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                             ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%  ││                   0x00007f5f046708ef:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f5f046713c8
          ││                   0x00007f5f046708f4:   cmp    %ebx,%r9d
          ││                   0x00007f5f046708f7:   jae    0x00007f5f046713c8
   0.01%  ││                   0x00007f5f046708fd:   movslq %ebx,%rbx
          ││                   0x00007f5f04670900:   cmp    %rbx,%rcx
          ││                   0x00007f5f04670903:   jae    0x00007f5f046713c8           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                             ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                             ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                   0x00007f5f04670909:   lea    (%r12,%r10,8),%rbp
          ││                   0x00007f5f0467090d:   mov    %ebp,%r10d
   0.01%  ││                   0x00007f5f04670910:   shr    $0x3,%r10d
          ││                   0x00007f5f04670914:   and    $0x3,%r10d
          ││                   0x00007f5f04670918:   add    %r9d,%r10d
          ││                   0x00007f5f0467091b:   mov    $0x1,%esi
   0.01%  ││                   0x00007f5f04670920:   sub    %r10d,%esi
          ││                   0x00007f5f04670923:   and    $0x3,%esi
          ││                   0x00007f5f04670926:   add    %r9d,%esi
          ││                   0x00007f5f04670929:   inc    %esi
   0.01%  ││                   0x00007f5f0467092b:   cmp    %r8d,%esi
          ││                   0x00007f5f0467092e:   cmovg  %r8d,%esi
          ││                   0x00007f5f04670932:   movabs $0x7f5f15064000,%rbx
          ││                   0x00007f5f0467093c:   xor    %ecx,%ecx
   0.01%  ││                   0x00007f5f0467093e:   vxorpd %xmm0,%xmm0,%xmm0            ;*dload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                             ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                             ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││↗                  0x00007f5f04670942:   vmovsd 0x10(%rbp,%r9,8),%xmm1       ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │││                                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │││                                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   1.64%  │││                  0x00007f5f04670949:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │││                                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │││                                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.07%  │││                  0x00007f5f0467094d:   vmulsd %xmm1,%xmm1,%xmm1            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │││                                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │││                                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.03%  │││                  0x00007f5f04670951:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │││                                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │││                                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.10%  │││                  0x00007f5f04670955:   inc    %r9d
          │││                  0x00007f5f04670958:   cmp    %esi,%r9d
          ││╰                  0x00007f5f0467095b:   jl     0x00007f5f04670942
          ││                   0x00007f5f0467095d:   lea    -0x1f(%r11),%r10
          ││                   0x00007f5f04670961:   cmp    $0xffffffff80000000,%r10
   0.01%  ││                   0x00007f5f04670968:   cmovl  %rdx,%r10
          ││                   0x00007f5f0467096c:   mov    %r10d,%eax
          ││                   0x00007f5f0467096f:   cmp    %eax,%r9d
          ││ ╭                 0x00007f5f04670972:   jge    0x00007f5f04670dc9
          ││ │                 0x00007f5f04670978:   vbroadcastsd %xmm2,%ymm5
   0.01%  ││ │                 0x00007f5f0467097d:   mov    $0x7d00,%edi
          ││ │                 0x00007f5f04670982:   mov    %r8d,(%rsp)
          ││ │╭                0x00007f5f04670986:   jmp    0x00007f5f04670d4d
   0.01%  │↘ ││                0x00007f5f0467098b:   cmp    %r8d,%r9d
          │  ││                0x00007f5f0467098e:   jge    0x00007f5f04670df9
          │  ││                0x00007f5f04670994:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f5f046712d4
          │  ││                0x00007f5f04670999:   cmp    %ebx,%r9d
          │  ││                0x00007f5f0467099c:   nopl   0x0(%rax)
   0.01%  │  ││                0x00007f5f046709a0:   jae    0x00007f5f046712d4
          │  ││                0x00007f5f046709a6:   movslq %ebx,%rbx
          │  ││                0x00007f5f046709a9:   cmp    %rbx,%rcx
          │  ││                0x00007f5f046709ac:   jae    0x00007f5f046712d4           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││                                                                          ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││                                                                          ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │  ││                0x00007f5f046709b2:   lea    (%r12,%r10,8),%rdi
   0.01%  │  ││                0x00007f5f046709b6:   mov    %r9d,%r10d
          │  ││                0x00007f5f046709b9:   inc    %r10d
          │  ││                0x00007f5f046709bc:   movabs $0x7f5f15064000,%rbx
   0.00%  │  ││                0x00007f5f046709c6:   xor    %ecx,%ecx
   0.01%  │  ││                0x00007f5f046709c8:   vxorpd %xmm0,%xmm0,%xmm0            ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││                                                                          ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││                                                                          ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │  ││                                                                          ;   {no_reloc}
          │  ││↗               0x00007f5f046709cc:   vaddsd 0x10(%rdi,%r9,8),%xmm0,%xmm0 ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │  │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  │││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  │││                                                                         ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  │││                                                                         ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   1.66%  │  │││               0x00007f5f046709d3:   inc    %r9d
   0.00%  │  │││               0x00007f5f046709d6:   cmp    %r10d,%r9d
          │  ││╰               0x00007f5f046709d9:   jl     0x00007f5f046709cc
          │  ││                0x00007f5f046709db:   add    $0xfffffffffffffff9,%r11
   0.01%  │  ││                0x00007f5f046709df:   cmp    $0xffffffff80000000,%r11
          │  ││                0x00007f5f046709e6:   cmovl  %rdx,%r11
          │  ││                0x00007f5f046709ea:   mov    %r11d,%r11d
          │  ││                0x00007f5f046709ed:   cmp    %r11d,%r9d
          │  ││ ╭              0x00007f5f046709f0:   jge    0x00007f5f04670a6b
   0.01%  │  ││ │              0x00007f5f046709f6:   mov    $0x1f40,%r10d
          │  ││ │ ↗            0x00007f5f046709fc:   mov    %r11d,%esi
          │  ││ │ │            0x00007f5f046709ff:   sub    %r9d,%esi
          │  ││ │ │            0x00007f5f04670a02:   cmp    %r9d,%r11d
   0.01%  │  ││ │ │            0x00007f5f04670a05:   cmovl  %ecx,%esi
          │  ││ │ │            0x00007f5f04670a08:   cmp    $0x1f40,%esi
          │  ││ │ │            0x00007f5f04670a0e:   cmova  %r10d,%esi
   0.01%  │  ││ │ │            0x00007f5f04670a12:   add    %r9d,%esi
          │  ││ │ │            0x00007f5f04670a15:   data16 data16 nopw 0x0(%rax,%rax,1) ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││ │ │                                                                      ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││ │ │                                                                      ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │  ││ │↗│            0x00007f5f04670a20:   vaddsd 0x10(%rdi,%r9,8),%xmm0,%xmm0
   2.23%  │  ││ │││            0x00007f5f04670a27:   movslq %r9d,%rdx
   0.00%  │  ││ │││            0x00007f5f04670a2a:   vaddsd 0x18(%rdi,%rdx,8),%xmm0,%xmm0
   2.21%  │  ││ │││            0x00007f5f04670a30:   vaddsd 0x20(%rdi,%rdx,8),%xmm0,%xmm0
   2.36%  │  ││ │││            0x00007f5f04670a36:   vaddsd 0x28(%rdi,%rdx,8),%xmm0,%xmm0
   2.25%  │  ││ │││            0x00007f5f04670a3c:   vaddsd 0x30(%rdi,%rdx,8),%xmm0,%xmm0
   2.26%  │  ││ │││            0x00007f5f04670a42:   vaddsd 0x38(%rdi,%rdx,8),%xmm0,%xmm0
   2.20%  │  ││ │││            0x00007f5f04670a48:   vaddsd 0x40(%rdi,%rdx,8),%xmm0,%xmm0;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││ │││                                                                      ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││ │││                                                                      ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   3.20%  │  ││ │││            0x00007f5f04670a4e:   vaddsd 0x48(%rdi,%rdx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││ │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││ │││                                                                      ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││ │││                                                                      ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   2.25%  │  ││ │││            0x00007f5f04670a54:   add    $0x8,%r9d
   0.00%  │  ││ │││            0x00007f5f04670a58:   cmp    %esi,%r9d
          │  ││ │╰│            0x00007f5f04670a5b:   jl     0x00007f5f04670a20           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││ │ │                                                                      ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││ │ │                                                                      ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │  ││ │ │            0x00007f5f04670a5d:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rdi=Oop r13=Oop [48]=Oop [56]=Oop }
          │  ││ │ │                                                                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  ││ │ │                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││ │ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││ │ │                                                                      ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││ │ │                                                                      ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%  │  ││ │ │            0x00007f5f04670a64:   test   %eax,(%rsi)                  ;   {poll}
          │  ││ │ │            0x00007f5f04670a66:   cmp    %r11d,%r9d
          │  ││ │ ╰            0x00007f5f04670a69:   jl     0x00007f5f046709fc
          │  ││ ↘              0x00007f5f04670a6b:   cmp    %r8d,%r9d
          │  ││    ╭           0x00007f5f04670a6e:   jge    0x00007f5f04670a85           ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          │  ││    │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││    │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││    │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││    │                                                                     ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││    │                                                                     ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.05%  │  ││    │↗          0x00007f5f04670a70:   vaddsd 0x10(%rdi,%r9,8),%xmm0,%xmm0 ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │  ││    ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │  ││    ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││    ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││    ││                                                                    ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││    ││                                                                    ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.18%  │  ││    ││          0x00007f5f04670a77:   inc    %r9d
   0.00%  │  ││    ││          0x00007f5f04670a7a:   nopw   0x0(%rax,%rax,1)
          │  ││    ││          0x00007f5f04670a80:   cmp    %r8d,%r9d
          │  ││    │╰          0x00007f5f04670a83:   jl     0x00007f5f04670a70
   0.01%  │  ││    ↘      ↗ ↗  0x00007f5f04670a85:   mov    0x1b8(%r15),%rbp
   0.01%  │  ││           │ │  0x00007f5f04670a8c:   mov    %rbp,%r10
          │  ││           │ │  0x00007f5f04670a8f:   add    $0x18,%r10
          │  ││           │ │  0x00007f5f04670a93:   nopw   0x0(%rax,%rax,1)
   0.01%  │  ││           │ │  0x00007f5f04670a9c:   data16 data16 xchg %ax,%ax
   0.01%  │  ││           │ │  0x00007f5f04670aa0:   cmp    0x1c8(%r15),%r10
          │  ││           │ │  0x00007f5f04670aa7:   jae    0x00007f5f046710ac           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │  ││           │ │  0x00007f5f04670aad:   mov    %r10,0x1b8(%r15)
          │  ││           │ │  0x00007f5f04670ab4:   prefetchw 0xc0(%r10)
   0.01%  │  ││           │ │  0x00007f5f04670abc:   movq   $0x1,0x0(%rbp)
   0.01%  │  ││           │ │  0x00007f5f04670ac4:   movl   $0x324e8,0x8(%rbp)           ;   {metadata(&apos;java/lang/Double&apos;)}
          │  ││           │ │  0x00007f5f04670acb:   mov    %r12d,0xc(%rbp)
          │  ││           │ │  0x00007f5f04670acf:   mov    %r12,0x10(%rbp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │  ││           │ │                                                            ; - java.lang.Double::valueOf@0 (line 773)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%  │  ││           │ │  0x00007f5f04670ad3:   vmovsd %xmm0,0x10(%rbp)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │  ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │  ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │  ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%  ↘  ││           │ │  0x00007f5f04670ad8:   nopl   0x0(%rax,%rax,1)
             ││           │ │  0x00007f5f04670ae0:   cmpb   $0x0,0x40(%r15)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
             ││           │ │  0x00007f5f04670ae5:   jne    0x00007f5f04670e0c
   0.03%     ││           │ │  0x00007f5f04670aeb:   mov    %r13,%r10                    ;*putfield result {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@5 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%     ││           │ │  0x00007f5f04670aee:   mov    %rbp,%r8
             ││           │ │  0x00007f5f04670af1:   shr    $0x3,%r8                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
             ││           │ │  0x00007f5f04670af5:   mov    %r8d,0x14(%r13)              ;*putfield result {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@5 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.03%     ││           │ │  0x00007f5f04670af9:   mov    %rbp,%r11
   0.01%     ││           │ │  0x00007f5f04670afc:   xor    %r10,%r11
             ││           │ │  0x00007f5f04670aff:   shr    $0x15,%r11
             ││           │ │  0x00007f5f04670b03:   test   %r11,%r11
             ││      ╭    │ │  0x00007f5f04670b06:   je     0x00007f5f04670b18
             ││      │    │ │  0x00007f5f04670b08:   shr    $0x9,%r10
             ││      │    │ │  0x00007f5f04670b0c:   add    %r10,%rbx
             ││      │    │ │  0x00007f5f04670b0f:   cmpb   $0x2,(%rbx)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││      │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││      │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││      │    │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││      │    │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%     ││      │    │ │  0x00007f5f04670b12:   jne    0x00007f5f04670e45           ;*invokevirtual getIntVolatile {reexecute=0 rethrow=0 return_oop=0}
             ││      │    │ │                                                            ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@3 (line 3190)
             ││      │    │ │                                                            ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
             ││      │    │ │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
             ││      │    │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
   0.03%     ││      ↘    │ │  0x00007f5f04670b18:   mov    0x30(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%     ││           │ │  0x00007f5f04670b1d:   mov    0xc(%r10),%eax               ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
   0.02%     ││           │ │  0x00007f5f04670b21:   mov    %eax,%r10d
             ││           │ │  0x00007f5f04670b24:   or     $0x80000000,%r10d
   0.02%     ││           │ │  0x00007f5f04670b2b:   mov    %r10d,(%rsp)
   0.01%     ││           │ │  0x00007f5f04670b2f:   mov    0x30(%rsp),%r10
             ││           │ │  0x00007f5f04670b34:   mov    (%rsp),%r8d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%     ││           │ │  0x00007f5f04670b38:   lock cmpxchg %r8d,0xc(%r10)
   0.76%     ││           │ │  0x00007f5f04670b3e:   sete   %r11b
             ││           │ │  0x00007f5f04670b42:   movzbl %r11b,%r11d                  ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
   0.04%     ││           │ │  0x00007f5f04670b46:   test   %r11d,%r11d
             ││           │ │  0x00007f5f04670b49:   je     0x00007f5f046712b8           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%     ││           │ │  0x00007f5f04670b4f:   mov    0x10(%r10),%r11d             ;*getfield aux {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::signalWaiters@1 (line 301)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
             ││           │ │  0x00007f5f04670b53:   test   %r11d,%r11d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             ││           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││           │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││           │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
             ││           │ │  0x00007f5f04670b56:   jne    0x00007f5f04671045
             ││           │ │  0x00007f5f04670b5c:   mov    (%rsp),%eax
   0.03%     ││           │ │  0x00007f5f04670b5f:   vzeroupper 
   0.03%     ││           │ │  0x00007f5f04670b62:   add    $0x70,%rsp
             ││           │ │  0x00007f5f04670b66:   pop    %rbp
             ││           │ │  0x00007f5f04670b67:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             ││           │ │  0x00007f5f04670b6e:   ja     0x00007f5f0467162b
   0.04%     ││           │ │  0x00007f5f04670b74:   ret    
             ││           │ │  0x00007f5f04670b75:   data16 data16 nopw 0x0(%rax,%rax,1)
             ││       ↗   │ │  0x00007f5f04670b80:   mov    %esi,%r9d                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
             ││       │   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
             ││       │   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
             ││       │   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             ││       │   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││       │   │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││       │   │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%     ││       │ ↗ │ │  0x00007f5f04670b83:   vmovdqu 0x10(%rbp,%r9,8),%ymm1
   0.14%     ││       │ │ │ │  0x00007f5f04670b8a:   vsubpd %ymm5,%ymm1,%ymm1
   0.00%     ││       │ │ │ │  0x00007f5f04670b8e:   vmulpd %ymm1,%ymm1,%ymm12
   0.00%     ││       │ │ │ │  0x00007f5f04670b92:   movslq %r9d,%r8
   0.01%     ││       │ │ │ │  0x00007f5f04670b95:   vmovdqu 0x30(%rbp,%r8,8),%ymm1
   0.61%     ││       │ │ │ │  0x00007f5f04670b9c:   vmovdqu 0xf0(%rbp,%r8,8),%ymm6
   0.89%     ││       │ │ │ │  0x00007f5f04670ba6:   vmovdqu 0x50(%rbp,%r8,8),%ymm7
   0.09%     ││       │ │ │ │  0x00007f5f04670bad:   vmovdqu 0x70(%rbp,%r8,8),%ymm10
   0.34%     ││       │ │ │ │  0x00007f5f04670bb4:   vmovdqu 0x90(%rbp,%r8,8),%ymm8
   0.21%     ││       │ │ │ │  0x00007f5f04670bbe:   vmovdqu 0xb0(%rbp,%r8,8),%ymm3
   0.14%     ││       │ │ │ │  0x00007f5f04670bc8:   vmovdqu 0xd0(%rbp,%r8,8),%ymm4
   0.12%     ││       │ │ │ │  0x00007f5f04670bd2:   vsubpd %ymm5,%ymm1,%ymm1
   0.01%     ││       │ │ │ │  0x00007f5f04670bd6:   vsubpd %ymm5,%ymm4,%ymm4
   0.17%     ││       │ │ │ │  0x00007f5f04670bda:   vmulpd %ymm1,%ymm1,%ymm13
   0.01%     ││       │ │ │ │  0x00007f5f04670bde:   vmulpd %ymm4,%ymm4,%ymm1
   0.04%     ││       │ │ │ │  0x00007f5f04670be2:   vsubpd %ymm5,%ymm3,%ymm3
   0.00%     ││       │ │ │ │  0x00007f5f04670be6:   vsubpd %ymm5,%ymm8,%ymm4
   0.13%     ││       │ │ │ │  0x00007f5f04670bea:   vmulpd %ymm3,%ymm3,%ymm8
   0.01%     ││       │ │ │ │  0x00007f5f04670bee:   vmulpd %ymm4,%ymm4,%ymm9
   0.04%     ││       │ │ │ │  0x00007f5f04670bf2:   vsubpd %ymm5,%ymm10,%ymm3
             ││       │ │ │ │  0x00007f5f04670bf6:   vsubpd %ymm5,%ymm7,%ymm4
   0.13%     ││       │ │ │ │  0x00007f5f04670bfa:   vmulpd %ymm3,%ymm3,%ymm10
   0.00%     ││       │ │ │ │  0x00007f5f04670bfe:   vmulpd %ymm4,%ymm4,%ymm11
   0.03%     ││       │ │ │ │  0x00007f5f04670c02:   vsubpd %ymm5,%ymm6,%ymm3
   0.01%     ││       │ │ │ │  0x00007f5f04670c06:   vmulpd %ymm3,%ymm3,%ymm3
   0.13%     ││       │ │ │ │  0x00007f5f04670c0a:   vaddsd %xmm12,%xmm0,%xmm0
   0.00%     ││       │ │ │ │  0x00007f5f04670c0f:   vpshufd $0xe,%xmm12,%xmm15
   0.02%     ││       │ │ │ │  0x00007f5f04670c15:   vaddsd %xmm15,%xmm0,%xmm0
   0.09%     ││       │ │ │ │  0x00007f5f04670c1a:   vextractf128 $0x1,%ymm12,%xmm15
   0.01%     ││       │ │ │ │  0x00007f5f04670c20:   vaddsd %xmm15,%xmm0,%xmm0
   0.48%     ││       │ │ │ │  0x00007f5f04670c25:   vpshufd $0xe,%xmm15,%xmm14
   0.02%     ││       │ │ │ │  0x00007f5f04670c2b:   vaddsd %xmm14,%xmm0,%xmm0
   0.39%     ││       │ │ │ │  0x00007f5f04670c30:   vaddsd %xmm13,%xmm0,%xmm0
   0.42%     ││       │ │ │ │  0x00007f5f04670c35:   vpshufd $0xe,%xmm13,%xmm14
   0.00%     ││       │ │ │ │  0x00007f5f04670c3b:   vaddsd %xmm14,%xmm0,%xmm0
   0.47%     ││       │ │ │ │  0x00007f5f04670c40:   vextractf128 $0x1,%ymm13,%xmm14
             ││       │ │ │ │  0x00007f5f04670c46:   vaddsd %xmm14,%xmm0,%xmm0
   0.48%     ││       │ │ │ │  0x00007f5f04670c4b:   vpshufd $0xe,%xmm14,%xmm12
             ││       │ │ │ │  0x00007f5f04670c51:   vaddsd %xmm12,%xmm0,%xmm0
   0.49%     ││       │ │ │ │  0x00007f5f04670c56:   vaddsd %xmm11,%xmm0,%xmm0
   0.42%     ││       │ │ │ │  0x00007f5f04670c5b:   vpshufd $0xe,%xmm11,%xmm13
   0.00%     ││       │ │ │ │  0x00007f5f04670c61:   vaddsd %xmm13,%xmm0,%xmm0
   0.47%     ││       │ │ │ │  0x00007f5f04670c66:   vextractf128 $0x1,%ymm11,%xmm13     ;   {no_reloc}
   0.01%     ││       │ │ │ │  0x00007f5f04670c6c:   vaddsd %xmm13,%xmm0,%xmm0
   0.50%     ││       │ │ │ │  0x00007f5f04670c71:   vpshufd $0xe,%xmm13,%xmm12
   0.00%     ││       │ │ │ │  0x00007f5f04670c77:   vaddsd %xmm12,%xmm0,%xmm0
   0.46%     ││       │ │ │ │  0x00007f5f04670c7c:   vaddsd %xmm10,%xmm0,%xmm0
   0.48%     ││       │ │ │ │  0x00007f5f04670c81:   vpshufd $0xe,%xmm10,%xmm12
             ││       │ │ │ │  0x00007f5f04670c87:   vaddsd %xmm12,%xmm0,%xmm0
   0.48%     ││       │ │ │ │  0x00007f5f04670c8c:   vextractf128 $0x1,%ymm10,%xmm12
             ││       │ │ │ │  0x00007f5f04670c92:   vaddsd %xmm12,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670c97:   vpshufd $0xe,%xmm12,%xmm11
             ││       │ │ │ │  0x00007f5f04670c9d:   vaddsd %xmm11,%xmm0,%xmm0
   0.49%     ││       │ │ │ │  0x00007f5f04670ca2:   vaddsd %xmm9,%xmm0,%xmm0
   0.50%     ││       │ │ │ │  0x00007f5f04670ca7:   vpshufd $0xe,%xmm9,%xmm11
   0.01%     ││       │ │ │ │  0x00007f5f04670cad:   vaddsd %xmm11,%xmm0,%xmm0
   0.51%     ││       │ │ │ │  0x00007f5f04670cb2:   vextractf128 $0x1,%ymm9,%xmm11
   0.00%     ││       │ │ │ │  0x00007f5f04670cb8:   vaddsd %xmm11,%xmm0,%xmm0
   0.54%     ││       │ │ │ │  0x00007f5f04670cbd:   vpshufd $0xe,%xmm11,%xmm10
   0.00%     ││       │ │ │ │  0x00007f5f04670cc3:   vaddsd %xmm10,%xmm0,%xmm0
   0.51%     ││       │ │ │ │  0x00007f5f04670cc8:   vaddsd %xmm8,%xmm0,%xmm0
   0.51%     ││       │ │ │ │  0x00007f5f04670ccd:   vpshufd $0xe,%xmm8,%xmm10
   0.00%     ││       │ │ │ │  0x00007f5f04670cd3:   vaddsd %xmm10,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670cd8:   vextractf128 $0x1,%ymm8,%xmm10
   0.00%     ││       │ │ │ │  0x00007f5f04670cde:   vaddsd %xmm10,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670ce3:   vpshufd $0xe,%xmm10,%xmm9
             ││       │ │ │ │  0x00007f5f04670ce9:   vaddsd %xmm9,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670cee:   vaddsd %xmm1,%xmm0,%xmm0
   0.52%     ││       │ │ │ │  0x00007f5f04670cf2:   vpshufd $0xe,%xmm1,%xmm7
   0.00%     ││       │ │ │ │  0x00007f5f04670cf7:   vaddsd %xmm7,%xmm0,%xmm0
   0.52%     ││       │ │ │ │  0x00007f5f04670cfb:   vextractf128 $0x1,%ymm1,%xmm7
   0.00%     ││       │ │ │ │  0x00007f5f04670d01:   vaddsd %xmm7,%xmm0,%xmm0
   0.56%     ││       │ │ │ │  0x00007f5f04670d05:   vpshufd $0xe,%xmm7,%xmm8
   0.00%     ││       │ │ │ │  0x00007f5f04670d0a:   vaddsd %xmm8,%xmm0,%xmm0
   0.54%     ││       │ │ │ │  0x00007f5f04670d0f:   vaddsd %xmm3,%xmm0,%xmm0
   0.56%     ││       │ │ │ │  0x00007f5f04670d13:   vpshufd $0xe,%xmm3,%xmm6
             ││       │ │ │ │  0x00007f5f04670d18:   vaddsd %xmm6,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670d1c:   vextractf128 $0x1,%ymm3,%xmm6
             ││       │ │ │ │  0x00007f5f04670d22:   vaddsd %xmm6,%xmm0,%xmm0
   0.54%     ││       │ │ │ │  0x00007f5f04670d26:   vpshufd $0xe,%xmm6,%xmm4
             ││       │ │ │ │  0x00007f5f04670d2b:   vaddsd %xmm4,%xmm0,%xmm0
   0.53%     ││       │ │ │ │  0x00007f5f04670d2f:   lea    0x20(%r9),%esi
             ││       │ │ │ │  0x00007f5f04670d33:   cmp    %r10d,%esi
             ││       ╰ │ │ │  0x00007f5f04670d36:   jl     0x00007f5f04670b80           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││         │ │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││         │ │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
             ││         │ │ │  0x00007f5f04670d3c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop r13=Oop [48]=Oop [56]=Oop }
             ││         │ │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
             ││         │ │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             ││         │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             ││         │ │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             ││         │ │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
             ││         │ │ │  0x00007f5f04670d43:   test   %eax,(%r10)                  ;   {poll}
   0.01%     ││         │ │ │  0x00007f5f04670d46:   cmp    %eax,%esi
             ││        ╭│ │ │  0x00007f5f04670d48:   jge    0x00007f5f04670d6d
             ││        ││ │ │  0x00007f5f04670d4a:   mov    %esi,%r9d
             │↘        ││ │ │  0x00007f5f04670d4d:   mov    %eax,%r10d
   0.01%     │         ││ │ │  0x00007f5f04670d50:   sub    %r9d,%r10d
             │         ││ │ │  0x00007f5f04670d53:   cmp    %r9d,%eax
             │         ││ │ │  0x00007f5f04670d56:   cmovl  %ecx,%r10d
             │         ││ │ │  0x00007f5f04670d5a:   cmp    $0x7d00,%r10d
   0.01%     │         ││ │ │  0x00007f5f04670d61:   cmova  %edi,%r10d
             │         ││ │ │  0x00007f5f04670d65:   add    %r9d,%r10d
             │         │╰ │ │  0x00007f5f04670d68:   jmp    0x00007f5f04670b83
             │         ↘  │ │  0x00007f5f04670d6d:   add    $0xfffffffffffffffd,%r11
             │            │ │  0x00007f5f04670d71:   cmp    $0xffffffff80000000,%r11
             │            │ │  0x00007f5f04670d78:   cmovl  %rdx,%r11
   0.01%     │            │ │  0x00007f5f04670d7c:   mov    %r11d,%r10d
             │            │ │  0x00007f5f04670d7f:   nop
             │            │ │  0x00007f5f04670d80:   cmp    %r10d,%esi
             │            │ │  0x00007f5f04670d83:   jge    0x00007f5f04670df4
             │            │ │  0x00007f5f04670d89:   add    $0x20,%r9d                   ;*dload {reexecute=0 rethrow=0 return_oop=0}
             │            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
             │            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
             │            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
             │            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             │            │ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             │            │ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%     │           ↗│ │  0x00007f5f04670d8d:   vmovdqu 0x10(%rbp,%r9,8),%ymm1
   0.00%     │           ││ │  0x00007f5f04670d94:   vsubpd %ymm5,%ymm1,%ymm1
   0.05%     │           ││ │  0x00007f5f04670d98:   vmulpd %ymm1,%ymm1,%ymm1
   0.00%     │           ││ │  0x00007f5f04670d9c:   vaddsd %xmm1,%xmm0,%xmm0
   0.18%     │           ││ │  0x00007f5f04670da0:   vpshufd $0xe,%xmm1,%xmm3
             │           ││ │  0x00007f5f04670da5:   vaddsd %xmm3,%xmm0,%xmm0
   0.26%     │           ││ │  0x00007f5f04670da9:   vextractf128 $0x1,%ymm1,%xmm3
             │           ││ │  0x00007f5f04670daf:   vaddsd %xmm3,%xmm0,%xmm0
   0.26%     │           ││ │  0x00007f5f04670db3:   vpshufd $0xe,%xmm3,%xmm4
             │           ││ │  0x00007f5f04670db8:   vaddsd %xmm4,%xmm0,%xmm0            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │           ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
             │           ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
             │           ││ │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
             │           ││ │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.26%     │           ││ │  0x00007f5f04670dbc:   add    $0x4,%r9d
   0.00%     │           ││ │  0x00007f5f04670dc0:   cmp    %r10d,%r9d
             │           ╰│ │  0x00007f5f04670dc3:   jl     0x00007f5f04670d8d
             │            │ │  0x00007f5f04670dc5:   mov    (%rsp),%r8d
             ↘            │ │  0x00007f5f04670dc9:   cmp    %r8d,%r9d
                          ╰ │  0x00007f5f04670dcc:   jge    0x00007f5f04670a85
   0.01%                    │  0x00007f5f04670dd2:   xchg   %ax,%ax                      ;*dload {reexecute=0 rethrow=0 return_oop=0}
                            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
                            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                            │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                            │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                           ↗│  0x00007f5f04670dd4:   vmovsd 0x10(%rbp,%r9,8),%xmm1       ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                           ││                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                           ││                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.00%                   ││  0x00007f5f04670ddb:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                           ││                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                           ││                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                           ││  0x00007f5f04670ddf:   vmulsd %xmm1,%xmm1,%xmm1            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                           ││                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                           ││                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.01%                   ││  0x00007f5f04670de3:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                           ││                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                           ││                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
   0.02%                   ││  0x00007f5f04670de7:   inc    %r9d
                           ││  0x00007f5f04670dea:   cmp    %r8d,%r9d
                           ╰│  0x00007f5f04670ded:   jl     0x00007f5f04670dd4
                            ╰  0x00007f5f04670def:   jmp    0x00007f5f04670a85
                               0x00007f5f04670df4:   mov    %esi,%r9d
....................................................................................................
  43.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1, version 2, compile id 700 

                         --------------------------------------------------------------------------------
                         [Constant Pool (empty)]
                         --------------------------------------------------------------------------------
                         [Verified Entry Point]
                           # {method} {0x00007f5e804df6e0} &apos;lambda$variance$1&apos; &apos;(D[DII)D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance&apos;
                           # parm0:    xmm0:xmm0   = double
                           # parm1:    rsi:rsi   = &apos;[D&apos;
                           # parm2:    rdx       = int
                           # parm3:    rcx       = int
                           #           [sp+0x40]  (sp of caller)
   0.00%                   0x00007f5f0467c820:   mov    %eax,-0x14000(%rsp)
   0.00%                   0x00007f5f0467c827:   push   %rbp
   0.01%                   0x00007f5f0467c828:   sub    $0x30,%rsp
   0.00%                   0x00007f5f0467c82c:   cmpl   $0x1,0x20(%r15)
   0.00%                   0x00007f5f0467c834:   jne    0x00007f5f0467cb96           ;*synchronization entry
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@-1 (line 52)
   0.00%                   0x00007f5f0467c83a:   vmovapd %xmm0,%xmm1
                           0x00007f5f0467c83e:   vxorpd %xmm0,%xmm0,%xmm0
   0.01%                   0x00007f5f0467c842:   cmp    %ecx,%edx
          ╭                0x00007f5f0467c844:   jge    0x00007f5f0467cb44           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
          │╭               0x00007f5f0467c84a:   mov    0xc(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f5f0467cb5a
          ││                                                                         ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@18 (line 54)
   0.00%  ││               0x00007f5f0467c84e:   cmp    %r11d,%edx
          ││╭              0x00007f5f0467c851:   jae    0x00007f5f0467cb5a
   0.00%  │││              0x00007f5f0467c857:   movslq %r11d,%r10
   0.00%  │││              0x00007f5f0467c85a:   movslq %ecx,%r9
   0.00%  │││              0x00007f5f0467c85d:   mov    %r9,%r11
   0.00%  │││              0x00007f5f0467c860:   dec    %r11
   0.00%  │││              0x00007f5f0467c863:   cmp    %r10,%r11
          │││╭             0x00007f5f0467c866:   jae    0x00007f5f0467cb5a
   0.01%  ││││             0x00007f5f0467c86c:   mov    %esi,%r11d
   0.00%  ││││             0x00007f5f0467c86f:   shr    $0x3,%r11d
   0.01%  ││││             0x00007f5f0467c873:   and    $0x3,%r11d
   0.00%  ││││             0x00007f5f0467c877:   add    %edx,%r11d
   0.00%  ││││             0x00007f5f0467c87a:   mov    $0x1,%r8d
          ││││             0x00007f5f0467c880:   sub    %r11d,%r8d
   0.01%  ││││             0x00007f5f0467c883:   and    $0x3,%r8d
          ││││             0x00007f5f0467c887:   add    %edx,%r8d
   0.00%  ││││             0x00007f5f0467c88a:   inc    %r8d
   0.00%  ││││             0x00007f5f0467c88d:   cmp    %ecx,%r8d
   0.00%  ││││             0x00007f5f0467c890:   cmovg  %ecx,%r8d                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
          ││││↗            0x00007f5f0467c894:   vmovsd 0x10(%rsi,%rdx,8),%xmm2
   1.96%  │││││            0x00007f5f0467c89a:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
   0.07%  │││││            0x00007f5f0467c89e:   vmulsd %xmm2,%xmm2,%xmm2
   0.04%  │││││            0x00007f5f0467c8a2:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
   0.10%  │││││            0x00007f5f0467c8a6:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
          │││││            0x00007f5f0467c8a8:   cmp    %r8d,%edx
          ││││╰            0x00007f5f0467c8ab:   jl     0x00007f5f0467c894           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
          ││││             0x00007f5f0467c8ad:   lea    -0x1f(%r9),%r10
          ││││             0x00007f5f0467c8b1:   mov    $0xffffffff80000000,%rax
   0.01%  ││││             0x00007f5f0467c8b8:   cmp    $0xffffffff80000000,%r10
          ││││             0x00007f5f0467c8bf:   cmovl  %rax,%r10
          ││││             0x00007f5f0467c8c3:   mov    %r10d,%r8d
          ││││             0x00007f5f0467c8c6:   cmp    %r8d,%edx
          ││││ ╭           0x00007f5f0467c8c9:   jge    0x00007f5f0467cb24
   0.01%  ││││ │           0x00007f5f0467c8cf:   vbroadcastsd %xmm1,%ymm6            ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          ││││ │           0x00007f5f0467c8d4:   xor    %r11d,%r11d
          ││││ │           0x00007f5f0467c8d7:   mov    $0x7d00,%edi
          ││││ │           0x00007f5f0467c8dc:   nopl   0x0(%rax)
   0.01%  ││││ │╭          0x00007f5f0467c8e0:   jmp    0x00007f5f0467caab
          ││││ ││          0x00007f5f0467c8e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││ ││↗         0x00007f5f0467c8f0:   mov    %ebp,%edx                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
          ││││ │││ ↗       0x00007f5f0467c8f2:   vmovdqu 0x10(%rsi,%rdx,8),%ymm2
   0.14%  ││││ │││ │       0x00007f5f0467c8f8:   vsubpd %ymm6,%ymm2,%ymm2
   0.01%  ││││ │││ │       0x00007f5f0467c8fc:   vmulpd %ymm2,%ymm2,%ymm8
   0.01%  ││││ │││ │       0x00007f5f0467c900:   movslq %edx,%r10
          ││││ │││ │       0x00007f5f0467c903:   vmovdqu 0x30(%rsi,%r10,8),%ymm2
   0.56%  ││││ │││ │       0x00007f5f0467c90a:   vmovdqu 0xf0(%rsi,%r10,8),%ymm9
   0.89%  ││││ │││ │       0x00007f5f0467c914:   vmovdqu 0x50(%rsi,%r10,8),%ymm10
   0.09%  ││││ │││ │       0x00007f5f0467c91b:   vmovdqu 0x70(%rsi,%r10,8),%ymm7     ;   {no_reloc}
   0.33%  ││││ │││ │       0x00007f5f0467c922:   vmovdqu 0x90(%rsi,%r10,8),%ymm3
   0.20%  ││││ │││ │       0x00007f5f0467c92c:   vmovdqu 0xb0(%rsi,%r10,8),%ymm4
   0.14%  ││││ │││ │       0x00007f5f0467c936:   vmovdqu 0xd0(%rsi,%r10,8),%ymm5
   0.08%  ││││ │││ │       0x00007f5f0467c940:   vsubpd %ymm6,%ymm2,%ymm2
   0.00%  ││││ │││ │       0x00007f5f0467c944:   vsubpd %ymm6,%ymm5,%ymm5
   0.17%  ││││ │││ │       0x00007f5f0467c948:   vmulpd %ymm2,%ymm2,%ymm11
   0.01%  ││││ │││ │       0x00007f5f0467c94c:   vmulpd %ymm5,%ymm5,%ymm5
   0.04%  ││││ │││ │       0x00007f5f0467c950:   vsubpd %ymm6,%ymm4,%ymm2
   0.01%  ││││ │││ │       0x00007f5f0467c954:   vsubpd %ymm6,%ymm3,%ymm3
   0.14%  ││││ │││ │       0x00007f5f0467c958:   vmulpd %ymm2,%ymm2,%ymm4
   0.01%  ││││ │││ │       0x00007f5f0467c95c:   vmulpd %ymm3,%ymm3,%ymm12
   0.04%  ││││ │││ │       0x00007f5f0467c960:   vsubpd %ymm6,%ymm7,%ymm2
   0.00%  ││││ │││ │       0x00007f5f0467c964:   vsubpd %ymm6,%ymm10,%ymm3
   0.11%  ││││ │││ │       0x00007f5f0467c968:   vmulpd %ymm2,%ymm2,%ymm10
   0.01%  ││││ │││ │       0x00007f5f0467c96c:   vmulpd %ymm3,%ymm3,%ymm13
   0.03%  ││││ │││ │       0x00007f5f0467c970:   vsubpd %ymm6,%ymm9,%ymm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
   0.01%  ││││ │││ │       0x00007f5f0467c974:   vmulpd %ymm2,%ymm2,%ymm7
   0.13%  ││││ │││ │       0x00007f5f0467c978:   vaddsd %xmm8,%xmm0,%xmm0
   0.00%  ││││ │││ │       0x00007f5f0467c97d:   vpshufd $0xe,%xmm8,%xmm3
   0.02%  ││││ │││ │       0x00007f5f0467c983:   vaddsd %xmm3,%xmm0,%xmm0
   0.10%  ││││ │││ │       0x00007f5f0467c987:   vextractf128 $0x1,%ymm8,%xmm3
   0.02%  ││││ │││ │       0x00007f5f0467c98d:   vaddsd %xmm3,%xmm0,%xmm0
   0.48%  ││││ │││ │       0x00007f5f0467c991:   vpshufd $0xe,%xmm3,%xmm2
   0.02%  ││││ │││ │       0x00007f5f0467c996:   vaddsd %xmm2,%xmm0,%xmm0
   0.39%  ││││ │││ │       0x00007f5f0467c99a:   vaddsd %xmm11,%xmm0,%xmm0
   0.41%  ││││ │││ │       0x00007f5f0467c99f:   vpshufd $0xe,%xmm11,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467c9a5:   vaddsd %xmm3,%xmm0,%xmm0
   0.46%  ││││ │││ │       0x00007f5f0467c9a9:   vextractf128 $0x1,%ymm11,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467c9af:   vaddsd %xmm3,%xmm0,%xmm0
   0.49%  ││││ │││ │       0x00007f5f0467c9b3:   vpshufd $0xe,%xmm3,%xmm2
   0.00%  ││││ │││ │       0x00007f5f0467c9b8:   vaddsd %xmm2,%xmm0,%xmm0
   0.49%  ││││ │││ │       0x00007f5f0467c9bc:   vaddsd %xmm13,%xmm0,%xmm0
   0.41%  ││││ │││ │       0x00007f5f0467c9c1:   vpshufd $0xe,%xmm13,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467c9c7:   vaddsd %xmm3,%xmm0,%xmm0
   0.46%  ││││ │││ │       0x00007f5f0467c9cb:   vextractf128 $0x1,%ymm13,%xmm3
   0.01%  ││││ │││ │       0x00007f5f0467c9d1:   vaddsd %xmm3,%xmm0,%xmm0
   0.48%  ││││ │││ │       0x00007f5f0467c9d5:   vpshufd $0xe,%xmm3,%xmm2
   0.00%  ││││ │││ │       0x00007f5f0467c9da:   vaddsd %xmm2,%xmm0,%xmm0
   0.52%  ││││ │││ │       0x00007f5f0467c9de:   vaddsd %xmm10,%xmm0,%xmm0
   0.48%  ││││ │││ │       0x00007f5f0467c9e3:   vpshufd $0xe,%xmm10,%xmm3
          ││││ │││ │       0x00007f5f0467c9e9:   vaddsd %xmm3,%xmm0,%xmm0
   0.48%  ││││ │││ │       0x00007f5f0467c9ed:   vextractf128 $0x1,%ymm10,%xmm3
          ││││ │││ │       0x00007f5f0467c9f3:   vaddsd %xmm3,%xmm0,%xmm0
   0.54%  ││││ │││ │       0x00007f5f0467c9f7:   vpshufd $0xe,%xmm3,%xmm2
          ││││ │││ │       0x00007f5f0467c9fc:   vaddsd %xmm2,%xmm0,%xmm0
   0.49%  ││││ │││ │       0x00007f5f0467ca00:   vaddsd %xmm12,%xmm0,%xmm0
   0.49%  ││││ │││ │       0x00007f5f0467ca05:   vpshufd $0xe,%xmm12,%xmm3
   0.01%  ││││ │││ │       0x00007f5f0467ca0b:   vaddsd %xmm3,%xmm0,%xmm0
   0.52%  ││││ │││ │       0x00007f5f0467ca0f:   vextractf128 $0x1,%ymm12,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467ca15:   vaddsd %xmm3,%xmm0,%xmm0
   0.53%  ││││ │││ │       0x00007f5f0467ca19:   vpshufd $0xe,%xmm3,%xmm2
   0.00%  ││││ │││ │       0x00007f5f0467ca1e:   vaddsd %xmm2,%xmm0,%xmm0            ;   {no_reloc}
   0.52%  ││││ │││ │       0x00007f5f0467ca22:   vaddsd %xmm4,%xmm0,%xmm0
   0.51%  ││││ │││ │       0x00007f5f0467ca26:   vpshufd $0xe,%xmm4,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467ca2b:   vaddsd %xmm3,%xmm0,%xmm0
   0.52%  ││││ │││ │       0x00007f5f0467ca2f:   vextractf128 $0x1,%ymm4,%xmm3
          ││││ │││ │       0x00007f5f0467ca35:   vaddsd %xmm3,%xmm0,%xmm0
   0.52%  ││││ │││ │       0x00007f5f0467ca39:   vpshufd $0xe,%xmm3,%xmm2
          ││││ │││ │       0x00007f5f0467ca3e:   vaddsd %xmm2,%xmm0,%xmm0
   0.54%  ││││ │││ │       0x00007f5f0467ca42:   vaddsd %xmm5,%xmm0,%xmm0
   0.51%  ││││ │││ │       0x00007f5f0467ca46:   vpshufd $0xe,%xmm5,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467ca4b:   vaddsd %xmm3,%xmm0,%xmm0
   0.51%  ││││ │││ │       0x00007f5f0467ca4f:   vextractf128 $0x1,%ymm5,%xmm3
   0.00%  ││││ │││ │       0x00007f5f0467ca55:   vaddsd %xmm3,%xmm0,%xmm0
   0.51%  ││││ │││ │       0x00007f5f0467ca59:   vpshufd $0xe,%xmm3,%xmm2
   0.00%  ││││ │││ │       0x00007f5f0467ca5e:   vaddsd %xmm2,%xmm0,%xmm0
   0.54%  ││││ │││ │       0x00007f5f0467ca62:   vaddsd %xmm7,%xmm0,%xmm0
   0.53%  ││││ │││ │       0x00007f5f0467ca66:   vpshufd $0xe,%xmm7,%xmm14
          ││││ │││ │       0x00007f5f0467ca6b:   vaddsd %xmm14,%xmm0,%xmm0
   0.53%  ││││ │││ │       0x00007f5f0467ca70:   vextractf128 $0x1,%ymm7,%xmm14
   0.00%  ││││ │││ │       0x00007f5f0467ca76:   vaddsd %xmm14,%xmm0,%xmm0
   0.53%  ││││ │││ │       0x00007f5f0467ca7b:   vpshufd $0xe,%xmm14,%xmm9
          ││││ │││ │       0x00007f5f0467ca81:   vaddsd %xmm9,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
   0.53%  ││││ │││ │       0x00007f5f0467ca86:   lea    0x20(%rdx),%ebp
          ││││ │││ │       0x00007f5f0467ca89:   cmp    %ebx,%ebp
          ││││ ││╰ │       0x00007f5f0467ca8b:   jl     0x00007f5f0467c8f0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
          ││││ ││  │       0x00007f5f0467ca91:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop }
          ││││ ││  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││ ││  │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          ││││ ││  │       0x00007f5f0467ca98:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@34 (line 53)
          ││││ ││  │                                                                 ;   {poll}
   0.01%  ││││ ││  │       0x00007f5f0467ca9b:   nopl   0x0(%rax,%rax,1)
          ││││ ││  │       0x00007f5f0467caa0:   cmp    %r8d,%ebp
          ││││ ││ ╭│       0x00007f5f0467caa3:   jge    0x00007f5f0467cb07
          ││││ ││ ││       0x00007f5f0467caa9:   mov    %ebp,%edx
          ││││ │↘ ││       0x00007f5f0467caab:   mov    %r8d,%ebx
          ││││ │  ││       0x00007f5f0467caae:   sub    %edx,%ebx
          ││││ │  ││       0x00007f5f0467cab0:   cmp    %edx,%r8d
   0.01%  ││││ │  ││       0x00007f5f0467cab3:   cmovl  %r11d,%ebx
          ││││ │  ││       0x00007f5f0467cab7:   cmp    $0x7d00,%ebx
          ││││ │  ││       0x00007f5f0467cabd:   cmova  %edi,%ebx
   0.01%  ││││ │  ││       0x00007f5f0467cac0:   add    %edx,%ebx
          ││││ │  │╰       0x00007f5f0467cac2:   jmp    0x00007f5f0467c8f2
          ││││ │  │   ↗    0x00007f5f0467cac7:   add    $0x20,%edx                   ;*dload {reexecute=0 rethrow=0 return_oop=0}
          ││││ │  │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
          ││││ │  │ ↗ │    0x00007f5f0467caca:   vmovdqu 0x10(%rsi,%rdx,8),%ymm2
   0.05%  ││││ │  │ │ │    0x00007f5f0467cad0:   vsubpd %ymm6,%ymm2,%ymm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
   0.01%  ││││ │  │ │ │    0x00007f5f0467cad4:   vmulpd %ymm2,%ymm2,%ymm2
          ││││ │  │ │ │    0x00007f5f0467cad8:   vaddsd %xmm2,%xmm0,%xmm0
   0.16%  ││││ │  │ │ │    0x00007f5f0467cadc:   vpshufd $0xe,%xmm2,%xmm3
          ││││ │  │ │ │    0x00007f5f0467cae1:   vaddsd %xmm3,%xmm0,%xmm0
   0.26%  ││││ │  │ │ │    0x00007f5f0467cae5:   vextractf128 $0x1,%ymm2,%xmm3
          ││││ │  │ │ │    0x00007f5f0467caeb:   vaddsd %xmm3,%xmm0,%xmm0
   0.26%  ││││ │  │ │ │    0x00007f5f0467caef:   vpshufd $0xe,%xmm3,%xmm4
          ││││ │  │ │ │    0x00007f5f0467caf4:   vaddsd %xmm4,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
   0.24%  ││││ │  │ │ │    0x00007f5f0467caf8:   add    $0x4,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
          ││││ │  │ │ │    0x00007f5f0467cafb:   nopl   0x0(%rax,%rax,1)
          ││││ │  │ │ │    0x00007f5f0467cb00:   cmp    %r10d,%edx
          ││││ │  │ ╰ │    0x00007f5f0467cb03:   jl     0x00007f5f0467caca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ │  │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
          ││││ │  │  ╭│    0x00007f5f0467cb05:   jmp    0x00007f5f0467cb24
          ││││ │  ↘  ││    0x00007f5f0467cb07:   add    $0xfffffffffffffffd,%r9
          ││││ │     ││    0x00007f5f0467cb0b:   cmp    $0xffffffff80000000,%r9
   0.01%  ││││ │     ││    0x00007f5f0467cb12:   cmovl  %rax,%r9
          ││││ │     ││    0x00007f5f0467cb16:   mov    %r9d,%r10d
          ││││ │     ││    0x00007f5f0467cb19:   cmp    %r10d,%ebp
          ││││ │     ││    0x00007f5f0467cb1c:   nopl   0x0(%rax)
   0.01%  ││││ │     │╰    0x00007f5f0467cb20:   jl     0x00007f5f0467cac7
          ││││ │     │     0x00007f5f0467cb22:   mov    %ebp,%edx
   0.01%  ││││ ↘     ↘     0x00007f5f0467cb24:   cmp    %ecx,%edx
          ││││         ╭   0x00007f5f0467cb26:   jge    0x00007f5f0467cb44           ;*dload {reexecute=0 rethrow=0 return_oop=0}
          ││││         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@13 (line 54)
          ││││         │↗  0x00007f5f0467cb28:   vmovsd 0x10(%rsi,%rdx,8),%xmm2
   0.00%  ││││         ││  0x00007f5f0467cb2e:   vsubsd %xmm1,%xmm2,%xmm2            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@20 (line 54)
   0.00%  ││││         ││  0x00007f5f0467cb32:   vmulsd %xmm2,%xmm2,%xmm2
   0.01%  ││││         ││  0x00007f5f0467cb36:   vaddsd %xmm2,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@28 (line 54)
   0.02%  ││││         ││  0x00007f5f0467cb3a:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@31 (line 53)
          ││││         ││  0x00007f5f0467cb3c:   nopl   0x0(%rax)
          ││││         ││  0x00007f5f0467cb40:   cmp    %ecx,%edx
          ││││         │╰  0x00007f5f0467cb42:   jl     0x00007f5f0467cb28
          ↘│││         ↘   0x00007f5f0467cb44:   vzeroupper 
   0.01%   │││             0x00007f5f0467cb47:   add    $0x30,%rsp
   0.01%   │││             0x00007f5f0467cb4b:   pop    %rbp
           │││             0x00007f5f0467cb4c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │││             0x00007f5f0467cb53:   ja     0x00007f5f0467cb80
           │││             0x00007f5f0467cb59:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1@10 (line 53)
           ↘↘↘             0x00007f5f0467cb5a:   vmovq  %xmm1,%rbp
                           0x00007f5f0467cb5f:   mov    %rsi,(%rsp)
                           0x00007f5f0467cb63:   mov    %edx,0x10(%rsp)
                           0x00007f5f0467cb67:   mov    %ecx,0x14(%rsp)
                           0x00007f5f0467cb6b:   mov    $0xffffff76,%esi
                           0x00007f5f0467cb70:   vzeroupper 
....................................................................................................
  21.59%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinTask::invoke, version 4, compile id 695 

                      0x00007f5f0466c0d1:   movabs $0x7f5f15064000,%rdi
                      0x00007f5f0466c0db:   add    %r10,%rdi
                      0x00007f5f0466c0de:   xchg   %ax,%ax
                      0x00007f5f0466c0e0:   cmpb   $0x2,(%rdi)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c0e3:   jne    0x00007f5f0466c68d
   0.00%              0x00007f5f0466c0e9:   mov    0xc(%r8),%r10d               ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
                                                                                ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
                                                                                ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c0ed:   mov    %r10d,%r9d
   0.00%              0x00007f5f0466c0f0:   or     $0x80000000,%r9d
                      0x00007f5f0466c0f7:   mov    %r10d,%eax                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c0fa:   lock cmpxchg %r9d,0xc(%r8)
   0.23%              0x00007f5f0466c100:   sete   %bpl
                      0x00007f5f0466c104:   movzbl %bpl,%ebp                    ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
                                                                                ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
                                                                                ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c108:   test   %ebp,%ebp
                      0x00007f5f0466c10a:   je     0x00007f5f0466cd70           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c110:   mov    0x10(%r8),%r11d              ;*getfield aux {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::signalWaiters@1 (line 301)
                                                                                ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c114:   test   %r11d,%r11d
                      0x00007f5f0466c117:   jne    0x00007f5f0466c90c
                      0x00007f5f0466c11d:   data16 xchg %ax,%ax
   0.01%              0x00007f5f0466c120:   test   %r9d,%r9d
                      0x00007f5f0466c123:   jge    0x00007f5f0466cd98
                      0x00007f5f0466c129:   and    $0x10000,%r10d
                      0x00007f5f0466c130:   test   %r10d,%r10d
                      0x00007f5f0466c133:   jne    0x00007f5f0466cdcc           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c139:   mov    0x14(%r8),%ebp               ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@29 (line 671)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c13d:   data16 xchg %ax,%ax
                      0x00007f5f0466c140:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f5f0466d1d8
                      0x00007f5f0466c145:   cmp    $0x324e8,%r11d               ;   {metadata(&apos;java/lang/Double&apos;)}
                      0x00007f5f0466c14c:   jne    0x00007f5f0466d158
                      0x00007f5f0466c152:   mov    0x38(%rsp),%r11              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c157:   mov    0xc(%r11),%edx               ;*getfield status {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@1 (line 650)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c15b:   lea    (%r12,%rbp,8),%r10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@109 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c15f:   vmovsd 0x10(%r10),%xmm1             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Double::doubleValue@1 (line 1001)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@112 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c165:   test   %edx,%edx
                      0x00007f5f0466c167:   jl     0x00007f5f0466c797
   0.01%              0x00007f5f0466c16d:   vmovsd %xmm1,0x28(%rsp)
                      0x00007f5f0466c173:   mov    %r11,0x20(%rsp)
                      0x00007f5f0466c178:   mov    %r13,0x8(%rsp)
                      0x00007f5f0466c17d:   and    $0x40000,%edx
   0.01%              0x00007f5f0466c183:   mov    %r11,%rsi
                      0x00007f5f0466c186:   xor    %ecx,%ecx                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c188:   data16 xchg %ax,%ax
                      0x00007f5f0466c18b:   call   0x00007f5efcc0c500           ; ImmutableOopMap {[0]=Oop [24]=Oop [32]=Oop [48]=Oop }
                                                                                ;*invokevirtual awaitDone {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.ForkJoinTask::join@15 (line 651)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ;   {optimized virtual_call}
                      0x00007f5f0466c190:   nopl   0x3000b80(%rax,%rax,1)       ;   {other}
   0.01%              0x00007f5f0466c198:   mov    0x8(%rsp),%r13
                      0x00007f5f0466c19d:   mov    0x20(%rsp),%r11
   0.00%              0x00007f5f0466c1a2:   vmovsd 0x28(%rsp),%xmm1
   0.01%              0x00007f5f0466c1a8:   mov    %eax,%ebp
                      0x00007f5f0466c1aa:   and    $0x10000,%ebp
                      0x00007f5f0466c1b0:   test   %ebp,%ebp
                      0x00007f5f0466c1b2:   jne    0x00007f5f0466ce08           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c1b8:   mov    0x14(%r11),%ebp              ;*getfield result {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.util.concurrent.RecursiveTask::getRawResult@1 (line 99)
                                                                                ; - java.util.concurrent.ForkJoinTask::join@32 (line 654)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@116 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c1bc:   nopl   0x0(%rax)
                      0x00007f5f0466c1c0:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f5f0466d204
   0.00%              0x00007f5f0466c1c5:   cmp    $0x324e8,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ;   {metadata(&apos;java/lang/Double&apos;)}
                      0x00007f5f0466c1cc:   jne    0x00007f5f0466d16c           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c1d2:   mov    0x1b8(%r15),%rax
   0.01%              0x00007f5f0466c1d9:   mov    %rax,%r10
                      0x00007f5f0466c1dc:   add    $0x18,%r10
                      0x00007f5f0466c1e0:   lea    (%r12,%rbp,8),%r11           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@119 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c1e4:   vmovsd 0x10(%r11),%xmm0             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Double::doubleValue@1 (line 1001)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@122 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c1ea:   vaddsd %xmm1,%xmm0,%xmm0
                      0x00007f5f0466c1ee:   cmp    0x1c8(%r15),%r10
                      0x00007f5f0466c1f5:   jae    0x00007f5f0466c8d4           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c1fb:   mov    %r10,0x1b8(%r15)
   0.00%              0x00007f5f0466c202:   prefetchw 0xc0(%r10)
   0.01%              0x00007f5f0466c20a:   movq   $0x1,(%rax)
                      0x00007f5f0466c211:   movl   $0x324e8,0x8(%rax)           ;   {metadata(&apos;java/lang/Double&apos;)}
                      0x00007f5f0466c218:   mov    %r12d,0xc(%rax)
                      0x00007f5f0466c21c:   mov    %r12,0x10(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Double::valueOf@0 (line 773)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%              0x00007f5f0466c220:   vmovsd %xmm0,0x10(%rax)             ;*synchronization entry
                                                                                ; - java.lang.Double::&lt;init&gt;@-1 (line 866)
                                                                                ; - java.lang.Double::valueOf@5 (line 773)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@126 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c225:   mov    (%rsp),%r14
                      0x00007f5f0466c229:   mov    0x18(%rsp),%rbx
                      0x00007f5f0466c22e:   mov    %rax,%rbp
   0.01%  ╭           0x00007f5f0466c231:   jmp    0x00007f5f0466c398           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                     ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%  │           0x00007f5f0466c236:   mov    0x24(%rbx),%r11d             ;*getfield ages {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@24 (line 93)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                     ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
          │           0x00007f5f0466c23a:   mov    0x20(%rbx),%ebp              ;*getfield sequentialTask {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@20 (line 93)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │                                                                     ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │                                                                     ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%  │           0x00007f5f0466c23d:   data16 xchg %ax,%ax
          │           0x00007f5f0466c240:   mov    0x8(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007f5f0466d184
   0.01%  │           0x00007f5f0466c245:   cmp    $0x102af78,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f5e8c02af78&apos;)}
          │╭          0x00007f5f0466c24c:   jne    0x00007f5f0466c44d
   0.00%  ││          0x00007f5f0466c252:   cmp    %r8d,%edx
          ││          0x00007f5f0466c255:   jge    0x00007f5f0466c4e7
   0.00%  ││          0x00007f5f0466c25b:   nopl   0x0(%rax,%rax,1)
   0.00%  ││          0x00007f5f0466c260:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f5f0466cc00
   0.01%  ││          0x00007f5f0466c265:   cmp    %ecx,%edx
          ││          0x00007f5f0466c267:   jae    0x00007f5f0466cc00
          ││          0x00007f5f0466c26d:   movslq %r8d,%rdi
   0.00%  ││          0x00007f5f0466c270:   movslq %ecx,%r9
          ││          0x00007f5f0466c273:   mov    %rdi,%rcx
   0.00%  ││          0x00007f5f0466c276:   dec    %rcx
          ││          0x00007f5f0466c279:   cmp    %r9,%rcx
   0.00%  ││          0x00007f5f0466c27c:   nopl   0x0(%rax)
          ││          0x00007f5f0466c280:   jae    0x00007f5f0466cc00           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                    ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                    ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                                                                    ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%  ││          0x00007f5f0466c286:   lea    (%r12,%r11,8),%rsi
          ││          0x00007f5f0466c28a:   mov    %edx,%r11d
   0.00%  ││          0x00007f5f0466c28d:   inc    %r11d
          ││          0x00007f5f0466c290:   vxorpd %xmm0,%xmm0,%xmm0
   0.00%  ││          0x00007f5f0466c294:   xor    %r9d,%r9d
   0.00%  ││          0x00007f5f0466c297:   movabs $0x7f5f15064000,%r13         ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││                                                                    ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││                                                                    ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││                                                                    ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%  ││↗         0x00007f5f0466c2a1:   vaddsd 0x10(%rsi,%rdx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          │││                                                                   ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          │││                                                                   ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          │││                                                                   ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   1.32%  │││         0x00007f5f0466c2a7:   inc    %edx
   0.00%  │││         0x00007f5f0466c2a9:   cmp    %r11d,%edx
          ││╰         0x00007f5f0466c2ac:   jl     0x00007f5f0466c2a1
          ││          0x00007f5f0466c2ae:   add    $0xfffffffffffffff9,%rdi
   0.01%  ││          0x00007f5f0466c2b2:   cmp    $0xffffffff80000000,%rdi
          ││          0x00007f5f0466c2b9:   mov    $0xffffffff80000000,%r11
          ││          0x00007f5f0466c2c0:   cmovl  %r11,%rdi
          ││          0x00007f5f0466c2c4:   mov    %edi,%r11d
   0.00%  ││          0x00007f5f0466c2c7:   cmp    %r11d,%edx
          ││ ╭        0x00007f5f0466c2ca:   jge    0x00007f5f0466c338
          ││ │ ↗      0x00007f5f0466c2d0:   mov    %r11d,%edi
          ││ │ │      0x00007f5f0466c2d3:   sub    %edx,%edi
          ││ │ │      0x00007f5f0466c2d5:   cmp    %edx,%r11d
   0.00%  ││ │ │      0x00007f5f0466c2d8:   cmovl  %r9d,%edi
          ││ │ │      0x00007f5f0466c2dc:   cmp    $0x1f40,%edi
          ││ │ │      0x00007f5f0466c2e2:   mov    $0x1f40,%ecx
          ││ │ │      0x00007f5f0466c2e7:   cmova  %ecx,%edi
   0.01%  ││ │ │      0x00007f5f0466c2ea:   add    %edx,%edi
          ││ │ │      0x00007f5f0466c2ec:   nopl   0x0(%rax)                    ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││ │ │                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
          ││ │↗│      0x00007f5f0466c2f0:   vaddsd 0x10(%rsi,%rdx,8),%xmm0,%xmm0
   1.48%  ││ │││      0x00007f5f0466c2f6:   movslq %edx,%rcx
          ││ │││      0x00007f5f0466c2f9:   vaddsd 0x18(%rsi,%rcx,8),%xmm0,%xmm0
   1.51%  ││ │││      0x00007f5f0466c2ff:   vaddsd 0x20(%rsi,%rcx,8),%xmm0,%xmm0
   1.57%  ││ │││      0x00007f5f0466c305:   vaddsd 0x28(%rsi,%rcx,8),%xmm0,%xmm0
   1.52%  ││ │││      0x00007f5f0466c30b:   vaddsd 0x30(%rsi,%rcx,8),%xmm0,%xmm0
   1.48%  ││ │││      0x00007f5f0466c311:   vaddsd 0x38(%rsi,%rcx,8),%xmm0,%xmm0
   1.48%  ││ │││      0x00007f5f0466c317:   vaddsd 0x40(%rsi,%rcx,8),%xmm0,%xmm0;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││ │││                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││ │││                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││ │││                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   2.19%  ││ │││      0x00007f5f0466c31d:   vaddsd 0x48(%rsi,%rcx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││ │││                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││ │││                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││ │││                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   1.48%  ││ │││      0x00007f5f0466c323:   add    $0x8,%edx
          ││ │││      0x00007f5f0466c326:   cmp    %edi,%edx
          ││ │╰│      0x00007f5f0466c328:   jl     0x00007f5f0466c2f0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││ │ │                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
          ││ │ │      0x00007f5f0466c32a:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rbx=Oop rsi=Oop r14=Oop [48]=Oop }
          ││ │ │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │ │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││ │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││ │ │                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││ │ │                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%  ││ │ │      0x00007f5f0466c331:   test   %eax,(%rcx)                  ;   {poll}
          ││ │ │      0x00007f5f0466c333:   cmp    %r11d,%edx
          ││ │ ╰      0x00007f5f0466c336:   jl     0x00007f5f0466c2d0
          ││ ↘        0x00007f5f0466c338:   cmp    %r8d,%edx
          ││    ╭     0x00007f5f0466c33b:   jge    0x00007f5f0466c34d
          ││    │     0x00007f5f0466c33d:   data16 xchg %ax,%ax                 ;*dload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@11 (line 40)
          ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││    │                                                               ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││    │                                                               ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││    │                                                               ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%  ││    │↗    0x00007f5f0466c340:   vaddsd 0x10(%rsi,%rdx,8),%xmm0,%xmm0;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@16 (line 40)
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││    ││                                                              ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││    ││                                                              ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││    ││                                                              ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.15%  ││    ││    0x00007f5f0466c346:   inc    %edx
          ││    ││    0x00007f5f0466c348:   cmp    %r8d,%edx
          ││    │╰    0x00007f5f0466c34b:   jl     0x00007f5f0466c340
          ││    ↘  ↗  0x00007f5f0466c34d:   mov    0x1b8(%r15),%rbp
   0.01%  ││       │  0x00007f5f0466c354:   mov    %rbp,%r11
          ││       │  0x00007f5f0466c357:   add    $0x18,%r11
          ││       │  0x00007f5f0466c35b:   nopl   0x0(%rax,%rax,1)
          ││       │  0x00007f5f0466c360:   cmp    0x1c8(%r15),%r11
          ││       │  0x00007f5f0466c367:   jae    0x00007f5f0466c825           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%  ││       │  0x00007f5f0466c36d:   mov    %r11,0x1b8(%r15)
          ││       │  0x00007f5f0466c374:   prefetchw 0xc0(%r11)
          ││       │  0x00007f5f0466c37c:   movq   $0x1,0x0(%rbp)
          ││       │  0x00007f5f0466c384:   movl   $0x324e8,0x8(%rbp)           ;   {metadata(&apos;java/lang/Double&apos;)}
   0.01%  ││       │  0x00007f5f0466c38b:   mov    %r12d,0xc(%rbp)
          ││       │  0x00007f5f0466c38f:   mov    %r12,0x10(%rbp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - java.lang.Double::valueOf@0 (line 773)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
          ││       │  0x00007f5f0466c393:   vmovsd %xmm0,0x10(%rbp)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$0@21 (line 39)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02af78::compute@3
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
          ││       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
          ││       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%  ↘│       │  0x00007f5f0466c398:   nopl   0x0(%rax,%rax,1)
   0.01%   │       │  0x00007f5f0466c3a0:   cmpb   $0x0,0x40(%r15)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
           │       │  0x00007f5f0466c3a5:   jne    0x00007f5f0466c50d           ;*putfield result {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@5 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c3ab:   mov    %rbp,%r10
           │       │  0x00007f5f0466c3ae:   shr    $0x3,%r10                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c3b2:   mov    %r10d,0x14(%rbx)
   0.00%   │       │  0x00007f5f0466c3b6:   mov    %rbx,%r10                    ;*putfield result {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@5 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c3b9:   mov    %rbp,%r11
           │       │  0x00007f5f0466c3bc:   xor    %r10,%r11
   0.01%   │       │  0x00007f5f0466c3bf:   shr    $0x15,%r11
   0.00%   │       │  0x00007f5f0466c3c3:   test   %r11,%r11
           │      ╭│  0x00007f5f0466c3c6:   je     0x00007f5f0466c3da
           │      ││  0x00007f5f0466c3c8:   shr    $0x9,%r10
           │      ││  0x00007f5f0466c3cc:   add    %r10,%r13
           │      ││  0x00007f5f0466c3cf:   cmpb   $0x2,0x0(%r13)               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
           │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
           │      ││                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
           │      ││                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │      ││                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
           │      ││  0x00007f5f0466c3d4:   jne    0x00007f5f0466c545
   0.01%   │      ↘│  0x00007f5f0466c3da:   mov    0xc(%r14),%r8d               ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c3de:   mov    %r8d,%r11d
   0.01%   │       │  0x00007f5f0466c3e1:   or     $0x80000000,%r11d
           │       │  0x00007f5f0466c3e8:   mov    %r8d,%eax                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c3eb:   lock cmpxchg %r11d,0xc(%r14)
   0.46%   │       │  0x00007f5f0466c3f1:   sete   %r10b
           │       │  0x00007f5f0466c3f5:   movzbl %r10b,%r10d                  ;*invokevirtual weakCompareAndSetInt {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - jdk.internal.misc.Unsafe::getAndBitwiseOrInt@18 (line 3191)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::getAndBitwiseOrStatus@8 (line 283)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@3 (line 317)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.03%   │       │  0x00007f5f0466c3f9:   test   %r10d,%r10d
           │       │  0x00007f5f0466c3fc:   nopl   0x0(%rax)
           │       │  0x00007f5f0466c400:   je     0x00007f5f0466cba4           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
           │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
           │       │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c406:   mov    0x10(%r14),%r10d             ;*getfield aux {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::signalWaiters@1 (line 301)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::setDone@11 (line 318)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@31 (line 393)
           │       │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%   │       │  0x00007f5f0466c40a:   test   %r10d,%r10d
           │       │  0x00007f5f0466c40d:   jne    0x00007f5f0466c79e
           │       │  0x00007f5f0466c413:   test   %r11d,%r11d
           │       │  0x00007f5f0466c416:   jge    0x00007f5f0466cbc4
           │       │  0x00007f5f0466c41c:   and    $0x10000,%r8d
   0.01%   │       │  0x00007f5f0466c423:   test   %r8d,%r8d
           │       │  0x00007f5f0466c426:   jne    0x00007f5f0466cbe0
   0.01%   │       │  0x00007f5f0466c42c:   mov    0x14(%rbx),%r10d
           │       │  0x00007f5f0466c430:   mov    %r10,%rax
           │       │  0x00007f5f0466c433:   shl    $0x3,%rax
   0.01%   │       │  0x00007f5f0466c437:   add    $0x90,%rsp
   0.01%   │       │  0x00007f5f0466c43e:   pop    %rbp
   0.00%   │       │  0x00007f5f0466c43f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │       │  0x00007f5f0466c446:   ja     0x00007f5f0466d4a4
   0.02%   │       │  0x00007f5f0466c44c:   ret    
           ↘       │  0x00007f5f0466c44d:   cmp    $0x102b190,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f5e8c02b190&apos;)}
                   │  0x00007f5f0466c454:   jne    0x00007f5f0466cf78
   0.00%           │  0x00007f5f0466c45a:   mov    %rbx,0x18(%rsp)
   0.00%           │  0x00007f5f0466c45f:   mov    %r10d,0x8(%rsp)
   0.00%           │  0x00007f5f0466c464:   mov    %rsi,(%rsp)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                   │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                   │  0x00007f5f0466c468:   mov    %r11,%rsi
   0.00%           │  0x00007f5f0466c46b:   shl    $0x3,%rsi
                   │  0x00007f5f0466c46f:   lea    (%r12,%rbp,8),%r10           ;*invokeinterface compute {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                   │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.01%           │  0x00007f5f0466c473:   vmovsd 0x10(%r10),%xmm0             ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@1
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                   │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                   │  0x00007f5f0466c479:   mov    %r14,%rbp
   0.00%           │  0x00007f5f0466c47c:   mov    %r8d,%ecx
                   │  0x00007f5f0466c47f:   call   0x00007f5f0466d504           ; ImmutableOopMap {rbp=Oop [0]=Oop [24]=Oop [48]=Oop }
                   │                                                            ;*invokestatic lambda$variance$1 {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                   │                                                            ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                   │                                                            ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                   │                                                            ;   {static_call}
   0.01%           │  0x00007f5f0466c484:   nopl   0x5000e74(%rax,%rax,1)       ;   {other}
   0.00%           │  0x00007f5f0466c48c:   movabs $0x7f5f15064000,%r13
                   │  0x00007f5f0466c496:   mov    %rbp,%r14
                   │  0x00007f5f0466c499:   mov    0x8(%rsp),%r10d
   0.01%           │  0x00007f5f0466c49e:   mov    0x18(%rsp),%rbx
                   ╰  0x00007f5f0466c4a3:   jmp    0x00007f5f0466c34d
                      0x00007f5f0466c4a8:   cmp    $0x102b190,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/divideandconquer/DivideAndConquerVariance$$Lambda+0x00007f5e8c02b190&apos;)}
                      0x00007f5f0466c4af:   jne    0x00007f5f0466cfa8           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c4b5:   mov    %r10,%rsi
   0.00%              0x00007f5f0466c4b8:   shl    $0x3,%rsi
                      0x00007f5f0466c4bc:   lea    (%r12,%rbp,8),%r10           ;*invokeinterface compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                      0x00007f5f0466c4c0:   vmovsd 0x10(%r10),%xmm0             ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@1
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c4c6:   mov    (%rsp),%rbp                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@40 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
   0.00%              0x00007f5f0466c4ca:   nop
                      0x00007f5f0466c4cb:   call   0x00007f5f0466d504           ; ImmutableOopMap {rbp=Oop [0]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                                ;*invokestatic lambda$variance$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$$Lambda/0x00007f5e8c02b190::compute@7
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@35 (line 93)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
                                                                                ; - java.util.concurrent.ForkJoinTask::invoke@1 (line 667)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@106 (line 103)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance$ForkJoinVarianceTask::compute@1 (line 68)
                                                                                ; - java.util.concurrent.RecursiveTask::exec@2 (line 110)
                                                                                ; - java.util.concurrent.ForkJoinTask::doExec@10 (line 387)
....................................................................................................
  15.39%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.66%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 701 
  21.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1, version 2, compile id 700 
  15.39%         c2, level 4  java.util.concurrent.ForkJoinTask::invoke, version 4, compile id 695 
   7.16%         c2, level 4  java.util.concurrent.ForkJoinTask::invoke, version 4, compile id 695 
   5.32%              kernel  [unknown] 
   1.67%         c2, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 13, compile id 736 
   1.42%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 701 
   1.30%         c2, level 4  java.util.concurrent.ForkJoinTask::invoke, version 4, compile id 695 
   0.99%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.99%  <...other 1277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.09%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 701 
  23.84%         c2, level 4  java.util.concurrent.ForkJoinTask::invoke, version 4, compile id 695 
  21.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer.DivideAndConquerVariance::lambda$variance$1, version 2, compile id 700 
   7.47%              kernel  [unknown] 
   1.67%         c2, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 13, compile id 736 
   0.03%                      <unknown> 
   0.02%         c2, level 4  java.util.concurrent.ForkJoinPool::helpJoin, version 2, compile id 730 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  java.util.concurrent.ForkJoinWorkerThread::run, version 2, compile id 983 
   0.00%           libjvm.so  G1CardSet::reset_table_scanner 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%  libpthread-2.31.so  __pthread_mutex_lock 
   0.00%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 901 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.00%        libc-2.31.so  __memset_avx2_erms 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.22%  <...other 410 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.23%         c2, level 4
   7.47%              kernel
   0.17%           libjvm.so
   0.05%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    Unknown, level 0
   0.00%    perf-1945468.map
   0.00%              [vdso]
   0.00%          libjava.so
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional

# Run progress: 33.33% complete, ETA 00:04:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 349.971 ms/op
# Warmup Iteration   2: 340.163 ms/op
# Warmup Iteration   3: 342.504 ms/op
# Warmup Iteration   4: 352.754 ms/op
# Warmup Iteration   5: 339.582 ms/op
Iteration   1: 339.380 ms/op
Iteration   2: 340.913 ms/op
Iteration   3: 339.542 ms/op
Iteration   4: 340.165 ms/op
Iteration   5: 339.555 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional":
  339.911 ±(99.9%) 2.447 ms/op [Average]
  (min, avg, max) = (339.380, 339.911, 340.913), stdev = 0.635
  CI (99.9%): [337.464, 342.358] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.functional:asm":
PrintAssembly processed: 190511 total address lines.
Perf output processed (skipped 64.666 seconds):
 Column 1: cycles (271307 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 11, compile id 611 

              0x00007fd570649b31:   mov    %r9d,%r10d
              0x00007fd570649b34:   jmp    0x00007fd570649ab8
              0x00007fd570649b39:   cmp    %ecx,%r9d
              0x00007fd570649b3c:   nopl   0x0(%rax)
              0x00007fd570649b40:   jge    0x00007fd57064a36c
              0x00007fd570649b46:   inc    %r10d
           ↗  0x00007fd570649b49:   mov    %ecx,%r8d
           │  0x00007fd570649b4c:   sub    %r10d,%r8d
           │  0x00007fd570649b4f:   xor    %r9d,%r9d
           │  0x00007fd570649b52:   cmp    %r10d,%ecx
   0.00%   │  0x00007fd570649b55:   cmovl  %r9d,%r8d
           │  0x00007fd570649b59:   cmp    $0xfa0,%r8d
           │  0x00007fd570649b60:   cmova  %r13d,%r8d
   0.00%   │  0x00007fd570649b64:   add    %r10d,%r8d
           │  0x00007fd570649b67:   nopw   0x0(%rax,%rax,1)             ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@67 (line 1324)
   0.71%  ↗│  0x00007fd570649b70:   vmovsd 0x10(%rdx,%r10,8),%xmm4      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  ││  0x00007fd570649b77:   vmovsd 0x10(%rsi),%xmm5             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  ││  0x00007fd570649b7c:   vsubsd %xmm8,%xmm4,%xmm4            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  ││  0x00007fd570649b81:   vmulsd %xmm4,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.72%  ││  0x00007fd570649b85:   vsubsd 0x18(%rsi),%xmm4,%xmm6       ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   4.29%  ││  0x00007fd570649b8a:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.86%  ││  0x00007fd570649b8e:   vsubsd %xmm5,%xmm7,%xmm5
   2.87%  ││  0x00007fd570649b92:   vsubsd %xmm6,%xmm5,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.85%  ││  0x00007fd570649b96:   vmovsd %xmm5,0x18(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.70%  ││  0x00007fd570649b9b:   vmovsd %xmm7,0x10(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649ba0:   vaddsd 0x20(%rsi),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649ba5:   vmovsd %xmm4,0x20(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649baa:   movslq %r10d,%r11
   0.69%  ││  0x00007fd570649bad:   vmovsd 0x18(%rdx,%r11,8),%xmm6      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  ││  0x00007fd570649bb4:   vsubsd %xmm8,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649bb9:   vmulsd %xmm6,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649bbd:   vsubsd %xmm5,%xmm6,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.52%  ││  0x00007fd570649bc1:   vaddsd %xmm4,%xmm6,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649bc5:   vaddsd %xmm7,%xmm5,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.80%  ││  0x00007fd570649bc9:   vsubsd %xmm7,%xmm9,%xmm6
   2.83%  ││  0x00007fd570649bcd:   vsubsd %xmm5,%xmm6,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.85%  ││  0x00007fd570649bd1:   vmovsd %xmm5,0x18(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.70%  ││  0x00007fd570649bd6:   vmovsd %xmm9,0x10(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649bdb:   vmovsd %xmm4,0x20(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││                                                            ;   {no_reloc}
          ││  0x00007fd570649be0:   vmovsd 0x20(%rdx,%r11,8),%xmm6      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.02%  ││  0x00007fd570649be7:   vsubsd %xmm8,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  ││  0x00007fd570649bec:   vmulsd %xmm6,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  ││  0x00007fd570649bf0:   vsubsd %xmm5,%xmm6,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.47%  ││  0x00007fd570649bf4:   vaddsd %xmm4,%xmm6,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@11 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649bf8:   vaddsd %xmm9,%xmm5,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.82%  ││  0x00007fd570649bfd:   vsubsd %xmm9,%xmm7,%xmm6
   2.88%  ││  0x00007fd570649c02:   vsubsd %xmm5,%xmm6,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.84%  ││  0x00007fd570649c06:   vmovsd %xmm5,0x18(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  ││  0x00007fd570649c0b:   vmovsd %xmm7,0x10(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649c10:   vmovsd %xmm4,0x20(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649c15:   vmovsd 0x28(%rdx,%r11,8),%xmm6      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.40%  ││  0x00007fd570649c1c:   vsubsd %xmm8,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@2 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.73%  ││  0x00007fd570649c21:   vmulsd %xmm6,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance::lambda$variance$0@6 (line 32)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.functional.FunctionalVariance$$Lambda/0x00007fd4f802a678::applyAsDouble@5
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@12 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.03%  ││  0x00007fd570649c25:   vsubsd %xmm5,%xmm6,%xmm5            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.47%  ││  0x00007fd570649c29:   vaddsd %xmm4,%xmm6,%xmm4
   0.00%  ││  0x00007fd570649c2d:   vaddsd %xmm7,%xmm5,%xmm6            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.86%  ││  0x00007fd570649c31:   vsubsd %xmm7,%xmm6,%xmm7
   2.86%  ││  0x00007fd570649c35:   vsubsd %xmm5,%xmm7,%xmm5
   2.84%  ││  0x00007fd570649c39:   vmovsd %xmm5,0x18(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.74%  ││  0x00007fd570649c3e:   vmovsd %xmm6,0x10(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@2 (line 452)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649c43:   vmovsd %xmm4,0x20(%rsi)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$sum$2@12 (line 453)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f8036a00::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.stream.DoublePipeline$2$1::accept@17 (line 212)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649c48:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
          ││  0x00007fd570649c4c:   cmp    %r8d,%r10d
          ╰│  0x00007fd570649c4f:   jl     0x00007fd570649b70           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
   0.00%   │  0x00007fd570649c55:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rdx=Oop rsi=Oop rax=Oop rbp=NarrowOop xmm0=NarrowOop xmm2=Oop xmm3=NarrowOop }
           │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
           │  0x00007fd570649c5c:   test   %eax,(%r11)                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
           │                                                            ;   {poll}
           │  0x00007fd570649c5f:   nop
           │  0x00007fd570649c60:   cmp    %ecx,%r10d
           ╰  0x00007fd570649c63:   jl     0x00007fd570649b49
              0x00007fd570649c69:   cmp    0x4(%rsp),%r10d
....................................................................................................
  49.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 11, compile id 611 

              0x00007fd57064962c:   mov    %esi,%r10d
              0x00007fd57064962f:   jmp    0x00007fd5706495b4
              0x00007fd570649631:   cmp    %ecx,%esi
              0x00007fd570649633:   jge    0x00007fd57064a21f
              0x00007fd570649639:   inc    %r10d
           ↗  0x00007fd57064963c:   mov    %ecx,%r11d
           │  0x00007fd57064963f:   sub    %r10d,%r11d
           │  0x00007fd570649642:   xor    %edi,%edi
           │  0x00007fd570649644:   cmp    %r10d,%ecx
           │  0x00007fd570649647:   cmovl  %edi,%r11d
   0.00%   │  0x00007fd57064964b:   cmp    $0xfa0,%r11d
           │  0x00007fd570649652:   cmova  %r13d,%r11d
           │  0x00007fd570649656:   add    %r10d,%r11d
   0.00%   │  0x00007fd570649659:   nopl   0x0(%rax)                    ;*return {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@67 (line 1324)
   0.69%  ↗│  0x00007fd570649660:   vmovsd 0x10(%rdx,%r10,8),%xmm7      ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  ││  0x00007fd570649667:   vaddsd 0x20(%rbp),%xmm1,%xmm0       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@5 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd57064966c:   vmovsd %xmm0,0x20(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.00%  ││  0x00007fd570649671:   vaddsd -0x9d9(%rip),%xmm0,%xmm5        # 0x00007fd570648ca0
          ││                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@5 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││                                                            ;   {section_word}
   0.72%  ││  0x00007fd570649679:   vmovsd 0x10(%rbp),%xmm0             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@8 (line 719)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd57064967e:   vaddsd -0x9e6(%rip),%xmm5,%xmm6        # 0x00007fd570648ca0
          ││                                                            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@5 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││                                                            ;   {section_word}
          ││  0x00007fd570649686:   vmovsd 0x18(%rbp),%xmm3             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@3 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.75%  ││  0x00007fd57064968b:   vaddsd -0x9f3(%rip),%xmm6,%xmm8        # 0x00007fd570648ca0
          ││                                                            ;   {section_word}
          ││  0x00007fd570649693:   vsubsd %xmm3,%xmm7,%xmm3            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   3.77%  ││  0x00007fd570649697:   vaddsd %xmm0,%xmm3,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.58%  ││  0x00007fd57064969b:   vsubsd %xmm0,%xmm9,%xmm0
   2.89%  ││  0x00007fd57064969f:   vsubsd %xmm3,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.86%  ││  0x00007fd5706496a3:   vmovsd %xmm0,0x18(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.74%  ││  0x00007fd5706496a8:   vmovsd %xmm9,0x10(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496ad:   vmovsd 0x28(%rbp),%xmm3             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@16 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496b2:   vaddsd %xmm7,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496b6:   vmovsd %xmm3,0x28(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.72%  ││  0x00007fd5706496bb:   movslq %r10d,%r8
          ││  0x00007fd5706496be:   vmovsd 0x18(%rdx,%r8,8),%xmm7       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.00%  ││  0x00007fd5706496c5:   vmovsd %xmm5,0x20(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496ca:   vsubsd %xmm0,%xmm7,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.44%  ││  0x00007fd5706496ce:   vaddsd %xmm7,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496d2:   vaddsd %xmm9,%xmm0,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.85%  ││  0x00007fd5706496d7:   vsubsd %xmm9,%xmm7,%xmm5
   2.84%  ││  0x00007fd5706496dc:   vsubsd %xmm0,%xmm5,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.88%  ││  0x00007fd5706496e0:   vmovsd %xmm0,0x18(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.74%  ││  0x00007fd5706496e5:   vmovsd %xmm7,0x10(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496ea:   vmovsd %xmm3,0x28(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd5706496ef:   vmovsd 0x20(%rdx,%r8,8),%xmm5       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.02%  ││  0x00007fd5706496f6:   vmovsd %xmm6,0x20(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.72%  ││  0x00007fd5706496fb:   vsubsd %xmm0,%xmm5,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.47%  ││  0x00007fd5706496ff:   vaddsd %xmm5,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@18 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649703:   vaddsd %xmm7,%xmm0,%xmm6            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.80%  ││  0x00007fd570649707:   vsubsd %xmm7,%xmm6,%xmm5
   2.82%  ││  0x00007fd57064970b:   vsubsd %xmm0,%xmm5,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@25 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.82%  ││  0x00007fd57064970f:   vmovsd %xmm0,0x18(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.69%  ││  0x00007fd570649714:   vmovsd %xmm6,0x10(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649719:   vmovsd %xmm3,0x28(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd57064971e:   vmovsd 0x28(%rdx,%r8,8),%xmm5       ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@52 (line 1322)
   0.38%  ││  0x00007fd570649725:   vmovsd %xmm8,0x20(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@6 (line 495)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.67%  ││  0x00007fd57064972a:   vsubsd %xmm0,%xmm5,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@4 (line 718)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   1.47%  ││  0x00007fd57064972e:   vaddsd %xmm5,%xmm3,%xmm3
          ││  0x00007fd570649732:   vaddsd %xmm6,%xmm0,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@14 (line 720)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   2.87%  ││  0x00007fd570649736:   vsubsd %xmm6,%xmm5,%xmm6
   2.89%  ││  0x00007fd57064973a:   vsubsd %xmm0,%xmm6,%xmm0
   2.85%  ││  0x00007fd57064973e:   vmovsd %xmm0,0x18(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@26 (line 721)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
   0.71%  ││  0x00007fd570649743:   vmovsd %xmm5,0x10(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Collectors::sumWithCompensation@31 (line 722)
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@9 (line 496)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd570649748:   vmovsd %xmm3,0x28(%rbp)             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.DoublePipeline::lambda$average$5@19 (line 497)
          ││                                                            ; - java.util.stream.DoublePipeline$$Lambda/0x00007fd4f80347d0::accept@5
          ││                                                            ; - java.util.stream.ReduceOps$13ReducingSink::accept@9 (line 749)
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@53 (line 1322)
          ││  0x00007fd57064974d:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@58 (line 1322)
          ││  0x00007fd570649751:   cmp    %r11d,%r10d
          ╰│  0x00007fd570649754:   jl     0x00007fd570649660           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
   0.00%   │  0x00007fd57064975a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=NarrowOop rdx=Oop rax=NarrowOop rbp=Oop r14=NarrowOop xmm2=Oop xmm4=Oop }
           │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
           │  0x00007fd570649761:   test   %eax,(%r11)                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Spliterators$DoubleArraySpliterator::forEachRemaining@64 (line 1322)
           │                                                            ;   {poll}
           │  0x00007fd570649764:   cmp    %ecx,%r10d
           ╰  0x00007fd570649767:   jl     0x00007fd57064963c
              0x00007fd57064976d:   cmp    0x4(%rsp),%r10d
              0x00007fd570649772:   jge    0x00007fd5706497c7           ;*return {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.78%         c2, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 11, compile id 611 
  49.68%         c2, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 11, compile id 611 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.36%  <...other 555 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.46%         c2, level 4  java.util.Spliterators$DoubleArraySpliterator::forEachRemaining, version 11, compile id 611 
   0.43%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 818 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _itoa_word 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%         c2, level 4  java.util.stream.AbstractTask::compute, version 3, compile id 841 
   0.00%           libjvm.so  os::pd_write 
   0.05%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.47%         c2, level 4
   0.43%              kernel
   0.04%           libjvm.so
   0.03%        libc-2.31.so
   0.01%                    
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%          ld-2.31.so
   0.00%    perf-1952947.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative

# Run progress: 66.67% complete, ETA 00:02:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 422.651 ms/op
# Warmup Iteration   2: 421.814 ms/op
# Warmup Iteration   3: 421.815 ms/op
# Warmup Iteration   4: 421.809 ms/op
# Warmup Iteration   5: 421.809 ms/op
Iteration   1: 421.866 ms/op
Iteration   2: 421.820 ms/op
Iteration   3: 421.811 ms/op
Iteration   4: 421.808 ms/op
Iteration   5: 421.805 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative":
  421.822 ±(99.9%) 0.098 ms/op [Average]
  (min, avg, max) = (421.805, 421.822, 421.866), stdev = 0.025
  CI (99.9%): [421.724, 421.920] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.PopulationVarianceBenchmark.iterative:asm":
PrintAssembly processed: 154487 total address lines.
Perf output processed (skipped 63.928 seconds):
 Column 1: cycles (51023 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 693 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
              0x00007fe1d066edeb:   lea    -0xf(%rcx),%r8d
              0x00007fe1d066edef:   mov    $0x1,%edx
              0x00007fe1d066edf4:   xor    %r11d,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@19 (line 29)
              0x00007fe1d066edf7:   cmp    $0x1,%r8d
              0x00007fe1d066edfb:   nopl   0x0(%rax,%rax,1)
              0x00007fe1d066ee00:   jle    0x00007fe1d066f1d5
              0x00007fe1d066ee06:   mov    $0x3e80,%r9d
              0x00007fe1d066ee0c:   mov    $0x1,%ebx
   0.00%   ↗  0x00007fe1d066ee11:   mov    %ecx,%r10d
           │  0x00007fe1d066ee14:   sub    %ebx,%r10d
           │  0x00007fe1d066ee17:   add    $0xfffffff1,%r10d
           │  0x00007fe1d066ee1b:   cmp    %ebx,%r8d
   0.00%   │  0x00007fe1d066ee1e:   cmovl  %r11d,%r10d
           │  0x00007fe1d066ee22:   cmp    $0x3e80,%r10d
           │  0x00007fe1d066ee29:   cmova  %r9d,%r10d
   0.00%   │  0x00007fe1d066ee2d:   add    %ebx,%r10d                   ;*dload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@10 (line 30)
          ↗│  0x00007fe1d066ee30:   vaddsd 0x10(%rsi,%rbx,8),%xmm2,%xmm1
   2.23%  ││  0x00007fe1d066ee36:   vaddsd 0x18(%rsi,%rbx,8),%xmm1,%xmm1
   3.02%  ││  0x00007fe1d066ee3c:   vaddsd 0x20(%rsi,%rbx,8),%xmm1,%xmm1
   2.98%  ││  0x00007fe1d066ee42:   vaddsd 0x28(%rsi,%rbx,8),%xmm1,%xmm1
   3.00%  ││  0x00007fe1d066ee48:   vaddsd 0x30(%rsi,%rbx,8),%xmm1,%xmm1
   3.14%  ││  0x00007fe1d066ee4e:   vaddsd 0x38(%rsi,%rbx,8),%xmm1,%xmm1
   3.09%  ││  0x00007fe1d066ee54:   vaddsd 0x40(%rsi,%rbx,8),%xmm1,%xmm1
   3.01%  ││  0x00007fe1d066ee5a:   vaddsd 0x48(%rsi,%rbx,8),%xmm1,%xmm1
   2.98%  ││  0x00007fe1d066ee60:   vaddsd 0x50(%rsi,%rbx,8),%xmm1,%xmm1
   3.12%  ││  0x00007fe1d066ee66:   vaddsd 0x58(%rsi,%rbx,8),%xmm1,%xmm1
   3.07%  ││  0x00007fe1d066ee6c:   vaddsd 0x60(%rsi,%rbx,8),%xmm1,%xmm1
   3.01%  ││  0x00007fe1d066ee72:   vaddsd 0x68(%rsi,%rbx,8),%xmm1,%xmm1
   3.10%  ││  0x00007fe1d066ee78:   vaddsd 0x70(%rsi,%rbx,8),%xmm1,%xmm1
   3.03%  ││  0x00007fe1d066ee7e:   vaddsd 0x78(%rsi,%rbx,8),%xmm1,%xmm1
   3.86%  ││  0x00007fe1d066ee84:   vaddsd 0x80(%rsi,%rbx,8),%xmm1,%xmm1
   2.92%  ││  0x00007fe1d066ee8d:   vaddsd 0x88(%rsi,%rbx,8),%xmm1,%xmm2;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@14 (line 30)
   3.04%  ││  0x00007fe1d066ee96:   add    $0x10,%ebx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@16 (line 29)
          ││  0x00007fe1d066ee99:   cmp    %r10d,%ebx
          ││  0x00007fe1d066ee9c:   nopl   0x0(%rax)                    ;   {no_reloc}
   0.71%  ╰│  0x00007fe1d066eea0:   jl     0x00007fe1d066ee30           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@7 (line 29)
           │  0x00007fe1d066eea2:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@19 (line 29)
           │  0x00007fe1d066eea9:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@19 (line 29)
           │                                                            ;   {poll}
           │  0x00007fe1d066eeac:   cmp    %r8d,%ebx
           ╰  0x00007fe1d066eeaf:   jl     0x00007fe1d066ee11
              0x00007fe1d066eeb5:   cmp    %ecx,%ebx
....................................................................................................
  49.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 693 

             0x00007fe1d066ef0d:   cmp    %eax,%r10d
             0x00007fe1d066ef10:   jge    0x00007fe1d066f1d0
             0x00007fe1d066ef16:   vbroadcastsd %xmm2,%ymm1
             0x00007fe1d066ef1b:   inc    %edi
             0x00007fe1d066ef1d:   mov    $0x7d00,%ebx
             0x00007fe1d066ef22:   jmp    0x00007fe1d066f0f5
             0x00007fe1d066ef27:   nopw   0x0(%rax,%rax,1)
          ↗  0x00007fe1d066ef30:   mov    %edx,%edi                    ;*dload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@41 (line 37)
          │  0x00007fe1d066ef32:   vmovdqu 0xf0(%rsi,%rdi,8),%ymm2
   1.29%  │  0x00007fe1d066ef3b:   vmovdqu 0xd0(%rsi,%rdi,8),%ymm7
   0.01%  │  0x00007fe1d066ef44:   vmovdqu 0xb0(%rsi,%rdi,8),%ymm8
          │  0x00007fe1d066ef4d:   vmovdqu 0x90(%rsi,%rdi,8),%ymm5
   0.00%  │  0x00007fe1d066ef56:   vmovdqu 0x70(%rsi,%rdi,8),%ymm6
   0.37%  │  0x00007fe1d066ef5c:   vmovdqu 0x50(%rsi,%rdi,8),%ymm4
   0.00%  │  0x00007fe1d066ef62:   vmovdqu 0x30(%rsi,%rdi,8),%ymm9
          │  0x00007fe1d066ef68:   vmovdqu 0x10(%rsi,%rdi,8),%ymm3
          │  0x00007fe1d066ef6e:   vsubpd %ymm1,%ymm2,%ymm2
   0.40%  │  0x00007fe1d066ef72:   vsubpd %ymm1,%ymm3,%ymm3
          │  0x00007fe1d066ef76:   vmulpd %ymm2,%ymm2,%ymm2
   0.02%  │  0x00007fe1d066ef7a:   vmovdqu %ymm2,(%rsp)
   0.01%  │  0x00007fe1d066ef7f:   vmulpd %ymm3,%ymm3,%ymm2
   0.38%  │  0x00007fe1d066ef83:   vsubpd %ymm1,%ymm9,%ymm3
          │  0x00007fe1d066ef87:   vsubpd %ymm1,%ymm4,%ymm4
   0.00%  │  0x00007fe1d066ef8b:   vmulpd %ymm3,%ymm3,%ymm3
   0.01%  │  0x00007fe1d066ef8f:   vmulpd %ymm4,%ymm4,%ymm4
   0.40%  │  0x00007fe1d066ef93:   vsubpd %ymm1,%ymm6,%ymm6
          │  0x00007fe1d066ef97:   vsubpd %ymm1,%ymm5,%ymm9
          │  0x00007fe1d066ef9b:   vmulpd %ymm6,%ymm6,%ymm5
   0.01%  │  0x00007fe1d066ef9f:   vmulpd %ymm9,%ymm9,%ymm6
   0.40%  │  0x00007fe1d066efa4:   vsubpd %ymm1,%ymm8,%ymm8
          │  0x00007fe1d066efa8:   vsubpd %ymm1,%ymm7,%ymm9            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@48 (line 37)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007fe1d066efac:   vmulpd %ymm8,%ymm8,%ymm7
   0.01%  │  0x00007fe1d066efb1:   vmulpd %ymm9,%ymm9,%ymm8
   0.35%  │  0x00007fe1d066efb6:   vaddsd %xmm2,%xmm0,%xmm0
   0.00%  │  0x00007fe1d066efba:   vpshufd $0xe,%xmm2,%xmm15
          │  0x00007fe1d066efbf:   vaddsd %xmm15,%xmm0,%xmm0
   0.43%  │  0x00007fe1d066efc4:   vextractf128 $0x1,%ymm2,%xmm15
   0.06%  │  0x00007fe1d066efca:   vaddsd %xmm15,%xmm0,%xmm0
   1.63%  │  0x00007fe1d066efcf:   vpshufd $0xe,%xmm15,%xmm14
          │  0x00007fe1d066efd5:   vaddsd %xmm14,%xmm0,%xmm0
   1.35%  │  0x00007fe1d066efda:   vaddsd %xmm3,%xmm0,%xmm0
   1.35%  │  0x00007fe1d066efde:   vpshufd $0xe,%xmm3,%xmm14
          │  0x00007fe1d066efe3:   vaddsd %xmm14,%xmm0,%xmm0
   1.46%  │  0x00007fe1d066efe8:   vextractf128 $0x1,%ymm3,%xmm14
          │  0x00007fe1d066efee:   vaddsd %xmm14,%xmm0,%xmm0
   1.78%  │  0x00007fe1d066eff3:   vpshufd $0xe,%xmm14,%xmm2
          │  0x00007fe1d066eff9:   vaddsd %xmm2,%xmm0,%xmm0
   1.64%  │  0x00007fe1d066effd:   vaddsd %xmm4,%xmm0,%xmm0
   1.33%  │  0x00007fe1d066f001:   vpshufd $0xe,%xmm4,%xmm3
          │  0x00007fe1d066f006:   vaddsd %xmm3,%xmm0,%xmm0
   1.46%  │  0x00007fe1d066f00a:   vextractf128 $0x1,%ymm4,%xmm3
          │  0x00007fe1d066f010:   vaddsd %xmm3,%xmm0,%xmm0
   1.59%  │  0x00007fe1d066f014:   vpshufd $0xe,%xmm3,%xmm2
          │  0x00007fe1d066f019:   vaddsd %xmm2,%xmm0,%xmm0
   1.51%  │  0x00007fe1d066f01d:   vaddsd %xmm5,%xmm0,%xmm0
   1.53%  │  0x00007fe1d066f021:   vpshufd $0xe,%xmm5,%xmm3
          │  0x00007fe1d066f026:   vaddsd %xmm3,%xmm0,%xmm0
   1.52%  │  0x00007fe1d066f02a:   vextractf128 $0x1,%ymm5,%xmm3
          │  0x00007fe1d066f030:   vaddsd %xmm3,%xmm0,%xmm0
   1.59%  │  0x00007fe1d066f034:   vpshufd $0xe,%xmm3,%xmm2
          │  0x00007fe1d066f039:   vaddsd %xmm2,%xmm0,%xmm0
   1.49%  │  0x00007fe1d066f03d:   vaddsd %xmm6,%xmm0,%xmm0
   1.53%  │  0x00007fe1d066f041:   vpshufd $0xe,%xmm6,%xmm3
          │  0x00007fe1d066f046:   vaddsd %xmm3,%xmm0,%xmm0
   1.45%  │  0x00007fe1d066f04a:   vextractf128 $0x1,%ymm6,%xmm3
          │  0x00007fe1d066f050:   vaddsd %xmm3,%xmm0,%xmm0
   1.49%  │  0x00007fe1d066f054:   vpshufd $0xe,%xmm3,%xmm2
          │  0x00007fe1d066f059:   vaddsd %xmm2,%xmm0,%xmm0
   1.54%  │  0x00007fe1d066f05d:   vaddsd %xmm7,%xmm0,%xmm0
   1.51%  │  0x00007fe1d066f061:   vpshufd $0xe,%xmm7,%xmm10
          │  0x00007fe1d066f066:   vaddsd %xmm10,%xmm0,%xmm0
   1.50%  │  0x00007fe1d066f06b:   vextractf128 $0x1,%ymm7,%xmm10
          │  0x00007fe1d066f071:   vaddsd %xmm10,%xmm0,%xmm0
   1.53%  │  0x00007fe1d066f076:   vpshufd $0xe,%xmm10,%xmm2
          │  0x00007fe1d066f07c:   vaddsd %xmm2,%xmm0,%xmm0
   1.58%  │  0x00007fe1d066f080:   vaddsd %xmm8,%xmm0,%xmm0
   1.51%  │  0x00007fe1d066f085:   vpshufd $0xe,%xmm8,%xmm11
          │  0x00007fe1d066f08b:   vaddsd %xmm11,%xmm0,%xmm0
   1.53%  │  0x00007fe1d066f090:   vextractf128 $0x1,%ymm8,%xmm11
          │  0x00007fe1d066f096:   vaddsd %xmm11,%xmm0,%xmm0
   1.45%  │  0x00007fe1d066f09b:   vpshufd $0xe,%xmm11,%xmm9
          │  0x00007fe1d066f0a1:   vaddsd %xmm9,%xmm0,%xmm0
   1.50%  │  0x00007fe1d066f0a6:   vmovdqu (%rsp),%ymm2                ;   {no_reloc}
          │  0x00007fe1d066f0ab:   vaddsd %xmm2,%xmm0,%xmm0
   1.51%  │  0x00007fe1d066f0af:   vpshufd $0xe,%xmm2,%xmm12
          │  0x00007fe1d066f0b4:   vaddsd %xmm12,%xmm0,%xmm0
   1.46%  │  0x00007fe1d066f0b9:   vextractf128 $0x1,%ymm2,%xmm12
          │  0x00007fe1d066f0bf:   vaddsd %xmm12,%xmm0,%xmm0
   1.48%  │  0x00007fe1d066f0c4:   vpshufd $0xe,%xmm12,%xmm13
          │  0x00007fe1d066f0ca:   vaddsd %xmm13,%xmm0,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@56 (line 37)
   1.38%  │  0x00007fe1d066f0cf:   lea    0x20(%rdi),%edx
          │  0x00007fe1d066f0d2:   cmp    %r9d,%edx
          ╰  0x00007fe1d066f0d5:   jl     0x00007fe1d066ef30           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@38 (line 36)
             0x00007fe1d066f0db:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@62 (line 36)
             0x00007fe1d066f0e2:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance@62 (line 36)
                                                                       ;   {poll}
....................................................................................................
  49.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 693 
  49.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 693 
   0.26%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.55%  <...other 181 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.iterative.IterativeVariance::variance, version 8, compile id 693 
   1.16%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  fileStream::write 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  outputStream::print_cr 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  hack_digit 
   0.07%  <...other 35 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.64%         c2, level 4
   1.16%              kernel
   0.08%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:00

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

Benchmark                                           Mode  Cnt    Score   Error  Units
PopulationVarianceBenchmark.divide_and_conquer      avgt    5   91.077 ± 1.244  ms/op
PopulationVarianceBenchmark.divide_and_conquer:asm  avgt           NaN            ---
PopulationVarianceBenchmark.functional              avgt    5  339.911 ± 2.447  ms/op
PopulationVarianceBenchmark.functional:asm          avgt           NaN            ---
PopulationVarianceBenchmark.iterative               avgt    5  421.822 ± 0.098  ms/op
PopulationVarianceBenchmark.iterative:asm           avgt           NaN            ---
