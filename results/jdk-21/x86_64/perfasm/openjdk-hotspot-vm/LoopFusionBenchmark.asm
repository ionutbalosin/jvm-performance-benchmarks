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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 304.531 us/op
# Warmup Iteration   2: 300.142 us/op
# Warmup Iteration   3: 299.842 us/op
# Warmup Iteration   4: 299.953 us/op
# Warmup Iteration   5: 299.983 us/op
Iteration   1: 299.969 us/op
Iteration   2: 299.961 us/op
Iteration   3: 299.940 us/op
Iteration   4: 303.115 us/op
Iteration   5: 299.902 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops":
  300.577 ±(99.9%) 5.463 us/op [Average]
  (min, avg, max) = (299.902, 300.577, 303.115), stdev = 1.419
  CI (99.9%): [295.114, 306.040] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops:asm":
PrintAssembly processed: 126757 total address lines.
Perf output processed (skipped 56.167 seconds):
 Column 1: cycles (51226 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 551 

                0x00007f1534637518:   jle    0x00007f15346376dc
                0x00007f153463751e:   mov    %r10d,(%rsp)
                0x00007f1534637522:   mov    $0x2,%esi
           ↗    0x00007f1534637527:   mov    %r14d,%eax
           │    0x00007f153463752a:   sub    %esi,%eax
           │    0x00007f153463752c:   xor    %r10d,%r10d
           │    0x00007f153463752f:   cmp    %esi,%r14d
           │    0x00007f1534637532:   cmovl  %r10d,%eax                   ;   {no_reloc}
           │    0x00007f1534637536:   cmp    $0x1f40,%eax
           │    0x00007f153463753b:   cmova  %r13d,%eax
   0.00%   │    0x00007f153463753f:   add    %esi,%eax                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@10 (line 84)
   0.09%  ↗│    0x00007f1534637541:   mov    0x10(%r8,%rsi,4),%r10d
   0.01%  ││    0x00007f1534637546:   add    0xc(%r9,%rsi,4),%r10d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   9.83%  ││    0x00007f153463754b:   mov    %r10d,0x10(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   8.55%  ││    0x00007f1534637550:   add    0x14(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.00%  ││    0x00007f1534637555:   mov    %r10d,0x14(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.36%  ││    0x00007f153463755a:   add    0x18(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   1.04%  ││    0x00007f153463755f:   mov    %r10d,0x18(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.28%  ││    0x00007f1534637564:   add    0x1c(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.09%  ││    0x00007f1534637569:   mov    %r10d,0x1c(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.37%  ││    0x00007f153463756e:   add    0x20(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.00%  ││    0x00007f1534637573:   mov    %r10d,0x20(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.23%  ││    0x00007f1534637578:   add    0x24(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.02%  ││    0x00007f153463757d:   mov    %r10d,0x24(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.19%  ││    0x00007f1534637582:   add    0x28(%r8,%rsi,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.01%  ││    0x00007f1534637587:   mov    %r10d,0x28(%r9,%rsi,4)
   4.30%  ││    0x00007f153463758c:   add    0x2c(%r8,%rsi,4),%r10d
   0.01%  ││    0x00007f1534637591:   mov    %r10d,0x2c(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.05%  ││    0x00007f1534637596:   add    $0x8,%esi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 83)
   0.01%  ││    0x00007f1534637599:   cmp    %eax,%esi
          ╰│    0x00007f153463759b:   jl     0x00007f1534637541           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@34 (line 83)
           │    0x00007f153463759d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop r9=Oop rcx=NarrowOop rbx=NarrowOop xmm0=Oop }
           │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@34 (line 83)
   0.00%   │    0x00007f15346375a4:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@34 (line 83)
           │                                                              ;   {poll}
   0.04%   │    0x00007f15346375a7:   cmp    %r14d,%esi
           ╰    0x00007f15346375aa:   jl     0x00007f1534637527
                0x00007f15346375b0:   cmp    (%rsp),%esi
            ╭   0x00007f15346375b3:   jge    0x00007f15346375ce
   0.00%    │   0x00007f15346375b5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@10 (line 84)
   0.00%    │↗  0x00007f15346375b8:   mov    0x10(%r8,%rsi,4),%r10d
   0.00%    ││  0x00007f15346375bd:   add    0xc(%r9,%rsi,4),%r10d
   0.00%    ││  0x00007f15346375c2:   mov    %r10d,0x10(%r9,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
            ││  0x00007f15346375c7:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 83)
            ││  0x00007f15346375c9:   cmp    (%rsp),%esi
            │╰  0x00007f15346375cc:   jl     0x00007f15346375b8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@47 (line 88)
            ↘   0x00007f15346375ce:   test   %edx,%edx
                0x00007f15346375d0:   jbe    0x00007f15346376ea
                0x00007f15346375d6:   cmp    %rbp,%r11
                0x00007f15346375d9:   jae    0x00007f15346376ea
....................................................................................................
  49.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 551 

               0x00007f15346375c7:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 83)
               0x00007f15346375c9:   cmp    (%rsp),%esi
               0x00007f15346375cc:   jl     0x00007f15346375b8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@47 (line 88)
               0x00007f15346375ce:   test   %edx,%edx
               0x00007f15346375d0:   jbe    0x00007f15346376ea
               0x00007f15346375d6:   cmp    %rbp,%r11
               0x00007f15346375d9:   jae    0x00007f15346376ea
               0x00007f15346375df:   mov    0x14(%r12,%rbx,8),%r11d
   0.00%       0x00007f15346375e4:   add    0x10(%r12,%rcx,8),%r11d
   0.00%       0x00007f15346375e9:   mov    %r11d,0x14(%r12,%rcx,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
               0x00007f15346375ee:   cmp    $0x2,%r14d
          ╭    0x00007f15346375f2:   jle    0x00007f1534637690
          │ ↗  0x00007f15346375f8:   mov    %r14d,%r10d
          │ │  0x00007f15346375fb:   sub    %edi,%r10d
          │ │  0x00007f15346375fe:   xor    %ecx,%ecx
   0.01%  │ │  0x00007f1534637600:   cmp    %edi,%r14d
          │ │  0x00007f1534637603:   cmovl  %ecx,%r10d
          │ │  0x00007f1534637607:   cmp    $0x1f40,%r10d
          │ │  0x00007f153463760e:   cmova  %r13d,%r10d
          │ │  0x00007f1534637612:   add    %edi,%r10d
          │ │  0x00007f1534637615:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@47 (line 88)
   0.07%  │↗│  0x00007f1534637620:   mov    0x10(%r9,%rdi,4),%r11d
   0.00%  │││  0x00007f1534637625:   add    0xc(%r8,%rdi,4),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   9.58%  │││  0x00007f153463762a:   mov    %r11d,0x10(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   8.23%  │││  0x00007f153463762f:   add    0x14(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%  │││  0x00007f1534637634:   mov    %r11d,0x14(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.12%  │││  0x00007f1534637639:   add    0x18(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.93%  │││  0x00007f153463763e:   mov    %r11d,0x18(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.09%  │││  0x00007f1534637643:   add    0x1c(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.08%  │││  0x00007f1534637648:   mov    %r11d,0x1c(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.26%  │││  0x00007f153463764d:   add    0x20(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%  │││  0x00007f1534637652:   mov    %r11d,0x20(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.10%  │││  0x00007f1534637657:   add    0x24(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%  │││  0x00007f153463765c:   mov    %r11d,0x24(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.04%  │││  0x00007f1534637661:   add    0x28(%r9,%rdi,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%  │││  0x00007f1534637666:   mov    %r11d,0x28(%r8,%rdi,4)
   4.04%  │││  0x00007f153463766b:   add    0x2c(%r9,%rdi,4),%r11d
   0.01%  │││  0x00007f1534637670:   mov    %r11d,0x2c(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   3.90%  │││  0x00007f1534637675:   add    $0x8,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 87)
          │││  0x00007f1534637678:   cmp    %r10d,%edi
          │╰│  0x00007f153463767b:   jl     0x00007f1534637620           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@71 (line 87)
          │ │  0x00007f153463767d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop r9=Oop xmm0=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@71 (line 87)
   0.00%  │ │  0x00007f1534637684:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@71 (line 87)
          │ │                                                            ;   {poll}
   0.04%  │ │  0x00007f1534637687:   cmp    %r14d,%edi
          │ ╰  0x00007f153463768a:   jl     0x00007f15346375f8
          ↘    0x00007f1534637690:   cmp    (%rsp),%edi
               0x00007f1534637693:   jge    0x00007f15346376ae
   0.00%       0x00007f1534637695:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@47 (line 88)
               0x00007f1534637698:   mov    0x10(%r9,%rdi,4),%r11d
               0x00007f153463769d:   add    0xc(%r8,%rdi,4),%r11d
               0x00007f15346376a2:   mov    %r11d,0x10(%r8,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
               0x00007f15346376a7:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 87)
               0x00007f15346376a9:   cmp    (%rsp),%edi
               0x00007f15346376ac:   jl     0x00007f1534637698           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 87)
....................................................................................................
  47.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 551 
  47.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 551 
   1.62%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 551 
   2.65%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFusionBenchmark_initial_loops_jmhTest::initial_loops_avgt_jmhStub, version 4, compile id 590 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%         c2, level 4
   2.65%              kernel
   0.10%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    perf-1939287.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 577.515 us/op
# Warmup Iteration   2: 571.723 us/op
# Warmup Iteration   3: 571.721 us/op
# Warmup Iteration   4: 571.572 us/op
# Warmup Iteration   5: 571.318 us/op
Iteration   1: 571.318 us/op
Iteration   2: 571.331 us/op
Iteration   3: 571.271 us/op
Iteration   4: 571.281 us/op
Iteration   5: 571.610 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion":
  571.362 ±(99.9%) 0.542 us/op [Average]
  (min, avg, max) = (571.271, 571.362, 571.610), stdev = 0.141
  CI (99.9%): [570.820, 571.904] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion:asm":
PrintAssembly processed: 127843 total address lines.
Perf output processed (skipped 56.137 seconds):
 Column 1: cycles (50694 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 545 

               0x00007efc0863970d:   mov    %eax,%r10d
               0x00007efc08639710:   mov    $0x2,%r11d
               0x00007efc08639716:   cmp    $0x2,%r10d
               0x00007efc0863971a:   nopw   0x0(%rax,%rax,1)
          ╭    0x00007efc08639720:   jle    0x00007efc0863983b
          │    0x00007efc08639726:   xor    %r9d,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 99)
          │    0x00007efc08639729:   mov    $0x1f40,%r8d
          │ ↗  0x00007efc0863972f:   mov    %r10d,%eax
          │ │  0x00007efc08639732:   sub    %r11d,%eax                   ;   {no_reloc}
   0.00%  │ │  0x00007efc08639735:   cmp    %r11d,%r10d
          │ │  0x00007efc08639738:   cmovl  %r9d,%eax
          │ │  0x00007efc0863973c:   cmp    $0x1f40,%eax
          │ │  0x00007efc08639741:   cmova  %r8d,%eax
   0.00%  │ │  0x00007efc08639745:   add    %r11d,%eax
          │ │  0x00007efc08639748:   nopl   0x0(%rax,%rax,1)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@10 (line 100)
          │↗│  0x00007efc08639750:   mov    0x10(%rdx,%r11,4),%ebx
   2.13%  │││  0x00007efc08639755:   add    0xc(%rdi,%r11,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   0.69%  │││  0x00007efc0863975a:   mov    %ebx,0x10(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.12%  │││  0x00007efc0863975f:   add    0xc(%rdx,%r11,4),%ebx
   4.06%  │││  0x00007efc08639764:   mov    %ebx,0x10(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.17%  │││  0x00007efc08639769:   mov    0x14(%rdx,%r11,4),%ebx
          │││  0x00007efc0863976e:   add    0x10(%rdi,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.20%  │││  0x00007efc08639773:   mov    %ebx,0x14(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.52%  │││  0x00007efc08639778:   add    0x10(%rdx,%r11,4),%ebx
   5.53%  │││  0x00007efc0863977d:   mov    %ebx,0x14(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.20%  │││  0x00007efc08639782:   mov    0x18(%rdx,%r11,4),%esi
          │││  0x00007efc08639787:   add    0x14(%rdi,%r11,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.28%  │││  0x00007efc0863978c:   mov    %esi,0x18(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.52%  │││  0x00007efc08639791:   add    0x14(%rdx,%r11,4),%esi
   5.49%  │││  0x00007efc08639796:   mov    %esi,0x18(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.13%  │││  0x00007efc0863979b:   mov    0x1c(%rdx,%r11,4),%ebx
          │││  0x00007efc086397a0:   add    0x18(%rdi,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.16%  │││  0x00007efc086397a5:   mov    %ebx,0x1c(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.55%  │││  0x00007efc086397aa:   add    0x18(%rdx,%r11,4),%ebx
   5.33%  │││  0x00007efc086397af:   mov    %ebx,0x1c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.19%  │││  0x00007efc086397b4:   mov    0x20(%rdx,%r11,4),%esi
          │││  0x00007efc086397b9:   add    0x1c(%rdi,%r11,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.22%  │││  0x00007efc086397be:   mov    %esi,0x20(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.50%  │││  0x00007efc086397c3:   add    0x1c(%rdx,%r11,4),%esi
   5.35%  │││  0x00007efc086397c8:   mov    %esi,0x20(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.09%  │││  0x00007efc086397cd:   mov    0x24(%rdx,%r11,4),%ebx
          │││  0x00007efc086397d2:   add    0x20(%rdi,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.15%  │││  0x00007efc086397d7:   mov    %ebx,0x24(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.43%  │││  0x00007efc086397dc:   add    0x20(%rdx,%r11,4),%ebx
   5.49%  │││  0x00007efc086397e1:   mov    %ebx,0x24(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.09%  │││  0x00007efc086397e6:   mov    0x28(%rdx,%r11,4),%esi
          │││  0x00007efc086397eb:   add    0x24(%rdi,%r11,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.16%  │││  0x00007efc086397f0:   mov    %esi,0x28(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.54%  │││  0x00007efc086397f5:   add    0x24(%rdx,%r11,4),%esi
   5.69%  │││  0x00007efc086397fa:   mov    %esi,0x28(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.11%  │││  0x00007efc086397ff:   mov    0x2c(%rdx,%r11,4),%ebx
          │││  0x00007efc08639804:   add    0x28(%rdi,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.08%  │││  0x00007efc08639809:   mov    %ebx,0x2c(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.45%  │││  0x00007efc0863980e:   add    0x28(%rdx,%r11,4),%ebx
   5.44%  │││  0x00007efc08639813:   mov    %ebx,0x2c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   3.95%  │││  0x00007efc08639818:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 99)
          │││  0x00007efc0863981c:   nopl   0x0(%rax)
          │││  0x00007efc08639820:   cmp    %eax,%r11d
          │╰│  0x00007efc08639823:   jl     0x00007efc08639750           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 99)
          │ │  0x00007efc08639829:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rcx=Oop rdi=Oop rdx=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 99)
   0.00%  │ │  0x00007efc08639830:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@55 (line 99)
          │ │                                                            ;   {poll}
   0.00%  │ │  0x00007efc08639832:   cmp    %r10d,%r11d
          │ ╰  0x00007efc08639835:   jl     0x00007efc0863972f
          ↘    0x00007efc0863983b:   nopl   0x0(%rax,%rax,1)
               0x00007efc08639840:   cmp    %ebp,%r11d
               0x00007efc08639843:   jge    0x00007efc08639869
               0x00007efc08639845:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@10 (line 100)
               0x00007efc08639848:   mov    0x10(%rdx,%r11,4),%r10d
               0x00007efc0863984d:   add    0xc(%rdi,%r11,4),%r10d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 545 
   0.49%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 545 
   0.91%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 4, compile id 545 
   1.61%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  __GI___libc_write 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.17%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%         c2, level 4
   1.61%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                    (size)  Mode  Cnt    Score   Error  Units
LoopFusionBenchmark.initial_loops            262144  avgt    5  300.577 ± 5.463  us/op
LoopFusionBenchmark.initial_loops:asm        262144  avgt           NaN            ---
LoopFusionBenchmark.manual_loops_fusion      262144  avgt    5  571.362 ± 0.542  us/op
LoopFusionBenchmark.manual_loops_fusion:asm  262144  avgt           NaN            ---
