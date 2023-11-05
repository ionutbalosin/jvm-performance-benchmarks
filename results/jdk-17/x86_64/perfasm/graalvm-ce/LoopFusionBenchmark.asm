# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 1154.547 us/op
# Warmup Iteration   2: 1149.402 us/op
# Warmup Iteration   3: 1149.434 us/op
# Warmup Iteration   4: 1149.442 us/op
# Warmup Iteration   5: 1149.450 us/op
Iteration   1: 1149.261 us/op
Iteration   2: 1149.547 us/op
Iteration   3: 1149.070 us/op
Iteration   4: 1148.782 us/op
Iteration   5: 1148.862 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops":
  1149.104 ±(99.9%) 1.194 us/op [Average]
  (min, avg, max) = (1148.782, 1149.104, 1149.547), stdev = 0.310
  CI (99.9%): [1147.911, 1150.298] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops:·asm":
PrintAssembly processed: 191593 total address lines.
Perf output processed (skipped 58.654 seconds):
 Column 1: cycles (50893 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 738 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
             0x00007f1d9affc443:   mov    %ebp,0x14(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
             0x00007f1d9affc44b:   mov    $0x2,%ebp
             0x00007f1d9affc450:   jmp    0x00007f1d9affc551           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@2 (line 85)
             0x00007f1d9affc455:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@7 (line 85)
          ↗  0x00007f1d9affc460:   mov    0x10(%rcx,%rbp,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
   1.04%  │  0x00007f1d9affc465:   movslq %ebp,%r14
          │  0x00007f1d9affc468:   add    0xc(%r9,%r14,4),%r13d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   2.72%  │  0x00007f1d9affc46d:   mov    %r13d,0x10(%r9,%rbp,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.15%  │  0x00007f1d9affc472:   mov    0x14(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc477:   add    0x10(%r9,%rbp,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.87%  │  0x00007f1d9affc47c:   mov    %r13d,0x14(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.15%  │  0x00007f1d9affc481:   mov    0x18(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc486:   add    0x14(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.86%  │  0x00007f1d9affc48b:   mov    %r13d,0x18(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.23%  │  0x00007f1d9affc490:   mov    0x1c(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc495:   add    0x18(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.96%  │  0x00007f1d9affc49a:   mov    %r13d,0x1c(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.10%  │  0x00007f1d9affc49f:   mov    0x20(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc4a4:   add    0x1c(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   4.10%  │  0x00007f1d9affc4a9:   mov    %r13d,0x20(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.16%  │  0x00007f1d9affc4ae:   mov    0x24(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc4b3:   add    0x20(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.92%  │  0x00007f1d9affc4b8:   mov    %r13d,0x24(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.28%  │  0x00007f1d9affc4bd:   mov    0x28(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc4c2:   add    0x24(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   4.02%  │  0x00007f1d9affc4c7:   mov    %r13d,0x28(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.19%  │  0x00007f1d9affc4cc:   mov    0x2c(%rcx,%r14,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
          │  0x00007f1d9affc4d1:   add    0x28(%r9,%r14,4),%r13d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 86)
   3.95%  │  0x00007f1d9affc4d6:   mov    %r13d,0x2c(%r9,%r14,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 86)
   2.14%  │  0x00007f1d9affc4db:   lea    0x8(%rbp),%ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 85)
          │  0x00007f1d9affc4de:   xchg   %ax,%ax
   0.00%  │  0x00007f1d9affc4e0:   cmp    %ebp,%ebx
          ╰  0x00007f1d9affc4e2:   jg     0x00007f1d9affc460
             0x00007f1d9affc4e8:   jmp    0x00007f1d9affc520
             0x00007f1d9affc4ed:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f1d9affc4f8:   data16 data16 xchg %ax,%ax
             0x00007f1d9affc4fc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@7 (line 85)
             0x00007f1d9affc500:   mov    0x10(%rcx,%rbp,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 86)
             0x00007f1d9affc505:   movslq %ebp,%r14
             0x00007f1d9affc508:   add    0xc(%r9,%r14,4),%r13d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 738 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
             0x00007f1d9affc602:   mov    %edx,0x14(,%r11,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
             0x00007f1d9affc60a:   mov    $0x2,%r11d
             0x00007f1d9affc610:   jmp    0x00007f1d9affc712           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@39 (line 89)
             0x00007f1d9affc615:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 89)
          ↗  0x00007f1d9affc620:   mov    0x10(%r9,%r11,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
   1.10%  │  0x00007f1d9affc625:   movslq %r11d,%rdi
          │  0x00007f1d9affc628:   add    0xc(%rcx,%rdi,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   2.84%  │  0x00007f1d9affc62d:   mov    %r8d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.09%  │  0x00007f1d9affc632:   mov    0x14(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc637:   add    0x10(%rcx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   4.00%  │  0x00007f1d9affc63c:   mov    %r8d,0x14(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.13%  │  0x00007f1d9affc641:   mov    0x18(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc646:   add    0x14(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.94%  │  0x00007f1d9affc64b:   mov    %r8d,0x18(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.11%  │  0x00007f1d9affc650:   mov    0x1c(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc655:   add    0x18(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.91%  │  0x00007f1d9affc65a:   mov    %r8d,0x1c(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.18%  │  0x00007f1d9affc65f:   mov    0x20(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc664:   add    0x1c(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   4.01%  │  0x00007f1d9affc669:   mov    %r8d,0x20(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.15%  │  0x00007f1d9affc66e:   mov    0x24(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc673:   add    0x20(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.90%  │  0x00007f1d9affc678:   mov    %r8d,0x24(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.10%  │  0x00007f1d9affc67d:   mov    0x28(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc682:   add    0x24(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   3.95%  │  0x00007f1d9affc687:   mov    %r8d,0x28(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.11%  │  0x00007f1d9affc68c:   mov    0x2c(%r9,%rdi,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 90)
          │  0x00007f1d9affc691:   add    0x28(%rcx,%rdi,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 90)
   4.02%  │  0x00007f1d9affc696:   mov    %r8d,0x2c(%rcx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 90)
   2.21%  │  0x00007f1d9affc69b:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 89)
          │  0x00007f1d9affc69f:   nop
          │  0x00007f1d9affc6a0:   cmp    %r11d,%ebx
          ╰  0x00007f1d9affc6a3:   jg     0x00007f1d9affc620
             0x00007f1d9affc6a9:   jmp    0x00007f1d9affc6e0
             0x00007f1d9affc6ae:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f1d9affc6b9:   data16 data16 xchg %ax,%ax
             0x00007f1d9affc6bd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 89)
....................................................................................................
  48.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 738 
  48.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 738 
   0.52%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   1.17%  <...other 390 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 3, compile id 738 
   1.96%               kernel  [unknown] 
   0.04%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%       hsdis-amd64.so  putop 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%            libjvm.so  os::elapsed_counter 
   0.20%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.58%       jvmci, level 4
   1.96%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.07%   libpthread-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%       perf-29801.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 580.021 us/op
# Warmup Iteration   2: 577.200 us/op
# Warmup Iteration   3: 577.196 us/op
# Warmup Iteration   4: 576.966 us/op
# Warmup Iteration   5: 576.753 us/op
Iteration   1: 576.766 us/op
Iteration   2: 576.791 us/op
Iteration   3: 576.739 us/op
Iteration   4: 576.723 us/op
Iteration   5: 576.727 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion":
  576.749 ±(99.9%) 0.111 us/op [Average]
  (min, avg, max) = (576.723, 576.749, 576.791), stdev = 0.029
  CI (99.9%): [576.638, 576.860] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion:·asm":
PrintAssembly processed: 193944 total address lines.
Perf output processed (skipped 58.672 seconds):
 Column 1: cycles (50811 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 744 

              0x00007f011affdb14:   mov    0x348(%r15),%rcx
              0x00007f011affdb1b:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%      0x00007f011affdb1d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@2 (line 101)
              0x00007f011affdb1e:   lea    -0x4(%r10),%r8d
          ╭   0x00007f011affdb22:   jmp    0x00007f011affdba2
          │   0x00007f011affdb27:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f011affdb32:   data16 data16 xchg %ax,%ax
          │   0x00007f011affdb36:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 101)
   0.00%  │↗  0x00007f011affdb40:   mov    0x10(%rbx,%r9,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f011affdb45:   movslq %r9d,%rdi
   4.34%  ││  0x00007f011affdb48:   add    0xc(%r11,%rdi,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   1.62%  ││  0x00007f011affdb4d:   mov    %ecx,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   2.46%  ││  0x00007f011affdb52:   add    0xc(%rbx,%rdi,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
   7.77%  ││  0x00007f011affdb56:   mov    %ecx,0x10(%rbx,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   8.00%  ││  0x00007f011affdb5b:   mov    0x14(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
   0.00%  ││  0x00007f011affdb5f:   add    0x10(%r11,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   2.74%  ││  0x00007f011affdb64:   mov    %ecx,0x14(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.18%  ││  0x00007f011affdb69:   add    0x10(%rbx,%r9,4),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.62%  ││  0x00007f011affdb6e:   mov    %ecx,0x14(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   8.05%  ││  0x00007f011affdb72:   mov    0x18(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f011affdb76:   add    0x14(%r11,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   2.67%  ││  0x00007f011affdb7b:   mov    %ecx,0x18(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.15%  ││  0x00007f011affdb80:   add    0x14(%rbx,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.70%  ││  0x00007f011affdb84:   mov    %ecx,0x18(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   8.25%  ││  0x00007f011affdb88:   mov    0x1c(%rbx,%rdi,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 102)
          ││  0x00007f011affdb8c:   add    0x18(%r11,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 102)
   2.57%  ││  0x00007f011affdb91:   mov    %ecx,0x1c(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 102)
   3.12%  ││  0x00007f011affdb96:   add    0x18(%rbx,%rdi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 103)
  10.66%  ││  0x00007f011affdb9a:   mov    %ecx,0x1c(%rbx,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 103)
   8.02%  ││  0x00007f011affdb9e:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 101)
          ↘│  0x00007f011affdba2:   cmp    %r9d,%r8d
           ╰  0x00007f011affdba5:   jg     0x00007f011affdb40
              0x00007f011affdba7:   jmp    0x00007f011affdbe0
              0x00007f011affdbac:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f011affdbb7:   data16 data16 xchg %ax,%ax
              0x00007f011affdbbb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 101)
              0x00007f011affdbc0:   mov    0x10(%rbx,%r9,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 744 
   0.57%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.95%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 744 
   1.71%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%  libjvmcicompiler.so  SubstrateArraycopySnippets_doArraycopy_4853bfec7ad839b72daa1b518dc3bf9756daa462 
   0.20%  <...other 94 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%       jvmci, level 4
   1.71%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:43

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
LoopFusionBenchmark.initial_loops             262144  avgt    5  1149.104 ± 1.194  us/op
LoopFusionBenchmark.initial_loops:·asm        262144  avgt            NaN            ---
LoopFusionBenchmark.manual_loops_fusion       262144  avgt    5   576.749 ± 0.111  us/op
LoopFusionBenchmark.manual_loops_fusion:·asm  262144  avgt            NaN            ---
