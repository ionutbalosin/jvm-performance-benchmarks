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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.576 ns/op
# Warmup Iteration   2: 1.557 ns/op
# Warmup Iteration   3: 1.562 ns/op
# Warmup Iteration   4: 1.562 ns/op
# Warmup Iteration   5: 1.561 ns/op
Iteration   1: 1.561 ns/op
Iteration   2: 1.562 ns/op
Iteration   3: 1.562 ns/op
Iteration   4: 1.562 ns/op
Iteration   5: 1.562 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  1.562 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.561, 1.562, 1.562), stdev = 0.001
  CI (99.9%): [1.560, 1.563] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 125012 total address lines.
Perf output processed (skipped 56.153 seconds):
 Column 1: cycles (50561 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 572 

                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                           0x00007f27e8614d88:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
                                           0x00007f27e8614d8e:   jne    0x00007f27e8614fa8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                           0x00007f27e8614d94:   mov    $0x3,%edi
                                           0x00007f27e8614d99:   jmp    0x00007f27e8614d50
                                           0x00007f27e8614d9b:   mov    $0x2,%edi
                                           0x00007f27e8614da0:   jmp    0x00007f27e8614d50
   0.23%    ↗                              0x00007f27e8614da2:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rsi=Oop rbp=NarrowOop r13=Oop }
            │                                                                                        ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.23%    │                              0x00007f27e8614da9:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
            │                                                                                        ;   {poll}
   0.13%    │                              0x00007f27e8614dac:   cmp    %r10d,%ebx
          ╭ │                              0x00007f27e8614daf:   jge    0x00007f27e8614ef7           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   0.02%  │ │                              0x00007f27e8614db5:   mov    %edx,%r9d
          │ │                              0x00007f27e8614db8:   sub    %ebx,%r9d
          │ │                              0x00007f27e8614dbb:   add    $0xfffffffd,%r9d
          │ │                              0x00007f27e8614dbf:   cmp    %ebx,%r10d
   0.02%  │ │                              0x00007f27e8614dc2:   cmovl  %eax,%r9d
          │ │                              0x00007f27e8614dc6:   cmp    $0xfa0,%r9d
          │ │                              0x00007f27e8614dcd:   cmova  %r11d,%r9d
   0.02%  │ │                              0x00007f27e8614dd1:   add    %ebx,%r9d
          │╭│                              0x00007f27e8614dd4:   jmp    0x00007f27e8614de6
   1.91%  │││   ↗                          0x00007f27e8614dd6:   mov    $0x1,%edi                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││   │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │││   │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.24%  │││   │  ↗↗                      0x00007f27e8614ddb:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││   │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.02%  │││   │  ││                      0x00007f27e8614dde:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││   │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   4.12%  │││   │  ││                      0x00007f27e8614de1:   cmp    %r9d,%ebx
          ││╰   │  ││                      0x00007f27e8614de4:   jge    0x00007f27e8614da2           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││    │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   4.10%  │↘    │  ││                      0x00007f27e8614de6:   mov    0x10(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │     │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  14.17%  │     │  ││                      0x00007f27e8614dea:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
          │  ╭  │  ││                      0x00007f27e8614df0:   jne    0x00007f27e8614ec8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │  │  │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.97%  │  │  │  ││                      0x00007f27e8614df6:   mov    $0x1,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │  │  │  ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.95%  │  │  │  ││          ↗↗          0x00007f27e8614dfc:   mov    0x14(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   1.55%  │  │  │  ││          ││          0x00007f27e8614e00:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   2.09%  │  │  │  ││          ││          0x00007f27e8614e03:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
          │  │╭ │  ││          ││          0x00007f27e8614e09:   jne    0x00007f27e8614e9c           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │  ││ │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%  │  ││ │  ││          ││          0x00007f27e8614e0f:   mov    $0x1,%edi                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │  ││ │  ││          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.08%  │  ││ │  ││      ↗↗  ││          0x00007f27e8614e14:   mov    0x18(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   4.37%  │  ││ │  ││      ││  ││          0x00007f27e8614e18:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ │  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   2.01%  │  ││ │  ││      ││  ││          0x00007f27e8614e1b:   nopl   0x0(%rax,%rax,1)
   0.05%  │  ││ │  ││      ││  ││          0x00007f27e8614e20:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
          │  ││╭│  ││      ││  ││          0x00007f27e8614e26:   jne    0x00007f27e8614e70           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │  ││││  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.08%  │  ││││  ││      ││  ││          0x00007f27e8614e2c:   mov    $0x1,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │  ││││  ││      ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.07%  │  ││││  ││  ↗↗  ││  ││          0x00007f27e8614e32:   mov    0x1c(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   9.65%  │  ││││  ││  ││  ││  ││          0x00007f27e8614e36:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.02%  │  ││││  ││  ││  ││  ││          0x00007f27e8614e39:   nopl   0x0(%rax)
   0.04%  │  ││││  ││  ││  ││  ││          0x00007f27e8614e40:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
          │  │││╰  ││  ││  ││  ││          0x00007f27e8614e46:   je     0x00007f27e8614dd6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │││   ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │  │││   ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   4.07%  │  │││   ││  ││  ││  ││          0x00007f27e8614e48:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
          │  │││ ╭ ││  ││  ││  ││          0x00007f27e8614e4e:   je     0x00007f27e8614e66           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │││ │ ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │  │││ │ ││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.98%  │  │││ │ ││  ││  ││  ││          0x00007f27e8614e50:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
          │  │││ │╭││  ││  ││  ││          0x00007f27e8614e56:   jne    0x00007f27e8614f57           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │││ ││││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │  │││ ││││  ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.91%  │  │││ ││││  ││  ││  ││          0x00007f27e8614e5c:   mov    $0x3,%edi
          │  │││ ││╰│  ││  ││  ││          0x00007f27e8614e61:   jmp    0x00007f27e8614ddb
   1.99%  │  │││ ↘│ │  ││  ││  ││          0x00007f27e8614e66:   mov    $0x2,%edi
          │  │││  │ ╰  ││  ││  ││          0x00007f27e8614e6b:   jmp    0x00007f27e8614ddb
   1.99%  │  ││↘  │    ││  ││  ││          0x00007f27e8614e70:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
          │  ││   │  ╭ ││  ││  ││          0x00007f27e8614e76:   je     0x00007f27e8614e94           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │  │ ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │  ││   │  │ ││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │  ││   │  │ ││  ││  ││          0x00007f27e8614e78:   nopl   0x0(%rax,%rax,1)
          │  ││   │  │ ││  ││  ││          0x00007f27e8614e80:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
          │  ││   │  │╭││  ││  ││          0x00007f27e8614e86:   jne    0x00007f27e8614f62           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │  ││││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │  ││   │  ││││  ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.04%  │  ││   │  ││││  ││  ││          0x00007f27e8614e8c:   mov    $0x3,%r8d
   1.99%  │  ││   │  ││╰│  ││  ││          0x00007f27e8614e92:   jmp    0x00007f27e8614e32
   3.87%  │  ││   │  ↘│ │  ││  ││          0x00007f27e8614e94:   mov    $0x2,%r8d
          │  ││   │   │ ╰  ││  ││          0x00007f27e8614e9a:   jmp    0x00007f27e8614e32
   4.08%  │  │↘   │   │    ││  ││          0x00007f27e8614e9c:   nopl   0x0(%rax)
          │  │    │   │    ││  ││          0x00007f27e8614ea0:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
          │  │    │   │  ╭ ││  ││          0x00007f27e8614ea6:   je     0x00007f27e8614ebe           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │    │   │  │ ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │  │    │   │  │ ││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │  │    │   │  │ ││  ││          0x00007f27e8614ea8:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
          │  │    │   │  │╭││  ││          0x00007f27e8614eae:   jne    0x00007f27e8614f5a           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │    │   │  ││││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │  │    │   │  ││││  ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.58%  │  │    │   │  ││││  ││          0x00007f27e8614eb4:   mov    $0x3,%edi
   0.28%  │  │    │   │  ││╰│  ││          0x00007f27e8614eb9:   jmp    0x00007f27e8614e14
   2.26%  │  │    │   │  ↘│ │  ││          0x00007f27e8614ebe:   mov    $0x2,%edi
          │  │    │   │   │ ╰  ││          0x00007f27e8614ec3:   jmp    0x00007f27e8614e14
   4.09%  │  ↘    │   │   │    ││          0x00007f27e8614ec8:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
          │       │   │   │  ╭ ││          0x00007f27e8614ece:   je     0x00007f27e8614ee7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │       │   │   │  │ ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │       │   │   │  │ ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%  │       │   │   │  │ ││          0x00007f27e8614ed0:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
          │       │   │   │  │╭││          0x00007f27e8614ed6:   jne    0x00007f27e8614f65           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │       │   │   │  ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │       │   │   │  ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.98%  │       │   │   │  ││││          0x00007f27e8614edc:   mov    $0x3,%r8d
          │       │   │   │  ││╰│          0x00007f27e8614ee2:   jmp    0x00007f27e8614dfc
   3.96%  │       │   │   │  ↘│ │          0x00007f27e8614ee7:   mov    $0x2,%r8d
          │       │   │   │   │ ╰          0x00007f27e8614eed:   jmp    0x00007f27e8614dfc
          │       │   │   │   │            0x00007f27e8614ef2:   mov    $0x1,%ebx
          ↘       │   │   │   │            0x00007f27e8614ef7:   cmp    %edx,%ebx
                  │   │   │   │  ╭         0x00007f27e8614ef9:   jge    0x00007f27e8614f42           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
                  │   │   │   │  │     ↗   0x00007f27e8614eff:   mov    0x10(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.04%          │   │   │   │  │     │   0x00007f27e8614f03:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
                  │   │   │   │  │╭    │   0x00007f27e8614f09:   je     0x00007f27e8614f2f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                  │   │   │   │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%          │   │   │   │  ││    │   0x00007f27e8614f0b:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
                  │   │   │   │  ││╭   │   0x00007f27e8614f11:   je     0x00007f27e8614f27           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                  │   │   │   │  │││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%          │   │   │   │  │││   │   0x00007f27e8614f13:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
                  │   │   │   │  │││╭  │   0x00007f27e8614f19:   jne    0x00007f27e8614f65           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  ││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                  │   │   │   │  ││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%          │   │   │   │  ││││  │   0x00007f27e8614f1f:   mov    $0x3,%r11d
                  │   │   │   │  ││││╭ │   0x00007f27e8614f25:   jmp    0x00007f27e8614f35
                  │   │   │   │  ││↘││ │   0x00007f27e8614f27:   mov    $0x2,%r11d
                  │   │   │   │  ││ ││╭│   0x00007f27e8614f2d:   jmp    0x00007f27e8614f35
   0.02%          │   │   │   │  │↘ ││││   0x00007f27e8614f2f:   mov    $0x1,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
                  │   │   │   │  │  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.13%          │   │   │   │  │  │↘↘│   0x00007f27e8614f35:   add    %r11d,%edi                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │  │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%          │   │   │   │  │  │  │   0x00007f27e8614f38:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │  │  │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
                  │   │   │   │  │  │  │   0x00007f27e8614f3a:   cmp    %edx,%ebx
   0.00%          │   │   │   │  │  │  │   0x00007f27e8614f3c:   nopl   0x0(%rax)
   0.11%          │   │   │   │  │  │  ╰   0x00007f27e8614f40:   jl     0x00007f27e8614eff
   0.02%          │   │   │   │  ↘  │      0x00007f27e8614f42:   mov    %edi,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │   │   │   │     │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
                  │   │   │   │     │      0x00007f27e8614f44:   add    $0x30,%rsp
                  │   │   │   │     │      0x00007f27e8614f48:   pop    %rbp
   0.11%          │   │   │   │     │      0x00007f27e8614f49:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  │   │   │   │     │      0x00007f27e8614f50:   ja     0x00007f27e8614fc0
   0.02%          │   │   │   │     │      0x00007f27e8614f56:   ret    
                  ↘   │   │   │     │      0x00007f27e8614f57:   add    $0x2,%ebx
                      │   ↘   │     │      0x00007f27e8614f5a:   inc    %ebx
                      │       │     │      0x00007f27e8614f5c:   mov    %r8d,%edi
                      │       │     │      0x00007f27e8614f5f:   nop
                      │       │     │   ╭  0x00007f27e8614f60:   jmp    0x00007f27e8614f65
                      ↘       │     │   │  0x00007f27e8614f62:   add    $0x2,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                              │     │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
                              ↘     ↘   ↘  0x00007f27e8614f65:   mov    $0xffffff45,%esi
                                           0x00007f27e8614f6a:   mov    %r13,(%rsp)
                                           0x00007f27e8614f6e:   mov    %edx,0x8(%rsp)
....................................................................................................
  97.78%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 572 
   0.37%              kernel  [unknown] 
   0.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 604 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 572 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 572 
   1.37%              kernel  [unknown] 
   0.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 604 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  PerfLongVariant::sample 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.32%         c2, level 4
   1.37%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1935214.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:20:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.291 ns/op
# Warmup Iteration   2: 2.246 ns/op
# Warmup Iteration   3: 2.325 ns/op
# Warmup Iteration   4: 2.302 ns/op
# Warmup Iteration   5: 2.329 ns/op
Iteration   1: 2.328 ns/op
Iteration   2: 2.319 ns/op
Iteration   3: 2.318 ns/op
Iteration   4: 2.336 ns/op
Iteration   5: 2.323 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  2.325 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (2.318, 2.325, 2.336), stdev = 0.007
  CI (99.9%): [2.296, 2.353] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 131226 total address lines.
Perf output processed (skipped 56.325 seconds):
 Column 1: cycles (50524 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 

                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                             0x00007f7d8c63a1ca:   mov    $0x5,%edi
                             0x00007f7d8c63a1cf:   jmp    0x00007f7d8c63a17c
                             0x00007f7d8c63a1d1:   cmp    $0xffe06f42,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a10})}
                             0x00007f7d8c63a1d7:   jne    0x00007f7d8c63a424           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                             0x00007f7d8c63a1dd:   mov    $0x6,%edi
                             0x00007f7d8c63a1e2:   jmp    0x00007f7d8c63a17c
   0.23%    ↗                0x00007f7d8c63a1e4:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rsi=Oop rbp=NarrowOop r13=Oop }
            │                                                                          ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.16%    │                0x00007f7d8c63a1eb:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
            │                                                                          ;   {poll}
   0.07%    │                0x00007f7d8c63a1ee:   cmp    %r10d,%ebx
            │                0x00007f7d8c63a1f1:   jge    0x00007f7d8c63a334           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
            │                0x00007f7d8c63a1f7:   mov    %edx,%r9d
            │                0x00007f7d8c63a1fa:   sub    %ebx,%r9d
            │                0x00007f7d8c63a1fd:   dec    %r9d
   0.02%    │                0x00007f7d8c63a200:   cmp    %ebx,%r10d
            │                0x00007f7d8c63a203:   cmovl  %eax,%r9d
            │                0x00007f7d8c63a207:   cmp    $0x7d0,%r9d
            │                0x00007f7d8c63a20e:   cmova  %r11d,%r9d
   0.01%    │                0x00007f7d8c63a212:   add    %ebx,%r9d
   0.01%  ╭ │                0x00007f7d8c63a215:   jmp    0x00007f7d8c63a24c
   0.01%  │ │↗               0x00007f7d8c63a217:   mov    $0x2,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   5.58%  │ ││ ↗ ↗ ↗↗        0x00007f7d8c63a21d:   mov    0x14(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   9.98%  │ ││ │ │ ││        0x00007f7d8c63a221:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%  │ ││ │ │ ││        0x00007f7d8c63a224:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
          │ ││ │ │ ││        0x00007f7d8c63a22a:   je     0x00007f7d8c63a325           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ ││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.34%  │ ││ │ │ ││        0x00007f7d8c63a230:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
          │╭││ │ │ ││        0x00007f7d8c63a236:   jne    0x00007f7d8c63a2bc           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          ││││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││││ │ │ ││        0x00007f7d8c63a23c:   mov    $0x2,%edi                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          ││││ │ │ ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
  11.07%  ││││ │ │ ││ ↗ ↗ ↗  0x00007f7d8c63a241:   add    %r8d,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.05%  ││││ │ │ ││ │ │ │  0x00007f7d8c63a244:   add    $0x2,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.18%  ││││ │ │ ││ │ │ │  0x00007f7d8c63a247:   cmp    %r9d,%ebx
          ││╰│ │ │ ││ │ │ │  0x00007f7d8c63a24a:   jge    0x00007f7d8c63a1e4           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   0.18%  ↘│ │ │ │ ││ │ │ │  0x00007f7d8c63a24c:   mov    0x10(%rsi,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  25.14%   │ │ │ │ ││ │ │ │  0x00007f7d8c63a250:   cmp    $0xffe06f13,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
           │ │ │ │ ││ │ │ │  0x00007f7d8c63a256:   je     0x00007f7d8c63a316           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
           │ │ │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   9.36%   │ │ │ │ ││ │ │ │  0x00007f7d8c63a25c:   nopl   0x0(%rax)
   0.02%   │ │ │ │ ││ │ │ │  0x00007f7d8c63a260:   cmp    $0xffe06f1c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
           │ ╰ │ │ ││ │ │ │  0x00007f7d8c63a266:   je     0x00007f7d8c63a217           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │   │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
           │   │ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   3.02%   │   │ │ ││ │ │ │  0x00007f7d8c63a268:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
           │  ╭│ │ ││ │ │ │  0x00007f7d8c63a26e:   jne    0x00007f7d8c63a278           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │  ││ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
           │  ││ │ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │  ││ │ ││ │ │ │  0x00007f7d8c63a270:   mov    $0x3,%r8d
           │  │╰ │ ││ │ │ │  0x00007f7d8c63a276:   jmp    0x00007f7d8c63a21d
   6.55%   │  ↘  │ ││ │ │ │  0x00007f7d8c63a278:   nopl   0x0(%rax,%rax,1)
   1.39%   │     │ ││ │ │ │  0x00007f7d8c63a280:   cmp    $0xffe06f2f,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037978})}
           │    ╭│ ││ │ │ │  0x00007f7d8c63a286:   jne    0x00007f7d8c63a290           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │    ││ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
           │    ││ ││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%   │    ││ ││ │ │ │  0x00007f7d8c63a288:   mov    $0x4,%r8d
   1.39%   │    │╰ ││ │ │ │  0x00007f7d8c63a28e:   jmp    0x00007f7d8c63a21d
   2.60%   │    ↘  ││ │ │ │  0x00007f7d8c63a290:   cmp    $0xffe06f39,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0379c8})}
           │      ╭││ │ │ │  0x00007f7d8c63a296:   jne    0x00007f7d8c63a2a5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │      │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
           │      │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │      │││ │ │ │  0x00007f7d8c63a298:   mov    $0x5,%r8d
           │      │││ │ │ │  0x00007f7d8c63a29e:   xchg   %ax,%ax
           │      │╰│ │ │ │  0x00007f7d8c63a2a0:   jmp    0x00007f7d8c63a21d
   3.25%   │      ↘ │ │ │ │  0x00007f7d8c63a2a5:   cmp    $0xffe06f42,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a10})}
           │        │ │ │ │  0x00007f7d8c63a2ab:   jne    0x00007f7d8c63a3e2           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │        │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
           │        │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
           │        │ │ │ │  0x00007f7d8c63a2b1:   mov    $0x6,%r8d
           │        ╰ │ │ │  0x00007f7d8c63a2b7:   jmp    0x00007f7d8c63a21d
   0.15%   ↘          │ │ │  0x00007f7d8c63a2bc:   nopl   0x0(%rax)
   4.08%              │ │ │  0x00007f7d8c63a2c0:   cmp    $0xffe06f25,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
                     ╭│ │ │  0x00007f7d8c63a2c6:   jne    0x00007f7d8c63a2d2           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                     ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                     ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%             ││ │ │  0x00007f7d8c63a2c8:   mov    $0x3,%edi
   0.01%             │╰ │ │  0x00007f7d8c63a2cd:   jmp    0x00007f7d8c63a241
   2.93%             ↘  │ │  0x00007f7d8c63a2d2:   cmp    $0xffe06f2f,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037978})}
                       ╭│ │  0x00007f7d8c63a2d8:   jne    0x00007f7d8c63a2e5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                       ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                       ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                       ││ │  0x00007f7d8c63a2da:   mov    $0x4,%edi
                       ││ │  0x00007f7d8c63a2df:   nop
                       │╰ │  0x00007f7d8c63a2e0:   jmp    0x00007f7d8c63a241
   6.11%               ↘  │  0x00007f7d8c63a2e5:   cmp    $0xffe06f39,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0379c8})}
                         ╭│  0x00007f7d8c63a2eb:   jne    0x00007f7d8c63a2f7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.13%                 ││  0x00007f7d8c63a2ed:   mov    $0x5,%edi
                         │╰  0x00007f7d8c63a2f2:   jmp    0x00007f7d8c63a241
                         ↘   0x00007f7d8c63a2f7:   nopw   0x0(%rax,%rax,1)
                             0x00007f7d8c63a300:   cmp    $0xffe06f42,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a10})}
                             0x00007f7d8c63a306:   jne    0x00007f7d8c63a3dd           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                             0x00007f7d8c63a30c:   mov    $0x6,%edi
                             0x00007f7d8c63a311:   jmp    0x00007f7d8c63a241
....................................................................................................
  95.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   2.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 595 
   0.18%              kernel  [unknown] 
   0.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.88%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 565 
   1.27%              kernel  [unknown] 
   0.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 595 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  fileStream::flush 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.18%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%         c2, level 4
   1.27%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:18:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.454 ns/op
# Warmup Iteration   2: 3.413 ns/op
# Warmup Iteration   3: 3.412 ns/op
# Warmup Iteration   4: 3.412 ns/op
# Warmup Iteration   5: 3.413 ns/op
Iteration   1: 3.410 ns/op
Iteration   2: 3.413 ns/op
Iteration   3: 3.412 ns/op
Iteration   4: 3.412 ns/op
Iteration   5: 3.412 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  3.412 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (3.410, 3.412, 3.413), stdev = 0.001
  CI (99.9%): [3.408, 3.416] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 126198 total address lines.
Perf output processed (skipped 56.121 seconds):
 Column 1: cycles (50714 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 558 

                                        # {method} {0x00007f710347b5b8} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                        #           [sp+0x40]  (sp of caller)
                                        0x00007f7184639d40:   mov    0x8(%rsi),%r10d
                                        0x00007f7184639d44:   movabs $0x7f7107000000,%r11
                                        0x00007f7184639d4e:   add    %r11,%r10
                                        0x00007f7184639d51:   cmp    %r10,%rax
                                        0x00007f7184639d54:   jne    0x00007f71840c4080           ;   {runtime_call ic_miss_stub}
                                        0x00007f7184639d5a:   xchg   %ax,%ax
                                        0x00007f7184639d5c:   nopl   0x0(%rax)
                                      [Verified Entry Point]
   0.01%                                0x00007f7184639d60:   mov    %eax,-0x14000(%rsp)
   0.06%                                0x00007f7184639d67:   push   %rbp
                                        0x00007f7184639d68:   sub    $0x30,%rsp
                                        0x00007f7184639d6c:   cmpl   $0x1,0x20(%r15)
                                        0x00007f7184639d74:   jne    0x00007f7184639fc2           ;*synchronization entry
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@-1 (line 124)
   0.00%                                0x00007f7184639d7a:   mov    %rsi,%r11
                                        0x00007f7184639d7d:   mov    0x18(%rsi),%ebp              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                                        0x00007f7184639d80:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f7184639f98
                                                                                                  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@8 (line 125)
   0.01%                                0x00007f7184639d85:   xor    %r9d,%r9d
                                        0x00007f7184639d88:   test   %r10d,%r10d
          ╭                             0x00007f7184639d8b:   jbe    0x00007f7184639f3c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.00%  │                             0x00007f7184639d91:   mov    %r10d,%r8d
          │                             0x00007f7184639d94:   dec    %r8d
   0.01%  │                             0x00007f7184639d97:   cmp    %r10d,%r8d
   0.01%  │                             0x00007f7184639d9a:   nopw   0x0(%rax,%rax,1)
          │                             0x00007f7184639da0:   jae    0x00007f7184639f7c
   0.01%  │                             0x00007f7184639da6:   lea    (%r12,%rbp,8),%rbx           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.00%  │                             0x00007f7184639daa:   mov    $0x3e8,%edi
          │                             0x00007f7184639daf:   xor    %ecx,%ecx
          │                             0x00007f7184639db1:   xor    %eax,%eax
   0.00%  │╭                            0x00007f7184639db3:   jmp    0x00007f7184639dc9
   0.17%  ││  ↗                         0x00007f7184639db5:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r11=Oop rbx=Oop rbp=NarrowOop }
          ││  │                                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.08%  ││  │                         0x00007f7184639dbc:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
          ││  │                                                                                   ;   {poll}
   0.12%  ││  │                         0x00007f7184639dbf:   nop
          ││  │                         0x00007f7184639dc0:   cmp    %r10d,%ecx
          ││╭ │                         0x00007f7184639dc3:   jge    0x00007f7184639f3e           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   0.01%  │↘│ │                         0x00007f7184639dc9:   mov    %r10d,%esi
   0.00%  │ │ │                         0x00007f7184639dcc:   sub    %ecx,%esi
   0.03%  │ │ │                         0x00007f7184639dce:   cmp    %ecx,%r10d
   0.02%  │ │ │                         0x00007f7184639dd1:   cmovl  %r9d,%esi
   0.00%  │ │ │                         0x00007f7184639dd5:   cmp    $0x3e8,%esi
          │ │ │                         0x00007f7184639ddb:   cmova  %edi,%esi
   0.02%  │ │ │                         0x00007f7184639dde:   add    %ecx,%esi
   0.01%  │ │╭│                         0x00007f7184639de0:   jmp    0x00007f7184639df1
   0.92%  │ │││↗                        0x00007f7184639de2:   mov    $0x1,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │ ││││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   4.78%  │ ││││       ↗ ↗ ↗ ↗ ↗↗↗↗↗↗↗  0x00007f7184639de8:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │ ││││       │ │ │ │ │││││││  0x00007f7184639deb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   2.80%  │ ││││       │ │ │ │ │││││││  0x00007f7184639ded:   cmp    %esi,%ecx
          │ ││╰│       │ │ │ │ │││││││  0x00007f7184639def:   jge    0x00007f7184639db5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   7.28%  │ │↘ │       │ │ │ │ │││││││  0x00007f7184639df1:   mov    0x10(%rbx,%rcx,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  33.07%  │ │  │       │ │ │ │ │││││││  0x00007f7184639df6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │ │  │       │ │ │ │ │││││││  0x00007f7184639e00:   cmp    $0xffe26f13,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137898})}
          │ │  ╰       │ │ │ │ │││││││  0x00007f7184639e07:   je     0x00007f7184639de2           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │          │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ │          │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   8.13%  │ │          │ │ │ │ │││││││  0x00007f7184639e09:   cmp    $0xffe26f1c,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff1378e0})}
          │ │   ╭      │ │ │ │ │││││││  0x00007f7184639e10:   je     0x00007f7184639f10           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │      │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │ │   │      │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.08%  │ │   │      │ │ │ │ │││││││  0x00007f7184639e16:   data16 nopw 0x0(%rax,%rax,1)
   1.00%  │ │   │      │ │ │ │ │││││││  0x00007f7184639e20:   cmp    $0xffe26f25,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137928})}
          │ │   │╭     │ │ │ │ │││││││  0x00007f7184639e27:   je     0x00007f7184639ef8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││     │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │ │   ││     │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
  14.86%  │ │   ││     │ │ │ │ │││││││  0x00007f7184639e2d:   cmp    $0xffe26f2f,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137978})}
          │ │   ││╭    │ │ │ │ │││││││  0x00007f7184639e34:   je     0x00007f7184639f05           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │││    │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
          │ │   │││    │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.04%  │ │   │││    │ │ │ │ │││││││  0x00007f7184639e3a:   nopw   0x0(%rax,%rax,1)
   0.10%  │ │   │││    │ │ │ │ │││││││  0x00007f7184639e40:   cmp    $0xffe26f39,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff1379c8})}
          │ │   │││╭   │ │ │ │ │││││││  0x00007f7184639e47:   je     0x00007f7184639f1b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││   │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
          │ │   ││││   │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.00%  │ │   ││││   │ │ │ │ │││││││  0x00007f7184639e4d:   cmp    $0xffe26f42,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137a10})}
          │ │   ││││╭  │ │ │ │ │││││││  0x00007f7184639e54:   je     0x00007f7184639f31           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │││││  │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
          │ │   │││││  │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   5.74%  │ │   │││││  │ │ │ │ │││││││  0x00007f7184639e5a:   nopw   0x0(%rax,%rax,1)
   0.02%  │ │   │││││  │ │ │ │ │││││││  0x00007f7184639e60:   cmp    $0xffe26f4b,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137a58})}
          │ │   │││││╭ │ │ │ │ │││││││  0x00007f7184639e67:   je     0x00007f7184639f26           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││ │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
          │ │   ││││││ │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.00%  │ │   ││││││ │ │ │ │ │││││││  0x00007f7184639e6d:   cmp    $0xffe26f54,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137aa0})}
          │ │   ││││││╭│ │ │ │ │││││││  0x00007f7184639e74:   jne    0x00007f7184639e85           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││││ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
          │ │   ││││││││ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │ │   ││││││││ │ │ │ │││││││  0x00007f7184639e76:   mov    $0x8,%r8d
   0.84%  │ │   ││││││││ │ │ │ │││││││  0x00007f7184639e7c:   nopl   0x0(%rax)
   0.01%  │ │   │││││││╰ │ │ │ │││││││  0x00007f7184639e80:   jmp    0x00007f7184639de8
          │ │   ││││││↘  │ │ │ │││││││  0x00007f7184639e85:   cmp    $0xffe26f5e,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137af0})}
          │ │   ││││││  ╭│ │ │ │││││││  0x00007f7184639e8c:   jne    0x00007f7184639e99           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││  ││ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
          │ │   ││││││  ││ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.88%  │ │   ││││││  ││ │ │ │││││││  0x00007f7184639e8e:   mov    $0x9,%r8d
   0.00%  │ │   ││││││  │╰ │ │ │││││││  0x00007f7184639e94:   jmp    0x00007f7184639de8
   2.80%  │ │   ││││││  ↘  │ │ │││││││  0x00007f7184639e99:   nopl   0x0(%rax)
          │ │   ││││││     │ │ │││││││  0x00007f7184639ea0:   cmp    $0xffe26f67,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137b38})}
          │ │   ││││││    ╭│ │ │││││││  0x00007f7184639ea7:   jne    0x00007f7184639eb4           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││    ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
          │ │   ││││││    ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.88%  │ │   ││││││    ││ │ │││││││  0x00007f7184639ea9:   mov    $0xa,%r8d
          │ │   ││││││    │╰ │ │││││││  0x00007f7184639eaf:   jmp    0x00007f7184639de8
   3.72%  │ │   ││││││    ↘  │ │││││││  0x00007f7184639eb4:   nopl   0x0(%rax,%rax,1)
          │ │   ││││││       │ │││││││  0x00007f7184639ebc:   data16 data16 xchg %ax,%ax
          │ │   ││││││       │ │││││││  0x00007f7184639ec0:   cmp    $0xffe26f70,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137b80})}
          │ │   ││││││      ╭│ │││││││  0x00007f7184639ec7:   jne    0x00007f7184639ed4           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││      ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          │ │   ││││││      ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │ │   ││││││      ││ │││││││  0x00007f7184639ec9:   mov    $0xb,%r8d
   0.87%  │ │   ││││││      │╰ │││││││  0x00007f7184639ecf:   jmp    0x00007f7184639de8
   0.88%  │ │   ││││││      ↘  │││││││  0x00007f7184639ed4:   nopl   0x0(%rax,%rax,1)
          │ │   ││││││         │││││││  0x00007f7184639edc:   data16 data16 xchg %ax,%ax
          │ │   ││││││         │││││││  0x00007f7184639ee0:   cmp    $0xffe26f79,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff137bc8})}
          │ │   ││││││        ╭│││││││  0x00007f7184639ee7:   jne    0x00007f7184639f51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
          │ │   ││││││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │ │   ││││││        ││││││││  0x00007f7184639eed:   mov    $0xc,%r8d
   0.92%  │ │   ││││││        │╰││││││  0x00007f7184639ef3:   jmp    0x00007f7184639de8
   0.00%  │ │   │↘││││        │ ││││││  0x00007f7184639ef8:   mov    $0x3,%r8d
          │ │   │ ││││        │ ││││││  0x00007f7184639efe:   xchg   %ax,%ax
          │ │   │ ││││        │ ╰│││││  0x00007f7184639f00:   jmp    0x00007f7184639de8
   0.79%  │ │   │ ↘│││        │  │││││  0x00007f7184639f05:   mov    $0x4,%r8d
          │ │   │  │││        │  ╰││││  0x00007f7184639f0b:   jmp    0x00007f7184639de8
   0.98%  │ │   ↘  │││        │   ││││  0x00007f7184639f10:   mov    $0x2,%r8d
          │ │      │││        │   ╰│││  0x00007f7184639f16:   jmp    0x00007f7184639de8
   0.00%  │ │      ↘││        │    │││  0x00007f7184639f1b:   mov    $0x5,%r8d
   0.85%  │ │       ││        │    ╰││  0x00007f7184639f21:   jmp    0x00007f7184639de8
   0.09%  │ │       │↘        │     ││  0x00007f7184639f26:   mov    $0x7,%r8d
          │ │       │         │     ╰│  0x00007f7184639f2c:   jmp    0x00007f7184639de8
   0.91%  │ │       ↘         │      │  0x00007f7184639f31:   mov    $0x6,%r8d
   0.00%  │ │                 │      ╰  0x00007f7184639f37:   jmp    0x00007f7184639de8
          ↘ │                 │         0x00007f7184639f3c:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                 │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.04%    ↘                 │         0x00007f7184639f3e:   add    $0x30,%rsp
   0.01%                      │         0x00007f7184639f42:   pop    %rbp
   0.03%                      │         0x00007f7184639f43:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              │         0x00007f7184639f4a:   ja     0x00007f7184639fac
                              │         0x00007f7184639f50:   ret    
                              ↘         0x00007f7184639f51:   mov    $0xffffff45,%esi
                                        0x00007f7184639f56:   mov    %r11,(%rsp)
                                        0x00007f7184639f5a:   mov    %r10d,0x8(%rsp)
                                        0x00007f7184639f5f:   mov    %ecx,0xc(%rsp)
                                        0x00007f7184639f63:   mov    %eax,0x10(%rsp)
                                        0x00007f7184639f67:   mov    %r8d,0x18(%rsp)
                                        0x00007f7184639f6c:   data16 xchg %ax,%ax
                                        0x00007f7184639f6f:   call   0x00007f71840c9f00           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [24]=NarrowOop }
....................................................................................................
  97.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 558 
   0.85%              kernel  [unknown] 
   0.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 588 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.64%  <...other 210 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 558 
   1.75%              kernel  [unknown] 
   0.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 588 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.09%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.02%         c2, level 4
   1.75%              kernel
   0.10%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:16:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.880 ns/op
# Warmup Iteration   2: 5.804 ns/op
# Warmup Iteration   3: 5.797 ns/op
# Warmup Iteration   4: 5.800 ns/op
# Warmup Iteration   5: 5.798 ns/op
Iteration   1: 5.799 ns/op
Iteration   2: 5.799 ns/op
Iteration   3: 5.800 ns/op
Iteration   4: 5.799 ns/op
Iteration   5: 5.799 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  5.799 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (5.799, 5.799, 5.800), stdev = 0.001
  CI (99.9%): [5.796, 5.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 123525 total address lines.
Perf output processed (skipped 55.962 seconds):
 Column 1: cycles (50921 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 557 

                       # {method} {0x00007fd6a047b5b8} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007fd72863a000:   mov    0x8(%rsi),%r10d
                       0x00007fd72863a004:   movabs $0x7fd6ab000000,%r11
                       0x00007fd72863a00e:   add    %r11,%r10
                       0x00007fd72863a011:   cmp    %r10,%rax
                       0x00007fd72863a014:   jne    0x00007fd7280c4080           ;   {runtime_call ic_miss_stub}
                       0x00007fd72863a01a:   xchg   %ax,%ax
                       0x00007fd72863a01c:   nopl   0x0(%rax)
                     [Verified Entry Point]
   0.01%               0x00007fd72863a020:   mov    %eax,-0x14000(%rsp)
                       0x00007fd72863a027:   push   %rbp
                       0x00007fd72863a028:   sub    $0x30,%rsp
   0.00%               0x00007fd72863a02c:   cmpl   $0x1,0x20(%r15)
                       0x00007fd72863a034:   jne    0x00007fd72863a3be           ;*synchronization entry
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@-1 (line 124)
                       0x00007fd72863a03a:   mov    %rsi,%r11
   0.01%               0x00007fd72863a03d:   mov    0x18(%rsi),%ebp              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                       0x00007fd72863a040:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007fd72863a394
                                                                                 ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@8 (line 125)
   0.01%               0x00007fd72863a045:   xor    %ebx,%ebx
                       0x00007fd72863a047:   test   %r10d,%r10d
                       0x00007fd72863a04a:   jbe    0x00007fd72863a339           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.00%               0x00007fd72863a050:   mov    %r10d,%r9d
                       0x00007fd72863a053:   dec    %r9d
                       0x00007fd72863a056:   cmp    %r10d,%r9d
                       0x00007fd72863a059:   jae    0x00007fd72863a378
   0.02%               0x00007fd72863a05f:   lea    (%r12,%rbp,8),%rdx           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
                       0x00007fd72863a063:   mov    $0x3e8,%ecx
                       0x00007fd72863a068:   xor    %r9d,%r9d
                       0x00007fd72863a06b:   xor    %eax,%eax
   0.01%  ╭            0x00007fd72863a06d:   jmp    0x00007fd72863a086
   0.10%  │     ↗      0x00007fd72863a06f:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r11=Oop rdx=Oop rbp=NarrowOop }
          │     │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.07%  │     │      0x00007fd72863a076:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
          │     │                                                                ;   {poll}
   0.09%  │     │      0x00007fd72863a079:   cmp    %r10d,%r9d
          │     │      0x00007fd72863a07c:   nopl   0x0(%rax)
          │     │      0x00007fd72863a080:   jge    0x00007fd72863a33b           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
          ↘     │      0x00007fd72863a086:   mov    %r10d,%esi
   0.00%        │      0x00007fd72863a089:   sub    %r9d,%esi
   0.00%        │      0x00007fd72863a08c:   cmp    %r9d,%r10d
   0.01%        │      0x00007fd72863a08f:   cmovl  %ebx,%esi
   0.00%        │      0x00007fd72863a092:   cmp    $0x3e8,%esi
   0.02%        │      0x00007fd72863a098:   cmova  %ecx,%esi
   0.01%        │      0x00007fd72863a09b:   add    %r9d,%esi
                │      0x00007fd72863a09e:   xchg   %ax,%ax
   0.00%   ╭    │      0x00007fd72863a0a0:   jmp    0x00007fd72863a0d1
           │    │      0x00007fd72863a0a5:   mov    $0x14,%edi
   0.54%   │╭   │      0x00007fd72863a0aa:   jmp    0x00007fd72863a0c7
   0.00%   ││   │ ↗    0x00007fd72863a0ac:   mov    $0x11,%edi
   0.51%   ││╭  │ │    0x00007fd72863a0b1:   jmp    0x00007fd72863a0c7
           │││  │ │ ↗  0x00007fd72863a0b3:   mov    $0x13,%edi
           │││╭ │ │ │  0x00007fd72863a0b8:   jmp    0x00007fd72863a0c7
   0.54%   ││││ │ │↗│  0x00007fd72863a0ba:   mov    $0x12,%edi
           ││││ │ │││  0x00007fd72863a0bf:   nop
           ││││╭│ │││  0x00007fd72863a0c0:   jmp    0x00007fd72863a0c7
           ││││││↗│││  0x00007fd72863a0c2:   mov    $0x8,%edi                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
           ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.42%   │↘↘↘↘│││││  0x00007fd72863a0c7:   add    %edi,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   3.61%   │    │││││  0x00007fd72863a0c9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.79%   │    │││││  0x00007fd72863a0cc:   cmp    %esi,%r9d
           │    ╰││││  0x00007fd72863a0cf:   jge    0x00007fd72863a06f           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   0.89%   ↘     ││││  0x00007fd72863a0d1:   mov    0x10(%rdx,%r9,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  23.04%         ││││  0x00007fd72863a0d6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%         ││││  0x00007fd72863a0e0:   cmp    $0xffe06f13,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037898})}
                 ││││  0x00007fd72863a0e7:   je     0x00007fd72863a32f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   5.90%         ││││  0x00007fd72863a0ed:   cmp    $0xffe06f1c,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0378e0})}
                 ││││  0x00007fd72863a0f4:   je     0x00007fd72863a319           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.01%         ││││  0x00007fd72863a0fa:   nopw   0x0(%rax,%rax,1)
   0.01%         ││││  0x00007fd72863a100:   cmp    $0xffe06f25,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037928})}
                 ││││  0x00007fd72863a107:   je     0x00007fd72863a325           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
  10.44%         ││││  0x00007fd72863a10d:   cmp    $0xffe06f2f,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037978})}
                 ││││  0x00007fd72863a114:   je     0x00007fd72863a305           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%         ││││  0x00007fd72863a11a:   nopw   0x0(%rax,%rax,1)
   0.27%         ││││  0x00007fd72863a120:   cmp    $0xffe06f39,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0379c8})}
                 ││││  0x00007fd72863a127:   je     0x00007fd72863a30f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                 ││││  0x00007fd72863a12d:   cmp    $0xffe06f42,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a10})}
                 ││││  0x00007fd72863a134:   je     0x00007fd72863a2f9           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.24%         ││││  0x00007fd72863a13a:   nopw   0x0(%rax,%rax,1)
   0.01%         ││││  0x00007fd72863a140:   cmp    $0xffe06f4b,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a58})}
                 ││││  0x00007fd72863a147:   je     0x00007fd72863a2ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.31%         ││││  0x00007fd72863a14d:   cmp    $0xffe06f54,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037aa0})}
                 ╰│││  0x00007fd72863a154:   je     0x00007fd72863a0c2           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                  │││  0x00007fd72863a15a:   nopw   0x0(%rax,%rax,1)
   4.09%          │││  0x00007fd72863a160:   cmp    $0xffe06f5e,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037af0})}
                  │││  0x00007fd72863a167:   je     0x00007fd72863a297           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.00%          │││  0x00007fd72863a16d:   cmp    $0xffe06f67,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037b38})}
                  │││  0x00007fd72863a174:   je     0x00007fd72863a2a5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   7.52%          │││  0x00007fd72863a17a:   nopw   0x0(%rax,%rax,1)
                  │││  0x00007fd72863a180:   cmp    $0xffe06f70,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037b80})}
                  │││  0x00007fd72863a187:   je     0x00007fd72863a2b9           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                  │││  0x00007fd72863a18d:   cmp    $0xffe06f79,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037bc8})}
                  │││  0x00007fd72863a194:   je     0x00007fd72863a2af           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%          │││  0x00007fd72863a19a:   nopw   0x0(%rax,%rax,1)
   3.82%          │││  0x00007fd72863a1a0:   cmp    $0xffe06f82,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037c10})}
                  │││  0x00007fd72863a1a7:   je     0x00007fd72863a2c5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@157 (line 268)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                  │││  0x00007fd72863a1ad:   cmp    $0xffe06f8b,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037c58})}
                  │││  0x00007fd72863a1b4:   je     0x00007fd72863a2cf           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@170 (line 270)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%          │││  0x00007fd72863a1ba:   nopw   0x0(%rax,%rax,1)
   0.01%          │││  0x00007fd72863a1c0:   cmp    $0xffe06f94,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037ca0})}
                  │││  0x00007fd72863a1c7:   je     0x00007fd72863a2e5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@183 (line 272)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.43%          │││  0x00007fd72863a1cd:   cmp    $0xffe06f9e,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037cf0})}
                  │││  0x00007fd72863a1d4:   je     0x00007fd72863a2d9           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@196 (line 274)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                  │││  0x00007fd72863a1da:   nopw   0x0(%rax,%rax,1)
   0.01%          │││  0x00007fd72863a1e0:   cmp    $0xffe06fa8,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037d40})}
                  ╰││  0x00007fd72863a1e7:   je     0x00007fd72863a0ac           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@209 (line 276)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%           ││  0x00007fd72863a1ed:   cmp    $0xffe06fb1,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037d88})}
                   ╰│  0x00007fd72863a1f4:   je     0x00007fd72863a0ba           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@222 (line 278)
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   4.99%            │  0x00007fd72863a1fa:   nopw   0x0(%rax,%rax,1)
                    │  0x00007fd72863a200:   cmp    $0xffe06fbb,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037dd8})}
                    ╰  0x00007fd72863a207:   je     0x00007fd72863a0b3           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@235 (line 280)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                       0x00007fd72863a20d:   cmp    $0xffe06fc5,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037e28})}
                       0x00007fd72863a214:   je     0x00007fd72863a0a5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@248 (line 282)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
....................................................................................................
  87.85%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 557 
   8.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 557 
   1.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 557 
   1.11%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 585 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.64%  <...other 215 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 557 
   2.13%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 585 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%    perf-1935413.map  [unknown] 
   0.00%           libjvm.so  LinearScan::compute_debug_info_for_scope 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.10%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%         c2, level 4
   2.13%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-1935413.map
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:14:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.646 ns/op
# Warmup Iteration   2: 1.570 ns/op
# Warmup Iteration   3: 1.545 ns/op
# Warmup Iteration   4: 1.553 ns/op
# Warmup Iteration   5: 1.546 ns/op
Iteration   1: 1.542 ns/op
Iteration   2: 1.546 ns/op
Iteration   3: 1.547 ns/op
Iteration   4: 1.542 ns/op
Iteration   5: 1.544 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  1.544 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (1.542, 1.544, 1.547), stdev = 0.002
  CI (99.9%): [1.535, 1.554] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 127110 total address lines.
Perf output processed (skipped 56.248 seconds):
 Column 1: cycles (50507 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 555 

                       0x00007f422c639bc0:   cmp    $0x1,%r11d
                       0x00007f422c639bc4:   jl     0x00007f422c639d98
                       0x00007f422c639bca:   cmp    $0x2,%r11d
                       0x00007f422c639bce:   jne    0x00007f422c639da5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                       0x00007f422c639bd4:   mov    $0x3,%ecx
                       0x00007f422c639bd9:   jmp    0x00007f422c639b93
                       0x00007f422c639bdb:   mov    $0x2,%ecx
                       0x00007f422c639be0:   jmp    0x00007f422c639b93
   0.21%    ↗          0x00007f422c639be2:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rsi=Oop rbp=NarrowOop }
            │                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.25%    │          0x00007f422c639be9:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
            │                                                                    ;   {poll}
   0.10%    │          0x00007f422c639bec:   cmp    %r9d,%edi
          ╭ │          0x00007f422c639bef:   jge    0x00007f422c639caf           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   0.03%  │ │          0x00007f422c639bf5:   mov    %r10d,%edx
          │ │          0x00007f422c639bf8:   sub    %edi,%edx
          │ │          0x00007f422c639bfa:   dec    %edx
          │ │          0x00007f422c639bfc:   cmp    %edi,%r9d
   0.03%  │ │          0x00007f422c639bff:   cmovl  %eax,%edx
          │ │          0x00007f422c639c02:   cmp    $0x7d0,%edx
          │ │          0x00007f422c639c08:   cmova  %r8d,%edx
   0.03%  │ │          0x00007f422c639c0c:   add    %edi,%edx
          │╭│          0x00007f422c639c0e:   jmp    0x00007f422c639c1f
   0.27%  │││ ↗        0x00007f422c639c10:   mov    $0x1,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@131 (line 215)
          │││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   7.28%  │││ │ ↗↗     0x00007f422c639c15:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.01%  │││ │ ││     0x00007f422c639c18:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.94%  │││ │ ││     0x00007f422c639c1b:   cmp    %edx,%edi
          ││╰ │ ││     0x00007f422c639c1d:   jge    0x00007f422c639be2           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   8.56%  │↘  │ ││     0x00007f422c639c1f:   mov    0x10(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   7.66%  │   │ ││     0x00007f422c639c24:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f422c639dab
          │   │ ││                                                               ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││                                                               ; - java.lang.Enum::ordinal@1 (line 128)
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
  11.28%  │   │ ││     0x00007f422c639c29:   test   %r11d,%r11d
          │  ╭│ ││     0x00007f422c639c2c:   jne    0x00007f422c639c78           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   2.05%  │  ││ ││     0x00007f422c639c32:   mov    $0x1,%r13d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@131 (line 215)
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   6.53%  │  ││ ││ ↗↗  0x00007f422c639c38:   mov    0x14(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   0.29%  │  ││ ││ ││  0x00007f422c639c3d:   data16 xchg %ax,%ax
   3.36%  │  ││ ││ ││  0x00007f422c639c40:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f422c639dab
          │  ││ ││ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   6.03%  │  ││ ││ ││  0x00007f422c639c45:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   2.52%  │  ││ ││ ││  0x00007f422c639c48:   test   %r11d,%r11d
          │  │╰ ││ ││  0x00007f422c639c4b:   je     0x00007f422c639c10
   5.17%  │  │  ││ ││  0x00007f422c639c4d:   cmp    $0x1,%r11d
          │  │ ╭││ ││  0x00007f422c639c51:   je     0x00007f422c639c71
   7.93%  │  │ │││ ││  0x00007f422c639c53:   cmp    $0x1,%r11d
          │  │ │││ ││  0x00007f422c639c57:   jl     0x00007f422c639d1f
   3.23%  │  │ │││ ││  0x00007f422c639c5d:   data16 xchg %ax,%ax
   0.02%  │  │ │││ ││  0x00007f422c639c60:   cmp    $0x2,%r11d
          │  │ │││ ││  0x00007f422c639c64:   jne    0x00007f422c639d4c
   0.05%  │  │ │││ ││  0x00007f422c639c6a:   mov    $0x3,%ecx
   1.96%  │  │ │╰│ ││  0x00007f422c639c6f:   jmp    0x00007f422c639c15
   0.06%  │  │ ↘ │ ││  0x00007f422c639c71:   mov    $0x2,%ecx
   1.98%  │  │   ╰ ││  0x00007f422c639c76:   jmp    0x00007f422c639c15
   7.34%  │  ↘     ││  0x00007f422c639c78:   nopl   0x0(%rax,%rax,1)
   0.44%  │        ││  0x00007f422c639c80:   cmp    $0x1,%r11d
          │       ╭││  0x00007f422c639c84:   je     0x00007f422c639ca2
   3.48%  │       │││  0x00007f422c639c86:   cmp    $0x1,%r11d
          │       │││  0x00007f422c639c8a:   jl     0x00007f422c639d24
   0.33%  │       │││  0x00007f422c639c90:   cmp    $0x2,%r11d
          │       │││  0x00007f422c639c94:   jne    0x00007f422c639d51           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   3.30%  │       │││  0x00007f422c639c9a:   mov    $0x3,%r13d
   0.00%  │       │╰│  0x00007f422c639ca0:   jmp    0x00007f422c639c38
   4.21%  │       ↘ │  0x00007f422c639ca2:   mov    $0x2,%r13d
          │         ╰  0x00007f422c639ca8:   jmp    0x00007f422c639c38
          │            0x00007f422c639caa:   mov    $0x1,%edi
          ↘            0x00007f422c639caf:   cmp    %r10d,%edi
                       0x00007f422c639cb2:   jge    0x00007f422c639d0a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
                       0x00007f422c639cb8:   mov    0x10(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
                       0x00007f422c639cbd:   data16 xchg %ax,%ax
   0.03%               0x00007f422c639cc0:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f422c639dab
                                                                                 ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Enum::ordinal@1 (line 128)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                       0x00007f422c639cc5:   test   %r11d,%r11d
                       0x00007f422c639cc8:   je     0x00007f422c639cf2
                       0x00007f422c639cca:   cmp    $0x1,%r11d
                       0x00007f422c639cce:   je     0x00007f422c639cfa
                       0x00007f422c639cd0:   cmp    $0x1,%r11d
                       0x00007f422c639cd4:   jl     0x00007f422c639d24
....................................................................................................
  96.97%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 555 
   0.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 555 
   0.36%              kernel  [unknown] 
   0.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 585 
   0.16%              kernel  [unknown] 
   0.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 555 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.04%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 555 
   1.87%              kernel  [unknown] 
   0.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 585 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  os::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.87%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%        runtime stub
   0.00%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:12:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.532 ns/op
# Warmup Iteration   2: 1.461 ns/op
# Warmup Iteration   3: 1.477 ns/op
# Warmup Iteration   4: 1.483 ns/op
# Warmup Iteration   5: 1.489 ns/op
Iteration   1: 1.504 ns/op
Iteration   2: 1.493 ns/op
Iteration   3: 1.498 ns/op
Iteration   4: 1.491 ns/op
Iteration   5: 1.502 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  1.498 ±(99.9%) 0.021 ns/op [Average]
  (min, avg, max) = (1.491, 1.498, 1.504), stdev = 0.006
  CI (99.9%): [1.476, 1.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 128543 total address lines.
Perf output processed (skipped 56.233 seconds):
 Column 1: cycles (50651 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 

                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                0x00007f94d06387ea:   mov    $0x6,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@143 (line 218)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                0x00007f94d06387ef:   lea    (%r12,%rbp,8),%rsi           ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
                                0x00007f94d06387f3:   cmp    $0x1,%r9d
                                0x00007f94d06387f7:   jle    0x00007f94d063897d
                                0x00007f94d06387fd:   mov    $0x7d0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.02%                        0x00007f94d0638803:   mov    $0x1,%edi
          ╭                     0x00007f94d0638808:   jmp    0x00007f94d063881d
   0.27%  │ ↗                   0x00007f94d063880a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.24%  │ │                   0x00007f94d0638811:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
          │ │                                                                             ;   {poll}
   0.12%  │ │                   0x00007f94d0638814:   cmp    %r9d,%edi
          │ │                   0x00007f94d0638817:   jge    0x00007f94d0638982           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
          ↘ │                   0x00007f94d063881d:   mov    %r10d,%edx
            │                   0x00007f94d0638820:   sub    %edi,%edx
   0.03%    │                   0x00007f94d0638822:   dec    %edx
            │                   0x00007f94d0638824:   cmp    %edi,%r9d
            │                   0x00007f94d0638827:   cmovl  %eax,%edx
            │                   0x00007f94d063882a:   cmp    $0x7d0,%edx
   0.02%    │                   0x00007f94d0638830:   cmova  %r8d,%edx
   0.00%    │                   0x00007f94d0638834:   add    %edi,%edx
           ╭│                   0x00007f94d0638836:   jmp    0x00007f94d063884f
           ││                   0x00007f94d0638838:   nopl   0x0(%rax,%rax,1)
           ││                ↗  0x00007f94d0638840:   mov    $0x6,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@143 (line 218)
           ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   5.37%   ││          ↗↗ ↗ ↗│  0x00007f94d0638845:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.00%   ││          ││ │ ││  0x00007f94d0638848:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
  12.50%   ││          ││ │ ││  0x00007f94d063884b:   cmp    %edx,%edi
           │╰          ││ │ ││  0x00007f94d063884d:   jge    0x00007f94d063880a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │           ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   1.19%   ↘           ││ │ ││  0x00007f94d063884f:   mov    0x10(%rsi,%rdi,4),%r13d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
  10.61%               ││ │ ││  0x00007f94d0638854:   mov    0xc(%r12,%r13,8),%r11d       ; implicit exception: dispatches to 0x00007f94d0638a8b
                       ││ │ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                       ││ │ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   4.31%               ││ │ ││  0x00007f94d0638859:   nopl   0x0(%rax)
   3.07%               ││ │ ││  0x00007f94d0638860:   cmp    $0x2,%r11d
                       ││ │ ││  0x00007f94d0638864:   je     0x00007f94d0638968
   7.77%               ││ │ ││  0x00007f94d063886a:   cmp    $0x2,%r11d
             ╭         ││ │ ││  0x00007f94d063886e:   jge    0x00007f94d0638895
   0.73%     │         ││ │ ││  0x00007f94d0638870:   cmp    $0x1,%r11d
             │╭        ││ │ ││  0x00007f94d0638874:   je     0x00007f94d063888a
             ││        ││ │ ││  0x00007f94d0638876:   test   %r11d,%r11d
             ││        ││ │ ││  0x00007f94d0638879:   jne    0x00007f94d0638a38
             ││        ││ │ ││  0x00007f94d063887f:   mov    $0x1,%r13d
             ││╭       ││ │ ││  0x00007f94d0638885:   jmp    0x00007f94d06388c1
   3.44%     │↘│       ││ │ ││  0x00007f94d063888a:   mov    $0x2,%r13d
   0.00%     │ │╭      ││ │ ││  0x00007f94d0638890:   jmp    0x00007f94d06388c1
   1.11%     ↘ ││      ││ │ ││  0x00007f94d0638895:   cmp    $0x4,%r11d
               ││╭     ││ │ ││  0x00007f94d0638899:   jne    0x00007f94d06388a3
               │││     ││ │ ││  0x00007f94d063889b:   mov    $0x5,%r13d
               │││╭    ││ │ ││  0x00007f94d06388a1:   jmp    0x00007f94d06388c1
   8.72%       ││↘│    ││ │ ││  0x00007f94d06388a3:   cmp    $0x4,%r11d
               ││ │╭   ││ │ ││  0x00007f94d06388a7:   jge    0x00007f94d06388b1
   0.02%       ││ ││   ││ │ ││  0x00007f94d06388a9:   mov    $0x4,%r13d
               ││ ││╭  ││ │ ││  0x00007f94d06388af:   jmp    0x00007f94d06388c1
   4.33%       ││ │↘│  ││ │ ││  0x00007f94d06388b1:   cmp    $0x5,%r11d
               ││ │ │  ││ │ ││  0x00007f94d06388b5:   jne    0x00007f94d063893f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
               ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
               ││ │ │  ││ │ ││  0x00007f94d06388bb:   mov    $0x6,%r13d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
               ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@143 (line 218)
               ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   8.62%       ↘↘ ↘ ↘  ││ │ ││  0x00007f94d06388c1:   mov    0x14(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
                       ││ │ ││  0x00007f94d06388c6:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f94d0638a8b
                       ││ │ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                       ││ │ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   4.34%               ││ │ ││  0x00007f94d06388cb:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.00%               ││ │ ││  0x00007f94d06388ce:   cmp    $0x2,%r11d
                       ││ │ ││  0x00007f94d06388d2:   je     0x00007f94d0638973
   4.20%               ││ │ ││  0x00007f94d06388d8:   nopl   0x0(%rax,%rax,1)
                       ││ │ ││  0x00007f94d06388e0:   cmp    $0x2,%r11d
                     ╭ ││ │ ││  0x00007f94d06388e4:   jge    0x00007f94d0638909
   4.19%             │ ││ │ ││  0x00007f94d06388e6:   cmp    $0x1,%r11d
                     │╭││ │ ││  0x00007f94d06388ea:   je     0x00007f94d06388ff
   0.01%             ││││ │ ││  0x00007f94d06388ec:   test   %r11d,%r11d
                     ││││ │ ││  0x00007f94d06388ef:   jne    0x00007f94d0638a33
   3.13%             ││││ │ ││  0x00007f94d06388f5:   mov    $0x1,%ecx
                     ││╰│ │ ││  0x00007f94d06388fa:   jmp    0x00007f94d0638845
                     │↘ │ │ ││  0x00007f94d06388ff:   mov    $0x2,%ecx
                     │  ╰ │ ││  0x00007f94d0638904:   jmp    0x00007f94d0638845
   0.02%             ↘    │ ││  0x00007f94d0638909:   cmp    $0x4,%r11d
                         ╭│ ││  0x00007f94d063890d:   jne    0x00007f94d0638919
   3.36%                 ││ ││  0x00007f94d063890f:   mov    $0x5,%ecx                    ;   {no_reloc}
   1.07%                 │╰ ││  0x00007f94d0638914:   jmp    0x00007f94d0638845
                         ↘  ││  0x00007f94d0638919:   nopl   0x0(%rax)
                            ││  0x00007f94d0638920:   cmp    $0x4,%r11d
                           ╭││  0x00007f94d0638924:   jge    0x00007f94d0638930
                           │││  0x00007f94d0638926:   mov    $0x4,%ecx
                           │╰│  0x00007f94d063892b:   jmp    0x00007f94d0638845
                           ↘ │  0x00007f94d0638930:   cmp    $0x5,%r11d
                             ╰  0x00007f94d0638934:   je     0x00007f94d0638840           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                0x00007f94d063893a:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  92.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 
   4.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 
   0.54%              kernel  [unknown] 
   0.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 
   0.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.83%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 561 
   1.54%              kernel  [unknown] 
   0.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.14%         c2, level 4
   1.54%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:10:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.784 ns/op
# Warmup Iteration   2: 15.661 ns/op
# Warmup Iteration   3: 15.659 ns/op
# Warmup Iteration   4: 15.650 ns/op
# Warmup Iteration   5: 15.650 ns/op
Iteration   1: 15.650 ns/op
Iteration   2: 15.650 ns/op
Iteration   3: 15.650 ns/op
Iteration   4: 15.650 ns/op
Iteration   5: 15.650 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  15.650 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (15.650, 15.650, 15.650), stdev = 0.001
  CI (99.9%): [15.649, 15.651] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 126405 total address lines.
Perf output processed (skipped 56.133 seconds):
 Column 1: cycles (50630 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 

                                          0x00007fefec63a100:   jmp    0x00007fefec63a1b3
                                          0x00007fefec63a105:   mov    $0x3,%eax
          ╭                               0x00007fefec63a10a:   jmp    0x00007fefec63a1b3
          │                               0x00007fefec63a10f:   mov    $0x2,%eax
          │╭                              0x00007fefec63a114:   jmp    0x00007fefec63a1b3           ;   {no_reloc}
          ││                              0x00007fefec63a119:   mov    $0x7,%ebx
          ││                              0x00007fefec63a11e:   xchg   %ax,%ax
          ││╭                             0x00007fefec63a120:   jmp    0x00007fefec63a183
          │││                             0x00007fefec63a125:   mov    $0xb,%ebx
          │││╭                            0x00007fefec63a12a:   jmp    0x00007fefec63a183
   3.83%  ││││                            0x00007fefec63a12f:   mov    $0xa,%ebx
   1.24%  ││││╭                           0x00007fefec63a134:   jmp    0x00007fefec63a183
          │││││                           0x00007fefec63a139:   mov    $0x9,%ebx
          │││││                           0x00007fefec63a13e:   xchg   %ax,%ax
          │││││╭                          0x00007fefec63a140:   jmp    0x00007fefec63a183
   3.21%  ││││││                          0x00007fefec63a145:   mov    $0x8,%ebx
   1.34%  ││││││╭                         0x00007fefec63a14a:   jmp    0x00007fefec63a183
   3.86%  │││││││                         0x00007fefec63a14f:   mov    $0x6,%ebx
   1.26%  │││││││╭                        0x00007fefec63a154:   jmp    0x00007fefec63a183
          ││││││││                        0x00007fefec63a159:   mov    $0x5,%ebx
          ││││││││                        0x00007fefec63a15e:   xchg   %ax,%ax
          ││││││││╭                       0x00007fefec63a160:   jmp    0x00007fefec63a183
   3.72%  │││││││││                       0x00007fefec63a162:   mov    $0xc,%ebx
   1.35%  │││││││││╭                      0x00007fefec63a167:   jmp    0x00007fefec63a183
   3.80%  ││││││││││                      0x00007fefec63a169:   mov    $0x4,%ebx
   1.23%  ││││││││││╭                     0x00007fefec63a16e:   jmp    0x00007fefec63a183
          │││││││││││                     0x00007fefec63a170:   mov    $0x3,%ebx
          │││││││││││╭                    0x00007fefec63a175:   jmp    0x00007fefec63a183
   3.18%  ││││││││││││                    0x00007fefec63a177:   mov    $0x2,%ebx
   1.31%  ││││││││││││╭                   0x00007fefec63a17c:   jmp    0x00007fefec63a183
          │││││││││││││                   0x00007fefec63a17e:   mov    $0x1,%ebx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
          │││││││││││││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.61%  ││↘↘↘↘↘↘↘↘↘↘↘                   0x00007fefec63a183:   mov    0x14(%rbp,%rdi,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   6.07%  ││                              0x00007fefec63a188:   mov    0xc(%r12,%r8,8),%r8d         ; implicit exception: dispatches to 0x00007fefec63a35c
          ││                                                                                        ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                        ; - java.lang.Enum::ordinal@1 (line 128)
          ││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
          ││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   5.84%  ││                              0x00007fefec63a18d:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
          ││                              0x00007fefec63a18f:   cmp    $0xc,%r8d
          ││           ╭                  0x00007fefec63a193:   jae    0x00007fefec63a2a4
   1.18%  ││           │                  0x00007fefec63a199:   movslq %r8d,%r8
          ││           │                  0x00007fefec63a19c:   shl    $0x3,%r8
   2.28%  ││           │                  0x00007fefec63a1a0:   movabs $0x7fefec639e80,%rax         ;   {section_word}
          ││           │                  0x00007fefec63a1aa:   jmp    *(%rax,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││           │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          ││           │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.03%  ││           │                  0x00007fefec63a1ae:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││           │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
          ││           │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.01%  ↘↘           │                  0x00007fefec63a1b3:   lea    (%r12,%r9,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                       │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
                       │                  0x00007fefec63a1b7:   cmp    $0x1,%esi
                       │                  0x00007fefec63a1ba:   nopw   0x0(%rax,%rax,1)
                       │                  0x00007fefec63a1c0:   jle    0x00007fefec63a2d4
   0.01%               │                  0x00007fefec63a1c6:   mov    $0x7d0,%r11d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                       │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
                       │                  0x00007fefec63a1cc:   mov    $0x1,%edi
                       │╭                 0x00007fefec63a1d1:   jmp    0x00007fefec63a1e8
   0.05%               ││            ↗    0x00007fefec63a1d3:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r9=NarrowOop rdx=Oop rbp=Oop }
                       ││            │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                       ││            │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.02%               ││            │    0x00007fefec63a1da:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                       ││            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
                       ││            │                                                              ;   {poll}
   0.01%               ││            │    0x00007fefec63a1dd:   data16 xchg %ax,%ax
                       ││            │    0x00007fefec63a1e0:   cmp    %esi,%edi
                       ││            │    0x00007fefec63a1e2:   jge    0x00007fefec63a2d9           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                       ││            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
                       │↘            │    0x00007fefec63a1e8:   mov    %r10d,%ecx
   0.01%               │             │    0x00007fefec63a1eb:   sub    %edi,%ecx
                       │             │    0x00007fefec63a1ed:   dec    %ecx
                       │             │    0x00007fefec63a1ef:   cmp    %edi,%esi
                       │             │    0x00007fefec63a1f1:   cmovl  %r14d,%ecx
   0.02%               │             │    0x00007fefec63a1f5:   cmp    $0x7d0,%ecx
                       │             │    0x00007fefec63a1fb:   cmova  %r11d,%ecx
                       │             │    0x00007fefec63a1ff:   add    %edi,%ecx
                       │ ╭           │    0x00007fefec63a201:   jmp    0x00007fefec63a27b
   3.28%               │ │           │    0x00007fefec63a206:   mov    $0x7,%eax
   1.43%               │ │╭          │    0x00007fefec63a20b:   jmp    0x00007fefec63a26e
   3.06%               │ ││          │    0x00007fefec63a210:   mov    $0xb,%eax
   1.36%               │ ││╭         │    0x00007fefec63a215:   jmp    0x00007fefec63a26e
                       │ │││         │    0x00007fefec63a21a:   mov    $0xa,%eax
                       │ │││         │    0x00007fefec63a21f:   nop
                       │ │││╭        │    0x00007fefec63a220:   jmp    0x00007fefec63a26e
   3.12%               │ ││││        │    0x00007fefec63a225:   mov    $0x9,%eax
   1.31%               │ ││││╭       │    0x00007fefec63a22a:   jmp    0x00007fefec63a26e
                       │ │││││       │    0x00007fefec63a22f:   mov    $0x8,%eax
                       │ │││││╭      │    0x00007fefec63a234:   jmp    0x00007fefec63a26e
                       │ ││││││      │    0x00007fefec63a239:   mov    $0x6,%eax
                       │ ││││││      │    0x00007fefec63a23e:   xchg   %ax,%ax
                       │ ││││││╭     │    0x00007fefec63a240:   jmp    0x00007fefec63a26e
   3.19%               │ │││││││     │    0x00007fefec63a245:   mov    $0x5,%eax
   1.35%               │ │││││││╭    │    0x00007fefec63a24a:   jmp    0x00007fefec63a26e
                       │ ││││││││    │    0x00007fefec63a24c:   mov    $0xc,%eax
                       │ ││││││││╭   │    0x00007fefec63a251:   jmp    0x00007fefec63a26e
                       │ │││││││││   │    0x00007fefec63a253:   mov    $0x4,%eax
                       │ │││││││││╭  │    0x00007fefec63a258:   jmp    0x00007fefec63a26e
   3.21%               │ ││││││││││  │    0x00007fefec63a25a:   mov    $0x3,%eax
   1.47%               │ ││││││││││  │    0x00007fefec63a25f:   nop
                       │ ││││││││││╭ │    0x00007fefec63a260:   jmp    0x00007fefec63a26e
                       │ │││││││││││ │    0x00007fefec63a262:   mov    $0x2,%eax
                       │ │││││││││││╭│    0x00007fefec63a267:   jmp    0x00007fefec63a26e
   3.73%               │ │││││││││││││    0x00007fefec63a269:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                       │ │││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
                       │ │││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   2.94%               │ │↘↘↘↘↘↘↘↘↘↘↘│    0x00007fefec63a26e:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       │ │           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   6.01%               │ │           │    0x00007fefec63a270:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                       │ │           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
                       │ │           │    0x00007fefec63a273:   cmp    %ecx,%edi
                       │ │           ╰    0x00007fefec63a275:   jge    0x00007fefec63a1d3           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                       │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   2.08%               │ ↘                0x00007fefec63a27b:   mov    0x10(%rbp,%rdi,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                       │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   5.03%               │                  0x00007fefec63a27f:   nop
                       │                  0x00007fefec63a280:   mov    0xc(%r12,%rbx,8),%r8d        ; implicit exception: dispatches to 0x00007fefec63a35c
                       │                                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                       │                                                                            ; - java.lang.Enum::ordinal@1 (line 128)
                       │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                       │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   6.20%               │                  0x00007fefec63a285:   cmp    $0xc,%r8d
                       │              ╭   0x00007fefec63a289:   jae    0x00007fefec63a2a0
   1.24%               │              │   0x00007fefec63a28b:   movslq %r8d,%r8
                       │              │   0x00007fefec63a28e:   shl    $0x3,%r8
   2.50%               │              │   0x00007fefec63a292:   movabs $0x7fefec639ee0,%rbx         ;   {section_word}
                       │              │   0x00007fefec63a29c:   jmp    *(%rbx,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                       │              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                       │              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                       │              ↘   0x00007fefec63a2a0:   mov    %eax,%ebx
                       │               ╭  0x00007fefec63a2a2:   jmp    0x00007fefec63a2a6
                       ↘               │  0x00007fefec63a2a4:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
                                       ↘  0x00007fefec63a2a6:   mov    $0xffffff45,%esi
                                          0x00007fefec63a2ab:   mov    %r10d,%ebp
                                          0x00007fefec63a2ae:   mov    %edi,(%rsp)
....................................................................................................
  97.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 
   0.56%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 
   0.06%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 268 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 566 
   1.52%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  malloc 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __libc_write 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.18%         c2, level 4
   1.52%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.967 ns/op
# Warmup Iteration   2: 15.715 ns/op
# Warmup Iteration   3: 15.715 ns/op
# Warmup Iteration   4: 15.724 ns/op
# Warmup Iteration   5: 15.715 ns/op
Iteration   1: 15.715 ns/op
Iteration   2: 15.721 ns/op
Iteration   3: 15.715 ns/op
Iteration   4: 15.715 ns/op
Iteration   5: 15.715 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  15.716 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (15.715, 15.716, 15.721), stdev = 0.003
  CI (99.9%): [15.706, 15.727] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 128198 total address lines.
Perf output processed (skipped 56.129 seconds):
 Column 1: cycles (50509 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 

                                                                   0x00007ff388638260:   jmp    0x00007ff3886383a4
                                                                   0x00007ff388638265:   mov    $0xd,%eax
          ╭                                                        0x00007ff38863826a:   jmp    0x00007ff3886383a4
          │                                                        0x00007ff38863826f:   mov    $0xe,%eax
          │╭                                                       0x00007ff388638274:   jmp    0x00007ff3886383a4           ;   {no_reloc}
          ││                                                       0x00007ff388638279:   mov    $0xf,%eax
          ││                                                       0x00007ff38863827e:   xchg   %ax,%ax
          ││╭                                                      0x00007ff388638280:   jmp    0x00007ff3886383a4
          │││                                                      0x00007ff388638285:   mov    $0x17,%ebx
          │││╭                                                     0x00007ff38863828a:   jmp    0x00007ff38863836e
   1.64%  ││││                                                     0x00007ff38863828f:   mov    $0x18,%ebx
   0.68%  ││││╭                                                    0x00007ff388638294:   jmp    0x00007ff38863836e
          │││││                                                    0x00007ff388638299:   mov    $0x11,%ebx
          │││││                                                    0x00007ff38863829e:   xchg   %ax,%ax
          │││││╭                                                   0x00007ff3886382a0:   jmp    0x00007ff38863836e
   1.62%  ││││││                                                   0x00007ff3886382a5:   mov    $0x12,%ebx
   0.64%  ││││││╭                                                  0x00007ff3886382aa:   jmp    0x00007ff38863836e
          │││││││                                                  0x00007ff3886382af:   mov    $0x13,%ebx
          │││││││╭                                                 0x00007ff3886382b4:   jmp    0x00007ff38863836e
   1.58%  ││││││││                                                 0x00007ff3886382b9:   mov    $0x14,%ebx
   0.56%  ││││││││                                                 0x00007ff3886382be:   xchg   %ax,%ax
          ││││││││╭                                                0x00007ff3886382c0:   jmp    0x00007ff38863836e
          │││││││││                                                0x00007ff3886382c5:   mov    $0x15,%ebx
          │││││││││╭                                               0x00007ff3886382ca:   jmp    0x00007ff38863836e
   1.48%  ││││││││││                                               0x00007ff3886382cf:   mov    $0x16,%ebx
   0.61%  ││││││││││╭                                              0x00007ff3886382d4:   jmp    0x00007ff38863836e
   1.59%  │││││││││││                                              0x00007ff3886382d9:   mov    $0x2,%ebx
   0.61%  │││││││││││                                              0x00007ff3886382de:   xchg   %ax,%ax
          │││││││││││╭                                             0x00007ff3886382e0:   jmp    0x00007ff38863836e
          ││││││││││││                                             0x00007ff3886382e5:   mov    $0x3,%ebx
          ││││││││││││╭                                            0x00007ff3886382ea:   jmp    0x00007ff38863836e
   1.74%  │││││││││││││                                            0x00007ff3886382ef:   mov    $0x4,%ebx
   0.72%  │││││││││││││╭                                           0x00007ff3886382f4:   jmp    0x00007ff38863836e
          ││││││││││││││                                           0x00007ff3886382f9:   mov    $0x5,%ebx
          ││││││││││││││                                           0x00007ff3886382fe:   xchg   %ax,%ax
          ││││││││││││││╭                                          0x00007ff388638300:   jmp    0x00007ff38863836e
   1.73%  │││││││││││││││                                          0x00007ff388638305:   mov    $0x6,%ebx
   0.66%  │││││││││││││││╭                                         0x00007ff38863830a:   jmp    0x00007ff38863836e
          ││││││││││││││││                                         0x00007ff38863830f:   mov    $0x7,%ebx
          ││││││││││││││││╭                                        0x00007ff388638314:   jmp    0x00007ff38863836e
          │││││││││││││││││                                        0x00007ff388638319:   mov    $0x1,%ebx
          │││││││││││││││││                                        0x00007ff38863831e:   xchg   %ax,%ax
          │││││││││││││││││╭                                       0x00007ff388638320:   jmp    0x00007ff38863836e
   1.83%  ││││││││││││││││││                                       0x00007ff388638325:   mov    $0x8,%ebx
   0.61%  ││││││││││││││││││╭                                      0x00007ff38863832a:   jmp    0x00007ff38863836e
          │││││││││││││││││││                                      0x00007ff38863832f:   mov    $0x9,%ebx
          │││││││││││││││││││╭                                     0x00007ff388638334:   jmp    0x00007ff38863836e
   1.62%  ││││││││││││││││││││                                     0x00007ff388638339:   mov    $0xa,%ebx
   0.62%  ││││││││││││││││││││                                     0x00007ff38863833e:   xchg   %ax,%ax
          ││││││││││││││││││││╭                                    0x00007ff388638340:   jmp    0x00007ff38863836e
          │││││││││││││││││││││                                    0x00007ff388638345:   mov    $0xb,%ebx
          │││││││││││││││││││││╭                                   0x00007ff38863834a:   jmp    0x00007ff38863836e
   1.55%  ││││││││││││││││││││││                                   0x00007ff38863834c:   mov    $0xc,%ebx
   0.69%  ││││││││││││││││││││││╭                                  0x00007ff388638351:   jmp    0x00007ff38863836e
          │││││││││││││││││││││││                                  0x00007ff388638353:   mov    $0xd,%ebx
          │││││││││││││││││││││││╭                                 0x00007ff388638358:   jmp    0x00007ff38863836e
   1.69%  ││││││││││││││││││││││││                                 0x00007ff38863835a:   mov    $0xe,%ebx
   0.63%  ││││││││││││││││││││││││                                 0x00007ff38863835f:   nop
          ││││││││││││││││││││││││╭                                0x00007ff388638360:   jmp    0x00007ff38863836e
          │││││││││││││││││││││││││                                0x00007ff388638362:   mov    $0xf,%ebx
          │││││││││││││││││││││││││╭                               0x00007ff388638367:   jmp    0x00007ff38863836e
   1.88%  ││││││││││││││││││││││││││                               0x00007ff388638369:   mov    $0x10,%ebx                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@233 (line 236)
          ││││││││││││││││││││││││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.87%  │││↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘                               0x00007ff38863836e:   mov    0x14(%rbp,%rdi,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   9.58%  │││                                                      0x00007ff388638373:   mov    0xc(%r12,%r8,8),%r8d         ; implicit exception: dispatches to 0x00007ff3886385cc
          │││                                                                                                                ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                ; - java.lang.Enum::ordinal@1 (line 128)
          │││                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
          │││                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
          │││                                                                                                                ;   {no_reloc}
   6.18%  │││                                                      0x00007ff388638378:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
          │││                                                      0x00007ff38863837a:   nopw   0x0(%rax,%rax,1)
          │││                                                      0x00007ff388638380:   cmp    $0x18,%r8d
          │││                       ╭                              0x00007ff388638384:   jae    0x00007ff388638510
   1.19%  │││                       │                              0x00007ff38863838a:   movslq %r8d,%r8
          │││                       │                              0x00007ff38863838d:   shl    $0x3,%r8
   2.30%  │││                       │                              0x00007ff388638391:   movabs $0x7ff388637dc0,%rax         ;   {section_word}
          │││                       │                              0x00007ff38863839b:   jmp    *(%rax,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                       │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          │││                       │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
          │││                       │                              0x00007ff38863839f:   mov    $0x10,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││                       │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@233 (line 236)
          │││                       │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
          ↘↘↘                       │                              0x00007ff3886383a4:   lea    (%r12,%r9,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
   0.00%                            │                              0x00007ff3886383a8:   cmp    $0x1,%esi
                                    │                              0x00007ff3886383ab:   jle    0x00007ff388638540
                                    │                              0x00007ff3886383b1:   mov    $0x7d0,%r11d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.00%                            │                              0x00007ff3886383b7:   mov    $0x1,%edi
                                    │╭                             0x00007ff3886383bc:   jmp    0x00007ff3886383d0
   0.02%                            ││                        ↗    0x00007ff3886383be:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r9=NarrowOop rdx=Oop rbp=Oop }
                                    ││                        │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                    ││                        │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.03%                            ││                        │    0x00007ff3886383c5:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                    ││                        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
                                    ││                        │                                                              ;   {poll}
   0.02%                            ││                        │    0x00007ff3886383c8:   cmp    %esi,%edi
                                    ││                        │    0x00007ff3886383ca:   jge    0x00007ff388638545           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                    ││                        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
                                    │↘                        │    0x00007ff3886383d0:   mov    %r10d,%ecx
                                    │                         │    0x00007ff3886383d3:   sub    %edi,%ecx
   0.02%                            │                         │    0x00007ff3886383d5:   dec    %ecx
                                    │                         │    0x00007ff3886383d7:   cmp    %edi,%esi
                                    │                         │    0x00007ff3886383d9:   cmovl  %r14d,%ecx
                                    │                         │    0x00007ff3886383dd:   cmp    $0x7d0,%ecx
   0.01%                            │                         │    0x00007ff3886383e3:   cmova  %r11d,%ecx
                                    │                         │    0x00007ff3886383e7:   add    %edi,%ecx
                                    │ ╭                       │    0x00007ff3886383e9:   jmp    0x00007ff3886384e8
   1.53%                            │ │                       │    0x00007ff3886383ee:   mov    $0x17,%eax
   0.80%                            │ │╭                      │    0x00007ff3886383f3:   jmp    0x00007ff3886384d7
                                    │ ││                      │    0x00007ff3886383f8:   mov    $0x18,%eax
                                    │ ││                      │    0x00007ff3886383fd:   data16 xchg %ax,%ax
                                    │ ││╭                     │    0x00007ff388638400:   jmp    0x00007ff3886384d7
   1.48%                            │ │││                     │    0x00007ff388638405:   mov    $0x11,%eax
   0.79%                            │ │││╭                    │    0x00007ff38863840a:   jmp    0x00007ff3886384d7
                                    │ ││││                    │    0x00007ff38863840f:   mov    $0x12,%eax
                                    │ ││││╭                   │    0x00007ff388638414:   jmp    0x00007ff3886384d7
   1.48%                            │ │││││                   │    0x00007ff388638419:   mov    $0x13,%eax
   0.85%                            │ │││││                   │    0x00007ff38863841e:   xchg   %ax,%ax
                                    │ │││││╭                  │    0x00007ff388638420:   jmp    0x00007ff3886384d7
                                    │ ││││││                  │    0x00007ff388638425:   mov    $0x14,%eax
                                    │ ││││││╭                 │    0x00007ff38863842a:   jmp    0x00007ff3886384d7
   1.54%                            │ │││││││                 │    0x00007ff38863842f:   mov    $0x15,%eax
   0.80%                            │ │││││││╭                │    0x00007ff388638434:   jmp    0x00007ff3886384d7
                                    │ ││││││││                │    0x00007ff388638439:   mov    $0x16,%eax
                                    │ ││││││││                │    0x00007ff38863843e:   xchg   %ax,%ax
                                    │ ││││││││╭               │    0x00007ff388638440:   jmp    0x00007ff3886384d7
                                    │ │││││││││               │    0x00007ff388638445:   mov    $0x2,%eax
                                    │ │││││││││╭              │    0x00007ff38863844a:   jmp    0x00007ff3886384d7
   1.67%                            │ ││││││││││              │    0x00007ff38863844f:   mov    $0x3,%eax
   0.80%                            │ ││││││││││╭             │    0x00007ff388638454:   jmp    0x00007ff3886384d7
                                    │ │││││││││││             │    0x00007ff388638459:   mov    $0x4,%eax
                                    │ │││││││││││             │    0x00007ff38863845e:   xchg   %ax,%ax
                                    │ │││││││││││╭            │    0x00007ff388638460:   jmp    0x00007ff3886384d7
   1.54%                            │ ││││││││││││            │    0x00007ff388638465:   mov    $0x5,%eax
   0.88%                            │ ││││││││││││╭           │    0x00007ff38863846a:   jmp    0x00007ff3886384d7
                                    │ │││││││││││││           │    0x00007ff38863846f:   mov    $0x6,%eax
                                    │ │││││││││││││╭          │    0x00007ff388638474:   jmp    0x00007ff3886384d7
   1.49%                            │ ││││││││││││││          │    0x00007ff388638479:   mov    $0x7,%eax
   0.71%                            │ ││││││││││││││          │    0x00007ff38863847e:   xchg   %ax,%ax
                                    │ ││││││││││││││╭         │    0x00007ff388638480:   jmp    0x00007ff3886384d7
   1.48%                            │ │││││││││││││││         │    0x00007ff388638485:   mov    $0x1,%eax
   0.93%                            │ │││││││││││││││╭        │    0x00007ff38863848a:   jmp    0x00007ff3886384d7
                                    │ ││││││││││││││││        │    0x00007ff38863848f:   mov    $0x8,%eax
                                    │ ││││││││││││││││╭       │    0x00007ff388638494:   jmp    0x00007ff3886384d7
   1.52%                            │ │││││││││││││││││       │    0x00007ff388638499:   mov    $0x9,%eax
   0.94%                            │ │││││││││││││││││       │    0x00007ff38863849e:   xchg   %ax,%ax
                                    │ │││││││││││││││││╭      │    0x00007ff3886384a0:   jmp    0x00007ff3886384d7
                                    │ ││││││││││││││││││      │    0x00007ff3886384a5:   mov    $0xa,%eax
                                    │ ││││││││││││││││││╭     │    0x00007ff3886384aa:   jmp    0x00007ff3886384d7
   1.65%                            │ │││││││││││││││││││     │    0x00007ff3886384af:   mov    $0xb,%eax
   0.89%                            │ │││││││││││││││││││╭    │    0x00007ff3886384b4:   jmp    0x00007ff3886384d7
                                    │ ││││││││││││││││││││    │    0x00007ff3886384b6:   mov    $0xc,%eax
                                    │ ││││││││││││││││││││╭   │    0x00007ff3886384bb:   jmp    0x00007ff3886384d7
   1.59%                            │ │││││││││││││││││││││   │    0x00007ff3886384bd:   mov    $0xd,%eax
   0.68%                            │ │││││││││││││││││││││╭  │    0x00007ff3886384c2:   jmp    0x00007ff3886384d7
                                    │ ││││││││││││││││││││││  │    0x00007ff3886384c4:   mov    $0xe,%eax                    ;   {no_reloc}
                                    │ ││││││││││││││││││││││╭ │    0x00007ff3886384c9:   jmp    0x00007ff3886384d7
   1.63%                            │ │││││││││││││││││││││││ │    0x00007ff3886384cb:   mov    $0xf,%eax
   0.89%                            │ │││││││││││││││││││││││╭│    0x00007ff3886384d0:   jmp    0x00007ff3886384d7
                                    │ │││││││││││││││││││││││││    0x00007ff3886384d2:   mov    $0x10,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                    │ │││││││││││││││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@233 (line 236)
                                    │ │││││││││││││││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.57%                            │ │↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘│    0x00007ff3886384d7:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                    │ │                       │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   4.70%                            │ │                       │    0x00007ff3886384d9:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                    │ │                       │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.04%                            │ │                       │    0x00007ff3886384dc:   nopl   0x0(%rax)
   0.21%                            │ │                       │    0x00007ff3886384e0:   cmp    %ecx,%edi
                                    │ │                       ╰    0x00007ff3886384e2:   jge    0x00007ff3886383be           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                    │ │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   1.02%                            │ ↘                            0x00007ff3886384e8:   mov    0x10(%rbp,%rdi,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   4.73%                            │                              0x00007ff3886384ec:   mov    0xc(%r12,%rbx,8),%r8d        ; implicit exception: dispatches to 0x00007ff3886385cc
                                    │                                                                                        ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                                                        ; - java.lang.Enum::ordinal@1 (line 128)
                                    │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                                    │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   6.11%                            │                              0x00007ff3886384f1:   cmp    $0x18,%r8d
                                    │                          ╭   0x00007ff3886384f5:   jae    0x00007ff38863850c
   1.14%                            │                          │   0x00007ff3886384f7:   movslq %r8d,%r8
                                    │                          │   0x00007ff3886384fa:   shl    $0x3,%r8
   2.43%                            │                          │   0x00007ff3886384fe:   movabs $0x7ff388637e80,%rbx         ;   {section_word}
                                    │                          │   0x00007ff388638508:   jmp    *(%rbx,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                    │                          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                    │                          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                    │                          ↘   0x00007ff38863850c:   mov    %eax,%ebx
                                    │                           ╭  0x00007ff38863850e:   jmp    0x00007ff388638512
                                    ↘                           │  0x00007ff388638510:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
                                                                ↘  0x00007ff388638512:   mov    $0xffffff45,%esi
                                                                   0x00007ff388638517:   mov    %r10d,%ebp
                                                                   0x00007ff38863851a:   mov    %edi,(%rsp)
....................................................................................................
  97.71%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 
   0.27%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 600 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.92%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 568 
   1.78%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 600 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.11%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%         c2, level 4
   1.78%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.656 ns/op
# Warmup Iteration   2: 1.629 ns/op
# Warmup Iteration   3: 1.555 ns/op
# Warmup Iteration   4: 1.552 ns/op
# Warmup Iteration   5: 1.551 ns/op
Iteration   1: 1.555 ns/op
Iteration   2: 1.557 ns/op
Iteration   3: 1.552 ns/op
Iteration   4: 1.556 ns/op
Iteration   5: 1.552 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  1.554 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (1.552, 1.554, 1.557), stdev = 0.002
  CI (99.9%): [1.547, 1.562] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 126345 total address lines.
Perf output processed (skipped 56.195 seconds):
 Column 1: cycles (51060 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 561 

                       0x00007f9bf8638fc0:   cmp    $0x1,%r11d
                       0x00007f9bf8638fc4:   jl     0x00007f9bf8639198
                       0x00007f9bf8638fca:   cmp    $0x2,%r11d
                       0x00007f9bf8638fce:   jne    0x00007f9bf86391a5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                       0x00007f9bf8638fd4:   mov    $0x3,%ecx
                       0x00007f9bf8638fd9:   jmp    0x00007f9bf8638f93
                       0x00007f9bf8638fdb:   mov    $0x2,%ecx
                       0x00007f9bf8638fe0:   jmp    0x00007f9bf8638f93
   0.24%    ↗          0x00007f9bf8638fe2:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rsi=Oop rbp=NarrowOop }
            │                                                                    ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
   0.26%    │          0x00007f9bf8638fe9:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
            │                                                                    ;   {poll}
   0.12%    │          0x00007f9bf8638fec:   cmp    %r9d,%edi
          ╭ │          0x00007f9bf8638fef:   jge    0x00007f9bf86390af           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   0.01%  │ │          0x00007f9bf8638ff5:   mov    %r10d,%edx
          │ │          0x00007f9bf8638ff8:   sub    %edi,%edx
          │ │          0x00007f9bf8638ffa:   dec    %edx
          │ │          0x00007f9bf8638ffc:   cmp    %edi,%r9d
   0.02%  │ │          0x00007f9bf8638fff:   cmovl  %eax,%edx
          │ │          0x00007f9bf8639002:   cmp    $0x7d0,%edx
          │ │          0x00007f9bf8639008:   cmova  %r8d,%edx
   0.03%  │ │          0x00007f9bf863900c:   add    %edi,%edx
          │╭│          0x00007f9bf863900e:   jmp    0x00007f9bf863901f
   0.24%  │││ ↗        0x00007f9bf8639010:   mov    $0x1,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@123 (line 140)
          │││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   7.75%  │││ │ ↗↗     0x00007f9bf8639015:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.02%  │││ │ ││     0x00007f9bf8639018:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.64%  │││ │ ││     0x00007f9bf863901b:   cmp    %edx,%edi
          ││╰ │ ││     0x00007f9bf863901d:   jge    0x00007f9bf8638fe2           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   8.54%  │↘  │ ││     0x00007f9bf863901f:   mov    0x10(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   7.70%  │   │ ││     0x00007f9bf8639024:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f9bf86391ab
          │   │ ││                                                               ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││                                                               ; - java.lang.Enum::ordinal@1 (line 128)
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
          │   │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
  11.23%  │   │ ││     0x00007f9bf8639029:   test   %r11d,%r11d
          │  ╭│ ││     0x00007f9bf863902c:   jne    0x00007f9bf8639078           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   2.25%  │  ││ ││     0x00007f9bf8639032:   mov    $0x1,%r13d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@123 (line 140)
          │  ││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   6.17%  │  ││ ││ ↗↗  0x00007f9bf8639038:   mov    0x14(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.24%  │  ││ ││ ││  0x00007f9bf863903d:   data16 xchg %ax,%ax
   3.51%  │  ││ ││ ││  0x00007f9bf8639040:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f9bf86391ab
          │  ││ ││ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   6.14%  │  ││ ││ ││  0x00007f9bf8639045:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   2.02%  │  ││ ││ ││  0x00007f9bf8639048:   test   %r11d,%r11d
          │  │╰ ││ ││  0x00007f9bf863904b:   je     0x00007f9bf8639010
   5.05%  │  │  ││ ││  0x00007f9bf863904d:   cmp    $0x1,%r11d
          │  │ ╭││ ││  0x00007f9bf8639051:   je     0x00007f9bf8639071
   7.49%  │  │ │││ ││  0x00007f9bf8639053:   cmp    $0x1,%r11d
          │  │ │││ ││  0x00007f9bf8639057:   jl     0x00007f9bf863911f
   3.43%  │  │ │││ ││  0x00007f9bf863905d:   data16 xchg %ax,%ax
   0.03%  │  │ │││ ││  0x00007f9bf8639060:   cmp    $0x2,%r11d
          │  │ │││ ││  0x00007f9bf8639064:   jne    0x00007f9bf863914c
   0.04%  │  │ │││ ││  0x00007f9bf863906a:   mov    $0x3,%ecx
   1.77%  │  │ │╰│ ││  0x00007f9bf863906f:   jmp    0x00007f9bf8639015
   0.09%  │  │ ↘ │ ││  0x00007f9bf8639071:   mov    $0x2,%ecx
   2.08%  │  │   ╰ ││  0x00007f9bf8639076:   jmp    0x00007f9bf8639015
   7.45%  │  ↘     ││  0x00007f9bf8639078:   nopl   0x0(%rax,%rax,1)
   0.25%  │        ││  0x00007f9bf8639080:   cmp    $0x1,%r11d
          │       ╭││  0x00007f9bf8639084:   je     0x00007f9bf86390a2
   3.75%  │       │││  0x00007f9bf8639086:   cmp    $0x1,%r11d
          │       │││  0x00007f9bf863908a:   jl     0x00007f9bf8639124
   0.33%  │       │││  0x00007f9bf8639090:   cmp    $0x2,%r11d
          │       │││  0x00007f9bf8639094:   jne    0x00007f9bf8639151           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   3.47%  │       │││  0x00007f9bf863909a:   mov    $0x3,%r13d
   0.00%  │       │╰│  0x00007f9bf86390a0:   jmp    0x00007f9bf8639038
   4.11%  │       ↘ │  0x00007f9bf86390a2:   mov    $0x2,%r13d
          │         ╰  0x00007f9bf86390a8:   jmp    0x00007f9bf8639038
          │            0x00007f9bf86390aa:   mov    $0x1,%edi
          ↘            0x00007f9bf86390af:   cmp    %r10d,%edi
                       0x00007f9bf86390b2:   jge    0x00007f9bf863910a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
                       0x00007f9bf86390b8:   mov    0x10(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
                       0x00007f9bf86390bd:   data16 xchg %ax,%ax
   0.03%               0x00007f9bf86390c0:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f9bf86391ab
                                                                                 ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Enum::ordinal@1 (line 128)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                       0x00007f9bf86390c5:   test   %r11d,%r11d
                       0x00007f9bf86390c8:   je     0x00007f9bf86390f2
                       0x00007f9bf86390ca:   cmp    $0x1,%r11d
                       0x00007f9bf86390ce:   je     0x00007f9bf86390fa
                       0x00007f9bf86390d0:   cmp    $0x1,%r11d
                       0x00007f9bf86390d4:   jl     0x00007f9bf8639124
....................................................................................................
  96.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 561 
   1.43%              kernel  [unknown] 
   0.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 561 
   0.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 598 
   0.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 561 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.72%  <...other 241 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 561 
   2.41%              kernel  [unknown] 
   0.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 598 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%         interpreter  return entry points  
   0.10%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%         c2, level 4
   2.41%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%  libpthread-2.31.so
   0.00%    perf-1935732.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.594 ns/op
# Warmup Iteration   2: 1.566 ns/op
# Warmup Iteration   3: 1.566 ns/op
# Warmup Iteration   4: 1.570 ns/op
# Warmup Iteration   5: 1.572 ns/op
Iteration   1: 1.575 ns/op
Iteration   2: 1.572 ns/op
Iteration   3: 1.573 ns/op
Iteration   4: 1.571 ns/op
Iteration   5: 1.572 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  1.573 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (1.571, 1.573, 1.575), stdev = 0.001
  CI (99.9%): [1.568, 1.578] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 131881 total address lines.
Perf output processed (skipped 56.313 seconds):
 Column 1: cycles (50726 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 

                                 0x00007fe20c639fd3:   mov    $0x4,%ecx
          ╭                      0x00007fe20c639fd8:   jmp    0x00007fe20c639fef
          │                      0x00007fe20c639fda:   nopw   0x0(%rax,%rax,1)
          │                      0x00007fe20c639fe0:   cmp    $0x5,%r11d
          │                      0x00007fe20c639fe4:   jne    0x00007fe20c63a26c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          │                      0x00007fe20c639fea:   mov    $0x6,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@138 (line 149)
          │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.02%  ↘                      0x00007fe20c639fef:   lea    (%r12,%rbp,8),%rsi           ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
                                 0x00007fe20c639ff3:   cmp    $0x1,%r9d
                                 0x00007fe20c639ff7:   jle    0x00007fe20c63a171
                                 0x00007fe20c639ffd:   mov    $0x7d0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
                                 0x00007fe20c63a003:   mov    $0x1,%edi
   0.01%   ╭                     0x00007fe20c63a008:   jmp    0x00007fe20c63a01d
   0.09%   │ ↗                   0x00007fe20c63a00a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rsi=Oop rbp=NarrowOop }
           │ │                                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
   0.23%   │ │                   0x00007fe20c63a011:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
           │ │                                                                             ;   {poll}
   0.11%   │ │                   0x00007fe20c63a014:   cmp    %r9d,%edi
           │ │                   0x00007fe20c63a017:   jge    0x00007fe20c63a176           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
           ↘ │                   0x00007fe20c63a01d:   mov    %r10d,%edx
             │                   0x00007fe20c63a020:   sub    %edi,%edx
             │                   0x00007fe20c63a022:   dec    %edx
   0.03%     │                   0x00007fe20c63a024:   cmp    %edi,%r9d
             │                   0x00007fe20c63a027:   cmovl  %eax,%edx
             │                   0x00007fe20c63a02a:   cmp    $0x7d0,%edx
             │                   0x00007fe20c63a030:   cmova  %r8d,%edx
   0.02%     │                   0x00007fe20c63a034:   add    %edi,%edx
            ╭│                   0x00007fe20c63a036:   jmp    0x00007fe20c63a04f
            ││                   0x00007fe20c63a038:   nopl   0x0(%rax,%rax,1)
            ││                ↗  0x00007fe20c63a040:   mov    $0x6,%ecx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@138 (line 149)
            ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   6.63%    ││          ↗↗ ↗ ↗│  0x00007fe20c63a045:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
            ││          ││ │ ││  0x00007fe20c63a048:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   1.92%    ││          ││ │ ││  0x00007fe20c63a04b:   cmp    %edx,%edi
            │╰          ││ │ ││  0x00007fe20c63a04d:   jge    0x00007fe20c63a00a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
            │           ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   4.76%    ↘           ││ │ ││  0x00007fe20c63a04f:   mov    0x10(%rsi,%rdi,4),%r13d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
  12.23%                ││ │ ││  0x00007fe20c63a054:   mov    0xc(%r12,%r13,8),%r11d       ; implicit exception: dispatches to 0x00007fe20c63a27b
                        ││ │ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                        ││ │ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   9.83%                ││ │ ││  0x00007fe20c63a059:   nopl   0x0(%rax)
   0.92%                ││ │ ││  0x00007fe20c63a060:   cmp    $0x2,%r11d
                        ││ │ ││  0x00007fe20c63a064:   je     0x00007fe20c63a15c
  10.49%                ││ │ ││  0x00007fe20c63a06a:   cmp    $0x2,%r11d
              ╭         ││ │ ││  0x00007fe20c63a06e:   jge    0x00007fe20c63a094
   0.22%      │         ││ │ ││  0x00007fe20c63a070:   test   %r11d,%r11d
              │╭        ││ │ ││  0x00007fe20c63a073:   je     0x00007fe20c63a089
   3.72%      ││        ││ │ ││  0x00007fe20c63a075:   test   %r11d,%r11d
              ││        ││ │ ││  0x00007fe20c63a078:   jl     0x00007fe20c63a227
   0.02%      ││        ││ │ ││  0x00007fe20c63a07e:   mov    $0x2,%r13d
   0.00%      ││╭       ││ │ ││  0x00007fe20c63a084:   jmp    0x00007fe20c63a0c0
              │↘│       ││ │ ││  0x00007fe20c63a089:   mov    $0x1,%r13d
              │ │╭      ││ │ ││  0x00007fe20c63a08f:   jmp    0x00007fe20c63a0c0
   2.65%      ↘ ││      ││ │ ││  0x00007fe20c63a094:   cmp    $0x4,%r11d
                ││╭     ││ │ ││  0x00007fe20c63a098:   jne    0x00007fe20c63a0a2
                │││     ││ │ ││  0x00007fe20c63a09a:   mov    $0x5,%r13d
                │││╭    ││ │ ││  0x00007fe20c63a0a0:   jmp    0x00007fe20c63a0c0
   8.92%        ││↘│    ││ │ ││  0x00007fe20c63a0a2:   cmp    $0x4,%r11d
                ││ │╭   ││ │ ││  0x00007fe20c63a0a6:   jge    0x00007fe20c63a0b0
   0.93%        ││ ││   ││ │ ││  0x00007fe20c63a0a8:   mov    $0x4,%r13d
                ││ ││╭  ││ │ ││  0x00007fe20c63a0ae:   jmp    0x00007fe20c63a0c0
   4.00%        ││ │↘│  ││ │ ││  0x00007fe20c63a0b0:   cmp    $0x5,%r11d
                ││ │ │  ││ │ ││  0x00007fe20c63a0b4:   jne    0x00007fe20c63a134           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                ││ │ │  ││ │ ││  0x00007fe20c63a0ba:   mov    $0x6,%r13d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@138 (line 149)
                ││ │ │  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   3.23%        ↘↘ ↘ ↘  ││ │ ││  0x00007fe20c63a0c0:   mov    0x14(%rsi,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   7.32%                ││ │ ││  0x00007fe20c63a0c5:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007fe20c63a27b
                        ││ │ ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                        ││ │ ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   4.94%                ││ │ ││  0x00007fe20c63a0ca:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                        ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
                        ││ │ ││  0x00007fe20c63a0cd:   cmp    $0x2,%r11d
                        ││ │ ││  0x00007fe20c63a0d1:   je     0x00007fe20c63a167
   3.80%                ││ │ ││  0x00007fe20c63a0d7:   cmp    $0x2,%r11d
                      ╭ ││ │ ││  0x00007fe20c63a0db:   jge    0x00007fe20c63a105
   0.90%              │ ││ │ ││  0x00007fe20c63a0dd:   data16 xchg %ax,%ax
   2.78%              │ ││ │ ││  0x00007fe20c63a0e0:   test   %r11d,%r11d
                      │╭││ │ ││  0x00007fe20c63a0e3:   je     0x00007fe20c63a0f8
                      ││││ │ ││  0x00007fe20c63a0e5:   test   %r11d,%r11d
                      ││││ │ ││  0x00007fe20c63a0e8:   jl     0x00007fe20c63a222
                      ││││ │ ││  0x00007fe20c63a0ee:   mov    $0x2,%ecx
                      ││╰│ │ ││  0x00007fe20c63a0f3:   jmp    0x00007fe20c63a045
   0.40%              │↘ │ │ ││  0x00007fe20c63a0f8:   mov    $0x1,%ecx
                      │  │ │ ││  0x00007fe20c63a0fd:   data16 xchg %ax,%ax
   0.90%              │  ╰ │ ││  0x00007fe20c63a100:   jmp    0x00007fe20c63a045
   0.02%              ↘    │ ││  0x00007fe20c63a105:   cmp    $0x4,%r11d
                          ╭│ ││  0x00007fe20c63a109:   jne    0x00007fe20c63a115
   0.96%                  ││ ││  0x00007fe20c63a10b:   mov    $0x5,%ecx
                          │╰ ││  0x00007fe20c63a110:   jmp    0x00007fe20c63a045           ;   {no_reloc}
                          ↘  ││  0x00007fe20c63a115:   cmp    $0x4,%r11d
                            ╭││  0x00007fe20c63a119:   jge    0x00007fe20c63a125
                            │││  0x00007fe20c63a11b:   mov    $0x4,%ecx
                            │╰│  0x00007fe20c63a120:   jmp    0x00007fe20c63a045
                            ↘ │  0x00007fe20c63a125:   cmp    $0x5,%r11d
                              ╰  0x00007fe20c63a129:   je     0x00007fe20c63a040           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                                 0x00007fe20c63a12f:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  93.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   4.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   0.84%              kernel  [unknown] 
   0.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   0.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 621 
   0.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   0.09%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.70%  <...other 235 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 593 
   1.73%              kernel  [unknown] 
   0.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 621 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%         c2, level 4
   1.73%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%    perf-1935794.map
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.235 ns/op
# Warmup Iteration   2: 14.054 ns/op
# Warmup Iteration   3: 14.023 ns/op
# Warmup Iteration   4: 14.037 ns/op
# Warmup Iteration   5: 14.047 ns/op
Iteration   1: 14.014 ns/op
Iteration   2: 14.033 ns/op
Iteration   3: 14.022 ns/op
Iteration   4: 14.019 ns/op
Iteration   5: 14.027 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  14.023 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (14.014, 14.023, 14.033), stdev = 0.007
  CI (99.9%): [13.995, 14.051] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 127470 total address lines.
Perf output processed (skipped 56.144 seconds):
 Column 1: cycles (50801 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 

                          0x00007f592463aa80:   jmp    0x00007f592463ab2f
                          0x00007f592463aa85:   mov    $0x3,%eax
          ╭               0x00007f592463aa8a:   jmp    0x00007f592463ab2f
          │               0x00007f592463aa8f:   mov    $0x2,%eax
          │╭              0x00007f592463aa94:   jmp    0x00007f592463ab2f
          ││              0x00007f592463aa99:   mov    $0x7,%ebx                    ;   {no_reloc}
          ││              0x00007f592463aa9e:   xchg   %ax,%ax
          ││╭             0x00007f592463aaa0:   jmp    0x00007f592463ab03
          │││             0x00007f592463aaa5:   mov    $0xb,%ebx
          │││╭            0x00007f592463aaaa:   jmp    0x00007f592463ab03
   4.75%  ││││            0x00007f592463aaaf:   mov    $0xa,%ebx
   1.45%  ││││╭           0x00007f592463aab4:   jmp    0x00007f592463ab03
          │││││           0x00007f592463aab9:   mov    $0x9,%ebx
          │││││           0x00007f592463aabe:   xchg   %ax,%ax
          │││││╭          0x00007f592463aac0:   jmp    0x00007f592463ab03
   4.44%  ││││││          0x00007f592463aac5:   mov    $0x8,%ebx
   1.37%  ││││││╭         0x00007f592463aaca:   jmp    0x00007f592463ab03
   4.71%  │││││││         0x00007f592463aacf:   mov    $0xc,%ebx
   1.42%  │││││││╭        0x00007f592463aad4:   jmp    0x00007f592463ab03
   4.44%  ││││││││        0x00007f592463aad9:   mov    $0x6,%ebx
   1.30%  ││││││││        0x00007f592463aade:   xchg   %ax,%ax
          ││││││││╭       0x00007f592463aae0:   jmp    0x00007f592463ab03
          │││││││││       0x00007f592463aae2:   mov    $0x5,%ebx
          │││││││││╭      0x00007f592463aae7:   jmp    0x00007f592463ab03
   4.37%  ││││││││││      0x00007f592463aae9:   mov    $0x4,%ebx
   1.39%  ││││││││││╭     0x00007f592463aaee:   jmp    0x00007f592463ab03
          │││││││││││     0x00007f592463aaf0:   mov    $0x3,%ebx
          │││││││││││╭    0x00007f592463aaf5:   jmp    0x00007f592463ab03
   3.84%  ││││││││││││    0x00007f592463aaf7:   mov    $0x2,%ebx
   1.41%  ││││││││││││╭   0x00007f592463aafc:   jmp    0x00007f592463ab03
          │││││││││││││   0x00007f592463aafe:   mov    $0x1,%ebx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
          │││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.07%  ││↘↘↘↘↘↘↘↘↘↘↘   0x00007f592463ab03:   mov    0xc(%r12,%rsi,8),%ecx        ; implicit exception: dispatches to 0x00007f592463acd0
          ││                                                                        ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - java.lang.Enum::ordinal@1 (line 128)
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   6.37%  ││              0x00007f592463ab08:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
          ││              0x00007f592463ab0a:   cmp    $0xc,%ecx
          ││              0x00007f592463ab0d:   jae    0x00007f592463ac18           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.38%  ││              0x00007f592463ab13:   movslq %ecx,%rcx
          ││              0x00007f592463ab16:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
          ││              0x00007f592463ab19:   shl    $0x3,%rcx
   2.66%  ││              0x00007f592463ab1d:   movabs $0x7f592463a800,%rsi         ;   {section_word}
          ││              0x00007f592463ab27:   jmp    *(%rsi,%rcx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.04%  ││              0x00007f592463ab2a:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.02%  ↘↘              0x00007f592463ab2f:   cmp    $0x1,%r11d
                          0x00007f592463ab33:   jle    0x00007f592463ac44
   0.01%                  0x00007f592463ab39:   mov    $0x7d0,%r9d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
                          0x00007f592463ab3f:   mov    $0x1,%edi
                       ╭  0x00007f592463ab44:   jmp    0x00007f592463ab58
   0.04%               │  0x00007f592463ab46:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r8=NarrowOop rdx=Oop rbp=Oop }
                       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
   0.02%               │  0x00007f592463ab4d:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
                       │                                                            ;   {poll}
   0.01%               │  0x00007f592463ab4f:   cmp    %r11d,%edi
                       │  0x00007f592463ab52:   jge    0x00007f592463ac49           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   0.00%               ↘  0x00007f592463ab58:   mov    %r10d,%r13d
   0.00%                  0x00007f592463ab5b:   sub    %edi,%r13d
   0.00%                  0x00007f592463ab5e:   dec    %r13d
   0.01%                  0x00007f592463ab61:   cmp    %edi,%r11d
                          0x00007f592463ab64:   cmovl  %r14d,%r13d
                          0x00007f592463ab68:   cmp    $0x7d0,%r13d
                          0x00007f592463ab6f:   cmova  %r9d,%r13d
   0.00%                  0x00007f592463ab73:   add    %edi,%r13d
                          0x00007f592463ab76:   jmp    0x00007f592463abee
   3.40%                  0x00007f592463ab7b:   mov    $0x7,%eax
   2.17%                  0x00007f592463ab80:   jmp    0x00007f592463abe3
   3.46%                  0x00007f592463ab85:   mov    $0xb,%eax
   2.32%                  0x00007f592463ab8a:   jmp    0x00007f592463abe3
                          0x00007f592463ab8f:   mov    $0xa,%eax
                          0x00007f592463ab94:   jmp    0x00007f592463abe3
   3.64%                  0x00007f592463ab99:   mov    $0x9,%eax
   2.37%                  0x00007f592463ab9e:   xchg   %ax,%ax
                          0x00007f592463aba0:   jmp    0x00007f592463abe3
                          0x00007f592463aba5:   mov    $0x8,%eax
                          0x00007f592463abaa:   jmp    0x00007f592463abe3
                          0x00007f592463abaf:   mov    $0xc,%eax
                          0x00007f592463abb4:   jmp    0x00007f592463abe3
                          0x00007f592463abb9:   mov    $0x6,%eax
                          0x00007f592463abbe:   xchg   %ax,%ax
                          0x00007f592463abc0:   jmp    0x00007f592463abe3
   3.62%                  0x00007f592463abc2:   mov    $0x5,%eax
   2.13%                  0x00007f592463abc7:   jmp    0x00007f592463abe3
....................................................................................................
  63.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 

   3.64%              0x00007f592463ab99:   mov    $0x9,%eax
   2.37%              0x00007f592463ab9e:   xchg   %ax,%ax
          ╭           0x00007f592463aba0:   jmp    0x00007f592463abe3
          │           0x00007f592463aba5:   mov    $0x8,%eax
          │╭          0x00007f592463abaa:   jmp    0x00007f592463abe3
          ││          0x00007f592463abaf:   mov    $0xc,%eax
          ││╭         0x00007f592463abb4:   jmp    0x00007f592463abe3
          │││         0x00007f592463abb9:   mov    $0x6,%eax
          │││         0x00007f592463abbe:   xchg   %ax,%ax
          │││╭        0x00007f592463abc0:   jmp    0x00007f592463abe3
   3.62%  ││││        0x00007f592463abc2:   mov    $0x5,%eax
   2.13%  ││││╭       0x00007f592463abc7:   jmp    0x00007f592463abe3
          │││││       0x00007f592463abc9:   mov    $0x4,%eax
          │││││╭      0x00007f592463abce:   jmp    0x00007f592463abe3
   3.64%  ││││││      0x00007f592463abd0:   mov    $0x3,%eax
   2.09%  ││││││╭     0x00007f592463abd5:   jmp    0x00007f592463abe3
          │││││││     0x00007f592463abd7:   mov    $0x2,%eax
          │││││││╭    0x00007f592463abdc:   jmp    0x00007f592463abe3
   4.51%  ││││││││    0x00007f592463abde:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
          ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.52%  ↘↘↘↘↘↘↘↘    0x00007f592463abe3:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.68%              0x00007f592463abe5:   cmp    %r13d,%edi
                      0x00007f592463abe8:   jge    0x00007f592463ab46           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   0.27%              0x00007f592463abee:   mov    0x10(%rbp,%rdi,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   5.98%              0x00007f592463abf2:   mov    0xc(%r12,%rcx,8),%ecx        ; implicit exception: dispatches to 0x00007f592463acd0
                                                                                ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Enum::ordinal@1 (line 128)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   6.64%              0x00007f592463abf7:   cmp    $0xc,%ecx
                  ╭   0x00007f592463abfa:   jae    0x00007f592463ac14           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.38%          │   0x00007f592463abfc:   mov    0x14(%rbp,%rdi,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
                  │   0x00007f592463ac00:   movslq %ecx,%rbx
                  │   0x00007f592463ac03:   shl    $0x3,%rbx
   1.27%          │   0x00007f592463ac07:   movabs $0x7f592463a860,%rcx         ;   {section_word}
                  │   0x00007f592463ac11:   jmp    *(%rcx,%rbx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                  ↘   0x00007f592463ac14:   mov    %eax,%ebx
                   ╭  0x00007f592463ac16:   jmp    0x00007f592463ac1a
                   │  0x00007f592463ac18:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
                   ↘  0x00007f592463ac1a:   mov    $0xffffff45,%esi
                      0x00007f592463ac1f:   mov    %r10d,%ebp
                      0x00007f592463ac22:   mov    %edi,(%rsp)
....................................................................................................
  33.73%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
  33.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   0.89%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 610 
   0.08%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.84%  <...other 259 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 580 
   1.88%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 610 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __stpcpy_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _dl_addr 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%           libjvm.so  MethodMatcher::matches 
   0.00%        libc-2.31.so  _IO_fflush 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%         c2, level 4
   1.88%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.925 ns/op
# Warmup Iteration   2: 15.701 ns/op
# Warmup Iteration   3: 15.710 ns/op
# Warmup Iteration   4: 15.710 ns/op
# Warmup Iteration   5: 15.710 ns/op
Iteration   1: 15.710 ns/op
Iteration   2: 15.710 ns/op
Iteration   3: 15.709 ns/op
Iteration   4: 15.709 ns/op
Iteration   5: 15.711 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  15.710 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (15.709, 15.710, 15.711), stdev = 0.001
  CI (99.9%): [15.707, 15.713] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 128135 total address lines.
Perf output processed (skipped 56.177 seconds):
 Column 1: cycles (50885 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 

                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                                        0x00007f4f54639b27:   lea    (%r12,%r9,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
                                        0x00007f4f54639b2b:   cmp    $0x1,%esi
                                        0x00007f4f54639b2e:   jle    0x00007f4f54639cbc
                                        0x00007f4f54639b34:   mov    $0x7d0,%r11d                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
                                        0x00007f4f54639b3a:   mov    $0x1,%edi
                                        0x00007f4f54639b3f:   nop
          ╭                             0x00007f4f54639b40:   jmp    0x00007f4f54639b54
   0.03%  │                        ↗    0x00007f4f54639b42:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r9=NarrowOop rdx=Oop rbp=Oop }
          │                        │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                        │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
   0.02%  │                        │    0x00007f4f54639b49:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
          │                        │                                                              ;   {poll}
   0.02%  │                        │    0x00007f4f54639b4c:   cmp    %esi,%edi
          │                        │    0x00007f4f54639b4e:   jge    0x00007f4f54639cc1           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
          ↘                        │    0x00007f4f54639b54:   mov    %r10d,%ecx
   0.01%                           │    0x00007f4f54639b57:   sub    %edi,%ecx
   0.00%                           │    0x00007f4f54639b59:   dec    %ecx
   0.00%                           │    0x00007f4f54639b5b:   cmp    %edi,%esi
                                   │    0x00007f4f54639b5d:   cmovl  %r14d,%ecx
                                   │    0x00007f4f54639b61:   cmp    $0x7d0,%ecx
   0.00%                           │    0x00007f4f54639b67:   cmova  %r11d,%ecx
   0.00%                           │    0x00007f4f54639b6b:   add    %edi,%ecx
           ╭                       │    0x00007f4f54639b6d:   jmp    0x00007f4f54639c66
   1.53%   │                       │    0x00007f4f54639b72:   mov    $0x11,%eax
   0.89%   │╭                      │    0x00007f4f54639b77:   jmp    0x00007f4f54639c57
           ││                      │    0x00007f4f54639b7c:   mov    $0x12,%eax
           ││╭                     │    0x00007f4f54639b81:   jmp    0x00007f4f54639c57
   1.60%   │││                     │    0x00007f4f54639b86:   mov    $0x13,%eax
   0.87%   │││╭                    │    0x00007f4f54639b8b:   jmp    0x00007f4f54639c57
           ││││                    │    0x00007f4f54639b90:   mov    $0x14,%eax
           ││││╭                   │    0x00007f4f54639b95:   jmp    0x00007f4f54639c57
   1.56%   │││││                   │    0x00007f4f54639b9a:   mov    $0x15,%eax
   0.91%   │││││                   │    0x00007f4f54639b9f:   nop
           │││││╭                  │    0x00007f4f54639ba0:   jmp    0x00007f4f54639c57
           ││││││                  │    0x00007f4f54639ba5:   mov    $0x16,%eax
           ││││││╭                 │    0x00007f4f54639baa:   jmp    0x00007f4f54639c57
   1.48%   │││││││                 │    0x00007f4f54639baf:   mov    $0x17,%eax
   0.87%   │││││││╭                │    0x00007f4f54639bb4:   jmp    0x00007f4f54639c57
           ││││││││                │    0x00007f4f54639bb9:   mov    $0x18,%eax
           ││││││││                │    0x00007f4f54639bbe:   xchg   %ax,%ax
           ││││││││╭               │    0x00007f4f54639bc0:   jmp    0x00007f4f54639c57
   1.57%   │││││││││               │    0x00007f4f54639bc5:   mov    $0x1,%eax
   0.87%   │││││││││╭              │    0x00007f4f54639bca:   jmp    0x00007f4f54639c57
           ││││││││││              │    0x00007f4f54639bcf:   mov    $0x2,%eax
           ││││││││││╭             │    0x00007f4f54639bd4:   jmp    0x00007f4f54639c57
   1.63%   │││││││││││             │    0x00007f4f54639bd9:   mov    $0x3,%eax
   1.01%   │││││││││││             │    0x00007f4f54639bde:   xchg   %ax,%ax
           │││││││││││╭            │    0x00007f4f54639be0:   jmp    0x00007f4f54639c57
           ││││││││││││            │    0x00007f4f54639be5:   mov    $0x4,%eax
           ││││││││││││╭           │    0x00007f4f54639bea:   jmp    0x00007f4f54639c57
   1.39%   │││││││││││││           │    0x00007f4f54639bef:   mov    $0x5,%eax
   0.87%   │││││││││││││╭          │    0x00007f4f54639bf4:   jmp    0x00007f4f54639c57
           ││││││││││││││          │    0x00007f4f54639bf9:   mov    $0x6,%eax
           ││││││││││││││          │    0x00007f4f54639bfe:   xchg   %ax,%ax
           ││││││││││││││╭         │    0x00007f4f54639c00:   jmp    0x00007f4f54639c57
   1.53%   │││││││││││││││         │    0x00007f4f54639c05:   mov    $0x7,%eax
   0.83%   │││││││││││││││╭        │    0x00007f4f54639c0a:   jmp    0x00007f4f54639c57
   1.54%   ││││││││││││││││        │    0x00007f4f54639c0f:   mov    $0xd,%eax
   0.81%   ││││││││││││││││╭       │    0x00007f4f54639c14:   jmp    0x00007f4f54639c57
           │││││││││││││││││       │    0x00007f4f54639c19:   mov    $0xe,%eax
           │││││││││││││││││       │    0x00007f4f54639c1e:   xchg   %ax,%ax
           │││││││││││││││││╭      │    0x00007f4f54639c20:   jmp    0x00007f4f54639c57
   1.67%   ││││││││││││││││││      │    0x00007f4f54639c25:   mov    $0xf,%eax
   0.90%   ││││││││││││││││││╭     │    0x00007f4f54639c2a:   jmp    0x00007f4f54639c57
           │││││││││││││││││││     │    0x00007f4f54639c2f:   mov    $0x10,%eax
           │││││││││││││││││││╭    │    0x00007f4f54639c34:   jmp    0x00007f4f54639c57
           ││││││││││││││││││││    │    0x00007f4f54639c36:   mov    $0x8,%eax
           ││││││││││││││││││││╭   │    0x00007f4f54639c3b:   jmp    0x00007f4f54639c57
   1.59%   │││││││││││││││││││││   │    0x00007f4f54639c3d:   mov    $0x9,%eax
   0.57%   │││││││││││││││││││││╭  │    0x00007f4f54639c42:   jmp    0x00007f4f54639c57
           ││││││││││││││││││││││  │    0x00007f4f54639c44:   mov    $0xa,%eax                    ;   {no_reloc}
           ││││││││││││││││││││││╭ │    0x00007f4f54639c49:   jmp    0x00007f4f54639c57
   1.66%   │││││││││││││││││││││││ │    0x00007f4f54639c4b:   mov    $0xb,%eax
   0.86%   │││││││││││││││││││││││╭│    0x00007f4f54639c50:   jmp    0x00007f4f54639c57
           │││││││││││││││││││││││││    0x00007f4f54639c52:   mov    $0xc,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@246 (line 203)
           │││││││││││││││││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.51%   │↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘│    0x00007f4f54639c57:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                       │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   4.19%   │                       │    0x00007f4f54639c59:   cmp    %ecx,%edi
   0.08%   │                       │    0x00007f4f54639c5b:   nopl   0x0(%rax,%rax,1)
   0.19%   │                       ╰    0x00007f4f54639c60:   jge    0x00007f4f54639b42           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   1.03%   ↘                            0x00007f4f54639c66:   mov    0x10(%rbp,%rdi,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   4.91%                                0x00007f4f54639c6a:   mov    0xc(%r12,%rbx,8),%r8d        ; implicit exception: dispatches to 0x00007f4f54639d4c
                                                                                                  ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - java.lang.Enum::ordinal@1 (line 128)
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   5.91%                                0x00007f4f54639c6f:   cmp    $0x18,%r8d
                                    ╭   0x00007f4f54639c73:   jae    0x00007f4f54639c8a
   1.22%                            │   0x00007f4f54639c75:   movslq %r8d,%r8
                                    │   0x00007f4f54639c78:   shl    $0x3,%r8
   2.37%                            │   0x00007f4f54639c7c:   movabs $0x7f4f54639600,%rbx         ;   {section_word}
                                    │   0x00007f4f54639c86:   jmp    *(%rbx,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                                    ↘   0x00007f4f54639c8a:   mov    %eax,%ebx
                                     ╭  0x00007f4f54639c8c:   jmp    0x00007f4f54639c90
                                     │  0x00007f4f54639c8e:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
                                     ↘  0x00007f4f54639c90:   mov    $0xffffff45,%esi
                                        0x00007f4f54639c95:   mov    %r10d,%ebp
                                        0x00007f4f54639c98:   mov    %edi,(%rsp)
....................................................................................................
  49.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 

                                      0x00007f4f546399e0:   jmp    0x00007f4f54639b27
                                      0x00007f4f546399e5:   mov    $0x9,%eax
          ╭                           0x00007f4f546399ea:   jmp    0x00007f4f54639b27
          │                           0x00007f4f546399ef:   mov    $0xa,%eax
          │╭                          0x00007f4f546399f4:   jmp    0x00007f4f54639b27           ;   {no_reloc}
          ││                          0x00007f4f546399f9:   mov    $0xb,%eax
          ││                          0x00007f4f546399fe:   xchg   %ax,%ax
          ││╭                         0x00007f4f54639a00:   jmp    0x00007f4f54639b27
          │││                         0x00007f4f54639a05:   mov    $0x11,%ebx
          │││╭                        0x00007f4f54639a0a:   jmp    0x00007f4f54639aee
   1.51%  ││││                        0x00007f4f54639a0f:   mov    $0x12,%ebx
   0.67%  ││││╭                       0x00007f4f54639a14:   jmp    0x00007f4f54639aee
          │││││                       0x00007f4f54639a19:   mov    $0x13,%ebx
          │││││                       0x00007f4f54639a1e:   xchg   %ax,%ax
          │││││╭                      0x00007f4f54639a20:   jmp    0x00007f4f54639aee
   1.49%  ││││││                      0x00007f4f54639a25:   mov    $0x14,%ebx
   0.65%  ││││││╭                     0x00007f4f54639a2a:   jmp    0x00007f4f54639aee
          │││││││                     0x00007f4f54639a2f:   mov    $0x15,%ebx
          │││││││╭                    0x00007f4f54639a34:   jmp    0x00007f4f54639aee
   1.50%  ││││││││                    0x00007f4f54639a39:   mov    $0x16,%ebx
   0.59%  ││││││││                    0x00007f4f54639a3e:   xchg   %ax,%ax
          ││││││││╭                   0x00007f4f54639a40:   jmp    0x00007f4f54639aee
          │││││││││                   0x00007f4f54639a45:   mov    $0x17,%ebx
          │││││││││╭                  0x00007f4f54639a4a:   jmp    0x00007f4f54639aee
   1.55%  ││││││││││                  0x00007f4f54639a4f:   mov    $0x18,%ebx
   0.65%  ││││││││││╭                 0x00007f4f54639a54:   jmp    0x00007f4f54639aee
          │││││││││││                 0x00007f4f54639a59:   mov    $0x1,%ebx
          │││││││││││                 0x00007f4f54639a5e:   xchg   %ax,%ax
          │││││││││││╭                0x00007f4f54639a60:   jmp    0x00007f4f54639aee
   1.69%  ││││││││││││                0x00007f4f54639a65:   mov    $0x2,%ebx
   0.66%  ││││││││││││╭               0x00007f4f54639a6a:   jmp    0x00007f4f54639aee
          │││││││││││││               0x00007f4f54639a6f:   mov    $0x3,%ebx
          │││││││││││││╭              0x00007f4f54639a74:   jmp    0x00007f4f54639aee
   1.61%  ││││││││││││││              0x00007f4f54639a79:   mov    $0x4,%ebx
   0.63%  ││││││││││││││              0x00007f4f54639a7e:   xchg   %ax,%ax
          ││││││││││││││╭             0x00007f4f54639a80:   jmp    0x00007f4f54639aee
          │││││││││││││││             0x00007f4f54639a85:   mov    $0x5,%ebx
          │││││││││││││││╭            0x00007f4f54639a8a:   jmp    0x00007f4f54639aee
   1.61%  ││││││││││││││││            0x00007f4f54639a8f:   mov    $0x6,%ebx
   0.71%  ││││││││││││││││╭           0x00007f4f54639a94:   jmp    0x00007f4f54639aee
          │││││││││││││││││           0x00007f4f54639a99:   mov    $0x7,%ebx
          │││││││││││││││││           0x00007f4f54639a9e:   xchg   %ax,%ax
          │││││││││││││││││╭          0x00007f4f54639aa0:   jmp    0x00007f4f54639aee
          ││││││││││││││││││          0x00007f4f54639aa5:   mov    $0xd,%ebx
          ││││││││││││││││││╭         0x00007f4f54639aaa:   jmp    0x00007f4f54639aee
   1.40%  │││││││││││││││││││         0x00007f4f54639aaf:   mov    $0xe,%ebx
   0.64%  │││││││││││││││││││╭        0x00007f4f54639ab4:   jmp    0x00007f4f54639aee
          ││││││││││││││││││││        0x00007f4f54639ab9:   mov    $0xf,%ebx
          ││││││││││││││││││││        0x00007f4f54639abe:   xchg   %ax,%ax
          ││││││││││││││││││││╭       0x00007f4f54639ac0:   jmp    0x00007f4f54639aee
   1.52%  │││││││││││││││││││││       0x00007f4f54639ac5:   mov    $0x10,%ebx
   0.64%  │││││││││││││││││││││╭      0x00007f4f54639aca:   jmp    0x00007f4f54639aee
   1.58%  ││││││││││││││││││││││      0x00007f4f54639acc:   mov    $0x8,%ebx
   0.62%  ││││││││││││││││││││││╭     0x00007f4f54639ad1:   jmp    0x00007f4f54639aee
          │││││││││││││││││││││││     0x00007f4f54639ad3:   mov    $0x9,%ebx
          │││││││││││││││││││││││╭    0x00007f4f54639ad8:   jmp    0x00007f4f54639aee
   1.61%  ││││││││││││││││││││││││    0x00007f4f54639ada:   mov    $0xa,%ebx
   0.65%  ││││││││││││││││││││││││    0x00007f4f54639adf:   nop
          ││││││││││││││││││││││││╭   0x00007f4f54639ae0:   jmp    0x00007f4f54639aee
          │││││││││││││││││││││││││   0x00007f4f54639ae2:   mov    $0xb,%ebx
          │││││││││││││││││││││││││╭  0x00007f4f54639ae7:   jmp    0x00007f4f54639aee
   1.83%  ││││││││││││││││││││││││││  0x00007f4f54639ae9:   mov    $0xc,%ebx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@246 (line 203)
          ││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.85%  │││↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘  0x00007f4f54639aee:   mov    0x14(%rbp,%rdi,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
  10.37%  │││                         0x00007f4f54639af3:   mov    0xc(%r12,%r8,8),%r8d         ; implicit exception: dispatches to 0x00007f4f54639d4c
          │││                                                                                   ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - java.lang.Enum::ordinal@1 (line 128)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          │││                                                                                   ;   {no_reloc}
   6.10%  │││                         0x00007f4f54639af8:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
          │││                         0x00007f4f54639afa:   nopw   0x0(%rax,%rax,1)
          │││                         0x00007f4f54639b00:   cmp    $0x18,%r8d
          │││                         0x00007f4f54639b04:   jae    0x00007f4f54639c8e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.10%  │││                         0x00007f4f54639b0a:   movslq %r8d,%r8
          │││                         0x00007f4f54639b0d:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
          │││                         0x00007f4f54639b10:   shl    $0x3,%r8
   2.48%  │││                         0x00007f4f54639b14:   movabs $0x7f4f54639540,%rax         ;   {section_word}
          │││                         0x00007f4f54639b1e:   jmp    *(%rax,%r8,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          │││                         0x00007f4f54639b22:   mov    $0xc,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@246 (line 203)
          │││                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          ↘↘↘                         0x00007f4f54639b27:   lea    (%r12,%r9,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
                                      0x00007f4f54639b2b:   cmp    $0x1,%esi
                                      0x00007f4f54639b2e:   jle    0x00007f4f54639cbc
....................................................................................................
  47.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
  47.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   0.99%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 597 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.86%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 566 
   1.96%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 597 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::fill_to 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.15%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%         c2, level 4
   1.96%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:43

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

Benchmark                                   (branches)  Mode  Cnt   Score   Error  Units
EnumSwitchBenchmark.chained_ifs                      3  avgt    5   1.562 ± 0.002  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                      6  avgt    5   2.325 ± 0.028  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                     12  avgt    5   3.412 ± 0.004  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                     24  avgt    5   5.799 ± 0.003  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions               3  avgt    5   1.544 ± 0.010  ns/op
EnumSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions               6  avgt    5   1.498 ± 0.021  ns/op
EnumSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5  15.650 ± 0.001  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              24  avgt    5  15.716 ± 0.010  ns/op
EnumSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements                3  avgt    5   1.554 ± 0.008  ns/op
EnumSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements                6  avgt    5   1.573 ± 0.005  ns/op
EnumSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               12  avgt    5  14.023 ± 0.028  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               24  avgt    5  15.710 ± 0.003  ns/op
EnumSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
