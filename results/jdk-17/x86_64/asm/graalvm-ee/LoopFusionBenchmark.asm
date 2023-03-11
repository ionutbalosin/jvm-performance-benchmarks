# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1156.969 us/op
# Warmup Iteration   2: 1149.205 us/op
# Warmup Iteration   3: 1149.126 us/op
# Warmup Iteration   4: 1149.142 us/op
# Warmup Iteration   5: 1149.084 us/op
Iteration   1: 1149.238 us/op
Iteration   2: 1149.176 us/op
Iteration   3: 1148.731 us/op
Iteration   4: 1148.710 us/op
Iteration   5: 1148.733 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops":
  1148.918 ±(99.9%) 1.021 us/op [Average]
  (min, avg, max) = (1148.710, 1148.918, 1149.238), stdev = 0.265
  CI (99.9%): [1147.896, 1149.939] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.initial_loops:·asm":
PrintAssembly processed: 189757 total address lines.
Perf output processed (skipped 58.556 seconds):
 Column 1: cycles (50885 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 726 

              0x00007fa016b1a52f:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@68 (line 89)
              0x00007fa016b1a532:   cmp    %r9d,%r8d
              0x00007fa016b1a535:   jg     0x00007fa016b1a520
              0x00007fa016b1a537:   mov    %r9d,%r8d
          ╭   0x00007fa016b1a53a:   jmp    0x00007fa016b1a5bc
          │   0x00007fa016b1a53f:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@44 (line 89)
          │↗  0x00007fa016b1a540:   mov    0x10(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
   0.98%  ││  0x00007fa016b1a545:   add    0xc(%rdi,%r8,4),%r9d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   2.84%  ││  0x00007fa016b1a54a:   mov    %r9d,0x10(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.25%  ││  0x00007fa016b1a54f:   mov    0x14(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a554:   add    0x10(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   4.00%  ││  0x00007fa016b1a559:   mov    %r9d,0x14(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.06%  ││  0x00007fa016b1a55e:   mov    0x18(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a563:   add    0x14(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   4.03%  ││  0x00007fa016b1a568:   mov    %r9d,0x18(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.20%  ││  0x00007fa016b1a56d:   mov    0x1c(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a572:   add    0x18(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.85%  ││  0x00007fa016b1a577:   mov    %r9d,0x1c(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.28%  ││  0x00007fa016b1a57c:   mov    0x20(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a581:   add    0x1c(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.97%  ││  0x00007fa016b1a586:   mov    %r9d,0x20(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.09%  ││  0x00007fa016b1a58b:   mov    0x24(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a590:   add    0x20(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.90%  ││  0x00007fa016b1a595:   mov    %r9d,0x24(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.14%  ││  0x00007fa016b1a59a:   mov    0x28(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a59f:   add    0x24(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.98%  ││  0x00007fa016b1a5a4:   mov    %r9d,0x28(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.25%  ││  0x00007fa016b1a5a9:   mov    0x2c(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          ││  0x00007fa016b1a5ae:   add    0x28(%rdi,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.87%  ││  0x00007fa016b1a5b3:   mov    %r9d,0x2c(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.13%  ││  0x00007fa016b1a5b8:   lea    0x8(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@68 (line 89)
          ↘│  0x00007fa016b1a5bc:   nopl   0x0(%rax)
           │  0x00007fa016b1a5c0:   cmp    %r8d,%ecx
           ╰  0x00007fa016b1a5c3:   jg     0x00007fa016b1a540
              0x00007fa016b1a5c9:   jmp    0x00007fa016b1a600
              0x00007fa016b1a5ce:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa016b1a5d9:   data16 data16 xchg %ax,%ax
              0x00007fa016b1a5dd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@44 (line 89)
....................................................................................................
  48.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 726 

              0x00007fa016b1a3fb:   cmp    $0x80000008,%r10d
              0x00007fa016b1a402:   mov    $0x80000000,%ebp
              0x00007fa016b1a407:   cmovl  %ebp,%ecx
          ╭   0x00007fa016b1a40a:   jmp    0x00007fa016b1a49c
          │   0x00007fa016b1a40f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa016b1a41a:   data16 data16 xchg %ax,%ax
          │   0x00007fa016b1a41e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@7 (line 85)
          │↗  0x00007fa016b1a420:   mov    0x10(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
   1.13%  ││  0x00007fa016b1a425:   add    0xc(%r11,%r9,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   2.90%  ││  0x00007fa016b1a42a:   mov    %ebp,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.09%  ││  0x00007fa016b1a42f:   mov    0x14(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a434:   add    0x10(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   4.01%  ││  0x00007fa016b1a439:   mov    %ebp,0x14(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.15%  ││  0x00007fa016b1a43e:   mov    0x18(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a443:   add    0x14(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   4.20%  ││  0x00007fa016b1a448:   mov    %ebp,0x18(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.12%  ││  0x00007fa016b1a44d:   mov    0x1c(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a452:   add    0x18(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.90%  ││  0x00007fa016b1a457:   mov    %ebp,0x1c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.01%  ││  0x00007fa016b1a45c:   mov    0x20(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a461:   add    0x1c(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.89%  ││  0x00007fa016b1a466:   mov    %ebp,0x20(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.21%  ││  0x00007fa016b1a46b:   mov    0x24(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a470:   add    0x20(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.80%  ││  0x00007fa016b1a475:   mov    %ebp,0x24(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.19%  ││  0x00007fa016b1a47a:   mov    0x28(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a47f:   add    0x24(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.88%  ││  0x00007fa016b1a484:   mov    %ebp,0x28(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.09%  ││  0x00007fa016b1a489:   mov    0x2c(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          ││  0x00007fa016b1a48e:   add    0x28(%r11,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   4.02%  ││  0x00007fa016b1a493:   mov    %ebp,0x2c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.15%  ││  0x00007fa016b1a498:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@31 (line 85)
          ↘│  0x00007fa016b1a49c:   nopl   0x0(%rax)
           │  0x00007fa016b1a4a0:   cmp    %r9d,%ecx
           ╰  0x00007fa016b1a4a3:   jg     0x00007fa016b1a420
              0x00007fa016b1a4a9:   jmp    0x00007fa016b1a4e0
              0x00007fa016b1a4ae:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa016b1a4b9:   data16 data16 xchg %ax,%ax
              0x00007fa016b1a4bd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops@7 (line 85)
....................................................................................................
  48.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 726 
  48.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 726 
   1.00%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.95%  <...other 323 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 726 
   2.10%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%            libjvm.so  stringStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%          interpreter  fast_bgetfield  204 fast_bgetfield  
   0.00%            libjvm.so  CompositeElapsedCounterSource::now 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%          interpreter  return entry points  
   0.00%       hsdis-amd64.so  print_insn 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%       jvmci, level 4
   2.10%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.06%                     
   0.03%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 593.758 us/op
# Warmup Iteration   2: 589.836 us/op
# Warmup Iteration   3: 589.861 us/op
# Warmup Iteration   4: 589.667 us/op
# Warmup Iteration   5: 589.486 us/op
Iteration   1: 589.398 us/op
Iteration   2: 589.400 us/op
Iteration   3: 589.334 us/op
Iteration   4: 589.346 us/op
Iteration   5: 589.344 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion":
  589.365 ±(99.9%) 0.122 us/op [Average]
  (min, avg, max) = (589.334, 589.365, 589.400), stdev = 0.032
  CI (99.9%): [589.242, 589.487] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark.manual_loops_fusion:·asm":
PrintAssembly processed: 192693 total address lines.
Perf output processed (skipped 58.712 seconds):
 Column 1: cycles (50909 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 728 

              0x00007f303eb1981c:   nopl   0x0(%rax)
              0x00007f303eb19820:   cmp    %r9d,%r11d
              0x00007f303eb19823:   jg     0x00007f303eb19800
              0x00007f303eb19825:   lea    -0x4(%r8),%r11d
              0x00007f303eb19829:   cmp    $0x80000004,%r8d
              0x00007f303eb19830:   mov    $0x80000000,%ecx
              0x00007f303eb19835:   cmovl  %ecx,%r11d
          ╭   0x00007f303eb19839:   jmp    0x00007f303eb198a8
          │   0x00007f303eb1983e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 101)
   0.01%  │↗  0x00007f303eb19840:   mov    0x10(%rdi,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f303eb19845:   add    0xc(%r10,%r9,4),%ecx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   6.41%  ││  0x00007f303eb1984a:   mov    %ecx,0x10(%r10,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   2.46%  ││  0x00007f303eb1984f:   add    0xc(%rdi,%r9,4),%ecx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
   7.84%  ││  0x00007f303eb19854:   mov    %ecx,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   7.90%  ││  0x00007f303eb19859:   mov    0x14(%rdi,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f303eb1985e:   add    0x10(%r10,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.04%  ││  0x00007f303eb19863:   mov    %ecx,0x14(%r10,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   2.88%  ││  0x00007f303eb19868:   add    0x10(%rdi,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.23%  ││  0x00007f303eb1986d:   mov    %ecx,0x14(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   7.89%  ││  0x00007f303eb19872:   mov    0x18(%rdi,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f303eb19877:   add    0x14(%r10,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.27%  ││  0x00007f303eb1987c:   mov    %ecx,0x18(%r10,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.22%  ││  0x00007f303eb19881:   add    0x14(%rdi,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.23%  ││  0x00007f303eb19886:   mov    %ecx,0x18(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   8.00%  ││  0x00007f303eb1988b:   mov    0x1c(%rdi,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f303eb19890:   add    0x18(%r10,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   3.19%  ││  0x00007f303eb19895:   mov    %ecx,0x1c(%r10,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.11%  ││  0x00007f303eb1989a:   add    0x18(%rdi,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.26%  ││  0x00007f303eb1989f:   mov    %ecx,0x1c(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   7.80%  ││  0x00007f303eb198a4:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 101)
          ↘│  0x00007f303eb198a8:   cmp    %r9d,%r11d
           ╰  0x00007f303eb198ab:   jg     0x00007f303eb19840
              0x00007f303eb198ad:   jmp    0x00007f303eb198e0
              0x00007f303eb198b2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f303eb198bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 101)
              0x00007f303eb198c0:   mov    0x10(%rdi,%r9,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
....................................................................................................
  97.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 728 
   0.39%               kernel  [unknown] 
   0.39%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.88%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 728 
   1.89%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  os::current_thread_id 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%            libjvm.so  resource_allocate_bytes 
   0.17%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.74%       jvmci, level 4
   1.89%               kernel
   0.13%            libjvm.so
   0.11%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%       perf-39779.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:44

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

Benchmark                                     (size)  Mode  Cnt     Score   Error  Units
LoopFusionBenchmark.initial_loops             262144  avgt    5  1148.918 ± 1.021  us/op
LoopFusionBenchmark.initial_loops:·asm        262144  avgt            NaN            ---
LoopFusionBenchmark.manual_loops_fusion       262144  avgt    5   589.365 ± 0.122  us/op
LoopFusionBenchmark.manual_loops_fusion:·asm  262144  avgt            NaN            ---
