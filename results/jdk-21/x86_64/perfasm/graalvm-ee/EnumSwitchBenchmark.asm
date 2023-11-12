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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.654 ns/op
# Warmup Iteration   2: 1.644 ns/op
# Warmup Iteration   3: 1.637 ns/op
# Warmup Iteration   4: 1.638 ns/op
# Warmup Iteration   5: 1.637 ns/op
Iteration   1: 1.637 ns/op
Iteration   2: 1.637 ns/op
Iteration   3: 1.637 ns/op
Iteration   4: 1.637 ns/op
Iteration   5: 1.637 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  1.637 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.637, 1.637, 1.637), stdev = 0.001
  CI (99.9%): [1.636, 1.638] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 225150 total address lines.
Perf output processed (skipped 60.467 seconds):
 Column 1: cycles (50896 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 959 

                                     0x00007f8862d7d315:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                     0x00007f8862d7d318:   mov    %ebx,%r9d
                                     0x00007f8862d7d31b:   jmp    0x00007f8862d7d2d0           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                     0x00007f8862d7d31d:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                     0x00007f8862d7d321:   mov    %ebx,%r9d
                                     0x00007f8862d7d324:   jmp    0x00007f8862d7d2d0
   0.02%                             0x00007f8862d7d326:   lea    -0x4(%r10),%r11d
                                     0x00007f8862d7d32a:   nopw   0x0(%rax,%rax,1)
   3.92%            ↗  ↗  ↗          0x00007f8862d7d330:   cmp    %r9d,%r11d
          ╭         │  │  │          0x00007f8862d7d333:   jle    0x00007f8862d7d4a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.81%  │         │  │  │          0x00007f8862d7d339:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  13.19%  │         │  │  │          0x00007f8862d7d33e:   xchg   %ax,%ax
          │         │  │  │          0x00007f8862d7d340:   cmp    $0xffd86ed5,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
          │╭        │  │  │          0x00007f8862d7d346:   je     0x00007f8862d7d438
   3.78%  ││        │  │  │          0x00007f8862d7d34c:   cmp    $0xffd86ede,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
          ││╭       │  │  │          0x00007f8862d7d352:   je     0x00007f8862d7d485
   0.05%  │││       │  │  │          0x00007f8862d7d358:   nopl   0x0(%rax,%rax,1)
          │││       │  │  │          0x00007f8862d7d360:   cmp    $0xffd86ee7,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
          │││       │  │  │          0x00007f8862d7d366:   jne    0x00007f8862d7d5ad           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││       │  │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │││       │  │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.84%  │││       │  │  │          0x00007f8862d7d36c:   mov    $0x3,%ecx
   3.94%  │││       │↗ │  │ ↗        0x00007f8862d7d371:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││       ││ │  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   2.43%  │││       ││ │  │ │        0x00007f8862d7d376:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││       ││ │  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%  │││       ││ │  │ │        0x00007f8862d7d379:   nopl   0x0(%rax)
   0.06%  │││       ││ │  │ │        0x00007f8862d7d380:   cmp    $0xffd86ed5,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
          │││╭      ││ │  │ │        0x00007f8862d7d386:   je     0x00007f8862d7d445
   3.83%  ││││      ││ │  │ │        0x00007f8862d7d38c:   cmp    $0xffd86ede,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
          ││││╭     ││ │  │ │        0x00007f8862d7d392:   je     0x00007f8862d7d462
   0.02%  │││││     ││ │  │ │        0x00007f8862d7d398:   nopl   0x0(%rax,%rax,1)
          │││││     ││ │  │ │        0x00007f8862d7d3a0:   cmp    $0xffd86ee7,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
          │││││     ││ │  │ │        0x00007f8862d7d3a6:   jne    0x00007f8862d7d562           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││││     ││ │  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │││││     ││ │  │ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.08%  │││││     ││ │  │ │        0x00007f8862d7d3ac:   mov    $0x3,%ecx
   5.55%  │││││     ││↗│ ↗│ │        0x00007f8862d7d3b1:   mov    0x18(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││     ││││ ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   5.94%  │││││     ││││ ││ │        0x00007f8862d7d3b6:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││     ││││ ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │││││     ││││ ││ │        0x00007f8862d7d3b9:   nopl   0x0(%rax)
   0.03%  │││││     ││││ ││ │        0x00007f8862d7d3c0:   cmp    $0xffd86ed5,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
          │││││╭    ││││ ││ │        0x00007f8862d7d3c6:   je     0x00007f8862d7d45a
   3.85%  ││││││    ││││ ││ │        0x00007f8862d7d3cc:   cmp    $0xffd86ede,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
          ││││││╭   ││││ ││ │        0x00007f8862d7d3d2:   je     0x00007f8862d7d478
   1.90%  │││││││   ││││ ││ │        0x00007f8862d7d3d8:   nopl   0x0(%rax,%rax,1)
          │││││││   ││││ ││ │        0x00007f8862d7d3e0:   cmp    $0xffd86ee7,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
          │││││││   ││││ ││ │        0x00007f8862d7d3e6:   jne    0x00007f8862d7d53b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││││││   ││││ ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │││││││   ││││ ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.05%  │││││││   ││││ ││ │        0x00007f8862d7d3ec:   mov    $0x3,%ecx
   5.22%  │││││││   ││││↗││↗│        0x00007f8862d7d3f1:   mov    0x1c(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││││   │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  12.59%  │││││││   │││││││││        0x00007f8862d7d3f6:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││   │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │││││││   │││││││││        0x00007f8862d7d3f9:   lea    0x4(%r9),%ecx                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││   │││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.02%  │││││││   │││││││││        0x00007f8862d7d3fd:   data16 xchg %ax,%ax
   0.13%  │││││││   │││││││││        0x00007f8862d7d400:   cmp    $0xffd86ed5,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
          │││││││╭  │││││││││        0x00007f8862d7d406:   je     0x00007f8862d7d44f
   3.81%  ││││││││  │││││││││        0x00007f8862d7d40c:   cmp    $0xffd86ede,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
          ││││││││╭ │││││││││        0x00007f8862d7d412:   je     0x00007f8862d7d46c
   1.88%  │││││││││ │││││││││        0x00007f8862d7d418:   nopl   0x0(%rax,%rax,1)
          │││││││││ │││││││││        0x00007f8862d7d420:   cmp    $0xffd86ee7,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
          │││││││││╭│││││││││        0x00007f8862d7d426:   jne    0x00007f8862d7d514           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │││││││││││││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.29%  │││││││││││││││││││        0x00007f8862d7d42c:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │││││││││││││││││││        0x00007f8862d7d430:   mov    %ecx,%r9d
   3.28%  ││││││││││╰││││││││        0x00007f8862d7d433:   jmp    0x00007f8862d7d330
   1.88%  │↘││││││││ ││││││││        0x00007f8862d7d438:   mov    $0x1,%ecx
   0.02%  │ ││││││││ ││││││││        0x00007f8862d7d43d:   data16 xchg %ax,%ax
          │ ││││││││ ╰│││││││        0x00007f8862d7d440:   jmp    0x00007f8862d7d371
   1.95%  │ │↘││││││  │││││││        0x00007f8862d7d445:   mov    $0x1,%ecx
          │ │ ││││││  ╰││││││        0x00007f8862d7d44a:   jmp    0x00007f8862d7d3b1           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││││││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ │ ││││││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.76%  │ │ │││↘││   ││││││        0x00007f8862d7d44f:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││ ││   ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%  │ │ │││ ││   ││││││        0x00007f8862d7d452:   mov    %ecx,%r9d
   0.06%  │ │ │││ ││   ╰│││││        0x00007f8862d7d455:   jmp    0x00007f8862d7d330           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││ ││    │││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ │ │││ ││    │││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.86%  │ │ │↘│ ││    │││││        0x00007f8862d7d45a:   mov    $0x1,%ecx
   0.05%  │ │ │ │ ││    │││││        0x00007f8862d7d45f:   nop
          │ │ │ │ ││    ╰││││        0x00007f8862d7d460:   jmp    0x00007f8862d7d3f1
   3.69%  │ │ ↘ │ ││     ││││        0x00007f8862d7d462:   mov    $0x2,%ecx
   0.02%  │ │   │ ││     ╰│││        0x00007f8862d7d467:   jmp    0x00007f8862d7d3b1           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ ││      │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │ │   │ ││      │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.09%  │ │   │ ↘│      │││        0x00007f8862d7d46c:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │      │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.07%  │ │   │  │      │││        0x00007f8862d7d470:   mov    %ecx,%r9d
   0.01%  │ │   │  │      ╰││        0x00007f8862d7d473:   jmp    0x00007f8862d7d330
   1.99%  │ │   ↘  │       ││        0x00007f8862d7d478:   mov    $0x2,%ecx
   0.02%  │ │      │       ││        0x00007f8862d7d47d:   data16 xchg %ax,%ax
          │ │      │       ╰│        0x00007f8862d7d480:   jmp    0x00007f8862d7d3f1           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │      │        │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │ │      │        │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.72%  │ ↘      │        │        0x00007f8862d7d485:   mov    $0x2,%ecx
   0.02%  │        │        ╰        0x00007f8862d7d48a:   jmp    0x00007f8862d7d371
          │        │                 0x00007f8862d7d48f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        │                 0x00007f8862d7d49a:   data16 data16 xchg %ax,%ax
          │        │                 0x00007f8862d7d49e:   xchg   %ax,%ax
   0.46%  ↘        │            ↗↗↗  0x00007f8862d7d4a0:   cmp    %r9d,%r10d
                   │         ╭  │││  0x00007f8862d7d4a3:   jbe    0x00007f8862d7d4fa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                   │         │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.14%           │         │  │││  0x00007f8862d7d4a9:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                   │         │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.20%           │         │  │││  0x00007f8862d7d4ae:   mov    %r9d,%ecx
                   │         │  │││  0x00007f8862d7d4b1:   inc    %ecx
                   │         │  │││  0x00007f8862d7d4b3:   cmp    $0xffd86ed5,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
                   │         │╭ │││  0x00007f8862d7d4ba:   je     0x00007f8862d7d4e6
   0.06%           │         ││ │││  0x00007f8862d7d4c0:   cmp    $0xffd86ede,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
                   │         ││╭│││  0x00007f8862d7d4c7:   je     0x00007f8862d7d4ee
   0.04%           │         ││││││  0x00007f8862d7d4cd:   cmp    $0xffd86ee7,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
                   │         ││││││  0x00007f8862d7d4d4:   jne    0x00007f8862d7d588           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                   │         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                   │         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%           │         ││││││  0x00007f8862d7d4da:   lea    0x3(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                   │         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                   │         ││││││  0x00007f8862d7d4de:   mov    %ecx,%r9d
                   │         ││││││  0x00007f8862d7d4e1:   mov    %r11d,%r8d
                   │         │││╰││  0x00007f8862d7d4e4:   jmp    0x00007f8862d7d4a0           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                   │         │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                   │         │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%           │         │↘│ ││  0x00007f8862d7d4e6:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                   │         │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                   │         │ │ ││  0x00007f8862d7d4e9:   mov    %ecx,%r9d
                   │         │ │ ╰│  0x00007f8862d7d4ec:   jmp    0x00007f8862d7d4a0           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                   │         │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                   │         │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%           │         │ ↘  │  0x00007f8862d7d4ee:   lea    0x2(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                   │         │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                   │         │    │  0x00007f8862d7d4f2:   mov    %ecx,%r9d
                   │         │    │  0x00007f8862d7d4f5:   mov    %r11d,%r8d
                   │         │    ╰  0x00007f8862d7d4f8:   jmp    0x00007f8862d7d4a0
   0.02%           │         ↘       0x00007f8862d7d4fa:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
                   │                 0x00007f8862d7d4fd:   mov    0x10(%rsp),%rbp
   0.04%           │                 0x00007f8862d7d502:   add    $0x18,%rsp
                   │                 0x00007f8862d7d506:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                   │                 0x00007f8862d7d50d:   ja     0x00007f8862d7d606
   0.05%           │                 0x00007f8862d7d513:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                   │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                   ↘                 0x00007f8862d7d514:   lea    0x3(%r9),%r11d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
                                     0x00007f8862d7d518:   movl   $0xffffffed,0x484(%r15)      ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                     0x00007f8862d7d523:   movq   $0x14,0x490(%r15)
                                     0x00007f8862d7d52e:   call   0x00007f886276a17a           ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                               ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  96.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 959 
   0.94%              kernel  [unknown] 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 993 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 959 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   1.01%  <...other 335 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 959 
   2.23%              kernel  [unknown] 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 993 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.14%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.42%      jvmci, level 4
   2.23%              kernel
   0.12%           libjvm.so
   0.11%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:20:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.761 ns/op
# Warmup Iteration   2: 1.741 ns/op
# Warmup Iteration   3: 1.741 ns/op
# Warmup Iteration   4: 1.745 ns/op
# Warmup Iteration   5: 1.751 ns/op
Iteration   1: 1.747 ns/op
Iteration   2: 1.756 ns/op
Iteration   3: 1.746 ns/op
Iteration   4: 1.751 ns/op
Iteration   5: 1.754 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  1.751 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (1.746, 1.751, 1.756), stdev = 0.004
  CI (99.9%): [1.734, 1.767] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 229085 total address lines.
Perf output processed (skipped 60.656 seconds):
 Column 1: cycles (50753 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 

            0x00007fca22d7f965:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7f969:   mov    %ebx,%r9d
            0x00007fca22d7f96c:   jmp    0x00007fca22d7f8d0           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7f971:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7f975:   mov    %ebx,%r9d
            0x00007fca22d7f978:   jmp    0x00007fca22d7f8d0
   0.02%    0x00007fca22d7f97d:   lea    -0x2(%r10),%r11d
            0x00007fca22d7f981:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fca22d7f98c:   data16 data16 xchg %ax,%ax
   6.31%    0x00007fca22d7f990:   cmp    %r9d,%r11d
            0x00007fca22d7f993:   jle    0x00007fca22d7fb00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.10%    0x00007fca22d7f999:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   7.89%    0x00007fca22d7f99e:   xchg   %ax,%ax
   2.69%    0x00007fca22d7f9a0:   cmp    $0xffd86e34,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371a0})}
            0x00007fca22d7f9a6:   je     0x00007fca22d7fa78
   8.09%    0x00007fca22d7f9ac:   cmp    $0xffd86e22,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37110})}
            0x00007fca22d7f9b2:   je     0x00007fca22d7fab2
   5.88%    0x00007fca22d7f9b8:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007fca22d7f9c0:   cmp    $0xffd86e2b,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37158})}
            0x00007fca22d7f9c6:   je     0x00007fca22d7fa91
   8.67%    0x00007fca22d7f9cc:   cmp    $0xffd86e3e,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371f0})}
            0x00007fca22d7f9d2:   je     0x00007fca22d7fabc
   0.01%    0x00007fca22d7f9d8:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007fca22d7f9e0:   cmp    $0xffd86e48,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37240})}
            0x00007fca22d7f9e6:   je     0x00007fca22d7fad2
   0.01%    0x00007fca22d7f9ec:   cmp    $0xffd86e51,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37288})}
            0x00007fca22d7f9f2:   jne    0x00007fca22d7fbdf           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.66%    0x00007fca22d7f9f8:   mov    $0x6,%ecx
   5.36%    0x00007fca22d7f9fd:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  10.82%    0x00007fca22d7fa02:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%    0x00007fca22d7fa05:   lea    0x2(%r9),%ecx
   0.03%    0x00007fca22d7fa09:   cmp    $0xffd86e34,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371a0})}
            0x00007fca22d7fa0f:   je     0x00007fca22d7fa85
   7.82%    0x00007fca22d7fa15:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fca22d7fa20:   cmp    $0xffd86e22,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37110})}
            0x00007fca22d7fa26:   je     0x00007fca22d7faa7
   3.62%    0x00007fca22d7fa2c:   cmp    $0xffd86e2b,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37158})}
            0x00007fca22d7fa32:   je     0x00007fca22d7fa9b
   3.52%    0x00007fca22d7fa38:   nopl   0x0(%rax,%rax,1)
            0x00007fca22d7fa40:   cmp    $0xffd86e3e,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371f0})}
            0x00007fca22d7fa46:   je     0x00007fca22d7fac6
   0.00%    0x00007fca22d7fa4c:   cmp    $0xffd86e48,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37240})}
            0x00007fca22d7fa52:   je     0x00007fca22d7fadc
            0x00007fca22d7fa58:   nopl   0x0(%rax,%rax,1)
            0x00007fca22d7fa60:   cmp    $0xffd86e51,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37288})}
            0x00007fca22d7fa66:   jne    0x00007fca22d7fc25           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7fa6c:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7fa70:   mov    %ecx,%r9d
            0x00007fca22d7fa73:   jmp    0x00007fca22d7f990
....................................................................................................
  74.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7fa6c:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7fa70:   mov    %ecx,%r9d
            0x00007fca22d7fa73:   jmp    0x00007fca22d7f990
            0x00007fca22d7fa78:   mov    $0x3,%ecx
            0x00007fca22d7fa7d:   data16 xchg %ax,%ax
            0x00007fca22d7fa80:   jmp    0x00007fca22d7f9fd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.58%    0x00007fca22d7fa85:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7fa89:   mov    %ecx,%r9d
            0x00007fca22d7fa8c:   jmp    0x00007fca22d7f990
   7.06%    0x00007fca22d7fa91:   mov    $0x2,%ecx
   0.02%    0x00007fca22d7fa96:   jmp    0x00007fca22d7f9fd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7fa9b:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7fa9f:   mov    %ecx,%r9d
            0x00007fca22d7faa2:   jmp    0x00007fca22d7f990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.97%    0x00007fca22d7faa7:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7faaa:   mov    %ecx,%r9d
   4.27%    0x00007fca22d7faad:   jmp    0x00007fca22d7f990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7fab2:   mov    $0x1,%ecx
            0x00007fca22d7fab7:   jmp    0x00007fca22d7f9fd
   0.02%    0x00007fca22d7fabc:   mov    $0x4,%ecx
   1.74%    0x00007fca22d7fac1:   jmp    0x00007fca22d7f9fd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007fca22d7fac6:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007fca22d7faca:   mov    %ecx,%r9d
            0x00007fca22d7facd:   jmp    0x00007fca22d7f990
            0x00007fca22d7fad2:   mov    $0x5,%ecx
            0x00007fca22d7fad7:   jmp    0x00007fca22d7f9fd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.05%    0x00007fca22d7fadc:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   1.85%    0x00007fca22d7fae0:   mov    %ecx,%r9d
            0x00007fca22d7fae3:   jmp    0x00007fca22d7f990
            0x00007fca22d7fae8:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fca22d7faf3:   data16 data16 xchg %ax,%ax
            0x00007fca22d7faf7:   nopw   0x0(%rax,%rax,1)
   0.29%    0x00007fca22d7fb00:   cmp    %r9d,%r10d
            0x00007fca22d7fb03:   jbe    0x00007fca22d7fbc5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.11%    0x00007fca22d7fb09:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.11%    0x00007fca22d7fb0e:   mov    %r9d,%ecx
            0x00007fca22d7fb11:   inc    %ecx
            0x00007fca22d7fb13:   cmp    $0xffd86e34,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371a0})}
            0x00007fca22d7fb1a:   je     0x00007fca22d7fb79
   0.01%    0x00007fca22d7fb20:   cmp    $0xffd86e22,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37110})}
            0x00007fca22d7fb27:   je     0x00007fca22d7fb88
   0.06%    0x00007fca22d7fb2d:   cmp    $0xffd86e2b,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37158})}
            0x00007fca22d7fb34:   je     0x00007fca22d7fb93
            0x00007fca22d7fb3a:   nopw   0x0(%rax,%rax,1)
            0x00007fca22d7fb40:   cmp    $0xffd86e3e,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec371f0})}
            0x00007fca22d7fb47:   je     0x00007fca22d7fba5
            0x00007fca22d7fb4d:   cmp    $0xffd86e48,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37240})}
            0x00007fca22d7fb54:   je     0x00007fca22d7fbb4
            0x00007fca22d7fb5a:   nopw   0x0(%rax,%rax,1)
            0x00007fca22d7fb60:   cmp    $0xffd86e51,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37288})}
            0x00007fca22d7fb67:   jne    0x00007fca22d7fc02           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
....................................................................................................
  22.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
  22.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   0.67%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 999 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.30%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   2.29%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 999 
   0.07%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  MethodLiveness::init_basic_blocks 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  ___vsnprintf 
   0.00%  libpthread-2.31.so  __libc_write 
   0.13%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.36%      jvmci, level 4
   2.29%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2128897.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:19:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.056 ns/op
# Warmup Iteration   2: 3.023 ns/op
# Warmup Iteration   3: 3.019 ns/op
# Warmup Iteration   4: 3.019 ns/op
# Warmup Iteration   5: 3.019 ns/op
Iteration   1: 3.019 ns/op
Iteration   2: 3.019 ns/op
Iteration   3: 3.019 ns/op
Iteration   4: 3.019 ns/op
Iteration   5: 3.019 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  3.019 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (3.019, 3.019, 3.019), stdev = 0.001
  CI (99.9%): [3.019, 3.020] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 227117 total address lines.
Perf output processed (skipped 60.664 seconds):
 Column 1: cycles (50649 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 

   0.04%       0x00007f9ba2d80060:   cmp    $0xffd86f04,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
               0x00007f9ba2d80066:   je     0x00007f9ba2d801f2
               0x00007f9ba2d8006c:   cmp    $0xffd86f20,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37900})}
               0x00007f9ba2d80072:   je     0x00007f9ba2d80240
   4.23%       0x00007f9ba2d80078:   nopl   0x0(%rax,%rax,1)
               0x00007f9ba2d80080:   cmp    $0xffd86f3b,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379d8})}
               0x00007f9ba2d80086:   je     0x00007f9ba2d80236
               0x00007f9ba2d8008c:   cmp    $0xffd86f29,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37948})}
               0x00007f9ba2d80092:   je     0x00007f9ba2d80256
               0x00007f9ba2d80098:   nopl   0x0(%rax,%rax,1)
   0.98%       0x00007f9ba2d800a0:   cmp    $0xffd86efb,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
               0x00007f9ba2d800a6:   je     0x00007f9ba2d8026c
               0x00007f9ba2d800ac:   cmp    $0xffd86f0d,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37868})}
               0x00007f9ba2d800b2:   je     0x00007f9ba2d80208
   1.00%       0x00007f9ba2d800b8:   nopl   0x0(%rax,%rax,1)
               0x00007f9ba2d800c0:   cmp    $0xffd86f32,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37990})}
               0x00007f9ba2d800c6:   jne    0x00007f9ba2d80298           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
               0x00007f9ba2d800cc:   mov    $0xb,%ecx
   4.26%   ↗↗  0x00007f9ba2d800d1:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  11.25%   ││  0x00007f9ba2d800d6:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
           ││  0x00007f9ba2d800d9:   lea    0x2(%r9),%ecx                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.01%   ││  0x00007f9ba2d800dd:   data16 xchg %ax,%ax
   2.10%   ││  0x00007f9ba2d800e0:   cmp    $0xffd86ede,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
          ╭││  0x00007f9ba2d800e6:   je     0x00007f9ba2d801af
   4.17%  │││  0x00007f9ba2d800ec:   cmp    $0xffd86ef1,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37788})}
          │││  0x00007f9ba2d800f2:   je     0x00007f9ba2d801bb
   6.32%  │││  0x00007f9ba2d800f8:   nopl   0x0(%rax,%rax,1)
   0.00%  │││  0x00007f9ba2d80100:   cmp    $0xffd86ee7,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
          │││  0x00007f9ba2d80106:   je     0x00007f9ba2d801d1
   5.41%  │││  0x00007f9ba2d8010c:   cmp    $0xffd86ed5,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
          │││  0x00007f9ba2d80112:   je     0x00007f9ba2d801e7
          │││  0x00007f9ba2d80118:   nopl   0x0(%rax,%rax,1)
   2.06%  │││  0x00007f9ba2d80120:   cmp    $0xffd86f04,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
          │││  0x00007f9ba2d80126:   je     0x00007f9ba2d801fc
          │││  0x00007f9ba2d8012c:   cmp    $0xffd86f20,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37900})}
          │││  0x00007f9ba2d80132:   je     0x00007f9ba2d8022a
   2.16%  │││  0x00007f9ba2d80138:   nopl   0x0(%rax,%rax,1)
          │││  0x00007f9ba2d80140:   cmp    $0xffd86f3b,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379d8})}
          │││  0x00007f9ba2d80146:   je     0x00007f9ba2d8021e
   6.04%  │││  0x00007f9ba2d8014c:   cmp    $0xffd86f29,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37948})}
          │││  0x00007f9ba2d80152:   je     0x00007f9ba2d80260
          │││  0x00007f9ba2d80158:   nopl   0x0(%rax,%rax,1)
   1.12%  │││  0x00007f9ba2d80160:   cmp    $0xffd86efb,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
          │││  0x00007f9ba2d80166:   je     0x00007f9ba2d8024a
          │││  0x00007f9ba2d8016c:   cmp    $0xffd86f0d,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37868})}
          │││  0x00007f9ba2d80172:   je     0x00007f9ba2d80212
   0.02%  │││  0x00007f9ba2d80178:   nopl   0x0(%rax,%rax,1)
          │││  0x00007f9ba2d80180:   cmp    $0xffd86f32,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37990})}
          │││  0x00007f9ba2d80186:   jne    0x00007f9ba2d80276           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.98%  │││  0x00007f9ba2d8018c:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │││  0x00007f9ba2d80190:   mov    %ecx,%r9d
   0.03%  │││  0x00007f9ba2d80193:   jmp    0x00007f9ba2d80010           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.97%  │││  0x00007f9ba2d80198:   mov    $0x2,%ecx
          │││  0x00007f9ba2d8019d:   data16 xchg %ax,%ax
   0.01%  │╰│  0x00007f9ba2d801a0:   jmp    0x00007f9ba2d800d1           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.04%  │ │  0x00007f9ba2d801a5:   mov    $0x4,%ecx
   0.00%  │ ╰  0x00007f9ba2d801aa:   jmp    0x00007f9ba2d800d1           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ↘    0x00007f9ba2d801af:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
               0x00007f9ba2d801b3:   mov    %ecx,%r9d
               0x00007f9ba2d801b6:   jmp    0x00007f9ba2d80010           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
               0x00007f9ba2d801bb:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
....................................................................................................
  48.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 

            0x00007f9ba2d7ffe9:   mov    %ebx,%r9d
            0x00007f9ba2d7ffec:   jmp    0x00007f9ba2d7feb0
            0x00007f9ba2d7fff1:   cmp    $0xffd86f16,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378b0})}
            0x00007f9ba2d7fff7:   jne    0x00007f9ba2d804cd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            0x00007f9ba2d7fffd:   lea    0x8(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            0x00007f9ba2d80001:   mov    %ebx,%r9d
            0x00007f9ba2d80004:   jmp    0x00007f9ba2d7feb0
   0.01%    0x00007f9ba2d80009:   lea    -0x2(%r10),%r11d
            0x00007f9ba2d8000d:   data16 xchg %ax,%ax
   4.16%    0x00007f9ba2d80010:   cmp    %r9d,%r11d
            0x00007f9ba2d80013:   jle    0x00007f9ba2d802c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   2.27%    0x00007f9ba2d80019:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  13.80%    0x00007f9ba2d8001e:   xchg   %ax,%ax
            0x00007f9ba2d80020:   cmp    $0xffd86ede,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
            0x00007f9ba2d80026:   je     0x00007f9ba2d80198
   5.10%    0x00007f9ba2d8002c:   cmp    $0xffd86ef1,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37788})}
            0x00007f9ba2d80032:   je     0x00007f9ba2d801a5
   1.05%    0x00007f9ba2d80038:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f9ba2d80040:   cmp    $0xffd86ee7,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
            0x00007f9ba2d80046:   je     0x00007f9ba2d801c7
   8.23%    0x00007f9ba2d8004c:   cmp    $0xffd86ed5,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
            0x00007f9ba2d80052:   je     0x00007f9ba2d801dd
            0x00007f9ba2d80058:   nopl   0x0(%rax,%rax,1)
   0.04%    0x00007f9ba2d80060:   cmp    $0xffd86f04,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
            0x00007f9ba2d80066:   je     0x00007f9ba2d801f2
            0x00007f9ba2d8006c:   cmp    $0xffd86f20,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37900})}
            0x00007f9ba2d80072:   je     0x00007f9ba2d80240
   4.23%    0x00007f9ba2d80078:   nopl   0x0(%rax,%rax,1)
            0x00007f9ba2d80080:   cmp    $0xffd86f3b,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379d8})}
            0x00007f9ba2d80086:   je     0x00007f9ba2d80236
            0x00007f9ba2d8008c:   cmp    $0xffd86f29,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37948})}
            0x00007f9ba2d80092:   je     0x00007f9ba2d80256
            0x00007f9ba2d80098:   nopl   0x0(%rax,%rax,1)
   0.98%    0x00007f9ba2d800a0:   cmp    $0xffd86efb,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
            0x00007f9ba2d800a6:   je     0x00007f9ba2d8026c
            0x00007f9ba2d800ac:   cmp    $0xffd86f0d,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37868})}
            0x00007f9ba2d800b2:   je     0x00007f9ba2d80208
   1.00%    0x00007f9ba2d800b8:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  38.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
  38.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   5.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   3.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   1.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   0.52%              kernel  [unknown] 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 994 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.87%  <...other 305 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 970 
   1.51%              kernel  [unknown] 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 994 
   0.09%                      <unknown> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.14%      jvmci, level 4
   1.51%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:17:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.007 ns/op
# Warmup Iteration   2: 5.941 ns/op
# Warmup Iteration   3: 5.940 ns/op
# Warmup Iteration   4: 5.940 ns/op
# Warmup Iteration   5: 5.940 ns/op
Iteration   1: 5.940 ns/op
Iteration   2: 5.940 ns/op
Iteration   3: 5.940 ns/op
Iteration   4: 5.940 ns/op
Iteration   5: 5.940 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  5.940 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.940, 5.940, 5.940), stdev = 0.001
  CI (99.9%): [5.940, 5.940] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 227383 total address lines.
Perf output processed (skipped 60.725 seconds):
 Column 1: cycles (51095 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 

            #           [sp+0x20]  (sp of caller)
            0x00007f0672d80fe0:   mov    0x8(%rsi),%r10d
            0x00007f0672d80fe4:   movabs $0x7f05f7000000,%r12
            0x00007f0672d80fee:   add    %r12,%r10
            0x00007f0672d80ff1:   xor    %r12,%r12
            0x00007f0672d80ff4:   cmp    %r10,%rax
            0x00007f0672d80ff7:   jne    0x00007f0672764080           ;   {runtime_call ic_miss_stub}
            0x00007f0672d80ffd:   data16 xchg %ax,%ax
          [Verified Entry Point]
            0x00007f0672d81000:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007f0672d81007:   sub    $0x18,%rsp
            0x00007f0672d8100b:   nop
            0x00007f0672d8100c:   cmpl   $0x1,0x20(%r15)
   0.01%    0x00007f0672d81014:   jne    0x00007f0672d81336
   0.00%    0x00007f0672d8101a:   mov    %rbp,0x10(%rsp)
            0x00007f0672d8101f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                      ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@0 (line 124)
            0x00007f0672d81022:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f0672d8135a
   0.02%    0x00007f0672d8102a:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
   0.00%    0x00007f0672d8102e:   mov    $0x0,%r8d
            0x00007f0672d81034:   mov    $0x0,%r11d
            0x00007f0672d8103a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
   2.36%    0x00007f0672d81040:   cmp    %r8d,%r10d
            0x00007f0672d81043:   jbe    0x00007f0672d812f9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   2.00%    0x00007f0672d81049:   mov    0x10(%rax,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  26.07%    0x00007f0672d8104e:   mov    %r8d,%ecx
   0.00%    0x00007f0672d81051:   inc    %ecx
   0.01%    0x00007f0672d81053:   cmp    $0xffd86f44,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a20})}
            0x00007f0672d8105a:   je     0x00007f0672d811c6
   5.98%    0x00007f0672d81060:   cmp    $0xffd86f0d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37868})}
            0x00007f0672d81067:   je     0x00007f0672d811d2
   1.34%    0x00007f0672d8106d:   cmp    $0xffd86f4d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a68})}
            0x00007f0672d81074:   je     0x00007f0672d811de
   7.44%    0x00007f0672d8107a:   nopw   0x0(%rax,%rax,1)
            0x00007f0672d81080:   cmp    $0xffd86f60,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b00})}
            0x00007f0672d81087:   je     0x00007f0672d811ea
   4.80%    0x00007f0672d8108d:   cmp    $0xffd86ed5,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
            0x00007f0672d81094:   je     0x00007f0672d81205
   0.50%    0x00007f0672d8109a:   nopw   0x0(%rax,%rax,1)
   1.72%    0x00007f0672d810a0:   cmp    $0xffd86efb,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
            0x00007f0672d810a7:   je     0x00007f0672d811f6
   0.00%    0x00007f0672d810ad:   cmp    $0xffd86ee7,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
            0x00007f0672d810b4:   je     0x00007f0672d8121c
   5.27%    0x00007f0672d810ba:   nopw   0x0(%rax,%rax,1)
   0.28%    0x00007f0672d810c0:   cmp    $0xffd86ef1,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37788})}
            0x00007f0672d810c7:   je     0x00007f0672d81228
   4.31%    0x00007f0672d810cd:   cmp    $0xffd86f16,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378b0})}
            0x00007f0672d810d4:   je     0x00007f0672d81210
   0.01%    0x00007f0672d810da:   nopw   0x0(%rax,%rax,1)
   2.31%    0x00007f0672d810e0:   cmp    $0xffd86f29,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37948})}
            0x00007f0672d810e7:   je     0x00007f0672d81240
   0.21%    0x00007f0672d810ed:   cmp    $0xffd86f32,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37990})}
            0x00007f0672d810f4:   je     0x00007f0672d81234
   1.63%    0x00007f0672d810fa:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f0672d81100:   cmp    $0xffd86f56,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37ab0})}
            0x00007f0672d81107:   je     0x00007f0672d81258
   3.45%    0x00007f0672d8110d:   cmp    $0xffd86f04,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
            0x00007f0672d81114:   je     0x00007f0672d8124c
   0.01%    0x00007f0672d8111a:   nopw   0x0(%rax,%rax,1)
   1.67%    0x00007f0672d81120:   cmp    $0xffd86ede,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
            0x00007f0672d81127:   je     0x00007f0672d81265
            0x00007f0672d8112d:   cmp    $0xffd86f20,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37900})}
            0x00007f0672d81134:   je     0x00007f0672d81271
   6.93%    0x00007f0672d8113a:   nopw   0x0(%rax,%rax,1)
            0x00007f0672d81140:   cmp    $0xffd86f3b,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379d8})}
            0x00007f0672d81147:   je     0x00007f0672d8127d
            0x00007f0672d8114d:   cmp    $0xffd86f7d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37be8})}
            0x00007f0672d81154:   je     0x00007f0672d81289
            0x00007f0672d8115a:   nopw   0x0(%rax,%rax,1)
   2.27%    0x00007f0672d81160:   cmp    $0xffd86f73,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b98})}
            0x00007f0672d81167:   je     0x00007f0672d81295
            0x00007f0672d8116d:   cmp    $0xffd86f6a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b50})}
            0x00007f0672d81174:   je     0x00007f0672d812b1
   3.93%    0x00007f0672d8117a:   nopw   0x0(%rax,%rax,1)
....................................................................................................
  78.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 

               0x00007f0672d8119a:   nopw   0x0(%rax,%rax,1)
   1.27%       0x00007f0672d811a0:   cmp    $0xffd86fa4,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37d20})}
          ╭    0x00007f0672d811a7:   je     0x00007f0672d812a5
          │    0x00007f0672d811ad:   cmp    $0xffd86fae,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37d70})}
          │╭   0x00007f0672d811b4:   jne    0x00007f0672d812d5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@300 (line 290)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d811ba:   lea    0x18(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d811be:   mov    %ecx,%r8d
   0.50%  ││   0x00007f0672d811c1:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@157 (line 268)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.27%  ││   0x00007f0672d811c6:   lea    0xd(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d811ca:   mov    %ecx,%r8d
          ││   0x00007f0672d811cd:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.25%  ││   0x00007f0672d811d2:   lea    0x7(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d811d6:   mov    %ecx,%r8d
          ││   0x00007f0672d811d9:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@170 (line 270)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.30%  ││   0x00007f0672d811de:   lea    0xe(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d811e2:   mov    %ecx,%r8d
          ││   0x00007f0672d811e5:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@196 (line 274)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d811ea:   lea    0x10(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d811ee:   mov    %ecx,%r8d
   0.54%  ││   0x00007f0672d811f1:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d811f6:   lea    0x5(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.26%  ││   0x00007f0672d811fa:   mov    %ecx,%r8d
          ││   0x00007f0672d811fd:   data16 xchg %ax,%ax
   0.00%  ││   0x00007f0672d81200:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%  ││   0x00007f0672d81205:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.24%  ││   0x00007f0672d81208:   mov    %ecx,%r8d
          ││   0x00007f0672d8120b:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.57%  ││   0x00007f0672d81210:   lea    0x8(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81214:   mov    %ecx,%r8d
          ││   0x00007f0672d81217:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.00%  ││   0x00007f0672d8121c:   lea    0x3(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.45%  ││   0x00007f0672d81220:   mov    %ecx,%r8d
          ││   0x00007f0672d81223:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.52%  ││   0x00007f0672d81228:   lea    0x4(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d8122c:   mov    %ecx,%r8d
   0.01%  ││   0x00007f0672d8122f:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.22%  ││   0x00007f0672d81234:   lea    0xb(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81238:   mov    %ecx,%r8d
   0.07%  ││   0x00007f0672d8123b:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d81240:   lea    0xa(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81244:   mov    %ecx,%r8d
          ││   0x00007f0672d81247:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.00%  ││   0x00007f0672d8124c:   lea    0x6(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.76%  ││   0x00007f0672d81250:   mov    %ecx,%r8d
          ││   0x00007f0672d81253:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@183 (line 272)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.27%  ││   0x00007f0672d81258:   lea    0xf(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d8125c:   mov    %ecx,%r8d
          ││   0x00007f0672d8125f:   nop
          ││   0x00007f0672d81260:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%  ││   0x00007f0672d81265:   lea    0x2(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81269:   mov    %ecx,%r8d
          ││   0x00007f0672d8126c:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d81271:   lea    0x9(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81275:   mov    %ecx,%r8d
   0.56%  ││   0x00007f0672d81278:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d8127d:   lea    0xc(%r11),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││   0x00007f0672d81281:   mov    %ecx,%r8d
   0.57%  ││   0x00007f0672d81284:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@235 (line 280)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d81289:   lea    0x13(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.78%  ││   0x00007f0672d8128d:   mov    %ecx,%r8d
          ││   0x00007f0672d81290:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@222 (line 278)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││   0x00007f0672d81295:   lea    0x12(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.24%  ││   0x00007f0672d81299:   mov    %ecx,%r8d
          ││   0x00007f0672d8129c:   nopl   0x0(%rax)
          ││   0x00007f0672d812a0:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@287 (line 288)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ↘│   0x00007f0672d812a5:   lea    0x17(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.62%   │   0x00007f0672d812a9:   mov    %ecx,%r8d
           │   0x00007f0672d812ac:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@209 (line 276)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │                                                             ;   {no_reloc}
           │   0x00007f0672d812b1:   lea    0x11(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
           │   0x00007f0672d812b5:   mov    %ecx,%r8d
   0.57%   │   0x00007f0672d812b8:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@261 (line 284)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │   0x00007f0672d812bd:   lea    0x15(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
           │   0x00007f0672d812c1:   mov    %ecx,%r8d
   0.47%   │   0x00007f0672d812c4:   jmp    0x00007f0672d81040           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@274 (line 286)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │   0x00007f0672d812c9:   lea    0x16(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.79%   │   0x00007f0672d812cd:   mov    %ecx,%r8d
           │   0x00007f0672d812d0:   jmp    0x00007f0672d81040
   0.75%   ↘   0x00007f0672d812d5:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f0672d812e0:   cmp    $0xffd86f87,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37c38})}
            ╭  0x00007f0672d812e7:   jne    0x00007f0672d81313           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@248 (line 282)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
            │  0x00007f0672d812ed:   lea    0x14(%r11),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
            │  0x00007f0672d812f1:   mov    %ecx,%r8d
   0.53%    │  0x00007f0672d812f4:   jmp    0x00007f0672d81040
   0.08%    │  0x00007f0672d812f9:   mov    %r11d,%eax
   0.00%    │  0x00007f0672d812fc:   mov    0x10(%rsp),%rbp
   0.09%    │  0x00007f0672d81301:   add    $0x18,%rsp
            │  0x00007f0672d81305:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f0672d8130c:   ja     0x00007f0672d81346
   0.01%    │  0x00007f0672d81312:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
            ↘  0x00007f0672d81313:   movl   $0xffffffed,0x484(%r15)      ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@300 (line 290)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
               0x00007f0672d8131e:   movq   $0x14,0x490(%r15)
               0x00007f0672d81329:   call   0x00007f067276a17a           ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f0672d8132e:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  11.33%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
  11.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   6.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   1.21%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 993 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.85%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 972 
   2.35%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 993 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%       hsdis-amd64.so  fetch_data 
   0.19%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.29%       jvmci, level 4
   2.35%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:15:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.770 ns/op
# Warmup Iteration   2: 1.753 ns/op
# Warmup Iteration   3: 1.752 ns/op
# Warmup Iteration   4: 1.751 ns/op
# Warmup Iteration   5: 1.752 ns/op
Iteration   1: 1.751 ns/op
Iteration   2: 1.751 ns/op
Iteration   3: 1.752 ns/op
Iteration   4: 1.752 ns/op
Iteration   5: 1.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  1.752 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.751, 1.752, 1.752), stdev = 0.001
  CI (99.9%): [1.751, 1.752] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 227757 total address lines.
Perf output processed (skipped 60.691 seconds):
 Column 1: cycles (50831 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 

            0x00007f92a2d7df2e:   mov    %ebx,%r9d
            0x00007f92a2d7df31:   jmp    0x00007f92a2d7de10
            0x00007f92a2d7df36:   lea    0x2(%r8),%r8d
            0x00007f92a2d7df3a:   mov    %ebx,%r9d
            0x00007f92a2d7df3d:   data16 xchg %ax,%ax
            0x00007f92a2d7df40:   jmp    0x00007f92a2d7de10
            0x00007f92a2d7df45:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f92a2d7df49:   mov    %ebx,%r9d
            0x00007f92a2d7df4c:   jmp    0x00007f92a2d7de10
   0.03%    0x00007f92a2d7df51:   lea    -0x4(%r10),%r11d
            0x00007f92a2d7df55:   data16 data16 nopw 0x0(%rax,%rax,1)
   7.46%    0x00007f92a2d7df60:   cmp    %r9d,%r11d
            0x00007f92a2d7df63:   jle    0x00007f92a2d7e420           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
            0x00007f92a2d7df69:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   1.36%    0x00007f92a2d7df6e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f92a2d7e6d0
  17.28%    0x00007f92a2d7df75:   cmp    $0x0,%ecx
            0x00007f92a2d7df78:   je     0x00007f92a2d7e074
   3.59%    0x00007f92a2d7df7e:   cmp    $0x1,%ecx
            0x00007f92a2d7df81:   je     0x00007f92a2d7e3c5
   0.68%    0x00007f92a2d7df87:   cmp    $0x2,%ecx
            0x00007f92a2d7df8a:   je     0x00007f92a2d7e40f
            0x00007f92a2d7df90:   cmp    $0x3,%ecx
            0x00007f92a2d7df93:   je     0x00007f92a2d7e61a
            0x00007f92a2d7df99:   cmp    $0x4,%ecx
            0x00007f92a2d7df9c:   nopl   0x0(%rax)
            0x00007f92a2d7dfa0:   je     0x00007f92a2d7e61a
            0x00007f92a2d7dfa6:   cmp    $0x5,%ecx
            0x00007f92a2d7dfa9:   je     0x00007f92a2d7e61a
            0x00007f92a2d7dfaf:   cmp    $0x6,%ecx
            0x00007f92a2d7dfb2:   je     0x00007f92a2d7e61a           ;   {no_reloc}
....................................................................................................
  30.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 

            0x00007f92a2d7e166:   cmp    $0x15,%ebx
            0x00007f92a2d7e169:   je     0x00007f92a2d7e5d4
            0x00007f92a2d7e16f:   cmp    $0x16,%ebx
            0x00007f92a2d7e172:   je     0x00007f92a2d7e5d4
            0x00007f92a2d7e178:   cmp    $0x17,%ebx
            0x00007f92a2d7e17b:   nopl   0x0(%rax,%rax,1)
            0x00007f92a2d7e180:   je     0x00007f92a2d7e5d4
            0x00007f92a2d7e186:   jmp    0x00007f92a2d7e5d4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.40%    0x00007f92a2d7e18b:   mov    $0x1,%ecx
   3.55%    0x00007f92a2d7e190:   mov    0x18(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   0.75%    0x00007f92a2d7e195:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f92a2d7e198:   lea    0x2(%r9),%ecx                ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   1.31%    0x00007f92a2d7e19c:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f92a2d7e716
   9.79%    0x00007f92a2d7e1a3:   cmp    $0x0,%ebx
            0x00007f92a2d7e1a6:   je     0x00007f92a2d7e29d
   2.49%    0x00007f92a2d7e1ac:   cmp    $0x1,%ebx
            0x00007f92a2d7e1af:   je     0x00007f92a2d7e3e5           ;   {no_reloc}
   0.74%    0x00007f92a2d7e1b5:   cmp    $0x2,%ebx
            0x00007f92a2d7e1b8:   je     0x00007f92a2d7e405
            0x00007f92a2d7e1be:   cmp    $0x3,%ebx
            0x00007f92a2d7e1c1:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e1c7:   cmp    $0x4,%ebx
            0x00007f92a2d7e1ca:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e1d0:   cmp    $0x5,%ebx
            0x00007f92a2d7e1d3:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e1d9:   cmp    $0x6,%ebx
            0x00007f92a2d7e1dc:   nopl   0x0(%rax)
            0x00007f92a2d7e1e0:   je     0x00007f92a2d7e5b1
....................................................................................................
  20.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 

            0x00007f92a2d7e278:   cmp    $0x15,%ebx
            0x00007f92a2d7e27b:   nopl   0x0(%rax,%rax,1)
            0x00007f92a2d7e280:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e286:   cmp    $0x16,%ebx
            0x00007f92a2d7e289:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e28f:   cmp    $0x17,%ebx
            0x00007f92a2d7e292:   je     0x00007f92a2d7e5b1
            0x00007f92a2d7e298:   jmp    0x00007f92a2d7e5b1           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.78%    0x00007f92a2d7e29d:   mov    $0x1,%ecx
   2.38%    0x00007f92a2d7e2a2:   mov    0x1c(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   0.00%    0x00007f92a2d7e2a7:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f92a2d7e2aa:   lea    0x3(%r9),%ecx                ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   2.82%    0x00007f92a2d7e2ae:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f92a2d7e739
                                                                      ;   {no_reloc}
   5.08%    0x00007f92a2d7e2b5:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
            0x00007f92a2d7e2b9:   cmp    $0x0,%ebx
   3.90%    0x00007f92a2d7e2bc:   nopl   0x0(%rax)
            0x00007f92a2d7e2c0:   je     0x00007f92a2d7e3bd
   3.53%    0x00007f92a2d7e2c6:   cmp    $0x1,%ebx
            0x00007f92a2d7e2c9:   je     0x00007f92a2d7e3d9
   0.14%    0x00007f92a2d7e2cf:   cmp    $0x2,%ebx
            0x00007f92a2d7e2d2:   je     0x00007f92a2d7e3f9
            0x00007f92a2d7e2d8:   cmp    $0x3,%ebx
            0x00007f92a2d7e2db:   nopl   0x0(%rax,%rax,1)
            0x00007f92a2d7e2e0:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e2e6:   cmp    $0x4,%ebx
            0x00007f92a2d7e2e9:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e2ef:   cmp    $0x5,%ebx
            0x00007f92a2d7e2f2:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e2f8:   cmp    $0x6,%ebx
            0x00007f92a2d7e2fb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  19.62%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 

            0x00007f92a2d7e04f:   cmp    $0x15,%ecx
            0x00007f92a2d7e052:   je     0x00007f92a2d7e61a
            0x00007f92a2d7e058:   cmp    $0x16,%ecx
            0x00007f92a2d7e05b:   nopl   0x0(%rax,%rax,1)
            0x00007f92a2d7e060:   je     0x00007f92a2d7e61a
            0x00007f92a2d7e066:   cmp    $0x17,%ecx
            0x00007f92a2d7e069:   je     0x00007f92a2d7e61a
            0x00007f92a2d7e06f:   jmp    0x00007f92a2d7e61a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.81%    0x00007f92a2d7e074:   mov    $0x1,%ecx
   3.57%    0x00007f92a2d7e079:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
            0x00007f92a2d7e07e:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f92a2d7e081:   mov    %r9d,%ecx
   1.90%    0x00007f92a2d7e084:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   3.57%    0x00007f92a2d7e086:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f92a2d7e6f3
   0.99%    0x00007f92a2d7e08d:   cmp    $0x0,%ebx
            0x00007f92a2d7e090:   je     0x00007f92a2d7e18b
   1.93%    0x00007f92a2d7e096:   cmp    $0x1,%ebx
            0x00007f92a2d7e099:   je     0x00007f92a2d7e3cf
   1.01%    0x00007f92a2d7e09f:   cmp    $0x2,%ebx
            0x00007f92a2d7e0a2:   je     0x00007f92a2d7e3ef
            0x00007f92a2d7e0a8:   cmp    $0x3,%ebx
            0x00007f92a2d7e0ab:   je     0x00007f92a2d7e5d4
            0x00007f92a2d7e0b1:   cmp    $0x4,%ebx
            0x00007f92a2d7e0b4:   je     0x00007f92a2d7e5d4           ;   {no_reloc}
            0x00007f92a2d7e0ba:   cmp    $0x5,%ebx
            0x00007f92a2d7e0bd:   data16 xchg %ax,%ax
            0x00007f92a2d7e0c0:   je     0x00007f92a2d7e5d4
            0x00007f92a2d7e0c6:   cmp    $0x6,%ebx
            0x00007f92a2d7e0c9:   je     0x00007f92a2d7e5d4
....................................................................................................
  14.77%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 

            0x00007f92a2d7e398:   cmp    $0x15,%ebx
            0x00007f92a2d7e39b:   nopl   0x0(%rax,%rax,1)
            0x00007f92a2d7e3a0:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e3a6:   cmp    $0x16,%ebx
            0x00007f92a2d7e3a9:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e3af:   cmp    $0x17,%ebx                   ;   {no_reloc}
            0x00007f92a2d7e3b2:   je     0x00007f92a2d7e58e
            0x00007f92a2d7e3b8:   jmp    0x00007f92a2d7e58e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.81%    0x00007f92a2d7e3bd:   inc    %r8d
            0x00007f92a2d7e3c0:   jmp    0x00007f92a2d7df60
   1.08%    0x00007f92a2d7e3c5:   mov    $0x2,%ecx
   0.02%    0x00007f92a2d7e3ca:   jmp    0x00007f92a2d7e079
   1.50%    0x00007f92a2d7e3cf:   mov    $0x2,%ecx
            0x00007f92a2d7e3d4:   jmp    0x00007f92a2d7e190
   0.00%    0x00007f92a2d7e3d9:   lea    0x2(%r8),%r8d
            0x00007f92a2d7e3dd:   data16 xchg %ax,%ax
            0x00007f92a2d7e3e0:   jmp    0x00007f92a2d7df60
   0.32%    0x00007f92a2d7e3e5:   mov    $0x2,%ecx
   1.03%    0x00007f92a2d7e3ea:   jmp    0x00007f92a2d7e2a2
   0.70%    0x00007f92a2d7e3ef:   mov    $0x3,%ecx
            0x00007f92a2d7e3f4:   jmp    0x00007f92a2d7e190
            0x00007f92a2d7e3f9:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f92a2d7e3fd:   data16 xchg %ax,%ax
   1.88%    0x00007f92a2d7e400:   jmp    0x00007f92a2d7df60
   0.77%    0x00007f92a2d7e405:   mov    $0x3,%ecx
            0x00007f92a2d7e40a:   jmp    0x00007f92a2d7e2a2
   1.50%    0x00007f92a2d7e40f:   mov    $0x3,%ecx
            0x00007f92a2d7e414:   jmp    0x00007f92a2d7e079
            0x00007f92a2d7e419:   nopl   0x0(%rax)
   0.30%    0x00007f92a2d7e420:   cmp    %r9d,%r10d
            0x00007f92a2d7e423:   jbe    0x00007f92a2d7e568           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.12%    0x00007f92a2d7e429:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.11%    0x00007f92a2d7e42e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f92a2d7e75c
   0.14%    0x00007f92a2d7e436:   mov    %r9d,%ecx
   0.02%    0x00007f92a2d7e439:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
            0x00007f92a2d7e43b:   cmp    $0x0,%r11d
   0.06%    0x00007f92a2d7e43f:   nop
   0.01%    0x00007f92a2d7e440:   je     0x00007f92a2d7e53f
   0.04%    0x00007f92a2d7e446:   cmp    $0x1,%r11d
            0x00007f92a2d7e44a:   je     0x00007f92a2d7e54a
            0x00007f92a2d7e450:   cmp    $0x2,%r11d
            0x00007f92a2d7e454:   je     0x00007f92a2d7e559
            0x00007f92a2d7e45a:   cmp    $0x3,%r11d
            0x00007f92a2d7e45e:   xchg   %ax,%ax
            0x00007f92a2d7e460:   je     0x00007f92a2d7e5f7
            0x00007f92a2d7e466:   cmp    $0x4,%r11d
            0x00007f92a2d7e46a:   je     0x00007f92a2d7e5f7
            0x00007f92a2d7e470:   cmp    $0x5,%r11d
            0x00007f92a2d7e474:   je     0x00007f92a2d7e5f7
....................................................................................................
  11.41%  <total for region 5>

....[Hottest Regions]...............................................................................
  30.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
  20.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
  19.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
  14.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
  11.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
   0.81%              kernel  [unknown] 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 986 
   0.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
   0.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.39%  <...other 421 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 962 
   2.48%              kernel  [unknown] 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 986 
   0.09%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  jio_print 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.11%      jvmci, level 4
   2.48%              kernel
   0.14%           libjvm.so
   0.13%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-2129094.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:13:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.107 ns/op
# Warmup Iteration   2: 2.126 ns/op
# Warmup Iteration   3: 2.119 ns/op
# Warmup Iteration   4: 2.117 ns/op
# Warmup Iteration   5: 2.113 ns/op
Iteration   1: 2.113 ns/op
Iteration   2: 2.117 ns/op
Iteration   3: 2.113 ns/op
Iteration   4: 2.113 ns/op
Iteration   5: 2.116 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  2.114 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (2.113, 2.114, 2.117), stdev = 0.002
  CI (99.9%): [2.107, 2.122] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 224063 total address lines.
Perf output processed (skipped 60.573 seconds):
 Column 1: cycles (50544 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

              0x00007f155ad7cef1:   lea    0x4(%r8),%r8d
              0x00007f155ad7cef5:   mov    %ebx,%r9d
              0x00007f155ad7cef8:   jmp    0x00007f155ad7cd90
              0x00007f155ad7cefd:   lea    0x6(%r8),%r8d
              0x00007f155ad7cf01:   mov    %ebx,%r9d
              0x00007f155ad7cf04:   jmp    0x00007f155ad7cd90
              0x00007f155ad7cf09:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
              0x00007f155ad7cf0d:   mov    %ebx,%r9d
              0x00007f155ad7cf10:   jmp    0x00007f155ad7cd90
   0.03%      0x00007f155ad7cf15:   lea    -0x2(%r10),%r11d
              0x00007f155ad7cf19:   nopl   0x0(%rax)
  14.76%      0x00007f155ad7cf20:   cmp    %r9d,%r11d
              0x00007f155ad7cf23:   jle    0x00007f155ad7d220           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.00%      0x00007f155ad7cf29:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.02%      0x00007f155ad7cf2e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f155ad7d4e4
  22.98%      0x00007f155ad7cf35:   cmp    $0x3,%ecx                    ;   {no_reloc}
          ╭   0x00007f155ad7cf38:   jge    0x00007f155ad7cf5e
   2.93%  │   0x00007f155ad7cf3e:   cmp    $0x2,%ecx
          │   0x00007f155ad7cf41:   jge    0x00007f155ad7d1b9
   1.50%  │   0x00007f155ad7cf47:   cmp    $0x0,%ecx
          │   0x00007f155ad7cf4a:   je     0x00007f155ad7d19d
   1.57%  │   0x00007f155ad7cf50:   cmp    $0x1,%ecx
          │   0x00007f155ad7cf53:   je     0x00007f155ad7d054
          │   0x00007f155ad7cf59:   jmp    0x00007f155ad7d434
   5.94%  ↘   0x00007f155ad7cf5e:   cmp    $0x5,%ecx
           ╭  0x00007f155ad7cf61:   jge    0x00007f155ad7cf75
   0.00%   │  0x00007f155ad7cf67:   cmp    $0x3,%ecx
           │  0x00007f155ad7cf6a:   je     0x00007f155ad7d1af
           │  0x00007f155ad7cf70:   jmp    0x00007f155ad7d1d7
   3.07%   ↘  0x00007f155ad7cf75:   cmp    $0x5,%ecx
              0x00007f155ad7cf78:   jle    0x00007f155ad7d1e5
              0x00007f155ad7cf7e:   cmp    $0xf,%ecx
              0x00007f155ad7cf81:   jge    0x00007f155ad7cfeb
              0x00007f155ad7cf87:   cmp    $0xb,%ecx
              0x00007f155ad7cf8a:   jge    0x00007f155ad7cfc5
              0x00007f155ad7cf90:   cmp    $0x9,%ecx
              0x00007f155ad7cf93:   jge    0x00007f155ad7cfb4
              0x00007f155ad7cf99:   cmp    $0x8,%ecx
              0x00007f155ad7cf9c:   nopl   0x0(%rax)
              0x00007f155ad7cfa0:   jge    0x00007f155ad7d434
....................................................................................................
  52.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

              0x00007f155ad7d031:   je     0x00007f155ad7d434           ;   {no_reloc}
              0x00007f155ad7d037:   jmp    0x00007f155ad7d434
              0x00007f155ad7d03c:   cmp    $0x16,%ecx
              0x00007f155ad7d03f:   nop
              0x00007f155ad7d040:   je     0x00007f155ad7d434
              0x00007f155ad7d046:   cmp    $0x17,%ecx
              0x00007f155ad7d049:   je     0x00007f155ad7d434
              0x00007f155ad7d04f:   jmp    0x00007f155ad7d434           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.00%      0x00007f155ad7d054:   mov    $0x2,%ecx
   5.98%      0x00007f155ad7d059:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   1.28%      0x00007f155ad7d05e:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   1.56%      0x00007f155ad7d061:   mov    %r9d,%ecx
   0.01%      0x00007f155ad7d064:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   5.98%      0x00007f155ad7d066:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f155ad7d507
   5.18%      0x00007f155ad7d06d:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.04%      0x00007f155ad7d071:   cmp    $0x3,%ebx
          ╭   0x00007f155ad7d074:   jge    0x00007f155ad7d09d
   4.52%  │   0x00007f155ad7d07a:   cmp    $0x2,%ebx
   1.54%  │   0x00007f155ad7d07d:   data16 xchg %ax,%ax
          │   0x00007f155ad7d080:   jge    0x00007f155ad7d1ce
   1.55%  │   0x00007f155ad7d086:   cmp    $0x0,%ebx
          │   0x00007f155ad7d089:   je     0x00007f155ad7d1a7
          │   0x00007f155ad7d08f:   cmp    $0x1,%ebx
          │   0x00007f155ad7d092:   je     0x00007f155ad7d194
          │   0x00007f155ad7d098:   jmp    0x00007f155ad7d3ee
   2.98%  ↘   0x00007f155ad7d09d:   cmp    $0x5,%ebx
           ╭  0x00007f155ad7d0a0:   jge    0x00007f155ad7d0b4
   0.01%   │  0x00007f155ad7d0a6:   cmp    $0x3,%ebx
           │  0x00007f155ad7d0a9:   je     0x00007f155ad7d1c5
   3.05%   │  0x00007f155ad7d0af:   jmp    0x00007f155ad7d1ef
           ↘  0x00007f155ad7d0b4:   cmp    $0x5,%ebx
              0x00007f155ad7d0b7:   jle    0x00007f155ad7d1f8
              0x00007f155ad7d0bd:   cmp    $0xf,%ebx
              0x00007f155ad7d0c0:   jge    0x00007f155ad7d12b
              0x00007f155ad7d0c6:   cmp    $0xb,%ebx
              0x00007f155ad7d0c9:   jge    0x00007f155ad7d105
              0x00007f155ad7d0cf:   cmp    $0x9,%ebx
              0x00007f155ad7d0d2:   jge    0x00007f155ad7d0f4
              0x00007f155ad7d0d8:   cmp    $0x8,%ebx
              0x00007f155ad7d0db:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  33.68%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

            0x00007f155ad7d18f:   jmp    0x00007f155ad7d3ee           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
            0x00007f155ad7d194:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f155ad7d198:   jmp    0x00007f155ad7cf20
            0x00007f155ad7d19d:   mov    $0x1,%ecx
            0x00007f155ad7d1a2:   jmp    0x00007f155ad7d059           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.00%    0x00007f155ad7d1a7:   inc    %r8d
   1.55%    0x00007f155ad7d1aa:   jmp    0x00007f155ad7cf20
   3.09%    0x00007f155ad7d1af:   mov    $0x4,%ecx
            0x00007f155ad7d1b4:   jmp    0x00007f155ad7d059
            0x00007f155ad7d1b9:   mov    $0x3,%ecx
            0x00007f155ad7d1be:   xchg   %ax,%ax
            0x00007f155ad7d1c0:   jmp    0x00007f155ad7d059
            0x00007f155ad7d1c5:   lea    0x4(%r8),%r8d
            0x00007f155ad7d1c9:   jmp    0x00007f155ad7cf20
   2.92%    0x00007f155ad7d1ce:   lea    0x3(%r8),%r8d
   0.00%    0x00007f155ad7d1d2:   jmp    0x00007f155ad7cf20
            0x00007f155ad7d1d7:   mov    $0x5,%ecx
            0x00007f155ad7d1dc:   nopl   0x0(%rax)
            0x00007f155ad7d1e0:   jmp    0x00007f155ad7d059
   2.85%    0x00007f155ad7d1e5:   mov    $0x6,%ecx
            0x00007f155ad7d1ea:   jmp    0x00007f155ad7d059
            0x00007f155ad7d1ef:   lea    0x5(%r8),%r8d
            0x00007f155ad7d1f3:   jmp    0x00007f155ad7cf20
            0x00007f155ad7d1f8:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007f155ad7d1fc:   nopl   0x0(%rax)
            0x00007f155ad7d200:   jmp    0x00007f155ad7cf20
            0x00007f155ad7d205:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f155ad7d210:   data16 data16 xchg %ax,%ax
            0x00007f155ad7d214:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  10.42%  <total for region 3>

....[Hottest Regions]...............................................................................
  52.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
  33.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
  10.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.39%               kernel  [unknown] 
   0.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 994 
   0.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.11%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.02%               kernel  [unknown] 
   1.13%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   1.62%               kernel  [unknown] 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 994 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%       jvmci, level 4
   1.62%               kernel
   0.14%            libjvm.so
   0.12%         libc-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:11:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.528 ns/op
# Warmup Iteration   2: 2.489 ns/op
# Warmup Iteration   3: 2.526 ns/op
# Warmup Iteration   4: 2.490 ns/op
# Warmup Iteration   5: 2.514 ns/op
Iteration   1: 2.520 ns/op
Iteration   2: 2.511 ns/op
Iteration   3: 2.485 ns/op
Iteration   4: 2.476 ns/op
Iteration   5: 2.495 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  2.497 ±(99.9%) 0.069 ns/op [Average]
  (min, avg, max) = (2.476, 2.497, 2.520), stdev = 0.018
  CI (99.9%): [2.428, 2.567] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 222314 total address lines.
Perf output processed (skipped 60.425 seconds):
 Column 1: cycles (50559 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 

                 0x00007fb74ed7f4b1:   lea    0xa(%r8),%r8d
                 0x00007fb74ed7f4b5:   mov    %ebx,%r9d                    ;   {no_reloc}
                 0x00007fb74ed7f4b8:   jmp    0x00007fb74ed7f310
                 0x00007fb74ed7f4bd:   lea    0x8(%r8),%r8d
                 0x00007fb74ed7f4c1:   mov    %ebx,%r9d
                 0x00007fb74ed7f4c4:   jmp    0x00007fb74ed7f310
                 0x00007fb74ed7f4c9:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
                 0x00007fb74ed7f4cd:   mov    %ebx,%r9d
                 0x00007fb74ed7f4d0:   jmp    0x00007fb74ed7f310
   0.02%         0x00007fb74ed7f4d5:   lea    -0x2(%r10),%r11d
                 0x00007fb74ed7f4d9:   nopl   0x0(%rax)
  14.94%         0x00007fb74ed7f4e0:   cmp    %r9d,%r11d
                 0x00007fb74ed7f4e3:   jle    0x00007fb74ed7f840           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.16%         0x00007fb74ed7f4e9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.15%         0x00007fb74ed7f4ee:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fb74ed7fb57
  12.21%         0x00007fb74ed7f4f5:   cmp    $0x6,%ecx
          ╭      0x00007fb74ed7f4f8:   jge    0x00007fb74ed7f545
   3.84%  │      0x00007fb74ed7f4fe:   cmp    $0x3,%ecx
          │╭     0x00007fb74ed7f501:   jge    0x00007fb74ed7f52b
   0.04%  ││     0x00007fb74ed7f507:   cmp    $0x2,%ecx
          ││     0x00007fb74ed7f50a:   jge    0x00007fb74ed7f772
   1.22%  ││     0x00007fb74ed7f510:   cmp    $0x0,%ecx
          ││     0x00007fb74ed7f513:   je     0x00007fb74ed7f768
   0.38%  ││     0x00007fb74ed7f519:   cmp    $0x1,%ecx
          ││     0x00007fb74ed7f51c:   nopl   0x0(%rax)
          ││     0x00007fb74ed7f520:   je     0x00007fb74ed7f77c
          ││     0x00007fb74ed7f526:   jmp    0x00007fb74ed7faa5
   0.06%  │↘     0x00007fb74ed7f52b:   cmp    $0x5,%ecx
          │      0x00007fb74ed7f52e:   jge    0x00007fb74ed7f7d3
   1.19%  │      0x00007fb74ed7f534:   cmp    $0x3,%ecx
          │      0x00007fb74ed7f537:   je     0x00007fb74ed7f60b
          │      0x00007fb74ed7f53d:   data16 xchg %ax,%ax
          │      0x00007fb74ed7f540:   jmp    0x00007fb74ed7f7c9
   3.85%  ↘      0x00007fb74ed7f545:   cmp    $0xa,%ecx
            ╭    0x00007fb74ed7f548:   jge    0x00007fb74ed7f573
   0.00%    │    0x00007fb74ed7f54e:   cmp    $0x8,%ecx
            │╭   0x00007fb74ed7f551:   jge    0x00007fb74ed7f565
   1.33%    ││   0x00007fb74ed7f557:   cmp    $0x6,%ecx
            ││   0x00007fb74ed7f55a:   je     0x00007fb74ed7f805
   1.19%    ││   0x00007fb74ed7f560:   jmp    0x00007fb74ed7f7f1
   1.20%    │↘   0x00007fb74ed7f565:   cmp    $0x8,%ecx
            │    0x00007fb74ed7f568:   je     0x00007fb74ed7f7fb
            │    0x00007fb74ed7f56e:   jmp    0x00007fb74ed7f7e7
   1.28%    ↘    0x00007fb74ed7f573:   cmp    $0xc,%ecx
              ╭  0x00007fb74ed7f576:   jge    0x00007fb74ed7f58b
              │  0x00007fb74ed7f57c:   cmp    $0xa,%ecx
              │  0x00007fb74ed7f57f:   nop
              │  0x00007fb74ed7f580:   je     0x00007fb74ed7f818
   1.81%      │  0x00007fb74ed7f586:   jmp    0x00007fb74ed7f7dd
              ↘  0x00007fb74ed7f58b:   cmp    $0x12,%ecx
                 0x00007fb74ed7f58e:   jge    0x00007fb74ed7f5cb
                 0x00007fb74ed7f594:   cmp    $0xf,%ecx
                 0x00007fb74ed7f597:   jge    0x00007fb74ed7f5b4
                 0x00007fb74ed7f59d:   cmp    $0xe,%ecx
                 0x00007fb74ed7f5a0:   jge    0x00007fb74ed7faa5
                 0x00007fb74ed7f5a6:   cmp    $0xc,%ecx
                 0x00007fb74ed7f5a9:   je     0x00007fb74ed7faa5
                 0x00007fb74ed7f5af:   jmp    0x00007fb74ed7faa5
                 0x00007fb74ed7f5b4:   cmp    $0x11,%ecx                   ;   {no_reloc}
....................................................................................................
  44.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 

                 0x00007fb74ed7f5e6:   jmp    0x00007fb74ed7faa5
                 0x00007fb74ed7f5eb:   cmp    $0x17,%ecx
                 0x00007fb74ed7f5ee:   jg     0x00007fb74ed7faa5
                 0x00007fb74ed7f5f4:   cmp    $0x17,%ecx
                 0x00007fb74ed7f5f7:   jge    0x00007fb74ed7faa5
                 0x00007fb74ed7f5fd:   cmp    $0x15,%ecx
                 0x00007fb74ed7f600:   je     0x00007fb74ed7faa5
                 0x00007fb74ed7f606:   jmp    0x00007fb74ed7faa5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.03%         0x00007fb74ed7f60b:   mov    $0x4,%ecx
   6.23%         0x00007fb74ed7f610:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   2.01%         0x00007fb74ed7f615:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   1.17%         0x00007fb74ed7f618:   mov    %r9d,%ecx
   0.28%         0x00007fb74ed7f61b:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   5.13%         0x00007fb74ed7f61d:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007fb74ed7fb7a
  13.96%         0x00007fb74ed7f624:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.71%         0x00007fb74ed7f628:   cmp    $0x6,%ebx
          ╭      0x00007fb74ed7f62b:   jge    0x00007fb74ed7f674
   3.29%  │      0x00007fb74ed7f631:   cmp    $0x3,%ebx
          │╭     0x00007fb74ed7f634:   jge    0x00007fb74ed7f65d
   0.56%  ││     0x00007fb74ed7f63a:   cmp    $0x2,%ebx
          ││     0x00007fb74ed7f63d:   data16 xchg %ax,%ax
          ││     0x00007fb74ed7f640:   jge    0x00007fb74ed7f75f
   1.02%  ││     0x00007fb74ed7f646:   cmp    $0x0,%ebx
          ││     0x00007fb74ed7f649:   je     0x00007fb74ed7f74e
          ││     0x00007fb74ed7f64f:   cmp    $0x1,%ebx
          ││     0x00007fb74ed7f652:   je     0x00007fb74ed7f756
          ││     0x00007fb74ed7f658:   jmp    0x00007fb74ed7fac8
   0.42%  │↘     0x00007fb74ed7f65d:   cmp    $0x5,%ebx
          │      0x00007fb74ed7f660:   jge    0x00007fb74ed7f7c0
   0.03%  │      0x00007fb74ed7f666:   cmp    $0x3,%ebx
          │      0x00007fb74ed7f669:   je     0x00007fb74ed7f745
   0.70%  │      0x00007fb74ed7f66f:   jmp    0x00007fb74ed7f7b7
   3.36%  ↘      0x00007fb74ed7f674:   cmp    $0xa,%ebx
            ╭    0x00007fb74ed7f677:   jge    0x00007fb74ed7f6a5
   1.03%    │    0x00007fb74ed7f67d:   cmp    $0x8,%ebx
            │╭   0x00007fb74ed7f680:   jge    0x00007fb74ed7f694
   0.03%    ││   0x00007fb74ed7f686:   cmp    $0x6,%ebx
            ││   0x00007fb74ed7f689:   je     0x00007fb74ed7f7ae
            ││   0x00007fb74ed7f68f:   jmp    0x00007fb74ed7f78f
   1.23%    │↘   0x00007fb74ed7f694:   cmp    $0x8,%ebx
            │    0x00007fb74ed7f697:   je     0x00007fb74ed7f798
            │    0x00007fb74ed7f69d:   data16 xchg %ax,%ax
            │    0x00007fb74ed7f6a0:   jmp    0x00007fb74ed7f7a5
   1.18%    ↘    0x00007fb74ed7f6a5:   cmp    $0xc,%ebx
              ╭  0x00007fb74ed7f6a8:   jge    0x00007fb74ed7f6bc
              │  0x00007fb74ed7f6ae:   cmp    $0xa,%ebx
              │  0x00007fb74ed7f6b1:   je     0x00007fb74ed7f80f           ;   {no_reloc}
              │  0x00007fb74ed7f6b7:   jmp    0x00007fb74ed7f786
              ↘  0x00007fb74ed7f6bc:   cmp    $0x12,%ebx
                 0x00007fb74ed7f6bf:   nop
                 0x00007fb74ed7f6c0:   jge    0x00007fb74ed7f705
                 0x00007fb74ed7f6c6:   cmp    $0xf,%ebx
                 0x00007fb74ed7f6c9:   jge    0x00007fb74ed7f6eb
                 0x00007fb74ed7f6cf:   cmp    $0xe,%ebx
....................................................................................................
  42.37%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 

            0x00007fb74ed7f737:   cmp    $0x15,%ebx
            0x00007fb74ed7f73a:   je     0x00007fb74ed7fac8
            0x00007fb74ed7f740:   jmp    0x00007fb74ed7fac8           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
            0x00007fb74ed7f745:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007fb74ed7f749:   jmp    0x00007fb74ed7f4e0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.28%    0x00007fb74ed7f74e:   inc    %r8d
            0x00007fb74ed7f751:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f756:   lea    0x2(%r8),%r8d
            0x00007fb74ed7f75a:   jmp    0x00007fb74ed7f4e0
   1.20%    0x00007fb74ed7f75f:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.01%    0x00007fb74ed7f763:   jmp    0x00007fb74ed7f4e0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
            0x00007fb74ed7f768:   mov    $0x1,%ecx
            0x00007fb74ed7f76d:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f772:   mov    $0x3,%ecx
            0x00007fb74ed7f777:   jmp    0x00007fb74ed7f610
   1.10%    0x00007fb74ed7f77c:   mov    $0x2,%ecx
   0.18%    0x00007fb74ed7f781:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f786:   lea    0xc(%r8),%r8d
            0x00007fb74ed7f78a:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f78f:   lea    0x8(%r8),%r8d
            0x00007fb74ed7f793:   jmp    0x00007fb74ed7f4e0
   1.32%    0x00007fb74ed7f798:   lea    0x9(%r8),%r8d
            0x00007fb74ed7f79c:   nopl   0x0(%rax)
            0x00007fb74ed7f7a0:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f7a5:   lea    0xa(%r8),%r8d
            0x00007fb74ed7f7a9:   jmp    0x00007fb74ed7f4e0
   1.12%    0x00007fb74ed7f7ae:   lea    0x7(%r8),%r8d
   0.03%    0x00007fb74ed7f7b2:   jmp    0x00007fb74ed7f4e0           ;   {no_reloc}
   0.55%    0x00007fb74ed7f7b7:   lea    0x5(%r8),%r8d
            0x00007fb74ed7f7bb:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f7c0:   lea    0x6(%r8),%r8d
            0x00007fb74ed7f7c4:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f7c9:   mov    $0x5,%ecx
            0x00007fb74ed7f7ce:   jmp    0x00007fb74ed7f610
   1.21%    0x00007fb74ed7f7d3:   mov    $0x6,%ecx
            0x00007fb74ed7f7d8:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f7dd:   mov    $0xc,%ecx
            0x00007fb74ed7f7e2:   jmp    0x00007fb74ed7f610
   1.71%    0x00007fb74ed7f7e7:   mov    $0xa,%ecx
            0x00007fb74ed7f7ec:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f7f1:   mov    $0x8,%ecx
   0.00%    0x00007fb74ed7f7f6:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f7fb:   mov    $0x9,%ecx
            0x00007fb74ed7f800:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f805:   mov    $0x7,%ecx
            0x00007fb74ed7f80a:   jmp    0x00007fb74ed7f610
   1.35%    0x00007fb74ed7f80f:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007fb74ed7f813:   jmp    0x00007fb74ed7f4e0
            0x00007fb74ed7f818:   mov    $0xb,%ecx
            0x00007fb74ed7f81d:   data16 xchg %ax,%ax
            0x00007fb74ed7f820:   jmp    0x00007fb74ed7f610
            0x00007fb74ed7f825:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fb74ed7f830:   data16 data16 xchg %ax,%ax
            0x00007fb74ed7f834:   nopl   0x0(%rax,%rax,1)
            0x00007fb74ed7f83c:   data16 data16 xchg %ax,%ax
   0.14%    0x00007fb74ed7f840:   cmp    %r9d,%r10d
....................................................................................................
  10.07%  <total for region 3>

....[Hottest Regions]...............................................................................
  44.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
  42.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
  10.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   0.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 983 
   0.22%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.98%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 960 
   1.30%              kernel  [unknown] 
   0.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 983 
   0.07%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%      jvmci, level 4
   1.30%              kernel
   0.12%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2129225.map
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.761 ns/op
# Warmup Iteration   2: 14.589 ns/op
# Warmup Iteration   3: 14.570 ns/op
# Warmup Iteration   4: 14.602 ns/op
# Warmup Iteration   5: 14.576 ns/op
Iteration   1: 14.575 ns/op
Iteration   2: 14.601 ns/op
Iteration   3: 14.565 ns/op
Iteration   4: 14.610 ns/op
Iteration   5: 14.596 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  14.589 ±(99.9%) 0.072 ns/op [Average]
  (min, avg, max) = (14.565, 14.589, 14.610), stdev = 0.019
  CI (99.9%): [14.518, 14.661] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 229627 total address lines.
Perf output processed (skipped 60.743 seconds):
 Column 1: cycles (50598 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

   1.22%    0x00007eff6ed8127c:   lea    0x3(%r8),%r8d
   0.68%    0x00007eff6ed81280:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81285:   lea    0x2(%r8),%r8d
            0x00007eff6ed81289:   jmp    0x00007eff6ed810e0
            0x00007eff6ed8128e:   lea    0x10(%r8),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007eff6ed81292:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81297:   mov    $0x1,%ecx
            0x00007eff6ed8129c:   nopl   0x0(%rax)
            0x00007eff6ed812a0:   jmp    0x00007eff6ed81175
   1.26%    0x00007eff6ed812a5:   mov    $0x4,%ecx
   0.67%    0x00007eff6ed812aa:   jmp    0x00007eff6ed81175           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.71%    0x00007eff6ed812af:   inc    %r8d
   0.70%    0x00007eff6ed812b2:   jmp    0x00007eff6ed810e0           ;   {no_reloc}
   1.64%    0x00007eff6ed812b7:   lea    0x9(%r8),%r8d
   0.64%    0x00007eff6ed812bb:   jmp    0x00007eff6ed810e0
            0x00007eff6ed812c0:   lea    0x8(%r8),%r8d
            0x00007eff6ed812c4:   jmp    0x00007eff6ed810e0
   1.44%    0x00007eff6ed812c9:   lea    0x7(%r8),%r8d
   0.62%    0x00007eff6ed812cd:   jmp    0x00007eff6ed810e0
            0x00007eff6ed812d2:   mov    $0x3,%ecx
            0x00007eff6ed812d7:   jmp    0x00007eff6ed81175
            0x00007eff6ed812dc:   mov    $0x9,%ecx
            0x00007eff6ed812e1:   jmp    0x00007eff6ed81175
   1.26%    0x00007eff6ed812e6:   mov    $0x8,%ecx
   0.66%    0x00007eff6ed812eb:   jmp    0x00007eff6ed81175
   1.57%    0x00007eff6ed812f0:   lea    0xf(%r8),%r8d
   0.70%    0x00007eff6ed812f4:   jmp    0x00007eff6ed810e0
   1.23%    0x00007eff6ed812f9:   mov    $0x2,%ecx
   0.71%    0x00007eff6ed812fe:   xchg   %ax,%ax
            0x00007eff6ed81300:   jmp    0x00007eff6ed81175
   1.27%    0x00007eff6ed81305:   mov    $0x6,%ecx
   0.70%    0x00007eff6ed8130a:   jmp    0x00007eff6ed81175
            0x00007eff6ed8130f:   mov    $0x7,%ecx
            0x00007eff6ed81314:   jmp    0x00007eff6ed81175
            0x00007eff6ed81319:   mov    $0xf,%ecx
            0x00007eff6ed8131e:   xchg   %ax,%ax
            0x00007eff6ed81320:   jmp    0x00007eff6ed81175
   1.24%    0x00007eff6ed81325:   mov    $0x10,%ecx
   0.71%    0x00007eff6ed8132a:   jmp    0x00007eff6ed81175
            0x00007eff6ed8132f:   lea    0x6(%r8),%r8d
            0x00007eff6ed81333:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81338:   lea    0x18(%r8),%r8d
            0x00007eff6ed8133c:   nopl   0x0(%rax)
            0x00007eff6ed81340:   jmp    0x00007eff6ed810e0
   1.61%    0x00007eff6ed81345:   lea    0x15(%r8),%r8d
   0.62%    0x00007eff6ed81349:   jmp    0x00007eff6ed810e0
            0x00007eff6ed8134e:   lea    0x12(%r8),%r8d
            0x00007eff6ed81352:   jmp    0x00007eff6ed810e0
   1.18%    0x00007eff6ed81357:   mov    $0x12,%ecx
   0.62%    0x00007eff6ed8135c:   nopl   0x0(%rax)
            0x00007eff6ed81360:   jmp    0x00007eff6ed81175
            0x00007eff6ed81365:   lea    0x14(%r8),%r8d
            0x00007eff6ed81369:   jmp    0x00007eff6ed810e0
            0x00007eff6ed8136e:   mov    $0x13,%ecx
            0x00007eff6ed81373:   jmp    0x00007eff6ed81175
   1.18%    0x00007eff6ed81378:   lea    0x11(%r8),%r8d
   0.78%    0x00007eff6ed8137c:   nopl   0x0(%rax)
            0x00007eff6ed81380:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81385:   mov    $0x17,%ecx
            0x00007eff6ed8138a:   jmp    0x00007eff6ed81175
   1.74%    0x00007eff6ed8138f:   lea    0x17(%r8),%r8d
   0.62%    0x00007eff6ed81393:   jmp    0x00007eff6ed810e0
   1.22%    0x00007eff6ed81398:   mov    $0x16,%ecx
   0.72%    0x00007eff6ed8139d:   data16 xchg %ax,%ax
            0x00007eff6ed813a0:   jmp    0x00007eff6ed81175
   1.52%    0x00007eff6ed813a5:   lea    0x13(%r8),%r8d
   0.61%    0x00007eff6ed813a9:   jmp    0x00007eff6ed810e0
            0x00007eff6ed813ae:   mov    $0x15,%ecx                   ;   {no_reloc}
            0x00007eff6ed813b3:   jmp    0x00007eff6ed81175
   1.32%    0x00007eff6ed813b8:   mov    $0x14,%ecx
   0.60%    0x00007eff6ed813bd:   data16 xchg %ax,%ax
            0x00007eff6ed813c0:   jmp    0x00007eff6ed81175
            0x00007eff6ed813c5:   lea    0x16(%r8),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007eff6ed813c9:   jmp    0x00007eff6ed810e0
   1.24%    0x00007eff6ed813ce:   mov    $0x18,%ecx
   0.65%    0x00007eff6ed813d3:   jmp    0x00007eff6ed81175
            0x00007eff6ed813d8:   mov    $0x11,%ecx
            0x00007eff6ed813dd:   data16 xchg %ax,%ax
            0x00007eff6ed813e0:   jmp    0x00007eff6ed81175
            0x00007eff6ed813e5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007eff6ed813f0:   data16 data16 xchg %ax,%ax
            0x00007eff6ed813f4:   nopl   0x0(%rax,%rax,1)
            0x00007eff6ed813fc:   data16 data16 xchg %ax,%ax
   0.05%    0x00007eff6ed81400:   cmp    %r9d,%r10d
            0x00007eff6ed81403:   jbe    0x00007eff6ed81605           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
....................................................................................................
  34.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

             0x00007eff6ed81156:   add    %al,(%rax)
             0x00007eff6ed81158:   pop    %rsi
             0x00007eff6ed81159:   add    (%rax),%al
             0x00007eff6ed8115b:   add    %ch,-0x61fffffe(%rax)
             0x00007eff6ed81161:   add    (%rax),%al
             0x00007eff6ed81163:   add    %cl,0x75000002(%rax)
             0x00007eff6ed81169:   add    (%rax),%al
             0x00007eff6ed8116b:   add    %bh,-0x46fffffe(%rsi)        ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
             0x00007eff6ed81171:   (bad)  
             0x00007eff6ed81172:   add    %al,(%rax)
             0x00007eff6ed81174:   add    %al,-0x75(%rdx)
             0x00007eff6ed81177:   pop    %rsp
             0x00007eff6ed81178:   mov    %dl,(%rsp,%rax,2)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
             0x00007eff6ed8117b:   add    %ecx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
             0x00007eff6ed8117d:   mov    %r9d,%ecx
             0x00007eff6ed81180:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
             0x00007eff6ed81182:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007eff6ed8173a
   6.40%     0x00007eff6ed81189:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
             0x00007eff6ed8118d:   mov    %ebx,%edi
   0.01%     0x00007eff6ed8118f:   cmp    $0x17,%edi
             0x00007eff6ed81192:   ja     0x00007eff6ed81665
   1.31%  ╭  0x00007eff6ed81198:   lea    0x9(%rip),%rbx        # 0x00007eff6ed811a8
          │  0x00007eff6ed8119f:   movslq (%rbx,%rdi,4),%rdi
   5.22%  │  0x00007eff6ed811a3:   add    %rdi,%rbx
   1.37%  │  0x00007eff6ed811a6:   jmp    *%rbx
          ↘  0x00007eff6ed811a8:   (bad)  
             0x00007eff6ed811a9:   add    %eax,(%rax)
             0x00007eff6ed811ab:   add    %bl,%ch
             0x00007eff6ed811ad:   add    %al,(%rax)
             0x00007eff6ed811af:   add    %dl,%ah
             0x00007eff6ed811b1:   add    %al,(%rax)
             0x00007eff6ed811b3:   add    %al,%cl                      ;   {no_reloc}
             0x00007eff6ed811b5:   add    %al,(%rax)
             0x00007eff6ed811b7:   add    %bh,-0x79000000(%rax)
             0x00007eff6ed811bd:   add    %eax,(%rax)
....................................................................................................
  27.19%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

             0x00007eff6ed810ad:   mov    %ebx,%r9d
             0x00007eff6ed810b0:   jmp    0x00007eff6ed80f10
             0x00007eff6ed810b5:   lea    0x11(%r8),%r8d               ;   {no_reloc}
             0x00007eff6ed810b9:   mov    %ebx,%r9d
             0x00007eff6ed810bc:   nopl   0x0(%rax)
             0x00007eff6ed810c0:   jmp    0x00007eff6ed80f10
             0x00007eff6ed810c5:   lea    0x13(%r8),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
             0x00007eff6ed810c9:   mov    %ebx,%r9d
             0x00007eff6ed810cc:   jmp    0x00007eff6ed80f10
   0.01%     0x00007eff6ed810d1:   lea    -0x2(%r10),%r11d
             0x00007eff6ed810d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.70%     0x00007eff6ed810e0:   cmp    %r9d,%r11d
             0x00007eff6ed810e3:   jle    0x00007eff6ed81400           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   2.18%     0x00007eff6ed810e9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   6.37%     0x00007eff6ed810ee:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007eff6ed81717
   6.42%     0x00007eff6ed810f5:   mov    %ecx,%ebx
             0x00007eff6ed810f7:   cmp    $0x17,%ebx
             0x00007eff6ed810fa:   ja     0x00007eff6ed81642
   1.27%  ╭  0x00007eff6ed81100:   lea    0x9(%rip),%rcx        # 0x00007eff6ed81110
          │  0x00007eff6ed81107:   movslq (%rcx,%rbx,4),%rbx
   5.09%  │  0x00007eff6ed8110b:   add    %rbx,%rcx
   1.32%  │  0x00007eff6ed8110e:   jmp    *%rcx
          ↘  0x00007eff6ed81110:   xchg   %eax,(%rcx)
             0x00007eff6ed81112:   add    %al,(%rax)
             0x00007eff6ed81114:   jmp    0x00007eff30d8111a
             0x00007eff6ed81119:   add    %eax,(%rax)
             0x00007eff6ed8111b:   add    %dl,0x62000001(%rbp)
             0x00007eff6ed81121:   add    %eax,(%rax)
             0x00007eff6ed81123:   add    %dh,%ch
             0x00007eff6ed81125:   add    %eax,(%rax)
             0x00007eff6ed81127:   add    %bh,%bh
             0x00007eff6ed81129:   add    %eax,(%rax)
....................................................................................................
  23.37%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 

            0x00007eff6ed811f1:   add    %eax,(%rax)
            0x00007eff6ed811f3:   add    %bh,-0x62ffffff(%rbp)
            0x00007eff6ed811f9:   add    %eax,(%rax)
            0x00007eff6ed811fb:   add    %bl,-0x18fffffe(%rip)        # 0x00007eff55d81203
            0x00007eff6ed81201:   add    %eax,(%rax)
            0x00007eff6ed81203:   add    %dl,0x45000001(%rax)         ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
            0x00007eff6ed81209:   lea    0xe(%rax),%eax
            0x00007eff6ed8120c:   jmp    0x00007eff6ed810e0
   1.29%    0x00007eff6ed81211:   mov    $0xa,%ecx
   0.64%    0x00007eff6ed81216:   jmp    0x00007eff6ed81175
            0x00007eff6ed8121b:   mov    $0xb,%ecx
            0x00007eff6ed81220:   jmp    0x00007eff6ed81175
   1.26%    0x00007eff6ed81225:   mov    $0xc,%ecx
   0.70%    0x00007eff6ed8122a:   jmp    0x00007eff6ed81175
            0x00007eff6ed8122f:   mov    $0xd,%ecx
            0x00007eff6ed81234:   jmp    0x00007eff6ed81175
            0x00007eff6ed81239:   lea    0xa(%r8),%r8d
            0x00007eff6ed8123d:   data16 xchg %ax,%ax
            0x00007eff6ed81240:   jmp    0x00007eff6ed810e0
   1.34%    0x00007eff6ed81245:   lea    0xb(%r8),%r8d
   0.62%    0x00007eff6ed81249:   jmp    0x00007eff6ed810e0
            0x00007eff6ed8124e:   lea    0xc(%r8),%r8d
            0x00007eff6ed81252:   jmp    0x00007eff6ed810e0
   1.58%    0x00007eff6ed81257:   lea    0xd(%r8),%r8d
   0.66%    0x00007eff6ed8125b:   jmp    0x00007eff6ed810e0
   1.55%    0x00007eff6ed81260:   lea    0x5(%r8),%r8d
   0.71%    0x00007eff6ed81264:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81269:   lea    0x4(%r8),%r8d
            0x00007eff6ed8126d:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81272:   mov    $0x5,%ecx
            0x00007eff6ed81277:   jmp    0x00007eff6ed81175
   1.22%    0x00007eff6ed8127c:   lea    0x3(%r8),%r8d
   0.68%    0x00007eff6ed81280:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81285:   lea    0x2(%r8),%r8d
            0x00007eff6ed81289:   jmp    0x00007eff6ed810e0
            0x00007eff6ed8128e:   lea    0x10(%r8),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
            0x00007eff6ed81292:   jmp    0x00007eff6ed810e0
            0x00007eff6ed81297:   mov    $0x1,%ecx
            0x00007eff6ed8129c:   nopl   0x0(%rax)
            0x00007eff6ed812a0:   jmp    0x00007eff6ed81175
   1.26%    0x00007eff6ed812a5:   mov    $0x4,%ecx
   0.67%    0x00007eff6ed812aa:   jmp    0x00007eff6ed81175           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.24%  <total for region 4>

....[Hottest Regions]...............................................................................
  34.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
  27.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
  23.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
  12.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.47%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 989 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.88%  <...other 282 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 965 
   1.39%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 989 
   0.04%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.00%            libjvm.so  PhiResolver::create_node 
   0.17%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.25%       jvmci, level 4
   1.39%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.746 ns/op
# Warmup Iteration   2: 1.728 ns/op
# Warmup Iteration   3: 1.727 ns/op
# Warmup Iteration   4: 1.727 ns/op
# Warmup Iteration   5: 1.727 ns/op
Iteration   1: 1.727 ns/op
Iteration   2: 1.727 ns/op
Iteration   3: 1.727 ns/op
Iteration   4: 1.727 ns/op
Iteration   5: 1.727 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  1.727 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.727, 1.727, 1.727), stdev = 0.001
  CI (99.9%): [1.727, 1.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 228873 total address lines.
Perf output processed (skipped 60.824 seconds):
 Column 1: cycles (50944 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 

            0x00007f5876d8142e:   mov    %ebx,%r9d
            0x00007f5876d81431:   jmp    0x00007f5876d81310
            0x00007f5876d81436:   lea    0x2(%r8),%r8d
            0x00007f5876d8143a:   mov    %ebx,%r9d
            0x00007f5876d8143d:   data16 xchg %ax,%ax
            0x00007f5876d81440:   jmp    0x00007f5876d81310
            0x00007f5876d81445:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f5876d81449:   mov    %ebx,%r9d
            0x00007f5876d8144c:   jmp    0x00007f5876d81310
   0.02%    0x00007f5876d81451:   lea    -0x4(%r10),%r11d
            0x00007f5876d81455:   data16 data16 nopw 0x0(%rax,%rax,1)
  10.69%    0x00007f5876d81460:   cmp    %r9d,%r11d
            0x00007f5876d81463:   jle    0x00007f5876d81920           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.02%    0x00007f5876d81469:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.68%    0x00007f5876d8146e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f5876d81bd0
  18.93%    0x00007f5876d81475:   cmp    $0x0,%ecx
            0x00007f5876d81478:   je     0x00007f5876d81574
   3.48%    0x00007f5876d8147e:   cmp    $0x1,%ecx
            0x00007f5876d81481:   je     0x00007f5876d818c5
   0.03%    0x00007f5876d81487:   cmp    $0x2,%ecx
            0x00007f5876d8148a:   je     0x00007f5876d818f7
            0x00007f5876d81490:   cmp    $0x3,%ecx
            0x00007f5876d81493:   je     0x00007f5876d81b3d
            0x00007f5876d81499:   cmp    $0x4,%ecx
            0x00007f5876d8149c:   nopl   0x0(%rax)
            0x00007f5876d814a0:   je     0x00007f5876d81b3d
            0x00007f5876d814a6:   cmp    $0x5,%ecx
            0x00007f5876d814a9:   je     0x00007f5876d81b3d
            0x00007f5876d814af:   cmp    $0x6,%ecx
            0x00007f5876d814b2:   je     0x00007f5876d81b3d           ;   {no_reloc}
....................................................................................................
  33.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 

            0x00007f5876d8154f:   cmp    $0x15,%ecx
            0x00007f5876d81552:   je     0x00007f5876d81b3d
            0x00007f5876d81558:   cmp    $0x16,%ecx
            0x00007f5876d8155b:   nopl   0x0(%rax,%rax,1)
            0x00007f5876d81560:   je     0x00007f5876d81b3d
            0x00007f5876d81566:   cmp    $0x17,%ecx
            0x00007f5876d81569:   je     0x00007f5876d81b3d
            0x00007f5876d8156f:   jmp    0x00007f5876d81b3d           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.85%    0x00007f5876d81574:   mov    $0x1,%ecx
   3.59%    0x00007f5876d81579:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
            0x00007f5876d8157e:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f5876d81581:   mov    %r9d,%ecx
   1.86%    0x00007f5876d81584:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   3.66%    0x00007f5876d81586:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f5876d81bf3
   3.19%    0x00007f5876d8158d:   cmp    $0x0,%ebx
            0x00007f5876d81590:   je     0x00007f5876d8168b
   2.14%    0x00007f5876d81596:   cmp    $0x1,%ebx
            0x00007f5876d81599:   je     0x00007f5876d818cf
   1.64%    0x00007f5876d8159f:   cmp    $0x2,%ebx
            0x00007f5876d815a2:   je     0x00007f5876d818d9
            0x00007f5876d815a8:   cmp    $0x3,%ebx
            0x00007f5876d815ab:   je     0x00007f5876d81ad4
            0x00007f5876d815b1:   cmp    $0x4,%ebx
            0x00007f5876d815b4:   je     0x00007f5876d81ad4           ;   {no_reloc}
            0x00007f5876d815ba:   cmp    $0x5,%ebx
            0x00007f5876d815bd:   data16 xchg %ax,%ax
            0x00007f5876d815c0:   je     0x00007f5876d81ad4
            0x00007f5876d815c6:   cmp    $0x6,%ebx
            0x00007f5876d815c9:   je     0x00007f5876d81ad4
....................................................................................................
  17.92%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 

            0x00007f5876d81666:   cmp    $0x15,%ebx
            0x00007f5876d81669:   je     0x00007f5876d81ad4
            0x00007f5876d8166f:   cmp    $0x16,%ebx
            0x00007f5876d81672:   je     0x00007f5876d81ad4
            0x00007f5876d81678:   cmp    $0x17,%ebx
            0x00007f5876d8167b:   nopl   0x0(%rax,%rax,1)
            0x00007f5876d81680:   je     0x00007f5876d81ad4
            0x00007f5876d81686:   jmp    0x00007f5876d81ad4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.75%    0x00007f5876d8168b:   mov    $0x1,%ecx
   3.72%    0x00007f5876d81690:   mov    0x18(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.08%    0x00007f5876d81695:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f5876d81698:   lea    0x2(%r9),%ecx                ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   1.78%    0x00007f5876d8169c:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f5876d81c16
   7.82%    0x00007f5876d816a3:   cmp    $0x0,%ebx
            0x00007f5876d816a6:   je     0x00007f5876d8179d
   1.97%    0x00007f5876d816ac:   cmp    $0x1,%ebx
            0x00007f5876d816af:   je     0x00007f5876d8190f           ;   {no_reloc}
   0.21%    0x00007f5876d816b5:   cmp    $0x2,%ebx
            0x00007f5876d816b8:   je     0x00007f5876d81905
            0x00007f5876d816be:   cmp    $0x3,%ebx
            0x00007f5876d816c1:   je     0x00007f5876d81a8e
            0x00007f5876d816c7:   cmp    $0x4,%ebx
            0x00007f5876d816ca:   je     0x00007f5876d81a8e
            0x00007f5876d816d0:   cmp    $0x5,%ebx
            0x00007f5876d816d3:   je     0x00007f5876d81a8e
            0x00007f5876d816d9:   cmp    $0x6,%ebx
            0x00007f5876d816dc:   nopl   0x0(%rax)
            0x00007f5876d816e0:   je     0x00007f5876d81a8e
....................................................................................................
  17.34%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 

            0x00007f5876d81778:   cmp    $0x15,%ebx
            0x00007f5876d8177b:   nopl   0x0(%rax,%rax,1)
            0x00007f5876d81780:   je     0x00007f5876d81a8e
            0x00007f5876d81786:   cmp    $0x16,%ebx
            0x00007f5876d81789:   je     0x00007f5876d81a8e
            0x00007f5876d8178f:   cmp    $0x17,%ebx
            0x00007f5876d81792:   je     0x00007f5876d81a8e
            0x00007f5876d81798:   jmp    0x00007f5876d81a8e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.81%    0x00007f5876d8179d:   mov    $0x1,%ecx
   1.88%    0x00007f5876d817a2:   mov    0x1c(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.00%    0x00007f5876d817a7:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f5876d817aa:   lea    0x3(%r9),%ecx                ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   3.63%    0x00007f5876d817ae:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f5876d81c39
                                                                      ;   {no_reloc}
   1.80%    0x00007f5876d817b5:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
            0x00007f5876d817b9:   cmp    $0x0,%ebx
   3.72%    0x00007f5876d817bc:   nopl   0x0(%rax)
            0x00007f5876d817c0:   je     0x00007f5876d818bd
   3.62%    0x00007f5876d817c6:   cmp    $0x1,%ebx
            0x00007f5876d817c9:   je     0x00007f5876d818e5
            0x00007f5876d817cf:   cmp    $0x2,%ebx
            0x00007f5876d817d2:   je     0x00007f5876d818ee
            0x00007f5876d817d8:   cmp    $0x3,%ebx
            0x00007f5876d817db:   nopl   0x0(%rax,%rax,1)
            0x00007f5876d817e0:   je     0x00007f5876d81ab1
            0x00007f5876d817e6:   cmp    $0x4,%ebx
            0x00007f5876d817e9:   je     0x00007f5876d81ab1
            0x00007f5876d817ef:   cmp    $0x5,%ebx
            0x00007f5876d817f2:   je     0x00007f5876d81ab1
....................................................................................................
  16.47%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 

            0x00007f5876d81898:   cmp    $0x15,%ebx
            0x00007f5876d8189b:   nopl   0x0(%rax,%rax,1)
            0x00007f5876d818a0:   je     0x00007f5876d81ab1
            0x00007f5876d818a6:   cmp    $0x16,%ebx
            0x00007f5876d818a9:   je     0x00007f5876d81ab1
            0x00007f5876d818af:   cmp    $0x17,%ebx                   ;   {no_reloc}
            0x00007f5876d818b2:   je     0x00007f5876d81ab1
            0x00007f5876d818b8:   jmp    0x00007f5876d81ab1           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.84%    0x00007f5876d818bd:   inc    %r8d
            0x00007f5876d818c0:   jmp    0x00007f5876d81460
   1.54%    0x00007f5876d818c5:   mov    $0x2,%ecx
   0.02%    0x00007f5876d818ca:   jmp    0x00007f5876d81579
   1.55%    0x00007f5876d818cf:   mov    $0x2,%ecx
            0x00007f5876d818d4:   jmp    0x00007f5876d81690
   0.17%    0x00007f5876d818d9:   mov    $0x3,%ecx
            0x00007f5876d818de:   xchg   %ax,%ax
            0x00007f5876d818e0:   jmp    0x00007f5876d81690
            0x00007f5876d818e5:   lea    0x2(%r8),%r8d
            0x00007f5876d818e9:   jmp    0x00007f5876d81460
            0x00007f5876d818ee:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f5876d818f2:   jmp    0x00007f5876d81460
   1.79%    0x00007f5876d818f7:   mov    $0x3,%ecx
            0x00007f5876d818fc:   nopl   0x0(%rax)
            0x00007f5876d81900:   jmp    0x00007f5876d81579
   1.56%    0x00007f5876d81905:   mov    $0x3,%ecx
            0x00007f5876d8190a:   jmp    0x00007f5876d817a2
   0.00%    0x00007f5876d8190f:   mov    $0x2,%ecx
   1.76%    0x00007f5876d81914:   jmp    0x00007f5876d817a2
            0x00007f5876d81919:   nopl   0x0(%rax)
   0.32%    0x00007f5876d81920:   cmp    %r9d,%r10d
            0x00007f5876d81923:   jbe    0x00007f5876d81a68           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.12%    0x00007f5876d81929:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.09%    0x00007f5876d8192e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f5876d81c5c
   0.14%    0x00007f5876d81936:   mov    %r9d,%ecx
   0.03%    0x00007f5876d81939:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
            0x00007f5876d8193b:   cmp    $0x0,%r11d
   0.06%    0x00007f5876d8193f:   nop
   0.00%    0x00007f5876d81940:   je     0x00007f5876d81a3f
   0.05%    0x00007f5876d81946:   cmp    $0x1,%r11d
            0x00007f5876d8194a:   je     0x00007f5876d81a4a
            0x00007f5876d81950:   cmp    $0x2,%r11d
            0x00007f5876d81954:   je     0x00007f5876d81a59
            0x00007f5876d8195a:   cmp    $0x3,%r11d
            0x00007f5876d8195e:   xchg   %ax,%ax
            0x00007f5876d81960:   je     0x00007f5876d81af7
            0x00007f5876d81966:   cmp    $0x4,%r11d
            0x00007f5876d8196a:   je     0x00007f5876d81af7
            0x00007f5876d81970:   cmp    $0x5,%r11d
            0x00007f5876d81974:   je     0x00007f5876d81af7
....................................................................................................
  11.05%  <total for region 5>

....[Hottest Regions]...............................................................................
  33.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
  17.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
  17.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
  16.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
  11.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
   0.94%              kernel  [unknown] 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1011 
   0.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
   0.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.98%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 988 
   2.06%              kernel  [unknown] 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1011 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  fileStream::flush 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __GI___libc_write 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.58%      jvmci, level 4
   2.06%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2129355.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.195 ns/op
# Warmup Iteration   2: 2.157 ns/op
# Warmup Iteration   3: 2.170 ns/op
# Warmup Iteration   4: 2.177 ns/op
# Warmup Iteration   5: 2.159 ns/op
Iteration   1: 2.167 ns/op
Iteration   2: 2.176 ns/op
Iteration   3: 2.174 ns/op
Iteration   4: 2.189 ns/op
Iteration   5: 2.167 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  2.175 ±(99.9%) 0.034 ns/op [Average]
  (min, avg, max) = (2.167, 2.175, 2.189), stdev = 0.009
  CI (99.9%): [2.141, 2.208] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 229709 total address lines.
Perf output processed (skipped 60.713 seconds):
 Column 1: cycles (51092 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 

              0x00007f8256d7daf1:   lea    0x4(%r8),%r8d
              0x00007f8256d7daf5:   mov    %ebx,%r9d
              0x00007f8256d7daf8:   jmp    0x00007f8256d7d990
              0x00007f8256d7dafd:   lea    0x6(%r8),%r8d
              0x00007f8256d7db01:   mov    %ebx,%r9d
              0x00007f8256d7db04:   jmp    0x00007f8256d7d990
              0x00007f8256d7db09:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
              0x00007f8256d7db0d:   mov    %ebx,%r9d
              0x00007f8256d7db10:   jmp    0x00007f8256d7d990
   0.02%      0x00007f8256d7db15:   lea    -0x2(%r10),%r11d
              0x00007f8256d7db19:   nopl   0x0(%rax)
  13.33%      0x00007f8256d7db20:   cmp    %r9d,%r11d
              0x00007f8256d7db23:   jle    0x00007f8256d7de20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.11%      0x00007f8256d7db29:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.19%      0x00007f8256d7db2e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f8256d7e0e4
  21.00%      0x00007f8256d7db35:   cmp    $0x3,%ecx                    ;   {no_reloc}
          ╭   0x00007f8256d7db38:   jge    0x00007f8256d7db5e
   2.84%  │   0x00007f8256d7db3e:   cmp    $0x2,%ecx
          │   0x00007f8256d7db41:   jge    0x00007f8256d7ddcf
   1.19%  │   0x00007f8256d7db47:   cmp    $0x0,%ecx
          │   0x00007f8256d7db4a:   je     0x00007f8256d7dc54
   1.81%  │   0x00007f8256d7db50:   cmp    $0x1,%ecx
          │   0x00007f8256d7db53:   je     0x00007f8256d7ddb7
          │   0x00007f8256d7db59:   jmp    0x00007f8256d7dfee
   5.87%  ↘   0x00007f8256d7db5e:   cmp    $0x5,%ecx
           ╭  0x00007f8256d7db61:   jge    0x00007f8256d7db75
   0.06%   │  0x00007f8256d7db67:   cmp    $0x3,%ecx
           │  0x00007f8256d7db6a:   je     0x00007f8256d7ddc5
           │  0x00007f8256d7db70:   jmp    0x00007f8256d7ddef
   2.95%   ↘  0x00007f8256d7db75:   cmp    $0x5,%ecx
              0x00007f8256d7db78:   jle    0x00007f8256d7dde5
              0x00007f8256d7db7e:   cmp    $0xf,%ecx
              0x00007f8256d7db81:   jge    0x00007f8256d7dbeb
              0x00007f8256d7db87:   cmp    $0xb,%ecx
              0x00007f8256d7db8a:   jge    0x00007f8256d7dbc5
              0x00007f8256d7db90:   cmp    $0x9,%ecx
              0x00007f8256d7db93:   jge    0x00007f8256d7dbb4
              0x00007f8256d7db99:   cmp    $0x8,%ecx
              0x00007f8256d7db9c:   nopl   0x0(%rax)
              0x00007f8256d7dba0:   jge    0x00007f8256d7dfee
....................................................................................................
  49.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 

              0x00007f8256d7dc37:   jmp    0x00007f8256d7dfee
              0x00007f8256d7dc3c:   cmp    $0x16,%ecx
              0x00007f8256d7dc3f:   nop
              0x00007f8256d7dc40:   je     0x00007f8256d7dfee
              0x00007f8256d7dc46:   cmp    $0x17,%ecx
              0x00007f8256d7dc49:   je     0x00007f8256d7dfee
              0x00007f8256d7dc4f:   jmp    0x00007f8256d7dfee           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
              0x00007f8256d7dc54:   mov    $0x1,%ecx
   7.70%      0x00007f8256d7dc59:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.00%      0x00007f8256d7dc5e:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
              0x00007f8256d7dc61:   mov    %r9d,%ecx
   1.05%      0x00007f8256d7dc64:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   7.54%      0x00007f8256d7dc66:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f8256d7e107
   5.45%      0x00007f8256d7dc6d:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
              0x00007f8256d7dc71:   cmp    $0x3,%ebx
          ╭   0x00007f8256d7dc74:   jge    0x00007f8256d7dc9d
   3.84%  │   0x00007f8256d7dc7a:   cmp    $0x2,%ebx
   2.66%  │   0x00007f8256d7dc7d:   data16 xchg %ax,%ax
          │   0x00007f8256d7dc80:   jge    0x00007f8256d7dda5
   0.66%  │   0x00007f8256d7dc86:   cmp    $0x0,%ebx
          │   0x00007f8256d7dc89:   je     0x00007f8256d7dd94
          │   0x00007f8256d7dc8f:   cmp    $0x1,%ebx
          │   0x00007f8256d7dc92:   je     0x00007f8256d7dd9c
          │   0x00007f8256d7dc98:   jmp    0x00007f8256d7e034
   2.84%  ↘   0x00007f8256d7dc9d:   cmp    $0x5,%ebx
           ╭  0x00007f8256d7dca0:   jge    0x00007f8256d7dcb4
   0.04%   │  0x00007f8256d7dca6:   cmp    $0x3,%ebx
           │  0x00007f8256d7dca9:   je     0x00007f8256d7ddae
   2.79%   │  0x00007f8256d7dcaf:   jmp    0x00007f8256d7ddf9
           ↘  0x00007f8256d7dcb4:   cmp    $0x5,%ebx
              0x00007f8256d7dcb7:   jle    0x00007f8256d7ddd9
              0x00007f8256d7dcbd:   cmp    $0xf,%ebx
              0x00007f8256d7dcc0:   jge    0x00007f8256d7dd2b
              0x00007f8256d7dcc6:   cmp    $0xb,%ebx
              0x00007f8256d7dcc9:   jge    0x00007f8256d7dd05
              0x00007f8256d7dccf:   cmp    $0x9,%ebx
              0x00007f8256d7dcd2:   jge    0x00007f8256d7dcf4
              0x00007f8256d7dcd8:   cmp    $0x8,%ebx
              0x00007f8256d7dcdb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  34.57%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 

            0x00007f8256d7dd71:   je     0x00007f8256d7e034
            0x00007f8256d7dd77:   jmp    0x00007f8256d7e034
            0x00007f8256d7dd7c:   cmp    $0x16,%ebx
            0x00007f8256d7dd7f:   nop
            0x00007f8256d7dd80:   je     0x00007f8256d7e034
            0x00007f8256d7dd86:   cmp    $0x17,%ebx
            0x00007f8256d7dd89:   je     0x00007f8256d7e034
            0x00007f8256d7dd8f:   jmp    0x00007f8256d7e034           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.25%    0x00007f8256d7dd94:   inc    %r8d
   1.91%    0x00007f8256d7dd97:   jmp    0x00007f8256d7db20
            0x00007f8256d7dd9c:   lea    0x2(%r8),%r8d
            0x00007f8256d7dda0:   jmp    0x00007f8256d7db20
   3.01%    0x00007f8256d7dda5:   lea    0x3(%r8),%r8d
            0x00007f8256d7dda9:   jmp    0x00007f8256d7db20
            0x00007f8256d7ddae:   lea    0x4(%r8),%r8d
            0x00007f8256d7ddb2:   jmp    0x00007f8256d7db20
   0.02%    0x00007f8256d7ddb7:   mov    $0x2,%ecx
            0x00007f8256d7ddbc:   nopl   0x0(%rax)
   1.00%    0x00007f8256d7ddc0:   jmp    0x00007f8256d7dc59
   2.88%    0x00007f8256d7ddc5:   mov    $0x4,%ecx
            0x00007f8256d7ddca:   jmp    0x00007f8256d7dc59
            0x00007f8256d7ddcf:   mov    $0x3,%ecx
            0x00007f8256d7ddd4:   jmp    0x00007f8256d7dc59
            0x00007f8256d7ddd9:   lea    0x6(%r8),%r8d
            0x00007f8256d7dddd:   data16 xchg %ax,%ax
            0x00007f8256d7dde0:   jmp    0x00007f8256d7db20
   2.86%    0x00007f8256d7dde5:   mov    $0x6,%ecx
            0x00007f8256d7ddea:   jmp    0x00007f8256d7dc59
            0x00007f8256d7ddef:   mov    $0x5,%ecx
            0x00007f8256d7ddf4:   jmp    0x00007f8256d7dc59
   0.00%    0x00007f8256d7ddf9:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f8256d7ddfd:   data16 xchg %ax,%ax
   0.02%    0x00007f8256d7de00:   jmp    0x00007f8256d7db20
            0x00007f8256d7de05:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f8256d7de10:   data16 data16 xchg %ax,%ax
            0x00007f8256d7de14:   nopl   0x0(%rax,%rax,1)
            0x00007f8256d7de1c:   data16 data16 xchg %ax,%ax
   0.18%    0x00007f8256d7de20:   cmp    %r9d,%r10d
            0x00007f8256d7de23:   jbe    0x00007f8256d7dfd4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.11%    0x00007f8256d7de29:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.05%    0x00007f8256d7de2e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f8256d7e12d
                                                                      ;   {no_reloc}
   0.08%    0x00007f8256d7de36:   mov    %r9d,%ecx
            0x00007f8256d7de39:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
            0x00007f8256d7de3b:   cmp    $0x3,%r11d
   0.02%    0x00007f8256d7de3f:   nop
            0x00007f8256d7de40:   jge    0x00007f8256d7de6b
            0x00007f8256d7de46:   cmp    $0x2,%r11d
            0x00007f8256d7de4a:   jge    0x00007f8256d7df94
            0x00007f8256d7de50:   cmp    $0x0,%r11d
            0x00007f8256d7de54:   je     0x00007f8256d7df77
            0x00007f8256d7de5a:   cmp    $0x1,%r11d
            0x00007f8256d7de5e:   xchg   %ax,%ax
            0x00007f8256d7de60:   je     0x00007f8256d7df85
            0x00007f8256d7de66:   jmp    0x00007f8256d7e011
   0.03%    0x00007f8256d7de6b:   cmp    $0x5,%r11d
....................................................................................................
  12.39%  <total for region 3>

....[Hottest Regions]...............................................................................
  49.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
  34.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
  12.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   1.32%               kernel  [unknown] 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1001 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   0.02%               kernel  [unknown] 
   1.17%  <...other 373 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 979 
   2.59%               kernel  [unknown] 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1001 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%       hsdis-amd64.so  print_insn 
   0.18%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.04%       jvmci, level 4
   2.59%               kernel
   0.15%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.529 ns/op
# Warmup Iteration   2: 2.488 ns/op
# Warmup Iteration   3: 2.484 ns/op
# Warmup Iteration   4: 2.485 ns/op
# Warmup Iteration   5: 2.484 ns/op
Iteration   1: 2.485 ns/op
Iteration   2: 2.481 ns/op
Iteration   3: 2.482 ns/op
Iteration   4: 2.484 ns/op
Iteration   5: 2.482 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  2.483 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (2.481, 2.483, 2.485), stdev = 0.002
  CI (99.9%): [2.477, 2.489] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 228340 total address lines.
Perf output processed (skipped 60.720 seconds):
 Column 1: cycles (50811 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 

                 0x00007f5322d7f0b1:   lea    0xc(%r8),%r8d
                 0x00007f5322d7f0b5:   mov    %ebx,%r9d                    ;   {no_reloc}
                 0x00007f5322d7f0b8:   jmp    0x00007f5322d7ef10
                 0x00007f5322d7f0bd:   lea    0xa(%r8),%r8d
                 0x00007f5322d7f0c1:   mov    %ebx,%r9d
                 0x00007f5322d7f0c4:   jmp    0x00007f5322d7ef10
                 0x00007f5322d7f0c9:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
                 0x00007f5322d7f0cd:   mov    %ebx,%r9d
                 0x00007f5322d7f0d0:   jmp    0x00007f5322d7ef10
   0.01%         0x00007f5322d7f0d5:   lea    -0x2(%r10),%r11d
                 0x00007f5322d7f0d9:   nopl   0x0(%rax)
  13.64%         0x00007f5322d7f0e0:   cmp    %r9d,%r11d
                 0x00007f5322d7f0e3:   jle    0x00007f5322d7f440           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.18%         0x00007f5322d7f0e9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.19%         0x00007f5322d7f0ee:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f5322d7f757
  12.90%         0x00007f5322d7f0f5:   cmp    $0x6,%ecx
          ╭      0x00007f5322d7f0f8:   jge    0x00007f5322d7f145
   3.79%  │      0x00007f5322d7f0fe:   cmp    $0x3,%ecx
          │╭     0x00007f5322d7f101:   jge    0x00007f5322d7f12b
   0.04%  ││     0x00007f5322d7f107:   cmp    $0x2,%ecx
          ││     0x00007f5322d7f10a:   jge    0x00007f5322d7f357
   1.21%  ││     0x00007f5322d7f110:   cmp    $0x0,%ecx
          ││     0x00007f5322d7f113:   je     0x00007f5322d7f377
   0.08%  ││     0x00007f5322d7f119:   cmp    $0x1,%ecx
          ││     0x00007f5322d7f11c:   nopl   0x0(%rax)
          ││     0x00007f5322d7f120:   je     0x00007f5322d7f36d
          ││     0x00007f5322d7f126:   jmp    0x00007f5322d7f6c8
   0.07%  │↘     0x00007f5322d7f12b:   cmp    $0x5,%ecx
          │      0x00007f5322d7f12e:   jge    0x00007f5322d7f3c5
   1.30%  │      0x00007f5322d7f134:   cmp    $0x3,%ecx
          │      0x00007f5322d7f137:   je     0x00007f5322d7f20b
          │      0x00007f5322d7f13d:   data16 xchg %ax,%ax
          │      0x00007f5322d7f140:   jmp    0x00007f5322d7f3bb
   3.74%  ↘      0x00007f5322d7f145:   cmp    $0xa,%ecx
            ╭    0x00007f5322d7f148:   jge    0x00007f5322d7f173
            │    0x00007f5322d7f14e:   cmp    $0x8,%ecx
            │╭   0x00007f5322d7f151:   jge    0x00007f5322d7f165
   1.34%    ││   0x00007f5322d7f157:   cmp    $0x6,%ecx
            ││   0x00007f5322d7f15a:   je     0x00007f5322d7f3e5
   1.26%    ││   0x00007f5322d7f160:   jmp    0x00007f5322d7f3d9
   1.23%    │↘   0x00007f5322d7f165:   cmp    $0x8,%ecx
            │    0x00007f5322d7f168:   je     0x00007f5322d7f3cf
            │    0x00007f5322d7f16e:   jmp    0x00007f5322d7f417
   1.29%    ↘    0x00007f5322d7f173:   cmp    $0xc,%ecx
              ╭  0x00007f5322d7f176:   jge    0x00007f5322d7f18b
              │  0x00007f5322d7f17c:   cmp    $0xa,%ecx
   0.04%      │  0x00007f5322d7f17f:   nop
              │  0x00007f5322d7f180:   je     0x00007f5322d7f3f8
   2.28%      │  0x00007f5322d7f186:   jmp    0x00007f5322d7f425
              ↘  0x00007f5322d7f18b:   cmp    $0x12,%ecx
                 0x00007f5322d7f18e:   jge    0x00007f5322d7f1cb
                 0x00007f5322d7f194:   cmp    $0xf,%ecx
                 0x00007f5322d7f197:   jge    0x00007f5322d7f1b4
                 0x00007f5322d7f19d:   cmp    $0xe,%ecx
                 0x00007f5322d7f1a0:   jge    0x00007f5322d7f6c8
                 0x00007f5322d7f1a6:   cmp    $0xc,%ecx
                 0x00007f5322d7f1a9:   je     0x00007f5322d7f6c8
                 0x00007f5322d7f1af:   jmp    0x00007f5322d7f6c8
                 0x00007f5322d7f1b4:   cmp    $0x11,%ecx                   ;   {no_reloc}
....................................................................................................
  44.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 

                 0x00007f5322d7f1e6:   jmp    0x00007f5322d7f6c8
                 0x00007f5322d7f1eb:   cmp    $0x17,%ecx
                 0x00007f5322d7f1ee:   jg     0x00007f5322d7f6c8
                 0x00007f5322d7f1f4:   cmp    $0x17,%ecx
                 0x00007f5322d7f1f7:   jge    0x00007f5322d7f6c8
                 0x00007f5322d7f1fd:   cmp    $0x15,%ecx
                 0x00007f5322d7f200:   je     0x00007f5322d7f6c8
                 0x00007f5322d7f206:   jmp    0x00007f5322d7f6c8           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.05%         0x00007f5322d7f20b:   mov    $0x4,%ecx
   6.28%         0x00007f5322d7f210:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   3.33%         0x00007f5322d7f215:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   1.18%         0x00007f5322d7f218:   mov    %r9d,%ecx
   0.17%         0x00007f5322d7f21b:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   4.98%         0x00007f5322d7f21d:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f5322d7f77a
  11.21%         0x00007f5322d7f224:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   1.17%         0x00007f5322d7f228:   cmp    $0x6,%ebx
          ╭      0x00007f5322d7f22b:   jge    0x00007f5322d7f274
   2.69%  │      0x00007f5322d7f231:   cmp    $0x3,%ebx
          │╭     0x00007f5322d7f234:   jge    0x00007f5322d7f25d
   0.23%  ││     0x00007f5322d7f23a:   cmp    $0x2,%ebx
          ││     0x00007f5322d7f23d:   data16 xchg %ax,%ax
          ││     0x00007f5322d7f240:   jge    0x00007f5322d7f34e
   1.08%  ││     0x00007f5322d7f246:   cmp    $0x0,%ebx
          ││     0x00007f5322d7f249:   je     0x00007f5322d7f365
          ││     0x00007f5322d7f24f:   cmp    $0x1,%ebx
          ││     0x00007f5322d7f252:   je     0x00007f5322d7f385
          ││     0x00007f5322d7f258:   jmp    0x00007f5322d7f682
   0.31%  │↘     0x00007f5322d7f25d:   cmp    $0x5,%ebx
          │      0x00007f5322d7f260:   jge    0x00007f5322d7f3b2
   0.05%  │      0x00007f5322d7f266:   cmp    $0x3,%ebx
          │      0x00007f5322d7f269:   je     0x00007f5322d7f345
   1.08%  │      0x00007f5322d7f26f:   jmp    0x00007f5322d7f3a9
   2.75%  ↘      0x00007f5322d7f274:   cmp    $0xa,%ebx
            ╭    0x00007f5322d7f277:   jge    0x00007f5322d7f2a5
   4.71%    │    0x00007f5322d7f27d:   cmp    $0x8,%ebx
            │╭   0x00007f5322d7f280:   jge    0x00007f5322d7f294
   0.02%    ││   0x00007f5322d7f286:   cmp    $0x6,%ebx
            ││   0x00007f5322d7f289:   je     0x00007f5322d7f397
            ││   0x00007f5322d7f28f:   jmp    0x00007f5322d7f3a0
   0.11%    │↘   0x00007f5322d7f294:   cmp    $0x8,%ebx
            │    0x00007f5322d7f297:   je     0x00007f5322d7f38e
            │    0x00007f5322d7f29d:   data16 xchg %ax,%ax
            │    0x00007f5322d7f2a0:   jmp    0x00007f5322d7f40e
   1.36%    ↘    0x00007f5322d7f2a5:   cmp    $0xc,%ebx
              ╭  0x00007f5322d7f2a8:   jge    0x00007f5322d7f2bc
              │  0x00007f5322d7f2ae:   cmp    $0xa,%ebx
              │  0x00007f5322d7f2b1:   je     0x00007f5322d7f405           ;   {no_reloc}
              │  0x00007f5322d7f2b7:   jmp    0x00007f5322d7f3ef
              ↘  0x00007f5322d7f2bc:   cmp    $0x12,%ebx
                 0x00007f5322d7f2bf:   nop
                 0x00007f5322d7f2c0:   jge    0x00007f5322d7f305
                 0x00007f5322d7f2c6:   cmp    $0xf,%ebx
                 0x00007f5322d7f2c9:   jge    0x00007f5322d7f2eb
                 0x00007f5322d7f2cf:   cmp    $0xe,%ebx
....................................................................................................
  42.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  44.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
  42.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   6.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   2.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   0.85%              kernel  [unknown] 
   0.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 992 
   0.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   0.08%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   0.02%              kernel  [unknown] 
   0.90%  <...other 286 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 965 
   1.82%              kernel  [unknown] 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 992 
   0.08%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::flush 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%      jvmci, level 4
   1.82%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2129482.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.758 ns/op
# Warmup Iteration   2: 14.563 ns/op
# Warmup Iteration   3: 14.572 ns/op
# Warmup Iteration   4: 14.568 ns/op
# Warmup Iteration   5: 14.560 ns/op
Iteration   1: 14.572 ns/op
Iteration   2: 14.569 ns/op
Iteration   3: 14.568 ns/op
Iteration   4: 14.575 ns/op
Iteration   5: 14.563 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  14.569 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (14.563, 14.569, 14.575), stdev = 0.005
  CI (99.9%): [14.551, 14.588] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 228439 total address lines.
Perf output processed (skipped 60.787 seconds):
 Column 1: cycles (50578 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 

            0x00007f7d5ed80040:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed80045:   mov    $0x9,%ecx
            0x00007f7d5ed8004a:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed8004f:   lea    0x8(%r8),%r8d
            0x00007f7d5ed80053:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80058:   lea    0xa(%r8),%r8d
            0x00007f7d5ed8005c:   nopl   0x0(%rax)
            0x00007f7d5ed80060:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80065:   lea    0xc(%r8),%r8d
            0x00007f7d5ed80069:   jmp    0x00007f7d5ed7fee0
   1.65%    0x00007f7d5ed8006e:   lea    0xd(%r8),%r8d
   0.67%    0x00007f7d5ed80072:   jmp    0x00007f7d5ed7fee0
   1.57%    0x00007f7d5ed80077:   lea    0xb(%r8),%r8d
   0.63%    0x00007f7d5ed8007b:   jmp    0x00007f7d5ed7fee0
   1.56%    0x00007f7d5ed80080:   lea    0x9(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.70%    0x00007f7d5ed80084:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80089:   mov    $0x5,%ecx
            0x00007f7d5ed8008e:   jmp    0x00007f7d5ed7ff75
   1.48%    0x00007f7d5ed80093:   mov    $0x4,%ecx
   0.67%    0x00007f7d5ed80098:   jmp    0x00007f7d5ed7ff75           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
            0x00007f7d5ed8009d:   mov    $0x1,%ecx
            0x00007f7d5ed800a2:   jmp    0x00007f7d5ed7ff75
   1.47%    0x00007f7d5ed800a7:   mov    $0x2,%ecx
   0.67%    0x00007f7d5ed800ac:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed800b1:   mov    $0x3,%ecx                    ;   {no_reloc}
            0x00007f7d5ed800b6:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed800bb:   mov    $0x7,%ecx
            0x00007f7d5ed800c0:   jmp    0x00007f7d5ed7ff75
   1.20%    0x00007f7d5ed800c5:   mov    $0x6,%ecx
   0.62%    0x00007f7d5ed800ca:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed800cf:   mov    $0xf,%ecx
            0x00007f7d5ed800d4:   jmp    0x00007f7d5ed7ff75
   1.18%    0x00007f7d5ed800d9:   mov    $0x10,%ecx
   0.70%    0x00007f7d5ed800de:   xchg   %ax,%ax
            0x00007f7d5ed800e0:   jmp    0x00007f7d5ed7ff75
   1.57%    0x00007f7d5ed800e5:   lea    0x5(%r8),%r8d
   0.70%    0x00007f7d5ed800e9:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed800ee:   lea    0x4(%r8),%r8d
            0x00007f7d5ed800f2:   jmp    0x00007f7d5ed7fee0
   1.67%    0x00007f7d5ed800f7:   lea    0x3(%r8),%r8d
   0.66%    0x00007f7d5ed800fb:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80100:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            0x00007f7d5ed80104:   jmp    0x00007f7d5ed7fee0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.81%    0x00007f7d5ed80109:   inc    %r8d
   0.66%    0x00007f7d5ed8010c:   jmp    0x00007f7d5ed7fee0
   1.28%    0x00007f7d5ed80111:   lea    0xf(%r8),%r8d
   0.69%    0x00007f7d5ed80115:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed8011a:   lea    0x10(%r8),%r8d
            0x00007f7d5ed8011e:   xchg   %ax,%ax
            0x00007f7d5ed80120:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80125:   lea    0x6(%r8),%r8d
            0x00007f7d5ed80129:   jmp    0x00007f7d5ed7fee0
   1.60%    0x00007f7d5ed8012e:   lea    0x7(%r8),%r8d
   0.67%    0x00007f7d5ed80132:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80137:   mov    $0x17,%ecx
            0x00007f7d5ed8013c:   nopl   0x0(%rax)
            0x00007f7d5ed80140:   jmp    0x00007f7d5ed7ff75
   1.43%    0x00007f7d5ed80145:   mov    $0x18,%ecx
   0.66%    0x00007f7d5ed8014a:   jmp    0x00007f7d5ed7ff75
   1.54%    0x00007f7d5ed8014f:   mov    $0x16,%ecx
   0.75%    0x00007f7d5ed80154:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed80159:   mov    $0x13,%ecx
            0x00007f7d5ed8015e:   xchg   %ax,%ax
            0x00007f7d5ed80160:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed80165:   mov    $0x15,%ecx
            0x00007f7d5ed8016a:   jmp    0x00007f7d5ed7ff75
   1.46%    0x00007f7d5ed8016f:   mov    $0x14,%ecx
   0.70%    0x00007f7d5ed80174:   jmp    0x00007f7d5ed7ff75
   1.48%    0x00007f7d5ed80179:   mov    $0x12,%ecx
   0.68%    0x00007f7d5ed8017e:   xchg   %ax,%ax
            0x00007f7d5ed80180:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed80185:   mov    $0x11,%ecx
            0x00007f7d5ed8018a:   jmp    0x00007f7d5ed7ff75
            0x00007f7d5ed8018f:   lea    0x16(%r8),%r8d
            0x00007f7d5ed80193:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed80198:   lea    0x18(%r8),%r8d
            0x00007f7d5ed8019c:   nopl   0x0(%rax)
            0x00007f7d5ed801a0:   jmp    0x00007f7d5ed7fee0
            0x00007f7d5ed801a5:   lea    0x12(%r8),%r8d
            0x00007f7d5ed801a9:   jmp    0x00007f7d5ed7fee0
....................................................................................................
  34.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 

             0x00007f7d5ed7ff5f:   add    %dl,0x2(%rbp)
             0x00007f7d5ed7ff62:   add    %al,(%rax)
             0x00007f7d5ed7ff64:   (bad)  
             0x00007f7d5ed7ff65:   add    (%rax),%al
             0x00007f7d5ed7ff67:   add    %ah,(%rdi)
             0x00007f7d5ed7ff69:   add    (%rax),%al
             0x00007f7d5ed7ff6b:   add    %dh,-0x46fffffe(%rip)        # 0x00007f7d17d7ff73
                                                                       ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
             0x00007f7d5ed7ff71:   (bad)  
             0x00007f7d5ed7ff72:   add    %al,(%rax)
             0x00007f7d5ed7ff74:   add    %al,-0x75(%rdx)
             0x00007f7d5ed7ff77:   pop    %rsp
             0x00007f7d5ed7ff78:   mov    %dl,(%rsp,%rax,2)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
             0x00007f7d5ed7ff7b:   add    %ecx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
             0x00007f7d5ed7ff7d:   mov    %r9d,%ecx
             0x00007f7d5ed7ff80:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
             0x00007f7d5ed7ff82:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007f7d5ed8051a
   6.52%     0x00007f7d5ed7ff89:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
             0x00007f7d5ed7ff8d:   mov    %ebx,%edi
   0.02%     0x00007f7d5ed7ff8f:   cmp    $0x17,%edi
             0x00007f7d5ed7ff92:   ja     0x00007f7d5ed80422
   1.28%  ╭  0x00007f7d5ed7ff98:   lea    0x9(%rip),%rbx        # 0x00007f7d5ed7ffa8
          │  0x00007f7d5ed7ff9f:   movslq (%rbx,%rdi,4),%rdi
   5.09%  │  0x00007f7d5ed7ffa3:   add    %rdi,%rbx
   1.38%  │  0x00007f7d5ed7ffa6:   jmp    *%rbx
          ↘  0x00007f7d5ed7ffa8:   (bad)  
             0x00007f7d5ed7ffa9:   add    %eax,(%rax)
             0x00007f7d5ed7ffab:   add    %bl,0x1(%rax)
             0x00007f7d5ed7ffae:   add    %al,(%rax)
             0x00007f7d5ed7ffb0:   rex.WRXB add %r8,(%r8)
             0x00007f7d5ed7ffb3:   add    %al,0x1(%rsi)                ;   {no_reloc}
             0x00007f7d5ed7ffb6:   add    %al,(%rax)
             0x00007f7d5ed7ffb8:   cmp    $0x7d000001,%eax
             0x00007f7d5ed7ffbd:   add    %eax,(%rax)
             0x00007f7d5ed7ffbf:   add    %al,-0x58ffffff(%rsi)
....................................................................................................
  24.95%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 

             0x00007f7d5ed7fead:   mov    %ebx,%r9d
             0x00007f7d5ed7feb0:   jmp    0x00007f7d5ed7fd10
             0x00007f7d5ed7feb5:   lea    0x14(%r8),%r8d               ;   {no_reloc}
             0x00007f7d5ed7feb9:   mov    %ebx,%r9d
             0x00007f7d5ed7febc:   nopl   0x0(%rax)
             0x00007f7d5ed7fec0:   jmp    0x00007f7d5ed7fd10
             0x00007f7d5ed7fec5:   lea    0x11(%r8),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
             0x00007f7d5ed7fec9:   mov    %ebx,%r9d
             0x00007f7d5ed7fecc:   jmp    0x00007f7d5ed7fd10
   0.03%     0x00007f7d5ed7fed1:   lea    -0x2(%r10),%r11d
   0.00%     0x00007f7d5ed7fed5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.15%     0x00007f7d5ed7fee0:   cmp    %r9d,%r11d
             0x00007f7d5ed7fee3:   jle    0x00007f7d5ed801e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   2.50%     0x00007f7d5ed7fee9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   6.48%     0x00007f7d5ed7feee:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f7d5ed804f7
   6.57%     0x00007f7d5ed7fef5:   mov    %ecx,%ebx
             0x00007f7d5ed7fef7:   cmp    $0x17,%ebx
             0x00007f7d5ed7fefa:   ja     0x00007f7d5ed803ff
   1.36%  ╭  0x00007f7d5ed7ff00:   lea    0x9(%rip),%rcx        # 0x00007f7d5ed7ff10
          │  0x00007f7d5ed7ff07:   movslq (%rcx,%rbx,4),%rbx
   5.35%  │  0x00007f7d5ed7ff0b:   add    %rbx,%rcx
   1.30%  │  0x00007f7d5ed7ff0e:   jmp    *%rcx
          ↘  0x00007f7d5ed7ff10:   lea    (%rcx),%eax
             0x00007f7d5ed7ff12:   add    %al,(%rax)
             0x00007f7d5ed7ff14:   xchg   %eax,%edi
             0x00007f7d5ed7ff15:   add    %eax,(%rax)
             0x00007f7d5ed7ff17:   add    %ah,-0x7cffffff(%rcx)
             0x00007f7d5ed7ff1d:   add    %eax,(%rax)
             0x00007f7d5ed7ff1f:   add    %bh,0x1(%rcx)
             0x00007f7d5ed7ff22:   add    %al,(%rax)
             0x00007f7d5ed7ff24:   mov    $0x1,%ch
             0x00007f7d5ed7ff26:   add    %al,(%rax)
....................................................................................................
  23.74%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
  24.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
  23.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   8.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   6.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   0.25%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1007 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.03%  <...other 302 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 982 
   1.30%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1007 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  syscall 
   0.21%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.29%       jvmci, level 4
   1.30%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.03%       hsdis-amd64.so
   0.03%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:45

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

Benchmark                                   (branches)  Mode  Cnt   Score    Error  Units
EnumSwitchBenchmark.chained_ifs                      3  avgt    5   1.637 ±  0.001  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN             ---
EnumSwitchBenchmark.chained_ifs                      6  avgt    5   1.751 ±  0.017  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN             ---
EnumSwitchBenchmark.chained_ifs                     12  avgt    5   3.019 ±  0.001  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN             ---
EnumSwitchBenchmark.chained_ifs                     24  avgt    5   5.940 ±  0.001  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN             ---
EnumSwitchBenchmark.switch_expressions               3  avgt    5   1.752 ±  0.001  ns/op
EnumSwitchBenchmark.switch_expressions:asm           3  avgt          NaN             ---
EnumSwitchBenchmark.switch_expressions               6  avgt    5   2.114 ±  0.008  ns/op
EnumSwitchBenchmark.switch_expressions:asm           6  avgt          NaN             ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5   2.497 ±  0.069  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt          NaN             ---
EnumSwitchBenchmark.switch_expressions              24  avgt    5  14.589 ±  0.072  ns/op
EnumSwitchBenchmark.switch_expressions:asm          24  avgt          NaN             ---
EnumSwitchBenchmark.switch_statements                3  avgt    5   1.727 ±  0.001  ns/op
EnumSwitchBenchmark.switch_statements:asm            3  avgt          NaN             ---
EnumSwitchBenchmark.switch_statements                6  avgt    5   2.175 ±  0.034  ns/op
EnumSwitchBenchmark.switch_statements:asm            6  avgt          NaN             ---
EnumSwitchBenchmark.switch_statements               12  avgt    5   2.483 ±  0.006  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt          NaN             ---
EnumSwitchBenchmark.switch_statements               24  avgt    5  14.569 ±  0.019  ns/op
EnumSwitchBenchmark.switch_statements:asm           24  avgt          NaN             ---
