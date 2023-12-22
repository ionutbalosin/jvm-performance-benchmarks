# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 9.199 ns/op
# Warmup Iteration   2: 8.867 ns/op
# Warmup Iteration   3: 8.883 ns/op
# Warmup Iteration   4: 8.772 ns/op
# Warmup Iteration   5: 8.782 ns/op
Iteration   1: 8.786 ns/op
Iteration   2: 8.819 ns/op
Iteration   3: 8.862 ns/op
Iteration   4: 8.798 ns/op
Iteration   5: 9.085 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  8.870 ±(99.9%) 0.476 ns/op [Average]
  (min, avg, max) = (8.786, 8.870, 9.085), stdev = 0.124
  CI (99.9%): [8.394, 9.346] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 219855 total address lines.
Perf output processed (skipped 84.972 seconds):
 Column 1: cycles (51319 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1065 

                                                                                                           # {method} {0x00007f324047b9a8} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                                                                                           #           [sp+0x20]  (sp of caller)
                                                                                                           0x00007f32ceda17c0:   mov    0x8(%rsi),%r10d
                                                                                                           0x00007f32ceda17c4:   movabs $0x7f324b000000,%r12
                                                                                                           0x00007f32ceda17ce:   add    %r12,%r10
                                                                                                           0x00007f32ceda17d1:   xor    %r12,%r12
                                                                                                           0x00007f32ceda17d4:   cmp    %r10,%rax
                                                                                                           0x00007f32ceda17d7:   jne    0x00007f32ce6f9080           ;   {runtime_call ic_miss_stub}
                                                                                                           0x00007f32ceda17dd:   data16 xchg %ax,%ax
                                                                                                         [Verified Entry Point]
   0.00%                                                                                                   0x00007f32ceda17e0:   mov    %eax,-0x14000(%rsp)
   0.00%                                                                                                   0x00007f32ceda17e7:   sub    $0x18,%rsp
   0.01%                                                                                                   0x00007f32ceda17eb:   nop
                                                                                                           0x00007f32ceda17ec:   cmpl   $0x1,0x20(%r15)
   0.00%                                                                                                   0x00007f32ceda17f4:   jne    0x00007f32ceda1e70
                                                                                                           0x00007f32ceda17fa:   mov    %rbp,0x10(%rsp)
   0.00%                                                                                                   0x00007f32ceda17ff:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                                                                     ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@0 (line 124)
   0.00%                                                                                                   0x00007f32ceda1802:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f32ceda1e94
   0.01%                                                                                                   0x00007f32ceda180a:   cmp    $0x2,%r10d
   0.01%                                                                                                   0x00007f32ceda180e:   mov    $0x1,%r11d
                                                                                                           0x00007f32ceda1814:   cmovb  %r10d,%r11d
   0.01%                                                                                                   0x00007f32ceda1818:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                                                                                                           0x00007f32ceda181c:   mov    $0x0,%r9d
                                                                                                           0x00007f32ceda1822:   mov    $0x0,%r8d
                                                                                                           0x00007f32ceda1828:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
   0.02%              ↗↗↗↗↗↗↗↗↗↗↗↗                                                                         0x00007f32ceda1830:   cmp    %r9d,%r11d
          ╭           ││││││││││││                                                                         0x00007f32ceda1833:   jbe    0x00007f32ceda1989           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │           ││││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.01%  │           ││││││││││││                                                                         0x00007f32ceda1839:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │           ││││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.00%  │           ││││││││││││                                                                         0x00007f32ceda183e:   mov    %r9d,%ebx
          │           ││││││││││││                                                                         0x00007f32ceda1841:   inc    %ebx
   0.01%  │           ││││││││││││                                                                         0x00007f32ceda1843:   cmp    $0xffd86f0a,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37850})}
          │╭          ││││││││││││                                                                         0x00007f32ceda1849:   je     0x00007f32ceda18f8
   0.01%  ││          ││││││││││││                                                                         0x00007f32ceda184f:   cmp    $0xffd86ef8,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377c0})}
          ││╭         ││││││││││││                                                                         0x00007f32ceda1855:   je     0x00007f32ceda1905
          │││         ││││││││││││                                                                         0x00007f32ceda185b:   nopl   0x0(%rax,%rax,1)
          │││         ││││││││││││                                                                         0x00007f32ceda1860:   cmp    $0xffd86f14,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378a0})}
          │││╭        ││││││││││││                                                                         0x00007f32ceda1866:   je     0x00007f32ceda1910
          ││││        ││││││││││││                                                                         0x00007f32ceda186c:   cmp    $0xffd86f01,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37808})}
          ││││╭       ││││││││││││                                                                         0x00007f32ceda1872:   je     0x00007f32ceda191c
          │││││       ││││││││││││                                                                         0x00007f32ceda1878:   nopl   0x0(%rax,%rax,1)
          │││││       ││││││││││││                                                                         0x00007f32ceda1880:   cmp    $0xffd86f27,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37938})}
          │││││╭      ││││││││││││                                                                         0x00007f32ceda1886:   je     0x00007f32ceda1928
          ││││││      ││││││││││││                                                                         0x00007f32ceda188c:   cmp    $0xffd86f43,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a18})}
          ││││││╭     ││││││││││││                                                                         0x00007f32ceda1892:   je     0x00007f32ceda1934
          │││││││     ││││││││││││                                                                         0x00007f32ceda1898:   nopl   0x0(%rax,%rax,1)
          │││││││     ││││││││││││                                                                         0x00007f32ceda18a0:   cmp    $0xffd86f5e,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37af0})}
          │││││││╭    ││││││││││││                                                                         0x00007f32ceda18a6:   je     0x00007f32ceda1940
          ││││││││    ││││││││││││                                                                         0x00007f32ceda18ac:   cmp    $0xffd86f4c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a60})}
          ││││││││╭   ││││││││││││                                                                         0x00007f32ceda18b2:   je     0x00007f32ceda1965
          │││││││││   ││││││││││││                                                                         0x00007f32ceda18b8:   nopl   0x0(%rax,%rax,1)
          │││││││││   ││││││││││││                                                                         0x00007f32ceda18c0:   cmp    $0xffd86f1e,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378f0})}
          │││││││││╭  ││││││││││││                                                                         0x00007f32ceda18c6:   je     0x00007f32ceda1958
          ││││││││││  ││││││││││││                                                                         0x00007f32ceda18cc:   cmp    $0xffd86f30,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37980})}
          ││││││││││╭ ││││││││││││                                                                         0x00007f32ceda18d2:   je     0x00007f32ceda194c
          │││││││││││ ││││││││││││                                                                         0x00007f32ceda18d8:   nopl   0x0(%rax,%rax,1)
          │││││││││││ ││││││││││││                                                                         0x00007f32ceda18e0:   cmp    $0xffd86f55,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37aa8})}
          │││││││││││╭││││││││││││                                                                         0x00007f32ceda18e6:   jne    0x00007f32ceda1971           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          ││││││││││││││││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││││││││││││││││││││││││                                                                         0x00007f32ceda18ec:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          ││││││││││││││││││││││││                                                                         0x00007f32ceda18f0:   mov    %ebx,%r9d
          ││││││││││││╰│││││││││││                                                                         0x00007f32ceda18f3:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││ │││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          ││││││││││││ │││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │↘││││││││││ │││││││││││                                                                         0x00007f32ceda18f8:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││ │││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │ ││││││││││ │││││││││││                                                                         0x00007f32ceda18fc:   mov    %ebx,%r9d
          │ ││││││││││ │││││││││││                                                                         0x00007f32ceda18ff:   nop
          │ ││││││││││ ╰││││││││││                                                                         0x00007f32ceda1900:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││  ││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
          │ ││││││││││  ││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │ ↘│││││││││  ││││││││││                                                                         0x00007f32ceda1905:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││││  ││││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │  │││││││││  ││││││││││                                                                         0x00007f32ceda1908:   mov    %ebx,%r9d
   0.01%  │  │││││││││  ╰│││││││││                                                                         0x00007f32ceda190b:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │││││││││   │││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
          │  │││││││││   │││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │  ↘││││││││   │││││││││                                                                         0x00007f32ceda1910:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││││   │││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │   ││││││││   │││││││││                                                                         0x00007f32ceda1914:   mov    %ebx,%r9d
          │   ││││││││   ╰││││││││                                                                         0x00007f32ceda1917:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││││    ││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
          │   ││││││││    ││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │   ↘│││││││    ││││││││                                                                         0x00007f32ceda191c:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │││││││    ││││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │    │││││││    ││││││││                                                                         0x00007f32ceda1920:   mov    %ebx,%r9d
          │    │││││││    ╰│││││││                                                                         0x00007f32ceda1923:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │    │││││││     │││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
          │    │││││││     │││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │    ↘││││││     │││││││                                                                         0x00007f32ceda1928:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││││││     │││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │     ││││││     │││││││                                                                         0x00007f32ceda192c:   mov    %ebx,%r9d
          │     ││││││     ╰││││││                                                                         0x00007f32ceda192f:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │     ││││││      ││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
          │     ││││││      ││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │     ↘│││││      ││││││                                                                         0x00007f32ceda1934:   lea    0x9(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││││      ││││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │      │││││      ││││││                                                                         0x00007f32ceda1938:   mov    %ebx,%r9d
          │      │││││      ╰│││││                                                                         0x00007f32ceda193b:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │      │││││       │││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
          │      │││││       │││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │      ↘││││       │││││                                                                         0x00007f32ceda1940:   lea    0xc(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││││       │││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │       ││││       │││││                                                                         0x00007f32ceda1944:   mov    %ebx,%r9d
          │       ││││       ╰││││                                                                         0x00007f32ceda1947:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │       ││││        ││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
          │       ││││        ││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │       ││↘│        ││││                                                                         0x00007f32ceda194c:   lea    0x7(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││ │        ││││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │       ││ │        ││││                                                                         0x00007f32ceda1950:   mov    %ebx,%r9d
          │       ││ │        ╰│││                                                                         0x00007f32ceda1953:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │       ││ │         │││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
          │       ││ │         │││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │       │↘ │         │││                                                                         0x00007f32ceda1958:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │  │         │││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │       │  │         │││                                                                         0x00007f32ceda195c:   mov    %ebx,%r9d
          │       │  │         │││                                                                         0x00007f32ceda195f:   nop
          │       │  │         ╰││                                                                         0x00007f32ceda1960:   jmp    0x00007f32ceda1830           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │       │  │          ││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
          │       │  │          ││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │       ↘  │          ││                                                                         0x00007f32ceda1965:   lea    0xa(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │          │          ││                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │          │          ││                                                                         0x00007f32ceda1969:   mov    %ebx,%r9d
          │          │          ╰│                                                                         0x00007f32ceda196c:   jmp    0x00007f32ceda1830
          │          ↘           │                                                                         0x00007f32ceda1971:   cmp    $0xffd86f39,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379c8})}
          │                      │                                                                         0x00007f32ceda1977:   jne    0x00007f32ceda1e4d           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                      │                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
          │                      │                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          │                      │                                                                         0x00007f32ceda197d:   lea    0x8(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                      │                                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
          │                      │                                                                         0x00007f32ceda1981:   mov    %ebx,%r9d
          │                      ╰                                                                         0x00007f32ceda1984:   jmp    0x00007f32ceda1830
   0.01%  ↘                                                                                                0x00007f32ceda1989:   lea    -0x2(%r10),%r11d
                                                                                                           0x00007f32ceda198d:   data16 xchg %ax,%ax
   5.06%                                                 ↗ ↗↗  ↗ ↗ ↗↗↗ ↗ ↗   ↗  ↗                          0x00007f32ceda1990:   cmp    %r9d,%r11d
                                  ╭                      │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1993:   jle    0x00007f32ceda1c40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                  │                      │ ││  │ │ │││ │ │   │  │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   3.12%                          │                      │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1999:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                  │                      │ ││  │ │ │││ │ │   │  │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  11.39%                          │                      │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda199e:   xchg   %ax,%ax
   0.09%                          │                      │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19a0:   cmp    $0xffd86f0a,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37850})}
                                  │╭                     │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19a6:   je     0x00007f32ceda1b18
   6.27%                          ││                     │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19ac:   cmp    $0xffd86ef8,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377c0})}
                                  ││╭                    │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19b2:   je     0x00007f32ceda1b3c
   2.06%                          │││                    │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19b8:   nopl   0x0(%rax,%rax,1)
   0.04%                          │││                    │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19c0:   cmp    $0xffd86f14,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378a0})}
                                  │││╭                   │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19c6:   je     0x00007f32ceda1b46
   8.98%                          ││││                   │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19cc:   cmp    $0xffd86f01,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37808})}
                                  ││││╭                  │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19d2:   je     0x00007f32ceda1b5c
   0.09%                          │││││                  │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19d8:   nopl   0x0(%rax,%rax,1)
   0.06%                          │││││                  │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19e0:   cmp    $0xffd86f27,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37938})}
                                  │││││╭                 │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19e6:   je     0x00007f32ceda1b72
   0.06%                          ││││││                 │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19ec:   cmp    $0xffd86f43,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a18})}
                                  ││││││╭                │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19f2:   je     0x00007f32ceda1bd6
   4.20%                          │││││││                │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda19f8:   nopl   0x0(%rax,%rax,1)
   0.04%                          │││││││                │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a00:   cmp    $0xffd86f5e,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37af0})}
                                  │││││││╭               │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a06:   je     0x00007f32ceda1bcc
   0.05%                          ││││││││               │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a0c:   cmp    $0xffd86f4c,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a60})}
                                  ││││││││╭              │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a12:   je     0x00007f32ceda1bb6
   0.03%                          │││││││││              │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a18:   nopl   0x0(%rax,%rax,1)
   0.94%                          │││││││││              │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a20:   cmp    $0xffd86f1e,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378f0})}
                                  │││││││││╭             │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a26:   je     0x00007f32ceda1be0
   0.02%                          ││││││││││             │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a2c:   cmp    $0xffd86f30,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37980})}
                                  ││││││││││╭            │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a32:   je     0x00007f32ceda1ba0
   1.00%                          │││││││││││            │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a38:   nopl   0x0(%rax,%rax,1)
   0.01%                          │││││││││││            │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a40:   cmp    $0xffd86f55,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37aa8})}
                                  │││││││││││╭           │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a46:   jne    0x00007f32ceda1bf6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  ││││││││││││           │ ││  │ │ │││ │ │   │  │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
                                  ││││││││││││           │ ││  │ │ │││ │ │   │  │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  ││││││││││││           │ ││  │ │ │││ │ │   │  │                          0x00007f32ceda1a4c:   mov    $0xb,%ecx
   4.06%                          ││││││││││││           │↗││↗↗│↗│↗│││↗│↗│↗↗↗│↗ │                          0x00007f32ceda1a51:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                  ││││││││││││           ││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
  11.40%                          ││││││││││││           ││││││││││││││││││││││ │                          0x00007f32ceda1a56:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  ││││││││││││           ││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.11%                          ││││││││││││           ││││││││││││││││││││││ │                          0x00007f32ceda1a59:   lea    0x2(%r9),%ecx                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                  ││││││││││││           ││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.01%                          ││││││││││││           ││││││││││││││││││││││ │                          0x00007f32ceda1a5d:   data16 xchg %ax,%ax
   1.06%                          ││││││││││││           ││││││││││││││││││││││ │                          0x00007f32ceda1a60:   cmp    $0xffd86f0a,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37850})}
                                  ││││││││││││╭          ││││││││││││││││││││││ │                          0x00007f32ceda1a66:   je     0x00007f32ceda1b25
   4.05%                          │││││││││││││          ││││││││││││││││││││││ │                          0x00007f32ceda1a6c:   cmp    $0xffd86ef8,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377c0})}
                                  │││││││││││││╭         ││││││││││││││││││││││ │                          0x00007f32ceda1a72:   je     0x00007f32ceda1b31
   3.10%                          ││││││││││││││         ││││││││││││││││││││││ │                          0x00007f32ceda1a78:   nopl   0x0(%rax,%rax,1)
   0.04%                          ││││││││││││││         ││││││││││││││││││││││ │                          0x00007f32ceda1a80:   cmp    $0xffd86f14,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378a0})}
   0.00%                          ││││││││││││││╭        ││││││││││││││││││││││ │                          0x00007f32ceda1a86:   je     0x00007f32ceda1b50
   6.11%                          │││││││││││││││        ││││││││││││││││││││││ │                          0x00007f32ceda1a8c:   cmp    $0xffd86f01,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37808})}
                                  │││││││││││││││╭       ││││││││││││││││││││││ │                          0x00007f32ceda1a92:   je     0x00007f32ceda1b66
   0.07%                          ││││││││││││││││       ││││││││││││││││││││││ │                          0x00007f32ceda1a98:   nopl   0x0(%rax,%rax,1)
   1.06%                          ││││││││││││││││       ││││││││││││││││││││││ │                          0x00007f32ceda1aa0:   cmp    $0xffd86f27,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37938})}
                                  ││││││││││││││││╭      ││││││││││││││││││││││ │                          0x00007f32ceda1aa6:   je     0x00007f32ceda1b7c
   0.07%                          │││││││││││││││││      ││││││││││││││││││││││ │                          0x00007f32ceda1aac:   cmp    $0xffd86f43,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a18})}
                                  │││││││││││││││││╭     ││││││││││││││││││││││ │                          0x00007f32ceda1ab2:   je     0x00007f32ceda1bc0
   4.13%                          ││││││││││││││││││     ││││││││││││││││││││││ │                          0x00007f32ceda1ab8:   nopl   0x0(%rax,%rax,1)
   0.03%                          ││││││││││││││││││     ││││││││││││││││││││││ │                          0x00007f32ceda1ac0:   cmp    $0xffd86f5e,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37af0})}
                                  ││││││││││││││││││╭    ││││││││││││││││││││││ │                          0x00007f32ceda1ac6:   je     0x00007f32ceda1b88
   3.02%                          │││││││││││││││││││    ││││││││││││││││││││││ │                          0x00007f32ceda1acc:   cmp    $0xffd86f4c,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a60})}
                                  │││││││││││││││││││╭   ││││││││││││││││││││││ │                          0x00007f32ceda1ad2:   je     0x00007f32ceda1b94
   0.10%                          ││││││││││││││││││││   ││││││││││││││││││││││ │                          0x00007f32ceda1ad8:   nopl   0x0(%rax,%rax,1)
   2.08%                          ││││││││││││││││││││   ││││││││││││││││││││││ │                          0x00007f32ceda1ae0:   cmp    $0xffd86f1e,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378f0})}
                                  ││││││││││││││││││││╭  ││││││││││││││││││││││ │                          0x00007f32ceda1ae6:   je     0x00007f32ceda1bea
   0.05%                          │││││││││││││││││││││  ││││││││││││││││││││││ │                          0x00007f32ceda1aec:   cmp    $0xffd86f30,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37980})}
                                  │││││││││││││││││││││╭ ││││││││││││││││││││││ │                          0x00007f32ceda1af2:   je     0x00007f32ceda1baa
   0.04%                          ││││││││││││││││││││││ ││││││││││││││││││││││ │                          0x00007f32ceda1af8:   nopl   0x0(%rax,%rax,1)
   0.01%                          ││││││││││││││││││││││ ││││││││││││││││││││││ │                          0x00007f32ceda1b00:   cmp    $0xffd86f55,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37aa8})}
                                  ││││││││││││││││││││││╭││││││││││││││││││││││ │                          0x00007f32ceda1b06:   jne    0x00007f32ceda1c16           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │││││││││││││││││││││││││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
                                  │││││││││││││││││││││││││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.03%                          │││││││││││││││││││││││││││││││││││││││││││││ │                          0x00007f32ceda1b0c:   lea    0xb(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │││││││││││││││││││││││││││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.03%                          │││││││││││││││││││││││││││││││││││││││││││││ │                          0x00007f32ceda1b10:   mov    %ecx,%r9d
   0.02%                          │││││││││││││││││││││││╰│││││││││││││││││││││ │                          0x00007f32ceda1b13:   jmp    0x00007f32ceda1990
                                  │↘│││││││││││││││││││││ │││││││││││││││││││││ │                          0x00007f32ceda1b18:   mov    $0x3,%ecx
                                  │ │││││││││││││││││││││ │││││││││││││││││││││ │                          0x00007f32ceda1b1d:   data16 xchg %ax,%ax
                                  │ │││││││││││││││││││││ ╰││││││││││││││││││││ │                          0x00007f32ceda1b20:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │ │││││││││││││││││││││  ││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                  │ │││││││││││││││││││││  ││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.06%                          │ ││││││││││↘││││││││││  ││││││││││││││││││││ │                          0x00007f32ceda1b25:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │ ││││││││││ ││││││││││  ││││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.01%                          │ ││││││││││ ││││││││││  ││││││││││││││││││││ │                          0x00007f32ceda1b29:   mov    %ecx,%r9d
                                  │ ││││││││││ ││││││││││  ╰│││││││││││││││││││ │                          0x00007f32ceda1b2c:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │ ││││││││││ ││││││││││   │││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                  │ ││││││││││ ││││││││││   │││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%                          │ ││││││││││ ↘│││││││││   │││││││││││││││││││ │                          0x00007f32ceda1b31:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │ ││││││││││  │││││││││   │││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.00%                          │ ││││││││││  │││││││││   │││││││││││││││││││ │                          0x00007f32ceda1b34:   mov    %ecx,%r9d
   0.00%                          │ ││││││││││  │││││││││   ╰││││││││││││││││││ │                          0x00007f32ceda1b37:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │ ││││││││││  │││││││││    ││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                  │ ││││││││││  │││││││││    ││││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │ ↘│││││││││  │││││││││    ││││││││││││││││││ │                          0x00007f32ceda1b3c:   mov    $0x1,%ecx
                                  │  │││││││││  │││││││││    ╰│││││││││││││││││ │                          0x00007f32ceda1b41:   jmp    0x00007f32ceda1a51
   2.01%                          │  ↘││││││││  │││││││││     │││││││││││││││││ │                          0x00007f32ceda1b46:   mov    $0x4,%ecx
   0.01%                          │   ││││││││  │││││││││     ╰││││││││││││││││ │                          0x00007f32ceda1b4b:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │   ││││││││  │││││││││      ││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                                  │   ││││││││  │││││││││      ││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │   ││││││││  ↘││││││││      ││││││││││││││││ │                          0x00007f32ceda1b50:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │   ││││││││   ││││││││      ││││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │   ││││││││   ││││││││      ││││││││││││││││ │                          0x00007f32ceda1b54:   mov    %ecx,%r9d
                                  │   ││││││││   ││││││││      ╰│││││││││││││││ │                          0x00007f32ceda1b57:   jmp    0x00007f32ceda1990
   0.03%                          │   ↘│││││││   ││││││││       │││││││││││││││ │                          0x00007f32ceda1b5c:   mov    $0x2,%ecx
   0.01%                          │    │││││││   ││││││││       ╰││││││││││││││ │                          0x00007f32ceda1b61:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │    │││││││   ││││││││        ││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                  │    │││││││   ││││││││        ││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │    │││││││   ↘│││││││        ││││││││││││││ │                          0x00007f32ceda1b66:   lea    0x2(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │    │││││││    │││││││        ││││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │    │││││││    │││││││        ││││││││││││││ │                          0x00007f32ceda1b6a:   mov    %ecx,%r9d
                                  │    │││││││    │││││││        ╰│││││││││││││ │                          0x00007f32ceda1b6d:   jmp    0x00007f32ceda1990
   0.00%                          │    ↘││││││    │││││││         │││││││││││││ │                          0x00007f32ceda1b72:   mov    $0x6,%ecx
   0.97%                          │     ││││││    │││││││         ╰││││││││││││ │                          0x00007f32ceda1b77:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││    │││││││          ││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                  │     ││││││    │││││││          ││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │     ││││││    ↘││││││          ││││││││││││ │                          0x00007f32ceda1b7c:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││     ││││││          ││││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │     ││││││     ││││││          ││││││││││││ │                          0x00007f32ceda1b80:   mov    %ecx,%r9d
                                  │     ││││││     ││││││          ╰│││││││││││ │                          0x00007f32ceda1b83:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││     ││││││           │││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                                  │     ││││││     ││││││           │││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │     ││││││     │↘││││           │││││││││││ │                          0x00007f32ceda1b88:   lea    0xc(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││     │ ││││           │││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │     ││││││     │ ││││           │││││││││││ │                          0x00007f32ceda1b8c:   mov    %ecx,%r9d
                                  │     ││││││     │ ││││           ╰││││││││││ │                          0x00007f32ceda1b8f:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││     │ ││││            ││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
                                  │     ││││││     │ ││││            ││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │     ││││││     │ ↘│││            ││││││││││ │                          0x00007f32ceda1b94:   lea    0xa(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││││     │  │││            ││││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │     ││││││     │  │││            ││││││││││ │                          0x00007f32ceda1b98:   mov    %ecx,%r9d
                                  │     ││││││     │  │││            ╰│││││││││ │                          0x00007f32ceda1b9b:   jmp    0x00007f32ceda1990
                                  │     ││││↘│     │  │││             │││││││││ │                          0x00007f32ceda1ba0:   mov    $0x7,%ecx
                                  │     ││││ │     │  │││             ╰││││││││ │                          0x00007f32ceda1ba5:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││ │     │  │││              ││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
                                  │     ││││ │     │  │││              ││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.91%                          │     ││││ │     │  │↘│              ││││││││ │                          0x00007f32ceda1baa:   lea    0x7(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││ │     │  │ │              ││││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.02%                          │     ││││ │     │  │ │              ││││││││ │                          0x00007f32ceda1bae:   mov    %ecx,%r9d
   0.03%                          │     ││││ │     │  │ │              ╰│││││││ │                          0x00007f32ceda1bb1:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││││ │     │  │ │               │││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
                                  │     ││││ │     │  │ │               │││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%                          │     ││↘│ │     │  │ │               │││││││ │                          0x00007f32ceda1bb6:   mov    $0xa,%ecx
   1.07%                          │     ││ │ │     │  │ │               ╰││││││ │                          0x00007f32ceda1bbb:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││ │ │     │  │ │                ││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
                                  │     ││ │ │     │  │ │                ││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.05%                          │     ││ │ │     ↘  │ │                ││││││ │                          0x00007f32ceda1bc0:   lea    0x9(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││ │ │        │ │                ││││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.02%                          │     ││ │ │        │ │                ││││││ │                          0x00007f32ceda1bc4:   mov    %ecx,%r9d
   0.01%                          │     ││ │ │        │ │                ╰│││││ │                          0x00007f32ceda1bc7:   jmp    0x00007f32ceda1990           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     ││ │ │        │ │                 │││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                                  │     ││ │ │        │ │                 │││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%                          │     │↘ │ │        │ │                 │││││ │                          0x00007f32ceda1bcc:   mov    $0xc,%ecx
   0.02%                          │     │  │ │        │ │                 ╰││││ │                          0x00007f32ceda1bd1:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │     │  │ │        │ │                  ││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
                                  │     │  │ │        │ │                  ││││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │     ↘  │ │        │ │                  ││││ │                          0x00007f32ceda1bd6:   mov    $0x9,%ecx
                                  │        │ │        │ │                  ╰│││ │                          0x00007f32ceda1bdb:   jmp    0x00007f32ceda1a51
                                  │        ↘ │        │ │                   │││ │                          0x00007f32ceda1be0:   mov    $0x5,%ecx
                                  │          │        │ │                   ╰││ │                          0x00007f32ceda1be5:   jmp    0x00007f32ceda1a51           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │          │        │ │                    ││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                                  │          │        │ │                    ││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.03%                          │          │        ↘ │                    ││ │                          0x00007f32ceda1bea:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │          │          │                    ││ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.03%                          │          │          │                    ││ │                          0x00007f32ceda1bee:   mov    %ecx,%r9d
   0.01%                          │          │          │                    ╰│ │                          0x00007f32ceda1bf1:   jmp    0x00007f32ceda1990
   1.08%                          │          ↘          │                     │ │                          0x00007f32ceda1bf6:   data16 nopw 0x0(%rax,%rax,1)        ;   {no_reloc}
   0.03%                          │                     │                     │ │                          0x00007f32ceda1c00:   cmp    $0xffd86f39,%ecx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379c8})}
                                  │                     │                     │ │                          0x00007f32ceda1c06:   jne    0x00007f32ceda1e28
   0.04%                          │                     │                     │ │                          0x00007f32ceda1c0c:   mov    $0x8,%ecx
   0.02%                          │                     │                     ╰ │                          0x00007f32ceda1c11:   jmp    0x00007f32ceda1a51
                                  │                     ↘                       │                          0x00007f32ceda1c16:   data16 nopw 0x0(%rax,%rax,1)
                                  │                                             │                          0x00007f32ceda1c20:   cmp    $0xffd86f39,%ebx             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379c8})}
                                  │                                            ╭│                          0x00007f32ceda1c26:   jne    0x00007f32ceda1ddf           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                  │                                            ││                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
                                  │                                            ││                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                  │                                            ││                          0x00007f32ceda1c2c:   lea    0x8(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                  │                                            ││                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                  │                                            ││                          0x00007f32ceda1c30:   mov    %ecx,%r9d
                                  │                                            │╰                          0x00007f32ceda1c33:   jmp    0x00007f32ceda1990
                                  │                                            │                           0x00007f32ceda1c38:   nopl   0x0(%rax,%rax,1)
   0.14%                          ↘                                            │             ↗↗↗↗↗↗↗↗↗↗↗↗  0x00007f32ceda1c40:   cmp    %r9d,%r10d
                                                                               │ ╭           ││││││││││││  0x00007f32ceda1c43:   jbe    0x00007f32ceda1dc5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │           ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.08%                                                                       │ │           ││││││││││││  0x00007f32ceda1c49:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │           ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.04%                                                                       │ │           ││││││││││││  0x00007f32ceda1c4e:   mov    %r9d,%ecx
                                                                               │ │           ││││││││││││  0x00007f32ceda1c51:   inc    %ecx
                                                                               │ │           ││││││││││││  0x00007f32ceda1c53:   cmp    $0xffd86f0a,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37850})}
                                                                               │ │╭          ││││││││││││  0x00007f32ceda1c5a:   je     0x00007f32ceda1d09
   0.02%                                                                       │ ││          ││││││││││││  0x00007f32ceda1c60:   cmp    $0xffd86ef8,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377c0})}
                                                                               │ ││╭         ││││││││││││  0x00007f32ceda1c67:   je     0x00007f32ceda1d18
   0.00%                                                                       │ │││         ││││││││││││  0x00007f32ceda1c6d:   cmp    $0xffd86f14,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378a0})}
                                                                               │ │││╭        ││││││││││││  0x00007f32ceda1c74:   je     0x00007f32ceda1d25
                                                                               │ ││││        ││││││││││││  0x00007f32ceda1c7a:   nopw   0x0(%rax,%rax,1)
                                                                               │ ││││        ││││││││││││  0x00007f32ceda1c80:   cmp    $0xffd86f01,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37808})}
                                                                               │ ││││╭       ││││││││││││  0x00007f32ceda1c87:   je     0x00007f32ceda1d34
                                                                               │ │││││       ││││││││││││  0x00007f32ceda1c8d:   cmp    $0xffd86f27,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37938})}
                                                                               │ │││││╭      ││││││││││││  0x00007f32ceda1c94:   je     0x00007f32ceda1d45
                                                                               │ ││││││      ││││││││││││  0x00007f32ceda1c9a:   nopw   0x0(%rax,%rax,1)
                                                                               │ ││││││      ││││││││││││  0x00007f32ceda1ca0:   cmp    $0xffd86f43,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a18})}
                                                                               │ ││││││╭     ││││││││││││  0x00007f32ceda1ca7:   je     0x00007f32ceda1d54
                                                                               │ │││││││     ││││││││││││  0x00007f32ceda1cad:   cmp    $0xffd86f5e,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37af0})}
                                                                               │ │││││││╭    ││││││││││││  0x00007f32ceda1cb4:   je     0x00007f32ceda1d65
                                                                               │ ││││││││    ││││││││││││  0x00007f32ceda1cba:   nopw   0x0(%rax,%rax,1)
                                                                               │ ││││││││    ││││││││││││  0x00007f32ceda1cc0:   cmp    $0xffd86f4c,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a60})}
                                                                               │ ││││││││╭   ││││││││││││  0x00007f32ceda1cc7:   je     0x00007f32ceda1d85
                                                                               │ │││││││││   ││││││││││││  0x00007f32ceda1ccd:   cmp    $0xffd86f1e,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378f0})}
                                                                               │ │││││││││╭  ││││││││││││  0x00007f32ceda1cd4:   je     0x00007f32ceda1d94
                                                                               │ ││││││││││  ││││││││││││  0x00007f32ceda1cda:   nopw   0x0(%rax,%rax,1)
                                                                               │ ││││││││││  ││││││││││││  0x00007f32ceda1ce0:   cmp    $0xffd86f30,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37980})}
                                                                               │ ││││││││││╭ ││││││││││││  0x00007f32ceda1ce7:   je     0x00007f32ceda1d74
                                                                               │ │││││││││││ ││││││││││││  0x00007f32ceda1ced:   cmp    $0xffd86f55,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37aa8})}
                                                                               │ │││││││││││╭││││││││││││  0x00007f32ceda1cf4:   jne    0x00007f32ceda1da5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
                                                                               │ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ ││││││││││││││││││││││││  0x00007f32ceda1cfa:   lea    0xb(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ ││││││││││││││││││││││││  0x00007f32ceda1cfe:   mov    %ecx,%r9d
                                                                               │ ││││││││││││││││││││││││  0x00007f32ceda1d01:   mov    %r11d,%r8d
                                                                               │ ││││││││││││╰│││││││││││  0x00007f32ceda1d04:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ ││││││││││││ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                                                               │ ││││││││││││ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │↘││││││││││ │││││││││││  0x00007f32ceda1d09:   lea    0x3(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │ ││││││││││ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │ ││││││││││ │││││││││││  0x00007f32ceda1d0d:   mov    %ecx,%r9d
                                                                               │ │ ││││││││││ │││││││││││  0x00007f32ceda1d10:   mov    %r11d,%r8d
                                                                               │ │ ││││││││││ ╰││││││││││  0x00007f32ceda1d13:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │ ││││││││││  ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                                                               │ │ ││││││││││  ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │ ↘│││││││││  ││││││││││  0x00007f32ceda1d18:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │  │││││││││  ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │  │││││││││  ││││││││││  0x00007f32ceda1d1b:   mov    %ecx,%r9d
                                                                               │ │  │││││││││  ││││││││││  0x00007f32ceda1d1e:   xchg   %ax,%ax
                                                                               │ │  │││││││││  ╰│││││││││  0x00007f32ceda1d20:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │  │││││││││   │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@42 (line 250)
                                                                               │ │  │││││││││   │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%                                                                       │ │  ↘││││││││   │││││││││  0x00007f32ceda1d25:   lea    0x4(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │   ││││││││   │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │   ││││││││   │││││││││  0x00007f32ceda1d29:   mov    %ecx,%r9d
                                                                               │ │   ││││││││   │││││││││  0x00007f32ceda1d2c:   mov    %r11d,%r8d
                                                                               │ │   ││││││││   ╰││││││││  0x00007f32ceda1d2f:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │   ││││││││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                               │ │   ││││││││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │   ↘│││││││    ││││││││  0x00007f32ceda1d34:   lea    0x2(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │    │││││││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │    │││││││    ││││││││  0x00007f32ceda1d38:   mov    %ecx,%r9d
                                                                               │ │    │││││││    ││││││││  0x00007f32ceda1d3b:   mov    %r11d,%r8d
                                                                               │ │    │││││││    ││││││││  0x00007f32ceda1d3e:   xchg   %ax,%ax
                                                                               │ │    │││││││    ╰│││││││  0x00007f32ceda1d40:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │    │││││││     │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
                                                                               │ │    │││││││     │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │    ↘││││││     │││││││  0x00007f32ceda1d45:   lea    0x6(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │     ││││││     │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │     ││││││     │││││││  0x00007f32ceda1d49:   mov    %ecx,%r9d
                                                                               │ │     ││││││     │││││││  0x00007f32ceda1d4c:   mov    %r11d,%r8d
                                                                               │ │     ││││││     ╰││││││  0x00007f32ceda1d4f:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │     ││││││      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@105 (line 260)
                                                                               │ │     ││││││      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │     ↘│││││      ││││││  0x00007f32ceda1d54:   lea    0x9(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │      │││││      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │      │││││      ││││││  0x00007f32ceda1d58:   mov    %ecx,%r9d
                                                                               │ │      │││││      ││││││  0x00007f32ceda1d5b:   mov    %r11d,%r8d
                                                                               │ │      │││││      ││││││  0x00007f32ceda1d5e:   xchg   %ax,%ax
                                                                               │ │      │││││      ╰│││││  0x00007f32ceda1d60:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │      │││││       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                                                                               │ │      │││││       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │      ↘││││       │││││  0x00007f32ceda1d65:   lea    0xc(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │       ││││       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │       ││││       │││││  0x00007f32ceda1d69:   mov    %ecx,%r9d
                                                                               │ │       ││││       │││││  0x00007f32ceda1d6c:   mov    %r11d,%r8d
                                                                               │ │       ││││       ╰││││  0x00007f32ceda1d6f:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │       ││││        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@79 (line 256)
                                                                               │ │       ││││        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │       ││↘│        ││││  0x00007f32ceda1d74:   lea    0x7(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │       ││ │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │       ││ │        ││││  0x00007f32ceda1d78:   mov    %ecx,%r9d
                                                                               │ │       ││ │        ││││  0x00007f32ceda1d7b:   mov    %r11d,%r8d
                                                                               │ │       ││ │        ││││  0x00007f32ceda1d7e:   xchg   %ax,%ax
                                                                               │ │       ││ │        ╰│││  0x00007f32ceda1d80:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │       ││ │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@118 (line 262)
                                                                               │ │       ││ │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │       ↘│ │         │││  0x00007f32ceda1d85:   lea    0xa(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │        │ │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │        │ │         │││  0x00007f32ceda1d89:   mov    %ecx,%r9d
                                                                               │ │        │ │         │││  0x00007f32ceda1d8c:   mov    %r11d,%r8d
                                                                               │ │        │ │         ╰││  0x00007f32ceda1d8f:   jmp    0x00007f32ceda1c40           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │        │ │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@54 (line 252)
                                                                               │ │        │ │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │        ↘ │          ││  0x00007f32ceda1d94:   lea    0x5(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │          │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │          │          ││  0x00007f32ceda1d98:   mov    %ecx,%r9d
                                                                               │ │          │          ││  0x00007f32ceda1d9b:   mov    %r11d,%r8d
                                                                               │ │          │          ││  0x00007f32ceda1d9e:   xchg   %ax,%ax
                                                                               │ │          │          ╰│  0x00007f32ceda1da0:   jmp    0x00007f32ceda1c40
                                                                               │ │          ↘           │  0x00007f32ceda1da5:   cmp    $0xffd86f39,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379c8})}
                                                                               │ │                      │  0x00007f32ceda1dac:   jne    0x00007f32ceda1e05           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │                      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
                                                                               │ │                      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               │ │                      │  0x00007f32ceda1db2:   lea    0x8(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               │ │                      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
                                                                               │ │                      │  0x00007f32ceda1db6:   mov    %ecx,%r9d
                                                                               │ │                      │  0x00007f32ceda1db9:   mov    %r11d,%r8d
                                                                               │ │                      │  0x00007f32ceda1dbc:   nopl   0x0(%rax)
                                                                               │ │                      ╰  0x00007f32ceda1dc0:   jmp    0x00007f32ceda1c40
   0.00%                                                                       │ ↘                         0x00007f32ceda1dc5:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                               │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
                                                                               │                           0x00007f32ceda1dc8:   mov    0x10(%rsp),%rbp
   0.04%                                                                       │                           0x00007f32ceda1dcd:   add    $0x18,%rsp
                                                                               │                           0x00007f32ceda1dd1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                                               │                           0x00007f32ceda1dd8:   ja     0x00007f32ceda1e80
   0.02%                                                                       │                           0x00007f32ceda1dde:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                                                                               │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                               ↘                           0x00007f32ceda1ddf:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
                                                                                                           0x00007f32ceda1de2:   movl   $0xffffffed,0x484(%r15)      ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@144 (line 266)
                                                                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                                                                                           0x00007f32ceda1ded:   movq   $0x14,0x490(%r15)
                                                                                                           0x00007f32ceda1df8:   call   0x00007f32ce6ff17a           ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                                                                                                     ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  95.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.19%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1065 
   0.69%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1088 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  fileStream::write 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  defaultStream::hold 
   0.05%                kernel  [unknown] 
   2.08%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.19%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1065 
   3.64%                kernel  [unknown] 
   0.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1088 
   0.07%             libjvm.so  fileStream::write 
   0.06%             libjvm.so  defaultStream::hold 
   0.05%             libc.so.6  __strchr_avx2 
   0.05%             libjvm.so  xmlStream::write_text 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%   libjvmcicompiler.so  com.oracle.svm.core.jni.functions.JNIFunctions::NewStringUTF 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  read 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%                        <unknown> 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  outputStream::print 
   0.52%  <...other 180 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.32%        jvmci, level 4
   3.64%                kernel
   0.46%             libjvm.so
   0.29%             libc.so.6
   0.17%   libjvmcicompiler.so
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.02%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%        perf-19545.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 33.33% complete, ETA 00:04:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.748 ns/op
# Warmup Iteration   2: 6.375 ns/op
# Warmup Iteration   3: 6.391 ns/op
# Warmup Iteration   4: 6.330 ns/op
# Warmup Iteration   5: 6.380 ns/op
Iteration   1: 6.320 ns/op
Iteration   2: 6.358 ns/op
Iteration   3: 6.385 ns/op
Iteration   4: 6.407 ns/op
Iteration   5: 6.421 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  6.378 ±(99.9%) 0.156 ns/op [Average]
  (min, avg, max) = (6.320, 6.378, 6.421), stdev = 0.040
  CI (99.9%): [6.223, 6.534] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 225871 total address lines.
Perf output processed (skipped 85.259 seconds):
 Column 1: cycles (51231 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1083 

                                                                    # {method} {0x00007ff28b47b868} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark&apos;
                                                                    #           [sp+0x20]  (sp of caller)
                                                                    0x00007ff312d9f820:   mov    0x8(%rsi),%r10d
                                                                    0x00007ff312d9f824:   movabs $0x7ff28f000000,%r12
                                                                    0x00007ff312d9f82e:   add    %r12,%r10
                                                                    0x00007ff312d9f831:   xor    %r12,%r12
                                                                    0x00007ff312d9f834:   cmp    %r10,%rax
                                                                    0x00007ff312d9f837:   jne    0x00007ff3126f9080           ;   {runtime_call ic_miss_stub}
                                                                    0x00007ff312d9f83d:   data16 xchg %ax,%ax
                                                                  [Verified Entry Point]
   0.01%                                                            0x00007ff312d9f840:   mov    %eax,-0x14000(%rsp)
   0.01%                                                            0x00007ff312d9f847:   sub    $0x18,%rsp
   0.01%                                                            0x00007ff312d9f84b:   nop
                                                                    0x00007ff312d9f84c:   cmpl   $0x1,0x20(%r15)
   0.01%                                                            0x00007ff312d9f854:   jne    0x00007ff312d9fdfa
                                                                    0x00007ff312d9f85a:   mov    %rbp,0x10(%rsp)
   0.01%                                                            0x00007ff312d9f85f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@0 (line 113)
                                                                    0x00007ff312d9f862:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007ff312d9fe1e
   0.01%                                                            0x00007ff312d9f86a:   cmp    $0x2,%r10d
   0.00%                                                            0x00007ff312d9f86e:   mov    $0x1,%r11d
                                                                    0x00007ff312d9f874:   cmovb  %r10d,%r11d
   0.02%                                                            0x00007ff312d9f878:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
   0.01%                                                            0x00007ff312d9f87c:   mov    $0x0,%r9d
                                                                    0x00007ff312d9f882:   mov    $0x0,%r8d
                                                                    0x00007ff312d9f888:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.05%     ↗↗↗↗↗↗↗↗↗↗↗↗                                           0x00007ff312d9f890:   cmp    %r9d,%r11d
          ╭  ││││││││││││                                           0x00007ff312d9f893:   jbe    0x00007ff312d9f9bd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.00%  │  ││││││││││││                                           0x00007ff312d9f899:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
          │  ││││││││││││                                                                                                     ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
          │  ││││││││││││                                           0x00007ff312d9f89e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007ff312d9fe41
   0.02%  │  ││││││││││││                                           0x00007ff312d9f8a5:   mov    %r9d,%ebx
          │  ││││││││││││                                           0x00007ff312d9f8a8:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
          │  ││││││││││││                                           0x00007ff312d9f8aa:   mov    %ecx,%edi
          │  ││││││││││││                                           0x00007ff312d9f8ac:   cmp    $0x17,%edi
          │╭ ││││││││││││                                           0x00007ff312d9f8af:   ja     0x00007ff312d9fd6e
   0.01%  ││╭││││││││││││                                           0x00007ff312d9f8b5:   lea    0xc(%rip),%rcx        # 0x00007ff312d9f8c8
          │││││││││││││││                                           0x00007ff312d9f8bc:   movslq (%rcx,%rdi,4),%rdi
   0.05%  │││││││││││││││                                           0x00007ff312d9f8c0:   add    %rdi,%rcx
   0.01%  │││││││││││││││                                           0x00007ff312d9f8c3:   jmp    *%rcx
          │││││││││││││││                                           0x00007ff312d9f8c5:   data16 xchg %ax,%ax
          ││↘││││││││││││                                           0x00007ff312d9f8c8:   insb   (%dx),%es:(%rdi)
          ││ ││││││││││││                                           0x00007ff312d9f8c9:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8cb:   add    %dh,0x0(%rdi)
          ││ ││││││││││││                                           0x00007ff312d9f8ce:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8d0:   addl   $0x0,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8d3:   add    %ah,0x0(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8d6:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8d8:   jmp    0x00007ff2efd9f8dd
          ││ ││││││││││││                                           0x00007ff312d9f8dd:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8df:   add    %cl,%ch
          ││ ││││││││││││                                           0x00007ff312d9f8e1:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8e3:   add    %dh,-0x3f000000(%rbp)
          ││ ││││││││││││                                           0x00007ff312d9f8e9:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8eb:   add    %bl,-0x57000000(%rbp)
          ││ ││││││││││││                                           0x00007ff312d9f8f1:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007ff312d9f8f3:   add    %cl,-0x5a000000(%rdi)
          ││ ││││││││││││                                           0x00007ff312d9f8f9:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f8fb:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007ff312d9f901:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f903:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007ff312d9f909:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f90b:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007ff312d9f911:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f913:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007ff312d9f919:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f91b:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007ff312d9f921:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007ff312d9f923:   add    %ah,0x45000004(%rsi)         ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
          ││ ││││││││││││                                           0x00007ff312d9f929:   lea    0x4(%rax),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
          ││ ││││││││││││                                           0x00007ff312d9f92c:   mov    %ebx,%r9d
          ││ ╰│││││││││││                                           0x00007ff312d9f92f:   jmp    0x00007ff312d9f890           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
          ││  │││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.02%  ││  │││││││││││                                           0x00007ff312d9f934:   inc    %r8d                         ;   {no_reloc}
          ││  │││││││││││                                           0x00007ff312d9f937:   mov    %ebx,%r9d
          ││  ╰││││││││││                                           0x00007ff312d9f93a:   jmp    0x00007ff312d9f890
          ││   ││││││││││                                           0x00007ff312d9f93f:   lea    0x2(%r8),%r8d
          ││   ││││││││││                                           0x00007ff312d9f943:   mov    %ebx,%r9d
          ││   ╰│││││││││                                           0x00007ff312d9f946:   jmp    0x00007ff312d9f890
          ││    │││││││││                                           0x00007ff312d9f94b:   lea    0x3(%r8),%r8d
          ││    │││││││││                                           0x00007ff312d9f94f:   mov    %ebx,%r9d
          ││    ╰││││││││                                           0x00007ff312d9f952:   jmp    0x00007ff312d9f890
          ││     ││││││││                                           0x00007ff312d9f957:   lea    0xc(%r8),%r8d
          ││     ││││││││                                           0x00007ff312d9f95b:   mov    %ebx,%r9d
          ││     ││││││││                                           0x00007ff312d9f95e:   xchg   %ax,%ax
          ││     ╰│││││││                                           0x00007ff312d9f960:   jmp    0x00007ff312d9f890
          ││      │││││││                                           0x00007ff312d9f965:   lea    0xa(%r8),%r8d
          ││      │││││││                                           0x00007ff312d9f969:   mov    %ebx,%r9d
          ││      ╰││││││                                           0x00007ff312d9f96c:   jmp    0x00007ff312d9f890
          ││       ││││││                                           0x00007ff312d9f971:   lea    0xb(%r8),%r8d
          ││       ││││││                                           0x00007ff312d9f975:   mov    %ebx,%r9d
          ││       ╰│││││                                           0x00007ff312d9f978:   jmp    0x00007ff312d9f890
          ││        │││││                                           0x00007ff312d9f97d:   lea    0x8(%r8),%r8d
          ││        │││││                                           0x00007ff312d9f981:   mov    %ebx,%r9d
          ││        ╰││││                                           0x00007ff312d9f984:   jmp    0x00007ff312d9f890
          ││         ││││                                           0x00007ff312d9f989:   lea    0x9(%r8),%r8d
          ││         ││││                                           0x00007ff312d9f98d:   mov    %ebx,%r9d
          ││         ╰│││                                           0x00007ff312d9f990:   jmp    0x00007ff312d9f890
          ││          │││                                           0x00007ff312d9f995:   lea    0x7(%r8),%r8d
          ││          │││                                           0x00007ff312d9f999:   mov    %ebx,%r9d
          ││          │││                                           0x00007ff312d9f99c:   nopl   0x0(%rax)
          ││          ╰││                                           0x00007ff312d9f9a0:   jmp    0x00007ff312d9f890
          ││           ││                                           0x00007ff312d9f9a5:   lea    0x6(%r8),%r8d
          ││           ││                                           0x00007ff312d9f9a9:   mov    %ebx,%r9d
          ││           ╰│                                           0x00007ff312d9f9ac:   jmp    0x00007ff312d9f890
          ││            │                                           0x00007ff312d9f9b1:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││            │                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
          ││            │                                           0x00007ff312d9f9b5:   mov    %ebx,%r9d
          ││            ╰                                           0x00007ff312d9f9b8:   jmp    0x00007ff312d9f890
   0.01%  ↘│                                                        0x00007ff312d9f9bd:   lea    -0x2(%r10),%r11d
           │                                                        0x00007ff312d9f9c1:   data16 data16 nopw 0x0(%rax,%rax,1)
           │                                                        0x00007ff312d9f9cc:   data16 data16 xchg %ax,%ax
   8.73%   │                 ↗ ↗  ↗↗  ↗↗ ↗↗  ↗ ↗ ↗ ↗                0x00007ff312d9f9d0:   cmp    %r9d,%r11d
           │             ╭   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9d3:   jle    0x00007ff312d9fc00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │             │   │ │  ││  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.16%   │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9d9:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
           │             │   │ │  ││  ││ ││  │ │ │ │                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │             │   │ │  ││  ││ ││  │ │ │ │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.20%   │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9de:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007ff312d9fe64
   0.33%   │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9e5:   mov    %ecx,%ebx
   8.35%   │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9e7:   cmp    $0x17,%ebx
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9ea:   ja     0x00007ff312d9fdd7
   0.12%   │             │╭  │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9f0:   lea    0x9(%rip),%rcx        # 0x00007ff312d9fa00
   0.00%   │             ││  │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9f7:   movslq (%rcx,%rbx,4),%rbx
  19.31%   │             ││  │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9fb:   add    %rbx,%rcx
   9.26%   │             ││  │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9f9fe:   jmp    *%rcx
           │             │↘  │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa00:   add    $0x17000001,%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa05:   add    %eax,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa07:   add    %ah,0x60000001(%rip)        # 0x00007ff372d9fa0e
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa0d:   add    %al,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa0f:   add    %al,%ch
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa11:   add    %eax,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa13:   add    %ch,-0x27ffffff(%rsi)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa19:   add    %eax,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa1b:   add    %bl,-0x71ffffff(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa21:   add    %eax,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa23:   add    %ch,0x1(%rsi)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa26:   add    %al,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa28:   add    %r8d,(%r8)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa2b:   add    %cl,0x1(%rdi)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa2e:   add    %al,(%rax)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa30:   xlat   %ds:(%rbx)
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa31:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa33:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa35:   add    (%rax),%eax                  ;   {no_reloc}
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa37:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa39:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa3b:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa3d:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa3f:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa41:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa43:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa45:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa47:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa49:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa4b:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa4d:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa4f:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa51:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa53:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa55:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa57:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa59:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa5b:   add    %dl,%bh
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa5d:   add    (%rax),%eax
           │             │   │ │  ││  ││ ││  │ │ │ │                0x00007ff312d9fa5f:   add    %bh,0x4(%rcx)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │   │ │  ││  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │             │   │ │  ││  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   7.17%   │             │   │↗│↗↗││↗↗││↗││↗↗│↗│↗│↗│                0x00007ff312d9fa65:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
   0.28%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa6a:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.05%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa6d:   mov    %r9d,%ecx
   1.36%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa70:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
           │             │   │││││││││││││││││││││││                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   7.32%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa72:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007ff312d9fe87
   0.20%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa79:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.03%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa7d:   mov    %ebx,%edi
   1.45%   │             │   │││││││││││││││││││││││                0x00007ff312d9fa7f:   cmp    $0x17,%edi
           │             │   │││││││││││││││││││││││                0x00007ff312d9fa82:   ja     0x00007ff312d9fdb4
   7.20%   │             │ ╭ │││││││││││││││││││││││                0x00007ff312d9fa88:   lea    0x9(%rip),%rbx        # 0x00007ff312d9fa98
   0.00%   │             │ │ │││││││││││││││││││││││                0x00007ff312d9fa8f:   movslq (%rbx,%rdi,4),%rdi
   2.25%   │             │ │ │││││││││││││││││││││││                0x00007ff312d9fa93:   add    %rdi,%rbx
   4.04%   │             │ │ │││││││││││││││││││││││                0x00007ff312d9fa96:   jmp    *%rbx
           │             │ ↘╭│││││││││││││││││││││││                0x00007ff312d9fa98:   ja     0x00007ff312d9fa9a
           │             │  ↘│││││││││││││││││││││││                0x00007ff312d9fa9a:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fa9c:   xchg   %eax,%edi
           │             │   │││││││││││││││││││││││                0x00007ff312d9fa9d:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fa9f:   add    %ah,0x60000000(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faa5:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faa7:   add    %ah,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faa9:   add    %eax,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faab:   add    %cl,0x1(%rbp)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faae:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab0:   (bad)  
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab1:   add    %eax,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab3:   add    %cl,%ch
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab5:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab7:   add    %ch,%ch
           │             │   │││││││││││││││││││││││                0x00007ff312d9fab9:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fabb:   add    %ah,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fabd:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fabf:   add    %al,%cl
           │             │   │││││││││││││││││││││││                0x00007ff312d9fac1:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fac3:   add    %cl,0x1c000001(%rip)        # 0x00007ff32ed9faca
           │             │   │││││││││││││││││││││││                0x00007ff312d9fac9:   add    (%rax),%eax
           │             │   │││││││││││││││││││││││                0x00007ff312d9facb:   add    %bl,(%rbx,%rax,1)
           │             │   │││││││││││││││││││││││                0x00007ff312d9face:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fad0:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fad2:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fad4:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fad6:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fad8:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fada:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fadc:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fade:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fae0:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fae2:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fae4:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9fae6:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fae8:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9faea:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faec:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9faee:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faf0:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9faf2:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faf4:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007ff312d9faf6:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │             │   │││││││││││││││││││││││                0x00007ff312d9faf8:   lea    0x4(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           │             │   │││││││││││││││││││││││                0x00007ff312d9fafc:   nopl   0x0(%rax)
           │             │   ╰││││││││││││││││││││││                0x00007ff312d9fb00:   jmp    0x00007ff312d9f9d0
           │             │    ││││││││││││││││││││││                0x00007ff312d9fb05:   mov    $0x1,%ecx
           │             │    ╰│││││││││││││││││││││                0x00007ff312d9fb0a:   jmp    0x00007ff312d9fa65           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │     │││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │             │     │││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.48%   │             │     │││││││││││││││││││││                0x00007ff312d9fb0f:   inc    %r8d
   0.06%   │             │     ╰││││││││││││││││││││                0x00007ff312d9fb12:   jmp    0x00007ff312d9f9d0
   1.42%   │             │      ││││││││││││││││││││                0x00007ff312d9fb17:   mov    $0x2,%ecx
   0.04%   │             │      ││││││││││││││││││││                0x00007ff312d9fb1c:   nopl   0x0(%rax)
   0.01%   │             │      ╰│││││││││││││││││││                0x00007ff312d9fb20:   jmp    0x00007ff312d9fa65
           │             │       │││││││││││││││││││                0x00007ff312d9fb25:   mov    $0x3,%ecx
           │             │       ╰││││││││││││││││││                0x00007ff312d9fb2a:   jmp    0x00007ff312d9fa65
           │             │        ││││││││││││││││││                0x00007ff312d9fb2f:   lea    0x2(%r8),%r8d
           │             │        ╰│││││││││││││││││                0x00007ff312d9fb33:   jmp    0x00007ff312d9f9d0           ;   {no_reloc}
   1.42%   │             │         │││││││││││││││││                0x00007ff312d9fb38:   lea    0x3(%r8),%r8d
   0.04%   │             │         │││││││││││││││││                0x00007ff312d9fb3c:   nopl   0x0(%rax)
   0.00%   │             │         ╰││││││││││││││││                0x00007ff312d9fb40:   jmp    0x00007ff312d9f9d0
           │             │          ││││││││││││││││                0x00007ff312d9fb45:   mov    $0xb,%ecx
           │             │          ╰│││││││││││││││                0x00007ff312d9fb4a:   jmp    0x00007ff312d9fa65
   1.49%   │             │           │││││││││││││││                0x00007ff312d9fb4f:   mov    $0xc,%ecx
   0.07%   │             │           ╰││││││││││││││                0x00007ff312d9fb54:   jmp    0x00007ff312d9fa65
   1.53%   │             │            ││││││││││││││                0x00007ff312d9fb59:   lea    0xb(%r8),%r8d
   0.06%   │             │            ││││││││││││││                0x00007ff312d9fb5d:   data16 xchg %ax,%ax
   0.00%   │             │            ╰│││││││││││││                0x00007ff312d9fb60:   jmp    0x00007ff312d9f9d0
           │             │             │││││││││││││                0x00007ff312d9fb65:   lea    0x8(%r8),%r8d
           │             │             ╰││││││││││││                0x00007ff312d9fb69:   jmp    0x00007ff312d9f9d0
   1.50%   │             │              ││││││││││││                0x00007ff312d9fb6e:   mov    $0xa,%ecx
   0.04%   │             │              ╰│││││││││││                0x00007ff312d9fb73:   jmp    0x00007ff312d9fa65
           │             │               │││││││││││                0x00007ff312d9fb78:   lea    0xa(%r8),%r8d
           │             │               │││││││││││                0x00007ff312d9fb7c:   nopl   0x0(%rax)
           │             │               ╰││││││││││                0x00007ff312d9fb80:   jmp    0x00007ff312d9f9d0
   1.47%   │             │                ││││││││││                0x00007ff312d9fb85:   lea    0x9(%r8),%r8d
   0.05%   │             │                ╰│││││││││                0x00007ff312d9fb89:   jmp    0x00007ff312d9f9d0
           │             │                 │││││││││                0x00007ff312d9fb8e:   mov    $0x9,%ecx
           │             │                 ╰││││││││                0x00007ff312d9fb93:   jmp    0x00007ff312d9fa65
   1.47%   │             │                  ││││││││                0x00007ff312d9fb98:   mov    $0x8,%ecx
   0.06%   │             │                  ││││││││                0x00007ff312d9fb9d:   data16 xchg %ax,%ax
   0.00%   │             │                  ╰│││││││                0x00007ff312d9fba0:   jmp    0x00007ff312d9fa65
           │             │                   │││││││                0x00007ff312d9fba5:   lea    0xc(%r8),%r8d
           │             │                   ╰││││││                0x00007ff312d9fba9:   jmp    0x00007ff312d9f9d0
   1.55%   │             │                    ││││││                0x00007ff312d9fbae:   mov    $0x6,%ecx
   0.05%   │             │                    ╰│││││                0x00007ff312d9fbb3:   jmp    0x00007ff312d9fa65
   0.09%   │             │                     │││││                0x00007ff312d9fbb8:   lea    0x5(%r8),%r8d
   0.06%   │             │                     │││││                0x00007ff312d9fbbc:   nopl   0x0(%rax)
   0.03%   │             │                     ╰││││                0x00007ff312d9fbc0:   jmp    0x00007ff312d9f9d0
           │             │                      ││││                0x00007ff312d9fbc5:   mov    $0x5,%ecx
           │             │                      ╰│││                0x00007ff312d9fbca:   jmp    0x00007ff312d9fa65
   1.54%   │             │                       │││                0x00007ff312d9fbcf:   lea    0x7(%r8),%r8d
   0.06%   │             │                       ╰││                0x00007ff312d9fbd3:   jmp    0x00007ff312d9f9d0
           │             │                        ││                0x00007ff312d9fbd8:   mov    $0x7,%ecx
           │             │                        ││                0x00007ff312d9fbdd:   data16 xchg %ax,%ax
           │             │                        ╰│                0x00007ff312d9fbe0:   jmp    0x00007ff312d9fa65
           │             │                         │                0x00007ff312d9fbe5:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │                         │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           │             │                         ╰                0x00007ff312d9fbe9:   jmp    0x00007ff312d9f9d0
           │             │                                          0x00007ff312d9fbee:   data16 data16 nopw 0x0(%rax,%rax,1)
           │             │                                          0x00007ff312d9fbf9:   data16 data16 xchg %ax,%ax
           │             │                                          0x00007ff312d9fbfd:   data16 xchg %ax,%ax
   0.05%   │             ↘                            ↗↗↗↗↗↗↗↗↗↗↗↗  0x00007ff312d9fc00:   cmp    %r9d,%r10d
           │                                        ╭ ││││││││││││  0x00007ff312d9fc03:   jbe    0x00007ff312d9fd54           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.10%   │                                        │ ││││││││││││  0x00007ff312d9fc09:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop rsi=Oop }
           │                                        │ ││││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.07%   │                                        │ ││││││││││││  0x00007ff312d9fc0e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007ff312d9fead
   0.09%   │                                        │ ││││││││││││  0x00007ff312d9fc16:   mov    %r9d,%ecx
           │                                        │ ││││││││││││  0x00007ff312d9fc19:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
           │                                        │ ││││││││││││  0x00007ff312d9fc1b:   mov    %r11d,%ebx
           │                                        │ ││││││││││││  0x00007ff312d9fc1e:   cmp    $0x17,%ebx
           │                                        │ ││││││││││││  0x00007ff312d9fc21:   ja     0x00007ff312d9fd91
   0.02%   │                                        │╭││││││││││││  0x00007ff312d9fc27:   lea    0xa(%rip),%r11        # 0x00007ff312d9fc38
           │                                        ││││││││││││││  0x00007ff312d9fc2e:   movslq (%r11,%rbx,4),%rbx
   0.07%   │                                        ││││││││││││││  0x00007ff312d9fc32:   add    %rbx,%r11                    ;   {no_reloc}
   0.02%   │                                        ││││││││││││││  0x00007ff312d9fc35:   jmp    *%r11
           │                                        │↘││││││││││││  0x00007ff312d9fc38:   outsl  %ds:(%rsi),(%dx)
           │                                        │ ││││││││││││  0x00007ff312d9fc39:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc3b:   add    %bh,0x0(%rdx)
           │                                        │ ││││││││││││  0x00007ff312d9fc3e:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc40:   lea    (%rax),%eax
           │                                        │ ││││││││││││  0x00007ff312d9fc42:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc44:   (bad)  
           │                                        │ ││││││││││││  0x00007ff312d9fc45:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc47:   add    %bh,%ah
           │                                        │ ││││││││││││  0x00007ff312d9fc49:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc4b:   add    %cl,-0x12ffffff(%rip)        # 0x00007ff2ffd9fc52
           │                                        │ ││││││││││││  0x00007ff312d9fc51:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc53:   add    %bl,%ah
           │                                        │ ││││││││││││  0x00007ff312d9fc55:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc57:   add    %bh,0xcd0000(%rax,%rax,1)
           │                                        │ ││││││││││││  0x00007ff312d9fc5e:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc60:   lods   %ds:(%rsi),%eax
           │                                        │ ││││││││││││  0x00007ff312d9fc61:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc63:   add    %bl,0x1590000(%rax,%rax,1)
           │                                        │ ││││││││││││  0x00007ff312d9fc6a:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc6c:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc6d:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc6f:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007ff312d9fc72:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc74:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc75:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc77:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007ff312d9fc7a:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc7c:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc7d:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc7f:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007ff312d9fc82:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc84:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc85:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc87:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007ff312d9fc8a:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc8c:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc8d:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc8f:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007ff312d9fc92:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc94:   pop    %rcx
           │                                        │ ││││││││││││  0x00007ff312d9fc95:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007ff312d9fc97:   add    %al,-0x73(%rbp)              ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │                                        │ ││││││││││││  0x00007ff312d9fc9a:   pop    %rax
           │                                        │ ││││││││││││  0x00007ff312d9fc9b:   add    $0x44,%al                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           │                                        │ ││││││││││││  0x00007ff312d9fc9d:   mov    %ecx,%ecx
           │                                        │ ││││││││││││  0x00007ff312d9fc9f:   mov    %r11d,%r8d
           │                                        │ ╰│││││││││││  0x00007ff312d9fca2:   jmp    0x00007ff312d9fc00           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                        │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
           │                                        │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
           │                                        │  │││││││││││  0x00007ff312d9fca7:   inc    %r8d
           │                                        │  │││││││││││  0x00007ff312d9fcaa:   mov    %ecx,%r9d
           │                                        │  ╰││││││││││  0x00007ff312d9fcad:   jmp    0x00007ff312d9fc00
           │                                        │   ││││││││││  0x00007ff312d9fcb2:   lea    0x2(%r8),%r11d
           │                                        │   ││││││││││  0x00007ff312d9fcb6:   mov    %ecx,%r9d
           │                                        │   ││││││││││  0x00007ff312d9fcb9:   mov    %r11d,%r8d
           │                                        │   ││││││││││  0x00007ff312d9fcbc:   nopl   0x0(%rax)
           │                                        │   ╰│││││││││  0x00007ff312d9fcc0:   jmp    0x00007ff312d9fc00
           │                                        │    │││││││││  0x00007ff312d9fcc5:   lea    0x3(%r8),%r11d
           │                                        │    │││││││││  0x00007ff312d9fcc9:   mov    %ecx,%r9d
           │                                        │    │││││││││  0x00007ff312d9fccc:   mov    %r11d,%r8d
           │                                        │    ╰││││││││  0x00007ff312d9fccf:   jmp    0x00007ff312d9fc00
           │                                        │     ││││││││  0x00007ff312d9fcd4:   lea    0xc(%r8),%r11d
           │                                        │     ││││││││  0x00007ff312d9fcd8:   mov    %ecx,%r9d
           │                                        │     ││││││││  0x00007ff312d9fcdb:   mov    %r11d,%r8d
           │                                        │     ││││││││  0x00007ff312d9fcde:   xchg   %ax,%ax
           │                                        │     ╰│││││││  0x00007ff312d9fce0:   jmp    0x00007ff312d9fc00
           │                                        │      │││││││  0x00007ff312d9fce5:   lea    0xb(%r8),%r11d
           │                                        │      │││││││  0x00007ff312d9fce9:   mov    %ecx,%r9d
           │                                        │      │││││││  0x00007ff312d9fcec:   mov    %r11d,%r8d
           │                                        │      ╰││││││  0x00007ff312d9fcef:   jmp    0x00007ff312d9fc00
           │                                        │       ││││││  0x00007ff312d9fcf4:   lea    0x9(%r8),%r11d
           │                                        │       ││││││  0x00007ff312d9fcf8:   mov    %ecx,%r9d
           │                                        │       ││││││  0x00007ff312d9fcfb:   mov    %r11d,%r8d
           │                                        │       ││││││  0x00007ff312d9fcfe:   xchg   %ax,%ax
           │                                        │       ╰│││││  0x00007ff312d9fd00:   jmp    0x00007ff312d9fc00
           │                                        │        │││││  0x00007ff312d9fd05:   lea    0xa(%r8),%r11d
           │                                        │        │││││  0x00007ff312d9fd09:   mov    %ecx,%r9d
           │                                        │        │││││  0x00007ff312d9fd0c:   mov    %r11d,%r8d
           │                                        │        ╰││││  0x00007ff312d9fd0f:   jmp    0x00007ff312d9fc00
           │                                        │         ││││  0x00007ff312d9fd14:   lea    0x8(%r8),%r11d
           │                                        │         ││││  0x00007ff312d9fd18:   mov    %ecx,%r9d
           │                                        │         ││││  0x00007ff312d9fd1b:   mov    %r11d,%r8d
           │                                        │         ││││  0x00007ff312d9fd1e:   xchg   %ax,%ax
           │                                        │         ╰│││  0x00007ff312d9fd20:   jmp    0x00007ff312d9fc00
           │                                        │          │││  0x00007ff312d9fd25:   lea    0x7(%r8),%r11d
           │                                        │          │││  0x00007ff312d9fd29:   mov    %ecx,%r9d
           │                                        │          │││  0x00007ff312d9fd2c:   mov    %r11d,%r8d
           │                                        │          ╰││  0x00007ff312d9fd2f:   jmp    0x00007ff312d9fc00           ;   {no_reloc}
           │                                        │           ││  0x00007ff312d9fd34:   lea    0x5(%r8),%r11d
           │                                        │           ││  0x00007ff312d9fd38:   mov    %ecx,%r9d
           │                                        │           ││  0x00007ff312d9fd3b:   mov    %r11d,%r8d
           │                                        │           ││  0x00007ff312d9fd3e:   xchg   %ax,%ax
           │                                        │           ╰│  0x00007ff312d9fd40:   jmp    0x00007ff312d9fc00
           │                                        │            │  0x00007ff312d9fd45:   lea    0x6(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                        │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           │                                        │            │  0x00007ff312d9fd49:   mov    %ecx,%r9d
           │                                        │            │  0x00007ff312d9fd4c:   mov    %r11d,%r8d
           │                                        │            ╰  0x00007ff312d9fd4f:   jmp    0x00007ff312d9fc00
   0.02%   │                                        ↘               0x00007ff312d9fd54:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
           │                                                        0x00007ff312d9fd57:   mov    0x10(%rsp),%rbp
   0.00%   │                                                        0x00007ff312d9fd5c:   add    $0x18,%rsp
           │                                                        0x00007ff312d9fd60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                                                        0x00007ff312d9fd67:   ja     0x00007ff312d9fe0a
   0.02%   │                                                        0x00007ff312d9fd6d:   ret    
           ↘                                                        0x00007ff312d9fd6e:   movl   $0xffffffed,0x484(%r15)      ;*invokevirtual ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@1 (line 213)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                                                    0x00007ff312d9fd79:   movq   $0x14,0x490(%r15)
                                                                    0x00007ff312d9fd84:   call   0x00007ff3126ff17a           ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
                                                                                                                              ;   {runtime_call DeoptimizationBlob}
                                                                    0x00007ff312d9fd89:   nopl   0x0(%rax,%rax,1)             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
....................................................................................................
  95.57%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1083 
   0.65%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1102 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.80%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1083 
   3.57%                kernel  [unknown] 
   0.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1102 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  _IO_setb 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  read 
   0.02%        hsdis-amd64.so  print_insn 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%                        <unknown> 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.38%  <...other 126 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.68%        jvmci, level 4
   3.57%                kernel
   0.31%             libjvm.so
   0.26%             libc.so.6
   0.08%   libjvmcicompiler.so
   0.04%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                      
   0.01%                [vdso]
   0.01%        perf-19667.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 66.67% complete, ETA 00:02:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.748 ns/op
# Warmup Iteration   2: 6.554 ns/op
# Warmup Iteration   3: 6.437 ns/op
# Warmup Iteration   4: 6.395 ns/op
# Warmup Iteration   5: 6.397 ns/op
Iteration   1: 6.513 ns/op
Iteration   2: 6.505 ns/op
Iteration   3: 6.458 ns/op
Iteration   4: 6.566 ns/op
Iteration   5: 6.625 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  6.533 ±(99.9%) 0.246 ns/op [Average]
  (min, avg, max) = (6.458, 6.533, 6.625), stdev = 0.064
  CI (99.9%): [6.287, 6.779] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 228824 total address lines.
Perf output processed (skipped 85.402 seconds):
 Column 1: cycles (51485 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1062 

                                                                    #           [sp+0x20]  (sp of caller)
                                                                    0x00007fe81ada12a0:   mov    0x8(%rsi),%r10d
                                                                    0x00007fe81ada12a4:   movabs $0x7fe797000000,%r12
                                                                    0x00007fe81ada12ae:   add    %r12,%r10
                                                                    0x00007fe81ada12b1:   xor    %r12,%r12
                                                                    0x00007fe81ada12b4:   cmp    %r10,%rax
                                                                    0x00007fe81ada12b7:   jne    0x00007fe81a6f9080           ;   {runtime_call ic_miss_stub}
                                                                    0x00007fe81ada12bd:   data16 xchg %ax,%ax
                                                                  [Verified Entry Point]
                                                                    0x00007fe81ada12c0:   mov    %eax,-0x14000(%rsp)
   0.02%                                                            0x00007fe81ada12c7:   sub    $0x18,%rsp
                                                                    0x00007fe81ada12cb:   nop
                                                                    0x00007fe81ada12cc:   cmpl   $0x1,0x20(%r15)
   0.02%                                                            0x00007fe81ada12d4:   jne    0x00007fe81ada187a
                                                                    0x00007fe81ada12da:   mov    %rbp,0x10(%rsp)
                                                                    0x00007fe81ada12df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@0 (line 102)
                                                                    0x00007fe81ada12e2:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fe81ada189e
   0.02%                                                            0x00007fe81ada12ea:   cmp    $0x2,%r10d
   0.02%                                                            0x00007fe81ada12ee:   mov    $0x1,%r11d
                                                                    0x00007fe81ada12f4:   cmovb  %r10d,%r11d
   0.02%                                                            0x00007fe81ada12f8:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
                                                                    0x00007fe81ada12fc:   mov    $0x0,%r9d
   0.00%                                                            0x00007fe81ada1302:   mov    $0x0,%r8d
                                                                    0x00007fe81ada1308:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.07%     ↗↗↗↗↗↗↗↗↗↗↗↗                                           0x00007fe81ada1310:   cmp    %r9d,%r11d
          ╭  ││││││││││││                                           0x00007fe81ada1313:   jbe    0x00007fe81ada143d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
          │  ││││││││││││                                           0x00007fe81ada1319:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
          │  ││││││││││││                                                                                                     ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
          │  ││││││││││││                                           0x00007fe81ada131e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fe81ada18c1
   0.03%  │  ││││││││││││                                           0x00007fe81ada1325:   mov    %r9d,%ebx
          │  ││││││││││││                                           0x00007fe81ada1328:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
          │  ││││││││││││                                           0x00007fe81ada132a:   mov    %ecx,%edi
          │  ││││││││││││                                           0x00007fe81ada132c:   cmp    $0x17,%edi
          │╭ ││││││││││││                                           0x00007fe81ada132f:   ja     0x00007fe81ada17ee
   0.01%  ││╭││││││││││││                                           0x00007fe81ada1335:   lea    0xc(%rip),%rcx        # 0x00007fe81ada1348
          │││││││││││││││                                           0x00007fe81ada133c:   movslq (%rcx,%rdi,4),%rdi
   0.05%  │││││││││││││││                                           0x00007fe81ada1340:   add    %rdi,%rcx
   0.03%  │││││││││││││││                                           0x00007fe81ada1343:   jmp    *%rcx
          │││││││││││││││                                           0x00007fe81ada1345:   data16 xchg %ax,%ax
          ││↘││││││││││││                                           0x00007fe81ada1348:   insb   (%dx),%es:(%rdi)
          ││ ││││││││││││                                           0x00007fe81ada1349:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada134b:   add    %dh,0x0(%rdi)
          ││ ││││││││││││                                           0x00007fe81ada134e:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada1350:   (bad)  
          ││ ││││││││││││                                           0x00007fe81ada1351:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada1353:   add    %al,-0x17000000(%rbx)
          ││ ││││││││││││                                           0x00007fe81ada1359:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada135b:   add    %bl,%ch
          ││ ││││││││││││                                           0x00007fe81ada135d:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada135f:   add    %cl,%ch
          ││ ││││││││││││                                           0x00007fe81ada1361:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada1363:   add    %dh,-0x3f000000(%rbp)
          ││ ││││││││││││                                           0x00007fe81ada1369:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada136b:   add    %bl,-0x57000000(%rbp)
          ││ ││││││││││││                                           0x00007fe81ada1371:   add    %al,(%rax)
          ││ ││││││││││││                                           0x00007fe81ada1373:   add    %cl,-0x5a000000(%rdi)
          ││ ││││││││││││                                           0x00007fe81ada1379:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada137b:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007fe81ada1381:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada1383:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007fe81ada1389:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada138b:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007fe81ada1391:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada1393:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007fe81ada1399:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada139b:   add    %ah,-0x59fffffc(%rsi)
          ││ ││││││││││││                                           0x00007fe81ada13a1:   add    $0x0,%al
          ││ ││││││││││││                                           0x00007fe81ada13a3:   add    %ah,0x45000004(%rsi)         ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
          ││ ││││││││││││                                           0x00007fe81ada13a9:   lea    0x3(%rax),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
          ││ ││││││││││││                                           0x00007fe81ada13ac:   mov    %ebx,%r9d
          ││ ╰│││││││││││                                           0x00007fe81ada13af:   jmp    0x00007fe81ada1310           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
          ││  │││││││││││                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.01%  ││  │││││││││││                                           0x00007fe81ada13b4:   inc    %r8d                         ;   {no_reloc}
   0.00%  ││  │││││││││││                                           0x00007fe81ada13b7:   mov    %ebx,%r9d
          ││  ╰││││││││││                                           0x00007fe81ada13ba:   jmp    0x00007fe81ada1310
          ││   ││││││││││                                           0x00007fe81ada13bf:   lea    0x2(%r8),%r8d
          ││   ││││││││││                                           0x00007fe81ada13c3:   mov    %ebx,%r9d
          ││   ╰│││││││││                                           0x00007fe81ada13c6:   jmp    0x00007fe81ada1310
          ││    │││││││││                                           0x00007fe81ada13cb:   lea    0x4(%r8),%r8d
          ││    │││││││││                                           0x00007fe81ada13cf:   mov    %ebx,%r9d
          ││    ╰││││││││                                           0x00007fe81ada13d2:   jmp    0x00007fe81ada1310
          ││     ││││││││                                           0x00007fe81ada13d7:   lea    0xc(%r8),%r8d
          ││     ││││││││                                           0x00007fe81ada13db:   mov    %ebx,%r9d
          ││     ││││││││                                           0x00007fe81ada13de:   xchg   %ax,%ax
          ││     ╰│││││││                                           0x00007fe81ada13e0:   jmp    0x00007fe81ada1310
          ││      │││││││                                           0x00007fe81ada13e5:   lea    0xa(%r8),%r8d
          ││      │││││││                                           0x00007fe81ada13e9:   mov    %ebx,%r9d
          ││      ╰││││││                                           0x00007fe81ada13ec:   jmp    0x00007fe81ada1310
          ││       ││││││                                           0x00007fe81ada13f1:   lea    0xb(%r8),%r8d
          ││       ││││││                                           0x00007fe81ada13f5:   mov    %ebx,%r9d
          ││       ╰│││││                                           0x00007fe81ada13f8:   jmp    0x00007fe81ada1310
          ││        │││││                                           0x00007fe81ada13fd:   lea    0x8(%r8),%r8d
          ││        │││││                                           0x00007fe81ada1401:   mov    %ebx,%r9d
          ││        ╰││││                                           0x00007fe81ada1404:   jmp    0x00007fe81ada1310
          ││         ││││                                           0x00007fe81ada1409:   lea    0x9(%r8),%r8d
          ││         ││││                                           0x00007fe81ada140d:   mov    %ebx,%r9d
          ││         ╰│││                                           0x00007fe81ada1410:   jmp    0x00007fe81ada1310
          ││          │││                                           0x00007fe81ada1415:   lea    0x7(%r8),%r8d
          ││          │││                                           0x00007fe81ada1419:   mov    %ebx,%r9d
          ││          │││                                           0x00007fe81ada141c:   nopl   0x0(%rax)
          ││          ╰││                                           0x00007fe81ada1420:   jmp    0x00007fe81ada1310
          ││           ││                                           0x00007fe81ada1425:   lea    0x6(%r8),%r8d
          ││           ││                                           0x00007fe81ada1429:   mov    %ebx,%r9d
          ││           ╰│                                           0x00007fe81ada142c:   jmp    0x00007fe81ada1310
          ││            │                                           0x00007fe81ada1431:   lea    0x5(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││            │                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
          ││            │                                           0x00007fe81ada1435:   mov    %ebx,%r9d
          ││            ╰                                           0x00007fe81ada1438:   jmp    0x00007fe81ada1310
   0.02%  ↘│                                                        0x00007fe81ada143d:   lea    -0x2(%r10),%r11d
   0.00%   │                                                        0x00007fe81ada1441:   data16 data16 nopw 0x0(%rax,%rax,1)
           │                                                        0x00007fe81ada144c:   data16 data16 xchg %ax,%ax
   8.26%   │                 ↗ ↗ ↗ ↗  ↗↗ ↗↗  ↗ ↗ ↗ ↗                0x00007fe81ada1450:   cmp    %r9d,%r11d
           │             ╭   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1453:   jle    0x00007fe81ada1680           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │             │   │ │ │ │  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.18%   │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1459:   mov    0x10(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop rsi=Oop }
           │             │   │ │ │ │  ││ ││  │ │ │ │                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │             │   │ │ │ │  ││ ││  │ │ │ │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.28%   │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada145e:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fe81ada18e4
   0.43%   │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1465:   mov    %ecx,%ebx
   8.15%   │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1467:   cmp    $0x17,%ebx
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada146a:   ja     0x00007fe81ada1857
   0.10%   │             │╭  │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1470:   lea    0x9(%rip),%rcx        # 0x00007fe81ada1480
   0.01%   │             ││  │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1477:   movslq (%rcx,%rbx,4),%rbx
  21.12%   │             ││  │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada147b:   add    %rbx,%rcx
   8.19%   │             ││  │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada147e:   jmp    *%rcx
           │             │↘  │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1480:   add    $0x17000001,%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1485:   add    %eax,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1487:   add    %ah,0x0(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada148a:   add    %al,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada148c:   cs add %eax,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada148f:   add    %al,%ch
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1491:   add    %eax,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1493:   add    %ch,-0x27ffffff(%rsi)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada1499:   add    %eax,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada149b:   add    %bl,-0x71ffffff(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14a1:   add    %eax,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14a3:   add    %ch,0x1(%rsi)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14a6:   add    %al,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14a8:   add    %r8d,(%r8)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14ab:   add    %cl,0x1(%rdi)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14ae:   add    %al,(%rax)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b0:   xlat   %ds:(%rbx)
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b1:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b3:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b5:   add    (%rax),%eax                  ;   {no_reloc}
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b7:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14b9:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14bb:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14bd:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14bf:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14c1:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14c3:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14c5:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14c7:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14c9:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14cb:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14cd:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14cf:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14d1:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14d3:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14d5:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14d7:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14d9:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14db:   add    %dl,%bh
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14dd:   add    (%rax),%eax
           │             │   │ │ │ │  ││ ││  │ │ │ │                0x00007fe81ada14df:   add    %bh,0x3(%rcx)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │   │ │ │ │  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │             │   │ │ │ │  ││ ││  │ │ │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   8.22%   │             │   │↗│↗│↗│↗↗││↗││↗↗│↗│↗│↗│                0x00007fe81ada14e5:   mov    0x14(%rax,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
   0.52%   │             │   │││││││││││││││││││││││                0x00007fe81ada14ea:   add    %ecx,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.04%   │             │   │││││││││││││││││││││││                0x00007fe81ada14ed:   mov    %r9d,%ecx
           │             │   │││││││││││││││││││││││                0x00007fe81ada14f0:   inc    %ecx                         ; ImmutableOopMap {rax=Oop rsi=Oop }
           │             │   │││││││││││││││││││││││                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   8.44%   │             │   │││││││││││││││││││││││                0x00007fe81ada14f2:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007fe81ada1907
   0.30%   │             │   │││││││││││││││││││││││                0x00007fe81ada14f9:   lea    0x2(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.02%   │             │   │││││││││││││││││││││││                0x00007fe81ada14fd:   mov    %ebx,%edi
           │             │   │││││││││││││││││││││││                0x00007fe81ada14ff:   cmp    $0x17,%edi
           │             │   │││││││││││││││││││││││                0x00007fe81ada1502:   ja     0x00007fe81ada1834
   7.95%   │             │ ╭ │││││││││││││││││││││││                0x00007fe81ada1508:   lea    0x9(%rip),%rbx        # 0x00007fe81ada1518
   0.01%   │             │ │ │││││││││││││││││││││││                0x00007fe81ada150f:   movslq (%rbx,%rdi,4),%rdi
   0.59%   │             │ │ │││││││││││││││││││││││                0x00007fe81ada1513:   add    %rdi,%rbx
   2.26%   │             │ │ │││││││││││││││││││││││                0x00007fe81ada1516:   jmp    *%rbx
           │             │ ↘╭│││││││││││││││││││││││                0x00007fe81ada1518:   ja     0x00007fe81ada151a
           │             │  ↘│││││││││││││││││││││││                0x00007fe81ada151a:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada151c:   lea    (%rax),%eax
           │             │   │││││││││││││││││││││││                0x00007fe81ada151e:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1520:   (bad)  
           │             │   │││││││││││││││││││││││                0x00007fe81ada1521:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1523:   add    %ah,0x20000000(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1529:   add    %eax,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada152b:   add    %cl,0x1(%rbp)
           │             │   │││││││││││││││││││││││                0x00007fe81ada152e:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1530:   (bad)  
           │             │   │││││││││││││││││││││││                0x00007fe81ada1531:   add    %eax,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1533:   add    %cl,%ch
           │             │   │││││││││││││││││││││││                0x00007fe81ada1535:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1537:   add    %ch,%ch
           │             │   │││││││││││││││││││││││                0x00007fe81ada1539:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada153b:   add    %ah,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada153d:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada153f:   add    %al,%cl
           │             │   │││││││││││││││││││││││                0x00007fe81ada1541:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1543:   add    %cl,0x1c000001(%rip)        # 0x00007fe836da154a
           │             │   │││││││││││││││││││││││                0x00007fe81ada1549:   add    (%rax),%eax
           │             │   │││││││││││││││││││││││                0x00007fe81ada154b:   add    %bl,(%rbx,%rax,1)
           │             │   │││││││││││││││││││││││                0x00007fe81ada154e:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1550:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1552:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1554:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1556:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1558:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada155a:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada155c:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada155e:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1560:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1562:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1564:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1566:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1568:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada156a:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada156c:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada156e:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1570:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1572:   add    %al,(%rax)
           │             │   │││││││││││││││││││││││                0x00007fe81ada1574:   sbb    $0x3,%al
           │             │   │││││││││││││││││││││││                0x00007fe81ada1576:   add    %al,(%rax)                   ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.43%   │             │   │││││││││││││││││││││││                0x00007fe81ada1578:   lea    0x3(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │   │││││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.06%   │             │   │││││││││││││││││││││││                0x00007fe81ada157c:   nopl   0x0(%rax)
   0.00%   │             │   ╰││││││││││││││││││││││                0x00007fe81ada1580:   jmp    0x00007fe81ada1450
           │             │    ││││││││││││││││││││││                0x00007fe81ada1585:   mov    $0x1,%ecx
           │             │    ╰│││││││││││││││││││││                0x00007fe81ada158a:   jmp    0x00007fe81ada14e5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │             │     │││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │             │     │││││││││││││││││││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.60%   │             │     │││││││││││││││││││││                0x00007fe81ada158f:   inc    %r8d
   0.07%   │             │     ╰││││││││││││││││││││                0x00007fe81ada1592:   jmp    0x00007fe81ada1450
   1.51%   │             │      ││││││││││││││││││││                0x00007fe81ada1597:   mov    $0x2,%ecx
   0.04%   │             │      ││││││││││││││││││││                0x00007fe81ada159c:   nopl   0x0(%rax)
           │             │      ╰│││││││││││││││││││                0x00007fe81ada15a0:   jmp    0x00007fe81ada14e5
           │             │       │││││││││││││││││││                0x00007fe81ada15a5:   lea    0x2(%r8),%r8d
           │             │       ╰││││││││││││││││││                0x00007fe81ada15a9:   jmp    0x00007fe81ada1450
   1.56%   │             │        ││││││││││││││││││                0x00007fe81ada15ae:   mov    $0x4,%ecx
   0.07%   │             │        ╰│││││││││││││││││                0x00007fe81ada15b3:   jmp    0x00007fe81ada14e5           ;   {no_reloc}
           │             │         │││││││││││││││││                0x00007fe81ada15b8:   lea    0x4(%r8),%r8d
           │             │         │││││││││││││││││                0x00007fe81ada15bc:   nopl   0x0(%rax)
           │             │         ╰││││││││││││││││                0x00007fe81ada15c0:   jmp    0x00007fe81ada1450
           │             │          ││││││││││││││││                0x00007fe81ada15c5:   mov    $0xb,%ecx
           │             │          ╰│││││││││││││││                0x00007fe81ada15ca:   jmp    0x00007fe81ada14e5
   1.48%   │             │           │││││││││││││││                0x00007fe81ada15cf:   mov    $0xc,%ecx
   0.06%   │             │           ╰││││││││││││││                0x00007fe81ada15d4:   jmp    0x00007fe81ada14e5
   1.56%   │             │            ││││││││││││││                0x00007fe81ada15d9:   lea    0xb(%r8),%r8d
   0.10%   │             │            ││││││││││││││                0x00007fe81ada15dd:   data16 xchg %ax,%ax
   0.00%   │             │            ╰│││││││││││││                0x00007fe81ada15e0:   jmp    0x00007fe81ada1450
           │             │             │││││││││││││                0x00007fe81ada15e5:   lea    0x8(%r8),%r8d
           │             │             ╰││││││││││││                0x00007fe81ada15e9:   jmp    0x00007fe81ada1450
   1.52%   │             │              ││││││││││││                0x00007fe81ada15ee:   mov    $0xa,%ecx
   0.06%   │             │              ╰│││││││││││                0x00007fe81ada15f3:   jmp    0x00007fe81ada14e5
           │             │               │││││││││││                0x00007fe81ada15f8:   lea    0xa(%r8),%r8d
           │             │               │││││││││││                0x00007fe81ada15fc:   nopl   0x0(%rax)
           │             │               ╰││││││││││                0x00007fe81ada1600:   jmp    0x00007fe81ada1450
   1.45%   │             │                ││││││││││                0x00007fe81ada1605:   lea    0x9(%r8),%r8d
   0.07%   │             │                ╰│││││││││                0x00007fe81ada1609:   jmp    0x00007fe81ada1450
           │             │                 │││││││││                0x00007fe81ada160e:   mov    $0x9,%ecx
           │             │                 ╰││││││││                0x00007fe81ada1613:   jmp    0x00007fe81ada14e5
   1.45%   │             │                  ││││││││                0x00007fe81ada1618:   mov    $0x8,%ecx
   0.08%   │             │                  ││││││││                0x00007fe81ada161d:   data16 xchg %ax,%ax
   0.00%   │             │                  ╰│││││││                0x00007fe81ada1620:   jmp    0x00007fe81ada14e5
           │             │                   │││││││                0x00007fe81ada1625:   lea    0xc(%r8),%r8d
           │             │                   ╰││││││                0x00007fe81ada1629:   jmp    0x00007fe81ada1450
   1.41%   │             │                    ││││││                0x00007fe81ada162e:   mov    $0x6,%ecx
   0.06%   │             │                    ╰│││││                0x00007fe81ada1633:   jmp    0x00007fe81ada14e5
   1.49%   │             │                     │││││                0x00007fe81ada1638:   lea    0x5(%r8),%r8d
   0.06%   │             │                     │││││                0x00007fe81ada163c:   nopl   0x0(%rax)
   0.00%   │             │                     ╰││││                0x00007fe81ada1640:   jmp    0x00007fe81ada1450
           │             │                      ││││                0x00007fe81ada1645:   mov    $0x5,%ecx
           │             │                      ╰│││                0x00007fe81ada164a:   jmp    0x00007fe81ada14e5
   1.65%   │             │                       │││                0x00007fe81ada164f:   lea    0x7(%r8),%r8d
   0.08%   │             │                       ╰││                0x00007fe81ada1653:   jmp    0x00007fe81ada1450
           │             │                        ││                0x00007fe81ada1658:   mov    $0x7,%ecx
           │             │                        ││                0x00007fe81ada165d:   data16 xchg %ax,%ax
           │             │                        ╰│                0x00007fe81ada1660:   jmp    0x00007fe81ada14e5
           │             │                         │                0x00007fe81ada1665:   lea    0x6(%r8),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │             │                         │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
           │             │                         ╰                0x00007fe81ada1669:   jmp    0x00007fe81ada1450
           │             │                                          0x00007fe81ada166e:   data16 data16 nopw 0x0(%rax,%rax,1)
           │             │                                          0x00007fe81ada1679:   data16 data16 xchg %ax,%ax
           │             │                                          0x00007fe81ada167d:   data16 xchg %ax,%ax
   0.13%   │             ↘                            ↗↗↗↗↗↗↗↗↗↗↗↗  0x00007fe81ada1680:   cmp    %r9d,%r10d
           │                                        ╭ ││││││││││││  0x00007fe81ada1683:   jbe    0x00007fe81ada17d4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.09%   │                                        │ ││││││││││││  0x00007fe81ada1689:   mov    0x10(%rax,%r9,4),%r11d       ; ImmutableOopMap {rax=Oop rsi=Oop }
           │                                        │ ││││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.07%   │                                        │ ││││││││││││  0x00007fe81ada168e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007fe81ada192d
   0.06%   │                                        │ ││││││││││││  0x00007fe81ada1696:   mov    %r9d,%ecx
           │                                        │ ││││││││││││  0x00007fe81ada1699:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
           │                                        │ ││││││││││││  0x00007fe81ada169b:   mov    %r11d,%ebx
           │                                        │ ││││││││││││  0x00007fe81ada169e:   cmp    $0x17,%ebx
           │                                        │ ││││││││││││  0x00007fe81ada16a1:   ja     0x00007fe81ada1811
   0.02%   │                                        │╭││││││││││││  0x00007fe81ada16a7:   lea    0xa(%rip),%r11        # 0x00007fe81ada16b8
           │                                        ││││││││││││││  0x00007fe81ada16ae:   movslq (%r11,%rbx,4),%rbx
   0.07%   │                                        ││││││││││││││  0x00007fe81ada16b2:   add    %rbx,%r11                    ;   {no_reloc}
   0.02%   │                                        ││││││││││││││  0x00007fe81ada16b5:   jmp    *%r11
           │                                        │↘││││││││││││  0x00007fe81ada16b8:   outsl  %ds:(%rsi),(%dx)
           │                                        │ ││││││││││││  0x00007fe81ada16b9:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16bb:   add    %bh,0x0(%rdx)
           │                                        │ ││││││││││││  0x00007fe81ada16be:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16c0:   (bad)  
           │                                        │ ││││││││││││  0x00007fe81ada16c1:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16c3:   add    %cl,-0x4000000(%rbp)
           │                                        │ ││││││││││││  0x00007fe81ada16c9:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16cb:   add    %cl,-0x12ffffff(%rip)        # 0x00007fe807da16d2
           │                                        │ ││││││││││││  0x00007fe81ada16d1:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16d3:   add    %bl,%ah
           │                                        │ ││││││││││││  0x00007fe81ada16d5:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16d7:   add    %bh,0xcd0000(%rax,%rax,1)
           │                                        │ ││││││││││││  0x00007fe81ada16de:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16e0:   lods   %ds:(%rsi),%eax
           │                                        │ ││││││││││││  0x00007fe81ada16e1:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16e3:   add    %bl,0x1590000(%rax,%rax,1)
           │                                        │ ││││││││││││  0x00007fe81ada16ea:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16ec:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada16ed:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16ef:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007fe81ada16f2:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16f4:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada16f5:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16f7:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007fe81ada16fa:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16fc:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada16fd:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada16ff:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007fe81ada1702:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada1704:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada1705:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada1707:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007fe81ada170a:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada170c:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada170d:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada170f:   add    %bl,0x1(%rcx)
           │                                        │ ││││││││││││  0x00007fe81ada1712:   add    %al,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada1714:   pop    %rcx
           │                                        │ ││││││││││││  0x00007fe81ada1715:   add    %eax,(%rax)
           │                                        │ ││││││││││││  0x00007fe81ada1717:   add    %al,-0x73(%rbp)              ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │                                        │ ││││││││││││  0x00007fe81ada171a:   pop    %rax
           │                                        │ ││││││││││││  0x00007fe81ada171b:   add    -0x37(%rbx,%rcx,4),%eax      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                        │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
           │                                        │ ││││││││││││  0x00007fe81ada171f:   mov    %r11d,%r8d
           │                                        │ ╰│││││││││││  0x00007fe81ada1722:   jmp    0x00007fe81ada1680           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                        │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
           │                                        │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
           │                                        │  │││││││││││  0x00007fe81ada1727:   inc    %r8d
           │                                        │  │││││││││││  0x00007fe81ada172a:   mov    %ecx,%r9d
           │                                        │  ╰││││││││││  0x00007fe81ada172d:   jmp    0x00007fe81ada1680
           │                                        │   ││││││││││  0x00007fe81ada1732:   lea    0x2(%r8),%r11d
           │                                        │   ││││││││││  0x00007fe81ada1736:   mov    %ecx,%r9d
           │                                        │   ││││││││││  0x00007fe81ada1739:   mov    %r11d,%r8d
           │                                        │   ││││││││││  0x00007fe81ada173c:   nopl   0x0(%rax)
           │                                        │   ╰│││││││││  0x00007fe81ada1740:   jmp    0x00007fe81ada1680
   0.03%   │                                        │    │││││││││  0x00007fe81ada1745:   lea    0x4(%r8),%r11d
           │                                        │    │││││││││  0x00007fe81ada1749:   mov    %ecx,%r9d
           │                                        │    │││││││││  0x00007fe81ada174c:   mov    %r11d,%r8d
           │                                        │    ╰││││││││  0x00007fe81ada174f:   jmp    0x00007fe81ada1680
           │                                        │     ││││││││  0x00007fe81ada1754:   lea    0xc(%r8),%r11d
           │                                        │     ││││││││  0x00007fe81ada1758:   mov    %ecx,%r9d
           │                                        │     ││││││││  0x00007fe81ada175b:   mov    %r11d,%r8d
           │                                        │     ││││││││  0x00007fe81ada175e:   xchg   %ax,%ax
           │                                        │     ╰│││││││  0x00007fe81ada1760:   jmp    0x00007fe81ada1680
           │                                        │      │││││││  0x00007fe81ada1765:   lea    0xb(%r8),%r11d
           │                                        │      │││││││  0x00007fe81ada1769:   mov    %ecx,%r9d
           │                                        │      │││││││  0x00007fe81ada176c:   mov    %r11d,%r8d
           │                                        │      ╰││││││  0x00007fe81ada176f:   jmp    0x00007fe81ada1680
           │                                        │       ││││││  0x00007fe81ada1774:   lea    0x9(%r8),%r11d
           │                                        │       ││││││  0x00007fe81ada1778:   mov    %ecx,%r9d
           │                                        │       ││││││  0x00007fe81ada177b:   mov    %r11d,%r8d
           │                                        │       ││││││  0x00007fe81ada177e:   xchg   %ax,%ax
           │                                        │       ╰│││││  0x00007fe81ada1780:   jmp    0x00007fe81ada1680
           │                                        │        │││││  0x00007fe81ada1785:   lea    0xa(%r8),%r11d
           │                                        │        │││││  0x00007fe81ada1789:   mov    %ecx,%r9d
           │                                        │        │││││  0x00007fe81ada178c:   mov    %r11d,%r8d
           │                                        │        ╰││││  0x00007fe81ada178f:   jmp    0x00007fe81ada1680
           │                                        │         ││││  0x00007fe81ada1794:   lea    0x8(%r8),%r11d
           │                                        │         ││││  0x00007fe81ada1798:   mov    %ecx,%r9d
           │                                        │         ││││  0x00007fe81ada179b:   mov    %r11d,%r8d
           │                                        │         ││││  0x00007fe81ada179e:   xchg   %ax,%ax
           │                                        │         ╰│││  0x00007fe81ada17a0:   jmp    0x00007fe81ada1680
           │                                        │          │││  0x00007fe81ada17a5:   lea    0x7(%r8),%r11d
           │                                        │          │││  0x00007fe81ada17a9:   mov    %ecx,%r9d
           │                                        │          │││  0x00007fe81ada17ac:   mov    %r11d,%r8d
           │                                        │          ╰││  0x00007fe81ada17af:   jmp    0x00007fe81ada1680           ;   {no_reloc}
           │                                        │           ││  0x00007fe81ada17b4:   lea    0x5(%r8),%r11d
           │                                        │           ││  0x00007fe81ada17b8:   mov    %ecx,%r9d
           │                                        │           ││  0x00007fe81ada17bb:   mov    %r11d,%r8d
           │                                        │           ││  0x00007fe81ada17be:   xchg   %ax,%ax
           │                                        │           ╰│  0x00007fe81ada17c0:   jmp    0x00007fe81ada1680
           │                                        │            │  0x00007fe81ada17c5:   lea    0x6(%r8),%r11d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                        │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
           │                                        │            │  0x00007fe81ada17c9:   mov    %ecx,%r9d
           │                                        │            │  0x00007fe81ada17cc:   mov    %r11d,%r8d
           │                                        │            ╰  0x00007fe81ada17cf:   jmp    0x00007fe81ada1680
   0.01%   │                                        ↘               0x00007fe81ada17d4:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
           │                                                        0x00007fe81ada17d7:   mov    0x10(%rsp),%rbp
   0.00%   │                                                        0x00007fe81ada17dc:   add    $0x18,%rsp
           │                                                        0x00007fe81ada17e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                                                        0x00007fe81ada17e7:   ja     0x00007fe81ada188a
   0.02%   │                                                        0x00007fe81ada17ed:   ret    
           ↘                                                        0x00007fe81ada17ee:   movl   $0xffffffed,0x484(%r15)      ;*invokevirtual ordinal {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@3 (line 134)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                                                                    0x00007fe81ada17f9:   movq   $0x14,0x490(%r15)
                                                                    0x00007fe81ada1804:   call   0x00007fe81a6ff17a           ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
                                                                                                                              ;   {runtime_call DeoptimizationBlob}
                                                                    0x00007fe81ada1809:   nopl   0x0(%rax,%rax,1)             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
....................................................................................................
  94.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.86%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1062 
   0.75%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%        hsdis-amd64.so  print_insn 
   2.34%  <...other 356 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.86%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1062 
   4.09%                kernel  [unknown] 
   0.08%                        <unknown> 
   0.06%             libc.so.6  __vfprintf_internal 
   0.06%        hsdis-amd64.so  print_insn 
   0.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1083 
   0.05%             libjvm.so  defaultStream::hold 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  RelocIterator::initialize 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fflush 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  syscall 
   0.39%  <...other 126 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.92%        jvmci, level 4
   4.09%                kernel
   0.44%             libjvm.so
   0.34%             libc.so.6
   0.08%        hsdis-amd64.so
   0.08%                      
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%           c1, level 3
   0.00%        perf-19787.map
   0.00%                [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:10

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

Benchmark                                   (branches)  Mode  Cnt  Score   Error  Units
EnumSwitchBenchmark.chained_ifs                     12  avgt    5  8.870 ± 0.476  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt         NaN            ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5  6.378 ± 0.156  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt         NaN            ---
EnumSwitchBenchmark.switch_statements               12  avgt    5  6.533 ± 0.246  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt         NaN            ---
