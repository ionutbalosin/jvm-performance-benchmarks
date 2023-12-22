# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.855 ns/op
# Warmup Iteration   2: 19.661 ns/op
# Warmup Iteration   3: 14.511 ns/op
# Warmup Iteration   4: 10.324 ns/op
# Warmup Iteration   5: 10.332 ns/op
Iteration   1: 10.348 ns/op
Iteration   2: 10.323 ns/op
Iteration   3: 10.442 ns/op
Iteration   4: 13.040 ns/op
Iteration   5: 10.955 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  11.022 ±(99.9%) 4.455 ns/op [Average]
  (min, avg, max) = (10.323, 11.022, 13.040), stdev = 1.157
  CI (99.9%): [6.566, 15.477] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 121843 total address lines.
Perf output processed (skipped 73.454 seconds):
 Column 1: cycles (50159 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 668 

                                        # {method} {0x00007f9ed0482ac0} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                        #           [sp+0x40]  (sp of caller)
                                        0x00007f9f5c4f8040:   mov    0x8(%rsi),%r10d
                                        0x00007f9f5c4f8044:   movabs $0x7f9edb000000,%r11
                                        0x00007f9f5c4f804e:   add    %r11,%r10
                                        0x00007f9f5c4f8051:   cmp    %r10,%rax
                                        0x00007f9f5c4f8054:   jne    0x00007f9f5bf85080           ;   {runtime_call ic_miss_stub}
                                        0x00007f9f5c4f805a:   xchg   %ax,%ax
                                        0x00007f9f5c4f805c:   nopl   0x0(%rax)
                                      [Verified Entry Point]
   0.01%                                0x00007f9f5c4f8060:   mov    %eax,-0x14000(%rsp)
   0.00%                                0x00007f9f5c4f8067:   push   %rbp
   0.00%                                0x00007f9f5c4f8068:   sub    $0x30,%rsp
   0.01%                                0x00007f9f5c4f806c:   cmpl   $0x1,0x20(%r15)
                                        0x00007f9f5c4f8074:   jne    0x00007f9f5c4f82c2           ;*synchronization entry
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@-1 (line 124)
   0.00%                                0x00007f9f5c4f807a:   mov    %rsi,%r11
   0.01%                                0x00007f9f5c4f807d:   mov    0x18(%rsi),%ebp              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                                        0x00007f9f5c4f8080:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f9f5c4f8298
                                                                                                  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@8 (line 125)
   0.03%                                0x00007f9f5c4f8085:   xor    %r9d,%r9d
                                        0x00007f9f5c4f8088:   test   %r10d,%r10d
          ╭                             0x00007f9f5c4f808b:   jbe    0x00007f9f5c4f823c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.02%  │                             0x00007f9f5c4f8091:   mov    %r10d,%r8d
          │                             0x00007f9f5c4f8094:   dec    %r8d
   0.01%  │                             0x00007f9f5c4f8097:   cmp    %r10d,%r8d
   0.01%  │                             0x00007f9f5c4f809a:   nopw   0x0(%rax,%rax,1)
          │                             0x00007f9f5c4f80a0:   jae    0x00007f9f5c4f827c
   0.01%  │                             0x00007f9f5c4f80a6:   lea    (%r12,%rbp,8),%rbx           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
          │                             0x00007f9f5c4f80aa:   mov    $0x3e8,%edi
          │                             0x00007f9f5c4f80af:   xor    %ecx,%ecx
          │                             0x00007f9f5c4f80b1:   xor    %eax,%eax
   0.01%  │╭                            0x00007f9f5c4f80b3:   jmp    0x00007f9f5c4f80c9
   0.16%  ││  ↗                         0x00007f9f5c4f80b5:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r11=Oop rbx=Oop rbp=NarrowOop }
          ││  │                                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
   0.09%  ││  │                         0x00007f9f5c4f80bc:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@37 (line 125)
          ││  │                                                                                   ;   {poll}
   0.12%  ││  │                         0x00007f9f5c4f80bf:   nop
   0.00%  ││  │                         0x00007f9f5c4f80c0:   cmp    %r10d,%ecx
          ││╭ │                         0x00007f9f5c4f80c3:   jge    0x00007f9f5c4f823e           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   0.01%  │↘│ │                         0x00007f9f5c4f80c9:   mov    %r10d,%esi
   0.00%  │ │ │                         0x00007f9f5c4f80cc:   sub    %ecx,%esi
   0.02%  │ │ │                         0x00007f9f5c4f80ce:   cmp    %ecx,%r10d
   0.02%  │ │ │                         0x00007f9f5c4f80d1:   cmovl  %r9d,%esi
          │ │ │                         0x00007f9f5c4f80d5:   cmp    $0x3e8,%esi
   0.00%  │ │ │                         0x00007f9f5c4f80db:   cmova  %edi,%esi
   0.02%  │ │ │                         0x00007f9f5c4f80de:   add    %ecx,%esi
   0.01%  │ │╭│                         0x00007f9f5c4f80e0:   jmp    0x00007f9f5c4f80f1
   0.83%  │ │││↗                        0x00007f9f5c4f80e2:   mov    $0x1,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@23 (line 247)
          │ ││││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   4.92%  │ ││││       ↗ ↗ ↗ ↗ ↗↗↗↗↗↗↗  0x00007f9f5c4f80e8:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.48%  │ ││││       │ │ │ │ │││││││  0x00007f9f5c4f80eb:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││││       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   2.40%  │ ││││       │ │ │ │ │││││││  0x00007f9f5c4f80ed:   cmp    %esi,%ecx
          │ ││╰│       │ │ │ │ │││││││  0x00007f9f5c4f80ef:   jge    0x00007f9f5c4f80b5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@19 (line 125)
   6.65%  │ │↘ │       │ │ │ │ │││││││  0x00007f9f5c4f80f1:   mov    0x10(%rbx,%rcx,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │       │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  30.22%  │ │  │       │ │ │ │ │││││││  0x00007f9f5c4f80f6:   data16 nopw 0x0(%rax,%rax,1)
   0.49%  │ │  │       │ │ │ │ │││││││  0x00007f9f5c4f8100:   cmp    $0xffe06f36,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0379b0})}
          │ │  ╰       │ │ │ │ │││││││  0x00007f9f5c4f8107:   je     0x00007f9f5c4f80e2           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │          │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ │          │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   8.25%  │ │          │ │ │ │ │││││││  0x00007f9f5c4f8109:   cmp    $0xffe06f3f,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff0379f8})}
          │ │   ╭      │ │ │ │ │││││││  0x00007f9f5c4f8110:   je     0x00007f9f5c4f81f8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │      │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │ │   │      │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   4.24%  │ │   │      │ │ │ │ │││││││  0x00007f9f5c4f8116:   data16 nopw 0x0(%rax,%rax,1)
   0.50%  │ │   │      │ │ │ │ │││││││  0x00007f9f5c4f8120:   cmp    $0xffe06f48,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a40})}
          │ │   │╭     │ │ │ │ │││││││  0x00007f9f5c4f8127:   je     0x00007f9f5c4f8205           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││     │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          │ │   ││     │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
  12.30%  │ │   ││     │ │ │ │ │││││││  0x00007f9f5c4f812d:   cmp    $0xffe06f52,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037a90})}
   0.00%  │ │   ││╭    │ │ │ │ │││││││  0x00007f9f5c4f8134:   je     0x00007f9f5c4f8210           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │││    │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
          │ │   │││    │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.29%  │ │   │││    │ │ │ │ │││││││  0x00007f9f5c4f813a:   nopw   0x0(%rax,%rax,1)
   0.79%  │ │   │││    │ │ │ │ │││││││  0x00007f9f5c4f8140:   cmp    $0xffe06f5c,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037ae0})}
          │ │   │││╭   │ │ │ │ │││││││  0x00007f9f5c4f8147:   je     0x00007f9f5c4f821b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││   │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
          │ │   ││││   │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.31%  │ │   ││││   │ │ │ │ │││││││  0x00007f9f5c4f814d:   cmp    $0xffe06f65,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037b28})}
          │ │   ││││╭  │ │ │ │ │││││││  0x00007f9f5c4f8154:   je     0x00007f9f5c4f8226           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   │││││  │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
          │ │   │││││  │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   5.35%  │ │   │││││  │ │ │ │ │││││││  0x00007f9f5c4f815a:   nopw   0x0(%rax,%rax,1)
   0.18%  │ │   │││││  │ │ │ │ │││││││  0x00007f9f5c4f8160:   cmp    $0xffe06f6e,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037b70})}
          │ │   │││││╭ │ │ │ │ │││││││  0x00007f9f5c4f8167:   je     0x00007f9f5c4f8231           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││ │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
          │ │   ││││││ │ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.14%  │ │   ││││││ │ │ │ │ │││││││  0x00007f9f5c4f816d:   cmp    $0xffe06f77,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037bb8})}
          │ │   ││││││╭│ │ │ │ │││││││  0x00007f9f5c4f8174:   jne    0x00007f9f5c4f8185           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││││ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
          │ │   ││││││││ │ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.07%  │ │   ││││││││ │ │ │ │││││││  0x00007f9f5c4f8176:   mov    $0x8,%r8d
   0.90%  │ │   ││││││││ │ │ │ │││││││  0x00007f9f5c4f817c:   nopl   0x0(%rax)
   0.01%  │ │   │││││││╰ │ │ │ │││││││  0x00007f9f5c4f8180:   jmp    0x00007f9f5c4f80e8
   0.34%  │ │   ││││││↘  │ │ │ │││││││  0x00007f9f5c4f8185:   cmp    $0xffe06f81,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037c08})}
          │ │   ││││││  ╭│ │ │ │││││││  0x00007f9f5c4f818c:   jne    0x00007f9f5c4f8199           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││  ││ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
          │ │   ││││││  ││ │ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.67%  │ │   ││││││  ││ │ │ │││││││  0x00007f9f5c4f818e:   mov    $0x9,%r8d
   0.05%  │ │   ││││││  │╰ │ │ │││││││  0x00007f9f5c4f8194:   jmp    0x00007f9f5c4f80e8
   2.73%  │ │   ││││││  ↘  │ │ │││││││  0x00007f9f5c4f8199:   nopl   0x0(%rax)
   0.07%  │ │   ││││││     │ │ │││││││  0x00007f9f5c4f81a0:   cmp    $0xffe06f8a,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037c50})}
          │ │   ││││││    ╭│ │ │││││││  0x00007f9f5c4f81a7:   jne    0x00007f9f5c4f81b4           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││    ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
          │ │   ││││││    ││ │ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.61%  │ │   ││││││    ││ │ │││││││  0x00007f9f5c4f81a9:   mov    $0xa,%r8d
   0.05%  │ │   ││││││    │╰ │ │││││││  0x00007f9f5c4f81af:   jmp    0x00007f9f5c4f80e8
   3.45%  │ │   ││││││    ↘  │ │││││││  0x00007f9f5c4f81b4:   nopl   0x0(%rax,%rax,1)
   0.04%  │ │   ││││││       │ │││││││  0x00007f9f5c4f81bc:   data16 data16 xchg %ax,%ax
          │ │   ││││││       │ │││││││  0x00007f9f5c4f81c0:   cmp    $0xffe06f93,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037c98})}
          │ │   ││││││      ╭│ │││││││  0x00007f9f5c4f81c7:   jne    0x00007f9f5c4f81d4           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││      ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          │ │   ││││││      ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%  │ │   ││││││      ││ │││││││  0x00007f9f5c4f81c9:   mov    $0xb,%r8d
   0.91%  │ │   ││││││      │╰ │││││││  0x00007f9f5c4f81cf:   jmp    0x00007f9f5c4f80e8
   0.90%  │ │   ││││││      ↘  │││││││  0x00007f9f5c4f81d4:   nopl   0x0(%rax,%rax,1)
   0.01%  │ │   ││││││         │││││││  0x00007f9f5c4f81dc:   data16 data16 xchg %ax,%ax
          │ │   ││││││         │││││││  0x00007f9f5c4f81e0:   cmp    $0xffe06f9c,%r8d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007ff037ce0})}
          │ │   ││││││        ╭│││││││  0x00007f9f5c4f81e7:   jne    0x00007f9f5c4f8251           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││││││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
          │ │   ││││││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%  │ │   ││││││        ││││││││  0x00007f9f5c4f81ed:   mov    $0xc,%r8d
   0.96%  │ │   ││││││        │╰││││││  0x00007f9f5c4f81f3:   jmp    0x00007f9f5c4f80e8
   0.88%  │ │   ↘│││││        │ ││││││  0x00007f9f5c4f81f8:   mov    $0x2,%r8d
   0.01%  │ │    │││││        │ ││││││  0x00007f9f5c4f81fe:   xchg   %ax,%ax
   0.01%  │ │    │││││        │ ╰│││││  0x00007f9f5c4f8200:   jmp    0x00007f9f5c4f80e8
   0.10%  │ │    ↘││││        │  │││││  0x00007f9f5c4f8205:   mov    $0x3,%r8d
   0.04%  │ │     ││││        │  ╰││││  0x00007f9f5c4f820b:   jmp    0x00007f9f5c4f80e8
   0.16%  │ │     ↘│││        │   ││││  0x00007f9f5c4f8210:   mov    $0x4,%r8d
   0.48%  │ │      │││        │   ╰│││  0x00007f9f5c4f8216:   jmp    0x00007f9f5c4f80e8
   0.03%  │ │      ↘││        │    │││  0x00007f9f5c4f821b:   mov    $0x5,%r8d
   0.46%  │ │       ││        │    ╰││  0x00007f9f5c4f8221:   jmp    0x00007f9f5c4f80e8
   0.89%  │ │       ↘│        │     ││  0x00007f9f5c4f8226:   mov    $0x6,%r8d
   0.05%  │ │        │        │     ╰│  0x00007f9f5c4f822c:   jmp    0x00007f9f5c4f80e8
   0.24%  │ │        ↘        │      │  0x00007f9f5c4f8231:   mov    $0x7,%r8d
   0.05%  │ │                 │      ╰  0x00007f9f5c4f8237:   jmp    0x00007f9f5c4f80e8
          ↘ │                 │         0x00007f9f5c4f823c:   xor    %eax,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                 │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.06%    ↘                 │         0x00007f9f5c4f823e:   add    $0x30,%rsp
   0.02%                      │         0x00007f9f5c4f8242:   pop    %rbp
   0.03%                      │         0x00007f9f5c4f8243:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              │         0x00007f9f5c4f824a:   ja     0x00007f9f5c4f82ac
                              │         0x00007f9f5c4f8250:   ret    
                              ↘         0x00007f9f5c4f8251:   mov    $0xffffff45,%esi
                                        0x00007f9f5c4f8256:   mov    %r11,(%rsp)
                                        0x00007f9f5c4f825a:   mov    %r10d,0x8(%rsp)
                                        0x00007f9f5c4f825f:   mov    %ecx,0xc(%rsp)
                                        0x00007f9f5c4f8263:   mov    %eax,0x10(%rsp)
                                        0x00007f9f5c4f8267:   mov    %r8d,0x18(%rsp)
                                        0x00007f9f5c4f826c:   data16 xchg %ax,%ax
                                        0x00007f9f5c4f826f:   call   0x00007f9f5bf8af00           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [24]=NarrowOop }
....................................................................................................
  96.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.22%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 668 
   0.39%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%             libjvm.so  ElfSymbolTable::lookup 
   0.10%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 701 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.52%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.22%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 668 
   3.01%                kernel  [unknown] 
   0.11%             libjvm.so  ElfSymbolTable::lookup 
   0.10%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 701 
   0.04%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_old_init 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.28%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.32%           c2, level 4
   3.01%                kernel
   0.34%             libjvm.so
   0.19%             libc.so.6
   0.06%           interpreter
   0.05%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%          runtime stub
   0.00%        perf-17744.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 33.33% complete, ETA 00:04:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.372 ns/op
# Warmup Iteration   2: 5.450 ns/op
# Warmup Iteration   3: 5.250 ns/op
# Warmup Iteration   4: 5.309 ns/op
# Warmup Iteration   5: 5.306 ns/op
Iteration   1: 5.283 ns/op
Iteration   2: 5.305 ns/op
Iteration   3: 5.265 ns/op
Iteration   4: 5.310 ns/op
Iteration   5: 5.264 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  5.285 ±(99.9%) 0.084 ns/op [Average]
  (min, avg, max) = (5.264, 5.285, 5.310), stdev = 0.022
  CI (99.9%): [5.202, 5.369] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 131752 total address lines.
Perf output processed (skipped 70.431 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 674 

                                                                     # {method} {0x00007f79df479490} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                                                     #           [sp+0x40]  (sp of caller)
                                                                     0x00007f7a6c4f84a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                                                                     0x00007f7a6c4f84a4:   movabs $0x7f79e3000000,%r11
                                                                     0x00007f7a6c4f84ae:   add    %r11,%r10
                                                                     0x00007f7a6c4f84b1:   cmp    %r10,%rax
                                                                     0x00007f7a6c4f84b4:   jne    0x00007f7a6bf85080           ;   {runtime_call ic_miss_stub}
                                                                     0x00007f7a6c4f84ba:   xchg   %ax,%ax
                                                                     0x00007f7a6c4f84bc:   nopl   0x0(%rax)
                                                                   [Verified Entry Point]
   0.02%                                                             0x00007f7a6c4f84c0:   mov    %eax,-0x14000(%rsp)
   0.00%                                                             0x00007f7a6c4f84c7:   push   %rbp
                                                                     0x00007f7a6c4f84c8:   sub    $0x30,%rsp
   0.02%                                                             0x00007f7a6c4f84cc:   cmpl   $0x1,0x20(%r15)
   0.00%                                                             0x00007f7a6c4f84d4:   jne    0x00007f7a6c4f888e           ;*synchronization entry
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@-1 (line 113)
                                                                     0x00007f7a6c4f84da:   mov    %rsi,%rdx
   0.02%                                                             0x00007f7a6c4f84dd:   mov    0x18(%rsi),%r8d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
   0.00%                                                             0x00007f7a6c4f84e1:   mov    0xc(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f7a6c4f8864
                                                                                                                               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@8 (line 114)
   0.00%                                                             0x00007f7a6c4f84e6:   xor    %r14d,%r14d
                                                                     0x00007f7a6c4f84e9:   test   %r10d,%r10d
          ╭                                                          0x00007f7a6c4f84ec:   jbe    0x00007f7a6c4f8529           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.01%  │                                                          0x00007f7a6c4f84ee:   mov    %r10d,%r11d
          │                                                          0x00007f7a6c4f84f1:   dec    %r11d
          │                                                          0x00007f7a6c4f84f4:   cmp    %r10d,%r11d
          │╭                                                         0x00007f7a6c4f84f7:   jae    0x00007f7a6c4f881e
   0.00%  ││                                                         0x00007f7a6c4f84fd:   mov    0x10(%r12,%r8,8),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   0.01%  ││                                                         0x00007f7a6c4f8502:   mov    0xc(%r12,%rcx,8),%ecx        ; implicit exception: dispatches to 0x00007f7a6c4f8850
          ││                                                                                                                   ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - java.lang.Enum::ordinal@1 (line 128)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.01%  ││                                                         0x00007f7a6c4f8507:   cmp    $0xc,%ecx
          ││                                                         0x00007f7a6c4f850a:   jae    0x00007f7a6c4f8840           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.02%  ││                                                         0x00007f7a6c4f8510:   lea    (%r12,%r8,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
          ││                                                         0x00007f7a6c4f8514:   movslq %ecx,%r9
          ││                                                         0x00007f7a6c4f8517:   shl    $0x3,%r9
   0.03%  ││                                                         0x00007f7a6c4f851b:   movabs $0x7f7a6c4f8320,%rbx         ;   {section_word}
          ││                                                         0x00007f7a6c4f8525:   jmp    *(%rbx,%r9,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
          ↘│                                                         0x00007f7a6c4f8529:   xor    %eax,%eax
           │╭                                                        0x00007f7a6c4f852b:   jmp    0x00007f7a6c4f880b
           ││                                                        0x00007f7a6c4f8530:   mov    $0x7,%r9d
           ││╭                                                       0x00007f7a6c4f8536:   jmp    0x00007f7a6c4f8803
           │││                                                       0x00007f7a6c4f853b:   mov    $0x6,%r9d
           │││╭                                                      0x00007f7a6c4f8541:   jmp    0x00007f7a6c4f8803
           ││││                                                      0x00007f7a6c4f8546:   mov    $0x5,%r9d
           ││││╭                                                     0x00007f7a6c4f854c:   jmp    0x00007f7a6c4f8803
           │││││                                                     0x00007f7a6c4f8551:   mov    $0xb,%r9d
           │││││╭                                                    0x00007f7a6c4f8557:   jmp    0x00007f7a6c4f8803
           ││││││                                                    0x00007f7a6c4f855c:   mov    $0xa,%r9d
           ││││││╭                                                   0x00007f7a6c4f8562:   jmp    0x00007f7a6c4f8803
           │││││││                                                   0x00007f7a6c4f8567:   mov    $0x9,%r9d
           │││││││╭                                                  0x00007f7a6c4f856d:   jmp    0x00007f7a6c4f8803
           ││││││││                                                  0x00007f7a6c4f8572:   mov    $0x8,%r9d
           ││││││││╭                                                 0x00007f7a6c4f8578:   jmp    0x00007f7a6c4f8803
           │││││││││                                                 0x00007f7a6c4f857d:   mov    $0xc,%r9d
           │││││││││╭                                                0x00007f7a6c4f8583:   jmp    0x00007f7a6c4f8803
   0.10%   ││││││││││                                                0x00007f7a6c4f8588:   mov    $0x4,%r9d
   0.00%   ││││││││││╭                                               0x00007f7a6c4f858e:   jmp    0x00007f7a6c4f8803
           │││││││││││                                               0x00007f7a6c4f8593:   mov    $0x3,%r9d
           │││││││││││╭                                              0x00007f7a6c4f8599:   jmp    0x00007f7a6c4f8803
           ││││││││││││                                              0x00007f7a6c4f859e:   mov    $0x2,%r9d
           ││││││││││││╭                                             0x00007f7a6c4f85a4:   jmp    0x00007f7a6c4f8803
           │││││││││││││                                             0x00007f7a6c4f85a9:   mov    $0x7,%eax
           │││││││││││││╭                                            0x00007f7a6c4f85ae:   jmp    0x00007f7a6c4f86af
           ││││││││││││││                                            0x00007f7a6c4f85b3:   mov    $0x6,%eax
           ││││││││││││││╭                                           0x00007f7a6c4f85b8:   jmp    0x00007f7a6c4f86af
           │││││││││││││││                                           0x00007f7a6c4f85bd:   mov    $0x5,%eax
           │││││││││││││││╭                                          0x00007f7a6c4f85c2:   jmp    0x00007f7a6c4f86af
           ││││││││││││││││                                          0x00007f7a6c4f85c7:   mov    $0xb,%eax
           ││││││││││││││││╭                                         0x00007f7a6c4f85cc:   jmp    0x00007f7a6c4f86af
           │││││││││││││││││                                         0x00007f7a6c4f85d1:   mov    $0xa,%eax
           │││││││││││││││││╭                                        0x00007f7a6c4f85d6:   jmp    0x00007f7a6c4f86af
           ││││││││││││││││││                                        0x00007f7a6c4f85db:   mov    $0x9,%eax
           ││││││││││││││││││╭                                       0x00007f7a6c4f85e0:   jmp    0x00007f7a6c4f86af
           │││││││││││││││││││                                       0x00007f7a6c4f85e5:   mov    $0x8,%eax
           │││││││││││││││││││╭                                      0x00007f7a6c4f85ea:   jmp    0x00007f7a6c4f86af
           ││││││││││││││││││││                                      0x00007f7a6c4f85ef:   mov    $0xc,%eax
           ││││││││││││││││││││╭                                     0x00007f7a6c4f85f4:   jmp    0x00007f7a6c4f86af
           │││││││││││││││││││││                                     0x00007f7a6c4f85f9:   mov    $0x4,%eax
           │││││││││││││││││││││                                     0x00007f7a6c4f85fe:   xchg   %ax,%ax
           │││││││││││││││││││││╭                                    0x00007f7a6c4f8600:   jmp    0x00007f7a6c4f86af
           ││││││││││││││││││││││                                    0x00007f7a6c4f8605:   mov    $0x3,%eax
           ││││││││││││││││││││││╭                                   0x00007f7a6c4f860a:   jmp    0x00007f7a6c4f86af
           │││││││││││││││││││││││                                   0x00007f7a6c4f860f:   mov    $0x2,%eax
           │││││││││││││││││││││││╭                                  0x00007f7a6c4f8614:   jmp    0x00007f7a6c4f86af
           ││││││││││││││││││││││││                                  0x00007f7a6c4f8619:   mov    $0x7,%ebx                    ;   {no_reloc}
           ││││││││││││││││││││││││                                  0x00007f7a6c4f861e:   xchg   %ax,%ax
           ││││││││││││││││││││││││╭                                 0x00007f7a6c4f8620:   jmp    0x00007f7a6c4f8683
   5.23%   │││││││││││││││││││││││││                                 0x00007f7a6c4f8625:   mov    $0x6,%ebx
   0.06%   │││││││││││││││││││││││││╭                                0x00007f7a6c4f862a:   jmp    0x00007f7a6c4f8683
           ││││││││││││││││││││││││││                                0x00007f7a6c4f862f:   mov    $0x5,%ebx
           ││││││││││││││││││││││││││╭                               0x00007f7a6c4f8634:   jmp    0x00007f7a6c4f8683
           │││││││││││││││││││││││││││                               0x00007f7a6c4f8639:   mov    $0xb,%ebx
           │││││││││││││││││││││││││││                               0x00007f7a6c4f863e:   xchg   %ax,%ax
           │││││││││││││││││││││││││││╭                              0x00007f7a6c4f8640:   jmp    0x00007f7a6c4f8683
   5.07%   ││││││││││││││││││││││││││││                              0x00007f7a6c4f8645:   mov    $0xa,%ebx
   0.19%   ││││││││││││││││││││││││││││╭                             0x00007f7a6c4f864a:   jmp    0x00007f7a6c4f8683
           │││││││││││││││││││││││││││││                             0x00007f7a6c4f864f:   mov    $0x9,%ebx
           │││││││││││││││││││││││││││││╭                            0x00007f7a6c4f8654:   jmp    0x00007f7a6c4f8683
   1.25%   ││││││││││││││││││││││││││││││                            0x00007f7a6c4f8659:   mov    $0x8,%ebx
   1.37%   ││││││││││││││││││││││││││││││                            0x00007f7a6c4f865e:   xchg   %ax,%ax
   0.00%   ││││││││││││││││││││││││││││││╭                           0x00007f7a6c4f8660:   jmp    0x00007f7a6c4f8683
   4.88%   │││││││││││││││││││││││││││││││                           0x00007f7a6c4f8662:   mov    $0xc,%ebx
   0.07%   │││││││││││││││││││││││││││││││╭                          0x00007f7a6c4f8667:   jmp    0x00007f7a6c4f8683
   8.21%   ││││││││││││││││││││││││││││││││                          0x00007f7a6c4f8669:   mov    $0x4,%ebx
   0.09%   ││││││││││││││││││││││││││││││││╭                         0x00007f7a6c4f866e:   jmp    0x00007f7a6c4f8683
           │││││││││││││││││││││││││││││││││                         0x00007f7a6c4f8670:   mov    $0x3,%ebx
           │││││││││││││││││││││││││││││││││╭                        0x00007f7a6c4f8675:   jmp    0x00007f7a6c4f8683
   6.29%   ││││││││││││││││││││││││││││││││││                        0x00007f7a6c4f8677:   mov    $0x2,%ebx
   0.06%   ││││││││││││││││││││││││││││││││││╭                       0x00007f7a6c4f867c:   jmp    0x00007f7a6c4f8683
           │││││││││││││││││││││││││││││││││││                       0x00007f7a6c4f867e:   mov    $0x1,%ebx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││││││││││││││                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
           │││││││││││││││││││││││││││││││││││                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   8.96%   ││││││││││││││││││││││││↘↘↘↘↘↘↘↘↘↘↘                       0x00007f7a6c4f8683:   mov    0xc(%r12,%rsi,8),%ecx        ; implicit exception: dispatches to 0x00007f7a6c4f8850
           ││││││││││││││││││││││││                                                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││                                                                                            ; - java.lang.Enum::ordinal@1 (line 128)
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.21%   ││││││││││││││││││││││││                                  0x00007f7a6c4f8688:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   1.31%   ││││││││││││││││││││││││                                  0x00007f7a6c4f868a:   cmp    $0xc,%ecx
           ││││││││││││││││││││││││           ╭                      0x00007f7a6c4f868d:   jae    0x00007f7a6c4f8798           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.23%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f8693:   movslq %ecx,%rcx
   8.89%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f8696:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.01%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f8699:   shl    $0x3,%rcx
   1.33%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f869d:   movabs $0x7f7a6c4f8380,%rsi         ;   {section_word}
   0.23%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f86a7:   jmp    *(%rsi,%rcx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.11%   ││││││││││││││││││││││││           │                      0x00007f7a6c4f86aa:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │││││││││││││↘↘↘↘↘↘↘↘↘↘↘           │                      0x00007f7a6c4f86af:   cmp    $0x1,%r11d
           │││││││││││││                      │╭                     0x00007f7a6c4f86b3:   jle    0x00007f7a6c4f87c4
           │││││││││││││                      ││                     0x00007f7a6c4f86b9:   mov    $0x7d0,%r9d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
           │││││││││││││                      ││                     0x00007f7a6c4f86bf:   mov    $0x1,%edi
   0.02%   │││││││││││││                      ││╭                    0x00007f7a6c4f86c4:   jmp    0x00007f7a6c4f86d8
   0.09%   │││││││││││││                      │││             ↗      0x00007f7a6c4f86c6:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r8=NarrowOop rdx=Oop rbp=Oop }
           │││││││││││││                      │││             │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││                      │││             │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
   0.21%   │││││││││││││                      │││             │      0x00007f7a6c4f86cd:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      │││             │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@37 (line 114)
           │││││││││││││                      │││             │                                                                ;   {poll}
   0.09%   │││││││││││││                      │││             │      0x00007f7a6c4f86cf:   cmp    %r11d,%edi
           │││││││││││││                      │││╭            │      0x00007f7a6c4f86d2:   jge    0x00007f7a6c4f87c9           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││││            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
           │││││││││││││                      ││↘│            │      0x00007f7a6c4f86d8:   mov    %r10d,%r13d
           │││││││││││││                      ││ │            │      0x00007f7a6c4f86db:   sub    %edi,%r13d
           │││││││││││││                      ││ │            │      0x00007f7a6c4f86de:   dec    %r13d
   0.01%   │││││││││││││                      ││ │            │      0x00007f7a6c4f86e1:   cmp    %edi,%r11d
           │││││││││││││                      ││ │            │      0x00007f7a6c4f86e4:   cmovl  %r14d,%r13d
           │││││││││││││                      ││ │            │      0x00007f7a6c4f86e8:   cmp    $0x7d0,%r13d
           │││││││││││││                      ││ │            │      0x00007f7a6c4f86ef:   cmova  %r9d,%r13d
   0.02%   │││││││││││││                      ││ │            │      0x00007f7a6c4f86f3:   add    %edi,%r13d
           │││││││││││││                      ││ │╭           │      0x00007f7a6c4f86f6:   jmp    0x00007f7a6c4f876e
   1.90%   │││││││││││││                      ││ ││           │      0x00007f7a6c4f86fb:   mov    $0x7,%eax
   0.08%   │││││││││││││                      ││ ││╭          │      0x00007f7a6c4f8700:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ │││          │      0x00007f7a6c4f8705:   mov    $0x6,%eax
           │││││││││││││                      ││ │││╭         │      0x00007f7a6c4f870a:   jmp    0x00007f7a6c4f8763
   1.89%   │││││││││││││                      ││ ││││         │      0x00007f7a6c4f870f:   mov    $0x5,%eax
   0.07%   │││││││││││││                      ││ ││││╭        │      0x00007f7a6c4f8714:   jmp    0x00007f7a6c4f8763
   1.86%   │││││││││││││                      ││ │││││        │      0x00007f7a6c4f8719:   mov    $0xb,%eax
   0.08%   │││││││││││││                      ││ │││││        │      0x00007f7a6c4f871e:   xchg   %ax,%ax
   0.09%   │││││││││││││                      ││ │││││╭       │      0x00007f7a6c4f8720:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ ││││││       │      0x00007f7a6c4f8725:   mov    $0xa,%eax
           │││││││││││││                      ││ ││││││╭      │      0x00007f7a6c4f872a:   jmp    0x00007f7a6c4f8763
   0.58%   │││││││││││││                      ││ │││││││      │      0x00007f7a6c4f872f:   mov    $0x9,%eax
   1.43%   │││││││││││││                      ││ │││││││╭     │      0x00007f7a6c4f8734:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ ││││││││     │      0x00007f7a6c4f8739:   mov    $0x8,%eax
           │││││││││││││                      ││ ││││││││     │      0x00007f7a6c4f873e:   xchg   %ax,%ax
           │││││││││││││                      ││ ││││││││╭    │      0x00007f7a6c4f8740:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ │││││││││    │      0x00007f7a6c4f8742:   mov    $0xc,%eax
           │││││││││││││                      ││ │││││││││╭   │      0x00007f7a6c4f8747:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ ││││││││││   │      0x00007f7a6c4f8749:   mov    $0x4,%eax
           │││││││││││││                      ││ ││││││││││╭  │      0x00007f7a6c4f874e:   jmp    0x00007f7a6c4f8763
   2.45%   │││││││││││││                      ││ │││││││││││  │      0x00007f7a6c4f8750:   mov    $0x3,%eax
   0.10%   │││││││││││││                      ││ │││││││││││╭ │      0x00007f7a6c4f8755:   jmp    0x00007f7a6c4f8763
           │││││││││││││                      ││ ││││││││││││ │      0x00007f7a6c4f8757:   mov    $0x2,%eax
           │││││││││││││                      ││ ││││││││││││╭│      0x00007f7a6c4f875c:   jmp    0x00007f7a6c4f8763
   1.89%   │││││││││││││                      ││ ││││││││││││││      0x00007f7a6c4f875e:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
           │││││││││││││                      ││ ││││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   7.29%   │││││││││││││                      ││ ││↘↘↘↘↘↘↘↘↘↘↘│      0x00007f7a6c4f8763:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.05%   │││││││││││││                      ││ ││           │      0x00007f7a6c4f8765:   cmp    %r13d,%edi
           │││││││││││││                      ││ ││           ╰      0x00007f7a6c4f8768:   jge    0x00007f7a6c4f86c6           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
   1.70%   │││││││││││││                      ││ │↘                  0x00007f7a6c4f876e:   mov    0x10(%rbp,%rdi,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   1.59%   │││││││││││││                      ││ │                   0x00007f7a6c4f8772:   mov    0xc(%r12,%rcx,8),%ecx        ; implicit exception: dispatches to 0x00007f7a6c4f8850
           │││││││││││││                      ││ │                                                                             ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │                                                                             ; - java.lang.Enum::ordinal@1 (line 128)
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   7.57%   │││││││││││││                      ││ │                   0x00007f7a6c4f8777:   cmp    $0xc,%ecx
           │││││││││││││                      ││ │             ╭     0x00007f7a6c4f877a:   jae    0x00007f7a6c4f8794           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.13%   │││││││││││││                      ││ │             │     0x00007f7a6c4f877c:   mov    0x14(%rbp,%rdi,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   1.67%   │││││││││││││                      ││ │             │     0x00007f7a6c4f8780:   movslq %ecx,%rbx
   1.44%   │││││││││││││                      ││ │             │     0x00007f7a6c4f8783:   shl    $0x3,%rbx
   7.25%   │││││││││││││                      ││ │             │     0x00007f7a6c4f8787:   movabs $0x7f7a6c4f83e0,%rcx         ;   {section_word}
   0.02%   │││││││││││││                      ││ │             │     0x00007f7a6c4f8791:   jmp    *(%rcx,%rbx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │││││││││││││                      ││ │             ↘     0x00007f7a6c4f8794:   mov    %eax,%ebx
           │││││││││││││                      ││ │              ╭    0x00007f7a6c4f8796:   jmp    0x00007f7a6c4f879a
           │││││││││││││                      ↘│ │              │    0x00007f7a6c4f8798:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                       │ │              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
           │││││││││││││                       │ │              ↘    0x00007f7a6c4f879a:   mov    $0xffffff45,%esi
           │││││││││││││                       │ │                   0x00007f7a6c4f879f:   mov    %r10d,%ebp
           │││││││││││││                       │ │                   0x00007f7a6c4f87a2:   mov    %edi,(%rsp)
           │││││││││││││                       │ │                   0x00007f7a6c4f87a5:   mov    %ebx,0x4(%rsp)
           │││││││││││││                       │ │                   0x00007f7a6c4f87a9:   mov    %ecx,0x8(%rsp)
           │││││││││││││                       │ │                   0x00007f7a6c4f87ad:   mov    %rdx,0x10(%rsp)
           │││││││││││││                       │ │                   0x00007f7a6c4f87b2:   mov    %r8d,0xc(%rsp)
           │││││││││││││                       │ │                   0x00007f7a6c4f87b7:   call   0x00007f7a6bf8af00           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop }
           │││││││││││││                       │ │                                                                             ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││                       │ │                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │││││││││││││                       │ │                                                                             ;   {runtime_call UncommonTrapBlob}
           │││││││││││││                       │ │                   0x00007f7a6c4f87bc:   nopl   0x10006ac(%rax,%rax,1)       ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │││││││││││││                       │ │                                                                             ;   {other}
           │││││││││││││                       ↘ │                   0x00007f7a6c4f87c4:   mov    $0x1,%edi
           │││││││││││││                         ↘                   0x00007f7a6c4f87c9:   cmp    %r10d,%edi
           │││││││││││││                                         ╭   0x00007f7a6c4f87cc:   jge    0x00007f7a6c4f880b           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@19 (line 114)
           │││││││││││││                                         │↗  0x00007f7a6c4f87ce:   mov    0x10(%rbp,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
           │││││││││││││                                         ││  0x00007f7a6c4f87d3:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f7a6c4f8850
           │││││││││││││                                         ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.02%   │││││││││││││                                         ││  0x00007f7a6c4f87d8:   cmp    $0xc,%ecx
   0.02%   │││││││││││││                                         ││  0x00007f7a6c4f87db:   nopl   0x0(%rax,%rax,1)
           │││││││││││││                                         ││  0x00007f7a6c4f87e0:   jae    0x00007f7a6c4f8849           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.02%   │││││││││││││                                         ││  0x00007f7a6c4f87e6:   movslq %ecx,%r11
           │││││││││││││                                         ││  0x00007f7a6c4f87e9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
           │││││││││││││                                         ││  0x00007f7a6c4f87eb:   shl    $0x3,%r11
           │││││││││││││                                         ││  0x00007f7a6c4f87ef:   movabs $0x7f7a6c4f8440,%r9          ;   {section_word}
   0.02%   │││││││││││││                                         ││  0x00007f7a6c4f87f9:   jmp    *(%r9,%r11,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │││││││││││││                                         ││  0x00007f7a6c4f87fd:   mov    $0x1,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@173 (line 224)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.01%   ││↘↘↘↘↘↘↘↘↘↘↘                                         ││  0x00007f7a6c4f8803:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           ││                                                    ││  0x00007f7a6c4f8806:   cmp    %r10d,%edi
           ││                                                    │╰  0x00007f7a6c4f8809:   jl     0x00007f7a6c4f87ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
           │↘                                                    ↘   0x00007f7a6c4f880b:   add    $0x30,%rsp
           │                                                         0x00007f7a6c4f880f:   pop    %rbp
   0.02%   │                                                         0x00007f7a6c4f8810:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                                                         0x00007f7a6c4f8817:   ja     0x00007f7a6c4f8878
           │                                                         0x00007f7a6c4f881d:   ret    
           ↘                                                         0x00007f7a6c4f881e:   mov    $0xffffff76,%esi
                                                                     0x00007f7a6c4f8823:   mov    %r10d,(%rsp)
                                                                     0x00007f7a6c4f8827:   mov    %rdx,0x8(%rsp)
                                                                     0x00007f7a6c4f882c:   mov    %r8d,0x4(%rsp)
                                                                     0x00007f7a6c4f8831:   xchg   %ax,%ax
                                                                     0x00007f7a6c4f8833:   call   0x00007f7a6bf8af00           ; ImmutableOopMap {[4]=NarrowOop [8]=Oop }
                                                                                                                               ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
....................................................................................................
  96.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.03%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 674 
   0.45%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 718 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.60%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.03%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 674 
   3.30%                kernel  [unknown] 
   0.07%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 718 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_setb 
   0.27%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.10%           c2, level 4
   3.30%                kernel
   0.32%             libjvm.so
   0.20%             libc.so.6
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%                      
   0.00%                [vdso]
   0.00%           c1, level 3
   0.00%        perf-17914.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 66.67% complete, ETA 00:02:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.399 ns/op
# Warmup Iteration   2: 5.262 ns/op
# Warmup Iteration   3: 5.237 ns/op
# Warmup Iteration   4: 5.280 ns/op
# Warmup Iteration   5: 5.267 ns/op
Iteration   1: 5.271 ns/op
Iteration   2: 5.285 ns/op
Iteration   3: 5.245 ns/op
Iteration   4: 5.202 ns/op
Iteration   5: 5.240 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  5.249 ±(99.9%) 0.123 ns/op [Average]
  (min, avg, max) = (5.202, 5.249, 5.285), stdev = 0.032
  CI (99.9%): [5.125, 5.372] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 130248 total address lines.
Perf output processed (skipped 70.868 seconds):
 Column 1: cycles (50855 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 667 

                                                                     # {method} {0x00007f2bc0479350} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                                                     #           [sp+0x40]  (sp of caller)
                                                                     0x00007f2c4c4f9ba0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                                                                     0x00007f2c4c4f9ba4:   movabs $0x7f2bcb000000,%r11
                                                                     0x00007f2c4c4f9bae:   add    %r11,%r10
                                                                     0x00007f2c4c4f9bb1:   cmp    %r10,%rax
                                                                     0x00007f2c4c4f9bb4:   jne    0x00007f2c4bf85080           ;   {runtime_call ic_miss_stub}
                                                                     0x00007f2c4c4f9bba:   xchg   %ax,%ax
                                                                     0x00007f2c4c4f9bbc:   nopl   0x0(%rax)
                                                                   [Verified Entry Point]
   0.01%                                                             0x00007f2c4c4f9bc0:   mov    %eax,-0x14000(%rsp)
                                                                     0x00007f2c4c4f9bc7:   push   %rbp
                                                                     0x00007f2c4c4f9bc8:   sub    $0x30,%rsp
   0.03%                                                             0x00007f2c4c4f9bcc:   cmpl   $0x1,0x20(%r15)
                                                                     0x00007f2c4c4f9bd4:   jne    0x00007f2c4c4f9f8e           ;*synchronization entry
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@-1 (line 102)
                                                                     0x00007f2c4c4f9bda:   mov    %rsi,%rdx
   0.03%                                                             0x00007f2c4c4f9bdd:   mov    0x18(%rsi),%r8d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
   0.00%                                                             0x00007f2c4c4f9be1:   mov    0xc(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f2c4c4f9f64
                                                                                                                               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@8 (line 103)
   0.00%                                                             0x00007f2c4c4f9be6:   xor    %r14d,%r14d
                                                                     0x00007f2c4c4f9be9:   test   %r10d,%r10d
          ╭                                                          0x00007f2c4c4f9bec:   jbe    0x00007f2c4c4f9c29           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.02%  │                                                          0x00007f2c4c4f9bee:   mov    %r10d,%r11d
          │                                                          0x00007f2c4c4f9bf1:   dec    %r11d
          │                                                          0x00007f2c4c4f9bf4:   cmp    %r10d,%r11d
          │╭                                                         0x00007f2c4c4f9bf7:   jae    0x00007f2c4c4f9f1e
   0.00%  ││                                                         0x00007f2c4c4f9bfd:   mov    0x10(%r12,%r8,8),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.02%  ││                                                         0x00007f2c4c4f9c02:   mov    0xc(%r12,%rcx,8),%ecx        ; implicit exception: dispatches to 0x00007f2c4c4f9f50
          ││                                                                                                                   ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - java.lang.Enum::ordinal@1 (line 128)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.01%  ││                                                         0x00007f2c4c4f9c07:   cmp    $0xc,%ecx
          ││                                                         0x00007f2c4c4f9c0a:   jae    0x00007f2c4c4f9f40           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.03%  ││                                                         0x00007f2c4c4f9c10:   lea    (%r12,%r8,8),%rbp            ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
          ││                                                         0x00007f2c4c4f9c14:   movslq %ecx,%r9
          ││                                                         0x00007f2c4c4f9c17:   shl    $0x3,%r9
   0.04%  ││                                                         0x00007f2c4c4f9c1b:   movabs $0x7f2c4c4f9a20,%rbx         ;   {section_word}
          ││                                                         0x00007f2c4c4f9c25:   jmp    *(%rbx,%r9,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          ↘│                                                         0x00007f2c4c4f9c29:   xor    %eax,%eax
           │╭                                                        0x00007f2c4c4f9c2b:   jmp    0x00007f2c4c4f9f0b
           ││                                                        0x00007f2c4c4f9c30:   mov    $0xb,%r9d
           ││╭                                                       0x00007f2c4c4f9c36:   jmp    0x00007f2c4c4f9f03
           │││                                                       0x00007f2c4c4f9c3b:   mov    $0x7,%r9d
           │││╭                                                      0x00007f2c4c4f9c41:   jmp    0x00007f2c4c4f9f03
           ││││                                                      0x00007f2c4c4f9c46:   mov    $0x6,%r9d
           ││││╭                                                     0x00007f2c4c4f9c4c:   jmp    0x00007f2c4c4f9f03
           │││││                                                     0x00007f2c4c4f9c51:   mov    $0x5,%r9d
           │││││╭                                                    0x00007f2c4c4f9c57:   jmp    0x00007f2c4c4f9f03
           ││││││                                                    0x00007f2c4c4f9c5c:   mov    $0xc,%r9d
           ││││││╭                                                   0x00007f2c4c4f9c62:   jmp    0x00007f2c4c4f9f03
           │││││││                                                   0x00007f2c4c4f9c67:   mov    $0xa,%r9d
           │││││││╭                                                  0x00007f2c4c4f9c6d:   jmp    0x00007f2c4c4f9f03
           ││││││││                                                  0x00007f2c4c4f9c72:   mov    $0x9,%r9d
           ││││││││╭                                                 0x00007f2c4c4f9c78:   jmp    0x00007f2c4c4f9f03
           │││││││││                                                 0x00007f2c4c4f9c7d:   mov    $0x8,%r9d
           │││││││││╭                                                0x00007f2c4c4f9c83:   jmp    0x00007f2c4c4f9f03
   0.09%   ││││││││││                                                0x00007f2c4c4f9c88:   mov    $0x4,%r9d
           ││││││││││╭                                               0x00007f2c4c4f9c8e:   jmp    0x00007f2c4c4f9f03
           │││││││││││                                               0x00007f2c4c4f9c93:   mov    $0x3,%r9d
           │││││││││││╭                                              0x00007f2c4c4f9c99:   jmp    0x00007f2c4c4f9f03
           ││││││││││││                                              0x00007f2c4c4f9c9e:   mov    $0x2,%r9d
           ││││││││││││╭                                             0x00007f2c4c4f9ca4:   jmp    0x00007f2c4c4f9f03
           │││││││││││││                                             0x00007f2c4c4f9ca9:   mov    $0xb,%eax
           │││││││││││││╭                                            0x00007f2c4c4f9cae:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││                                            0x00007f2c4c4f9cb3:   mov    $0x7,%eax
           ││││││││││││││╭                                           0x00007f2c4c4f9cb8:   jmp    0x00007f2c4c4f9daf
           │││││││││││││││                                           0x00007f2c4c4f9cbd:   mov    $0x6,%eax
           │││││││││││││││╭                                          0x00007f2c4c4f9cc2:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││││                                          0x00007f2c4c4f9cc7:   mov    $0x5,%eax
           ││││││││││││││││╭                                         0x00007f2c4c4f9ccc:   jmp    0x00007f2c4c4f9daf
           │││││││││││││││││                                         0x00007f2c4c4f9cd1:   mov    $0xc,%eax
           │││││││││││││││││╭                                        0x00007f2c4c4f9cd6:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││││││                                        0x00007f2c4c4f9cdb:   mov    $0xa,%eax
           ││││││││││││││││││╭                                       0x00007f2c4c4f9ce0:   jmp    0x00007f2c4c4f9daf
           │││││││││││││││││││                                       0x00007f2c4c4f9ce5:   mov    $0x9,%eax
           │││││││││││││││││││╭                                      0x00007f2c4c4f9cea:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││││││││                                      0x00007f2c4c4f9cef:   mov    $0x8,%eax
           ││││││││││││││││││││╭                                     0x00007f2c4c4f9cf4:   jmp    0x00007f2c4c4f9daf
           │││││││││││││││││││││                                     0x00007f2c4c4f9cf9:   mov    $0x4,%eax
           │││││││││││││││││││││                                     0x00007f2c4c4f9cfe:   xchg   %ax,%ax
           │││││││││││││││││││││╭                                    0x00007f2c4c4f9d00:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││││││││││                                    0x00007f2c4c4f9d05:   mov    $0x3,%eax
           ││││││││││││││││││││││╭                                   0x00007f2c4c4f9d0a:   jmp    0x00007f2c4c4f9daf
           │││││││││││││││││││││││                                   0x00007f2c4c4f9d0f:   mov    $0x2,%eax
           │││││││││││││││││││││││╭                                  0x00007f2c4c4f9d14:   jmp    0x00007f2c4c4f9daf
           ││││││││││││││││││││││││                                  0x00007f2c4c4f9d19:   mov    $0xb,%ebx                    ;   {no_reloc}
           ││││││││││││││││││││││││                                  0x00007f2c4c4f9d1e:   xchg   %ax,%ax
           ││││││││││││││││││││││││╭                                 0x00007f2c4c4f9d20:   jmp    0x00007f2c4c4f9d83
           │││││││││││││││││││││││││                                 0x00007f2c4c4f9d25:   mov    $0x7,%ebx
           │││││││││││││││││││││││││╭                                0x00007f2c4c4f9d2a:   jmp    0x00007f2c4c4f9d83
   4.66%   ││││││││││││││││││││││││││                                0x00007f2c4c4f9d2f:   mov    $0x6,%ebx
   0.09%   ││││││││││││││││││││││││││╭                               0x00007f2c4c4f9d34:   jmp    0x00007f2c4c4f9d83
           │││││││││││││││││││││││││││                               0x00007f2c4c4f9d39:   mov    $0x5,%ebx
           │││││││││││││││││││││││││││                               0x00007f2c4c4f9d3e:   xchg   %ax,%ax
           │││││││││││││││││││││││││││╭                              0x00007f2c4c4f9d40:   jmp    0x00007f2c4c4f9d83
   6.04%   ││││││││││││││││││││││││││││                              0x00007f2c4c4f9d45:   mov    $0xc,%ebx
   0.07%   ││││││││││││││││││││││││││││╭                             0x00007f2c4c4f9d4a:   jmp    0x00007f2c4c4f9d83
   5.37%   │││││││││││││││││││││││││││││                             0x00007f2c4c4f9d4f:   mov    $0xa,%ebx
   0.08%   │││││││││││││││││││││││││││││╭                            0x00007f2c4c4f9d54:   jmp    0x00007f2c4c4f9d83
           ││││││││││││││││││││││││││││││                            0x00007f2c4c4f9d59:   mov    $0x9,%ebx
           ││││││││││││││││││││││││││││││                            0x00007f2c4c4f9d5e:   xchg   %ax,%ax
           ││││││││││││││││││││││││││││││╭                           0x00007f2c4c4f9d60:   jmp    0x00007f2c4c4f9d83
   4.62%   │││││││││││││││││││││││││││││││                           0x00007f2c4c4f9d62:   mov    $0x8,%ebx
   0.12%   │││││││││││││││││││││││││││││││╭                          0x00007f2c4c4f9d67:   jmp    0x00007f2c4c4f9d83
   4.70%   ││││││││││││││││││││││││││││││││                          0x00007f2c4c4f9d69:   mov    $0x4,%ebx
   0.10%   ││││││││││││││││││││││││││││││││╭                         0x00007f2c4c4f9d6e:   jmp    0x00007f2c4c4f9d83
           │││││││││││││││││││││││││││││││││                         0x00007f2c4c4f9d70:   mov    $0x3,%ebx
           │││││││││││││││││││││││││││││││││╭                        0x00007f2c4c4f9d75:   jmp    0x00007f2c4c4f9d83
   5.71%   ││││││││││││││││││││││││││││││││││                        0x00007f2c4c4f9d77:   mov    $0x2,%ebx
   0.07%   ││││││││││││││││││││││││││││││││││╭                       0x00007f2c4c4f9d7c:   jmp    0x00007f2c4c4f9d83
           │││││││││││││││││││││││││││││││││││                       0x00007f2c4c4f9d7e:   mov    $0x1,%ebx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││││││││││││││                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
           │││││││││││││││││││││││││││││││││││                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
  10.31%   ││││││││││││││││││││││││↘↘↘↘↘↘↘↘↘↘↘                       0x00007f2c4c4f9d83:   mov    0xc(%r12,%rsi,8),%ecx        ; implicit exception: dispatches to 0x00007f2c4c4f9f50
           ││││││││││││││││││││││││                                                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││                                                                                            ; - java.lang.Enum::ordinal@1 (line 128)
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.26%   ││││││││││││││││││││││││                                  0x00007f2c4c4f9d88:   add    %eax,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.02%   ││││││││││││││││││││││││                                  0x00007f2c4c4f9d8a:   cmp    $0xc,%ecx
           ││││││││││││││││││││││││           ╭                      0x00007f2c4c4f9d8d:   jae    0x00007f2c4c4f9e98           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.16%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9d93:   movslq %ecx,%rcx
  10.56%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9d96:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.02%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9d99:   shl    $0x3,%rcx
   0.09%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9d9d:   movabs $0x7f2c4c4f9a80,%rsi         ;   {section_word}
   0.09%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9da7:   jmp    *(%rsi,%rcx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.12%   ││││││││││││││││││││││││           │                      0x00007f2c4c4f9daa:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
           ││││││││││││││││││││││││           │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │││││││││││││↘↘↘↘↘↘↘↘↘↘↘           │                      0x00007f2c4c4f9daf:   cmp    $0x1,%r11d
           │││││││││││││                      │╭                     0x00007f2c4c4f9db3:   jle    0x00007f2c4c4f9ec4
           │││││││││││││                      ││                     0x00007f2c4c4f9db9:   mov    $0x7d0,%r9d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
           │││││││││││││                      ││                     0x00007f2c4c4f9dbf:   mov    $0x1,%edi
   0.02%   │││││││││││││                      ││╭                    0x00007f2c4c4f9dc4:   jmp    0x00007f2c4c4f9dd8
   0.02%   │││││││││││││                      │││             ↗      0x00007f2c4c4f9dc6:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r8=NarrowOop rdx=Oop rbp=Oop }
           │││││││││││││                      │││             │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││                      │││             │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
   0.13%   │││││││││││││                      │││             │      0x00007f2c4c4f9dcd:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      │││             │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@37 (line 103)
           │││││││││││││                      │││             │                                                                ;   {poll}
   0.09%   │││││││││││││                      │││             │      0x00007f2c4c4f9dcf:   cmp    %r11d,%edi
           │││││││││││││                      │││╭            │      0x00007f2c4c4f9dd2:   jge    0x00007f2c4c4f9ec9           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││││            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
           │││││││││││││                      ││↘│            │      0x00007f2c4c4f9dd8:   mov    %r10d,%r13d
           │││││││││││││                      ││ │            │      0x00007f2c4c4f9ddb:   sub    %edi,%r13d
           │││││││││││││                      ││ │            │      0x00007f2c4c4f9dde:   dec    %r13d
   0.03%   │││││││││││││                      ││ │            │      0x00007f2c4c4f9de1:   cmp    %edi,%r11d
           │││││││││││││                      ││ │            │      0x00007f2c4c4f9de4:   cmovl  %r14d,%r13d
           │││││││││││││                      ││ │            │      0x00007f2c4c4f9de8:   cmp    $0x7d0,%r13d
           │││││││││││││                      ││ │            │      0x00007f2c4c4f9def:   cmova  %r9d,%r13d
   0.01%   │││││││││││││                      ││ │            │      0x00007f2c4c4f9df3:   add    %edi,%r13d
           │││││││││││││                      ││ │╭           │      0x00007f2c4c4f9df6:   jmp    0x00007f2c4c4f9e6e
   1.99%   │││││││││││││                      ││ ││           │      0x00007f2c4c4f9dfb:   mov    $0xb,%eax
   0.06%   │││││││││││││                      ││ ││╭          │      0x00007f2c4c4f9e00:   jmp    0x00007f2c4c4f9e63
   1.83%   │││││││││││││                      ││ │││          │      0x00007f2c4c4f9e05:   mov    $0x7,%eax
   0.08%   │││││││││││││                      ││ │││╭         │      0x00007f2c4c4f9e0a:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ ││││         │      0x00007f2c4c4f9e0f:   mov    $0x6,%eax
           │││││││││││││                      ││ ││││╭        │      0x00007f2c4c4f9e14:   jmp    0x00007f2c4c4f9e63
   1.80%   │││││││││││││                      ││ │││││        │      0x00007f2c4c4f9e19:   mov    $0x5,%eax
   0.07%   │││││││││││││                      ││ │││││        │      0x00007f2c4c4f9e1e:   xchg   %ax,%ax
   0.05%   │││││││││││││                      ││ │││││╭       │      0x00007f2c4c4f9e20:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ ││││││       │      0x00007f2c4c4f9e25:   mov    $0xc,%eax
           │││││││││││││                      ││ ││││││╭      │      0x00007f2c4c4f9e2a:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ │││││││      │      0x00007f2c4c4f9e2f:   mov    $0xa,%eax
           │││││││││││││                      ││ │││││││╭     │      0x00007f2c4c4f9e34:   jmp    0x00007f2c4c4f9e63
   1.81%   │││││││││││││                      ││ ││││││││     │      0x00007f2c4c4f9e39:   mov    $0x9,%eax
   0.11%   │││││││││││││                      ││ ││││││││     │      0x00007f2c4c4f9e3e:   xchg   %ax,%ax
   0.05%   │││││││││││││                      ││ ││││││││╭    │      0x00007f2c4c4f9e40:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ │││││││││    │      0x00007f2c4c4f9e42:   mov    $0x8,%eax
           │││││││││││││                      ││ │││││││││╭   │      0x00007f2c4c4f9e47:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ ││││││││││   │      0x00007f2c4c4f9e49:   mov    $0x4,%eax
           │││││││││││││                      ││ ││││││││││╭  │      0x00007f2c4c4f9e4e:   jmp    0x00007f2c4c4f9e63
   1.88%   │││││││││││││                      ││ │││││││││││  │      0x00007f2c4c4f9e50:   mov    $0x3,%eax
   0.09%   │││││││││││││                      ││ │││││││││││╭ │      0x00007f2c4c4f9e55:   jmp    0x00007f2c4c4f9e63
           │││││││││││││                      ││ ││││││││││││ │      0x00007f2c4c4f9e57:   mov    $0x2,%eax
           │││││││││││││                      ││ ││││││││││││╭│      0x00007f2c4c4f9e5c:   jmp    0x00007f2c4c4f9e63
   1.83%   │││││││││││││                      ││ ││││││││││││││      0x00007f2c4c4f9e5e:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
           │││││││││││││                      ││ ││││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   8.89%   │││││││││││││                      ││ ││↘↘↘↘↘↘↘↘↘↘↘│      0x00007f2c4c4f9e63:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.06%   │││││││││││││                      ││ ││           │      0x00007f2c4c4f9e65:   cmp    %r13d,%edi
           │││││││││││││                      ││ ││           ╰      0x00007f2c4c4f9e68:   jge    0x00007f2c4c4f9dc6           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ ││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
   1.79%   │││││││││││││                      ││ │↘                  0x00007f2c4c4f9e6e:   mov    0x10(%rbp,%rdi,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.31%   │││││││││││││                      ││ │                   0x00007f2c4c4f9e72:   mov    0xc(%r12,%rcx,8),%ecx        ; implicit exception: dispatches to 0x00007f2c4c4f9f50
           │││││││││││││                      ││ │                                                                             ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │                                                                             ; - java.lang.Enum::ordinal@1 (line 128)
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
           │││││││││││││                      ││ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   9.02%   │││││││││││││                      ││ │                   0x00007f2c4c4f9e77:   cmp    $0xc,%ecx
           │││││││││││││                      ││ │             ╭     0x00007f2c4c4f9e7a:   jae    0x00007f2c4c4f9e94           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.14%   │││││││││││││                      ││ │             │     0x00007f2c4c4f9e7c:   mov    0x14(%rbp,%rdi,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   1.67%   │││││││││││││                      ││ │             │     0x00007f2c4c4f9e80:   movslq %ecx,%rbx
   0.08%   │││││││││││││                      ││ │             │     0x00007f2c4c4f9e83:   shl    $0x3,%rbx
   8.58%   │││││││││││││                      ││ │             │     0x00007f2c4c4f9e87:   movabs $0x7f2c4c4f9ae0,%rcx         ;   {section_word}
   0.03%   │││││││││││││                      ││ │             │     0x00007f2c4c4f9e91:   jmp    *(%rcx,%rbx,1)               ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                      ││ │             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │││││││││││││                      ││ │             ↘     0x00007f2c4c4f9e94:   mov    %eax,%ebx
           │││││││││││││                      ││ │              ╭    0x00007f2c4c4f9e96:   jmp    0x00007f2c4c4f9e9a
           │││││││││││││                      ↘│ │              │    0x00007f2c4c4f9e98:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                       │ │              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
           │││││││││││││                       │ │              ↘    0x00007f2c4c4f9e9a:   mov    $0xffffff45,%esi
           │││││││││││││                       │ │                   0x00007f2c4c4f9e9f:   mov    %r10d,%ebp
           │││││││││││││                       │ │                   0x00007f2c4c4f9ea2:   mov    %edi,(%rsp)
           │││││││││││││                       │ │                   0x00007f2c4c4f9ea5:   mov    %ebx,0x4(%rsp)
           │││││││││││││                       │ │                   0x00007f2c4c4f9ea9:   mov    %ecx,0x8(%rsp)
           │││││││││││││                       │ │                   0x00007f2c4c4f9ead:   mov    %rdx,0x10(%rsp)
           │││││││││││││                       │ │                   0x00007f2c4c4f9eb2:   mov    %r8d,0xc(%rsp)
           │││││││││││││                       │ │                   0x00007f2c4c4f9eb7:   call   0x00007f2c4bf8af00           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop }
           │││││││││││││                       │ │                                                                             ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
           │││││││││││││                       │ │                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │││││││││││││                       │ │                                                                             ;   {runtime_call UncommonTrapBlob}
           │││││││││││││                       │ │                   0x00007f2c4c4f9ebc:   nopl   0x10006ac(%rax,%rax,1)       ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                       │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │││││││││││││                       │ │                                                                             ;   {other}
           │││││││││││││                       ↘ │                   0x00007f2c4c4f9ec4:   mov    $0x1,%edi
   0.00%   │││││││││││││                         ↘                   0x00007f2c4c4f9ec9:   cmp    %r10d,%edi
           │││││││││││││                                         ╭   0x00007f2c4c4f9ecc:   jge    0x00007f2c4c4f9f0b           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@19 (line 103)
           │││││││││││││                                         │↗  0x00007f2c4c4f9ece:   mov    0x10(%rbp,%rdi,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
           │││││││││││││                                         ││  0x00007f2c4c4f9ed3:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f2c4c4f9f50
           │││││││││││││                                         ││                                                            ;*getfield ordinal {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - java.lang.Enum::ordinal@1 (line 128)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.03%   │││││││││││││                                         ││  0x00007f2c4c4f9ed8:   cmp    $0xc,%ecx
   0.02%   │││││││││││││                                         ││  0x00007f2c4c4f9edb:   nopl   0x0(%rax,%rax,1)
           │││││││││││││                                         ││  0x00007f2c4c4f9ee0:   jae    0x00007f2c4c4f9f49           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.02%   │││││││││││││                                         ││  0x00007f2c4c4f9ee6:   movslq %ecx,%r11
           │││││││││││││                                         ││  0x00007f2c4c4f9ee9:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
           │││││││││││││                                         ││  0x00007f2c4c4f9eeb:   shl    $0x3,%r11
           │││││││││││││                                         ││  0x00007f2c4c4f9eef:   movabs $0x7f2c4c4f9b40,%r9          ;   {section_word}
   0.02%   │││││││││││││                                         ││  0x00007f2c4c4f9ef9:   jmp    *(%r9,%r11,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │││││││││││││                                         ││  0x00007f2c4c4f9efd:   mov    $0x1,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@174 (line 167)
           │││││││││││││                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.03%   ││↘↘↘↘↘↘↘↘↘↘↘                                         ││  0x00007f2c4c4f9f03:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
           ││                                                    ││  0x00007f2c4c4f9f06:   cmp    %r10d,%edi
           ││                                                    │╰  0x00007f2c4c4f9f09:   jl     0x00007f2c4c4f9ece           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
           │↘                                                    ↘   0x00007f2c4c4f9f0b:   add    $0x30,%rsp
           │                                                         0x00007f2c4c4f9f0f:   pop    %rbp
   0.03%   │                                                         0x00007f2c4c4f9f10:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                                                         0x00007f2c4c4f9f17:   ja     0x00007f2c4c4f9f78
           │                                                         0x00007f2c4c4f9f1d:   ret    
           ↘                                                         0x00007f2c4c4f9f1e:   mov    $0xffffff76,%esi
                                                                     0x00007f2c4c4f9f23:   mov    %r10d,(%rsp)
                                                                     0x00007f2c4c4f9f27:   mov    %rdx,0x8(%rsp)
                                                                     0x00007f2c4c4f9f2c:   mov    %r8d,0x4(%rsp)
                                                                     0x00007f2c4c4f9f31:   xchg   %ax,%ax
                                                                     0x00007f2c4c4f9f33:   call   0x00007f2c4bf8af00           ; ImmutableOopMap {[4]=NarrowOop [8]=Oop }
                                                                                                                               ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
....................................................................................................
  96.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.26%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 667 
   0.52%                kernel  [unknown] 
   0.37%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 702 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.32%  <...other 250 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.26%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 667 
   3.16%                kernel  [unknown] 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 702 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  _int_malloc 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  _IO_file_write@@GLIBC_2.2.5 
   0.01%                        <unknown> 
   0.23%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.32%           c2, level 4
   3.16%                kernel
   0.26%             libjvm.so
   0.18%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 1
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
   0.00%        perf-18039.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:23

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
EnumSwitchBenchmark.chained_ifs                     12  avgt    5  11.022 ± 4.455  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5   5.285 ± 0.084  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               12  avgt    5   5.249 ± 0.123  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
