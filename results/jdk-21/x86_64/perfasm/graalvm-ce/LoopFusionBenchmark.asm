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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1153.656 us/op
# Warmup Iteration   2: 1149.390 us/op
# Warmup Iteration   3: 1149.313 us/op
# Warmup Iteration   4: 1149.420 us/op
# Warmup Iteration   5: 1149.331 us/op
Iteration   1: 1149.351 us/op
Iteration   2: 1149.342 us/op
Iteration   3: 1148.897 us/op
Iteration   4: 1148.825 us/op
Iteration   5: 1148.951 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops":
  1149.073 ±(99.9%) 0.976 us/op [Average]
  (min, avg, max) = (1148.825, 1149.073, 1149.351), stdev = 0.254
  CI (99.9%): [1148.097, 1150.050] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops:asm":
PrintAssembly processed: 218479 total address lines.
Perf output processed (skipped 60.349 seconds):
 Column 1: cycles (50797 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 963 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
             0x00007f96ef24254d:   mov    %ebp,0x14(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
             0x00007f96ef242555:   mov    $0x2,%ebp
             0x00007f96ef24255a:   jmp    0x00007f96ef242651           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@2 (line 83)
             0x00007f96ef24255f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@7 (line 83)
          ↗  0x00007f96ef242560:   mov    0x10(%rcx,%rbp,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
   1.07%  │  0x00007f96ef242565:   movslq %ebp,%r14
          │  0x00007f96ef242568:   add    0xc(%r9,%r14,4),%r13d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   2.94%  │  0x00007f96ef24256d:   mov    %r13d,0x10(%r9,%rbp,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.14%  │  0x00007f96ef242572:   mov    0x14(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef242577:   add    0x10(%r9,%rbp,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   4.07%  │  0x00007f96ef24257c:   mov    %r13d,0x14(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.25%  │  0x00007f96ef242581:   mov    0x18(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef242586:   add    0x14(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   3.85%  │  0x00007f96ef24258b:   mov    %r13d,0x18(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.23%  │  0x00007f96ef242590:   mov    0x1c(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef242595:   add    0x18(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   4.10%  │  0x00007f96ef24259a:   mov    %r13d,0x1c(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.11%  │  0x00007f96ef24259f:   mov    0x20(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef2425a4:   add    0x1c(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   3.93%  │  0x00007f96ef2425a9:   mov    %r13d,0x20(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.02%  │  0x00007f96ef2425ae:   mov    0x24(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef2425b3:   add    0x20(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   3.88%  │  0x00007f96ef2425b8:   mov    %r13d,0x24(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.17%  │  0x00007f96ef2425bd:   mov    0x28(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef2425c2:   add    0x24(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   3.96%  │  0x00007f96ef2425c7:   mov    %r13d,0x28(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.10%  │  0x00007f96ef2425cc:   mov    0x2c(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
          │  0x00007f96ef2425d1:   add    0x28(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   3.92%  │  0x00007f96ef2425d6:   mov    %r13d,0x2c(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   2.21%  │  0x00007f96ef2425db:   lea    0x8(%rbp),%ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 83)
          │  0x00007f96ef2425de:   xchg   %ax,%ax
          │  0x00007f96ef2425e0:   cmp    %ebp,%ebx
          ╰  0x00007f96ef2425e2:   jg     0x00007f96ef242560
             0x00007f96ef2425e8:   jmp    0x00007f96ef242620
             0x00007f96ef2425ed:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f96ef2425f8:   data16 data16 xchg %ax,%ax
             0x00007f96ef2425fc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@7 (line 83)
....................................................................................................
  48.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 963 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
             0x00007f96ef242702:   mov    %edx,0x14(,%r11,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
             0x00007f96ef24270a:   mov    $0x2,%r11d
             0x00007f96ef242710:   jmp    0x00007f96ef242812           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@39 (line 87)
             0x00007f96ef242715:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 87)
          ↗  0x00007f96ef242720:   mov    0x10(%r9,%r11,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
   1.05%  │  0x00007f96ef242725:   movslq %r11d,%rdi
          │  0x00007f96ef242728:   add    0xc(%rcx,%rdi,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   2.94%  │  0x00007f96ef24272d:   mov    %r8d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.02%  │  0x00007f96ef242732:   mov    0x14(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │                                                            ;   {no_reloc}
          │  0x00007f96ef242737:   add    0x10(%rcx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   3.96%  │  0x00007f96ef24273c:   mov    %r8d,0x14(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.12%  │  0x00007f96ef242741:   mov    0x18(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242746:   add    0x14(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   4.01%  │  0x00007f96ef24274b:   mov    %r8d,0x18(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.14%  │  0x00007f96ef242750:   mov    0x1c(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242755:   add    0x18(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   3.90%  │  0x00007f96ef24275a:   mov    %r8d,0x1c(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.22%  │  0x00007f96ef24275f:   mov    0x20(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242764:   add    0x1c(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   3.94%  │  0x00007f96ef242769:   mov    %r8d,0x20(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.18%  │  0x00007f96ef24276e:   mov    0x24(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242773:   add    0x20(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   4.11%  │  0x00007f96ef242778:   mov    %r8d,0x24(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.15%  │  0x00007f96ef24277d:   mov    0x28(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242782:   add    0x24(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   3.93%  │  0x00007f96ef242787:   mov    %r8d,0x28(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.16%  │  0x00007f96ef24278c:   mov    0x2c(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
          │  0x00007f96ef242791:   add    0x28(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   3.81%  │  0x00007f96ef242796:   mov    %r8d,0x2c(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   2.27%  │  0x00007f96ef24279b:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 87)
          │  0x00007f96ef24279f:   nop
          │  0x00007f96ef2427a0:   cmp    %r11d,%ebx
          ╰  0x00007f96ef2427a3:   jg     0x00007f96ef242720
             0x00007f96ef2427a9:   jmp    0x00007f96ef2427e0
             0x00007f96ef2427ae:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f96ef2427b9:   data16 data16 xchg %ax,%ax
             0x00007f96ef2427bd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 87)
....................................................................................................
  48.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 963 
  48.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 963 
   0.57%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.96%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 963 
   1.75%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%      jvmci, level 4
   1.75%              kernel
   0.13%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2112522.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 580.313 us/op
# Warmup Iteration   2: 577.140 us/op
# Warmup Iteration   3: 577.183 us/op
# Warmup Iteration   4: 577.022 us/op
# Warmup Iteration   5: 576.706 us/op
Iteration   1: 576.722 us/op
Iteration   2: 576.720 us/op
Iteration   3: 576.680 us/op
Iteration   4: 576.660 us/op
Iteration   5: 576.675 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion":
  576.692 ±(99.9%) 0.108 us/op [Average]
  (min, avg, max) = (576.660, 576.692, 576.722), stdev = 0.028
  CI (99.9%): [576.583, 576.800] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion:asm":
PrintAssembly processed: 217373 total address lines.
Perf output processed (skipped 60.282 seconds):
 Column 1: cycles (50971 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 960 

              0x00007fdefb23d414:   nopl   0x0(%rax,%rax,1)
              0x00007fdefb23d41c:   data16 data16 xchg %ax,%ax
              0x00007fdefb23d420:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fdefb23d427:   ja     0x00007fdefb23d572
              0x00007fdefb23d42d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@2 (line 99)
              0x00007fdefb23d42e:   lea    -0x4(%r10),%r8d
          ╭   0x00007fdefb23d432:   jmp    0x00007fdefb23d4a2
          │   0x00007fdefb23d437:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 99)
   0.01%  │↗  0x00007fdefb23d440:   mov    0x10(%rbx,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          ││  0x00007fdefb23d445:   movslq %r9d,%rdi
   4.29%  ││  0x00007fdefb23d448:   add    0xc(%r11,%rdi,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.52%  ││  0x00007fdefb23d44d:   mov    %ecx,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   2.38%  ││  0x00007fdefb23d452:   add    0xc(%rbx,%rdi,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   7.93%  ││  0x00007fdefb23d456:   mov    %ecx,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   7.85%  ││  0x00007fdefb23d45b:   mov    0x14(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          ││  0x00007fdefb23d45f:   add    0x10(%r11,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   2.59%  ││  0x00007fdefb23d464:   mov    %ecx,0x14(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   3.07%  ││  0x00007fdefb23d469:   add    0x10(%rbx,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
  10.80%  ││  0x00007fdefb23d46e:   mov    %ecx,0x14(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   8.09%  ││  0x00007fdefb23d472:   mov    0x18(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          ││  0x00007fdefb23d476:   add    0x14(%r11,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   2.72%  ││  0x00007fdefb23d47b:   mov    %ecx,0x18(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   3.21%  ││  0x00007fdefb23d480:   add    0x14(%rbx,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
  10.76%  ││  0x00007fdefb23d484:   mov    %ecx,0x18(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   7.98%  ││  0x00007fdefb23d488:   mov    0x1c(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          ││  0x00007fdefb23d48c:   add    0x18(%r11,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   2.82%  ││  0x00007fdefb23d491:   mov    %ecx,0x1c(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   3.22%  ││  0x00007fdefb23d496:   add    0x18(%rbx,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
  10.33%  ││  0x00007fdefb23d49a:   mov    %ecx,0x1c(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   7.94%  ││  0x00007fdefb23d49e:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 99)
          ↘│  0x00007fdefb23d4a2:   cmp    %r9d,%r8d
           ╰  0x00007fdefb23d4a5:   jg     0x00007fdefb23d440
              0x00007fdefb23d4a7:   jmp    0x00007fdefb23d4e0
              0x00007fdefb23d4ac:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fdefb23d4b7:   data16 data16 xchg %ax,%ax
              0x00007fdefb23d4bb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 99)
              0x00007fdefb23d4c0:   mov    0x10(%rbx,%r9,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 960 
   0.57%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%              kernel  [unknown] 
   1.12%  <...other 394 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 960 
   1.94%              kernel  [unknown] 
   0.20%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  defaultStream::write 
   0.16%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.53%      jvmci, level 4
   1.94%              kernel
   0.20%                    
   0.16%           libjvm.so
   0.12%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2112596.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                    (size)  Mode  Cnt     Score   Error  Units
LoopFusionBenchmark.initial_loops            262144  avgt    5  1149.073 ± 0.976  us/op
LoopFusionBenchmark.initial_loops:asm        262144  avgt            NaN            ---
LoopFusionBenchmark.manual_loops_fusion      262144  avgt    5   576.692 ± 0.108  us/op
LoopFusionBenchmark.manual_loops_fusion:asm  262144  avgt            NaN            ---
