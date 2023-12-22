# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 12.375 ns/op
# Warmup Iteration   2: 11.924 ns/op
# Warmup Iteration   3: 11.634 ns/op
# Warmup Iteration   4: 10.772 ns/op
# Warmup Iteration   5: 10.834 ns/op
Iteration   1: 10.795 ns/op
Iteration   2: 10.808 ns/op
Iteration   3: 10.876 ns/op
Iteration   4: 10.866 ns/op
Iteration   5: 11.208 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  10.911 ±(99.9%) 0.655 ns/op [Average]
  (min, avg, max) = (10.795, 10.911, 11.208), stdev = 0.170
  CI (99.9%): [10.256, 11.566] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 203322 total address lines.
Perf output processed (skipped 86.997 seconds):
 Column 1: cycles (51329 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1062 

                                                  #           [sp+0x20]  (sp of caller)
                                                  0x00007f15a31909e0:   mov    0x8(%rsi),%r10d
                                                  0x00007f15a31909e4:   movabs $0x7f151f000000,%r12
                                                  0x00007f15a31909ee:   add    %r12,%r10
                                                  0x00007f15a31909f1:   xor    %r12,%r12
                                                  0x00007f15a31909f4:   cmp    %r10,%rax
                                                  0x00007f15a31909f7:   jne    0x00007f15a2af9080           ;   {runtime_call ic_miss_stub}
                                                  0x00007f15a31909fd:   data16 xchg %ax,%ax
                                                [Verified Entry Point]
                                                  0x00007f15a3190a00:   mov    %eax,-0x14000(%rsp)
   0.01%                                          0x00007f15a3190a07:   sub    $0x18,%rsp
   0.00%                                          0x00007f15a3190a0b:   nop
                                                  0x00007f15a3190a0c:   cmpl   $0x1,0x20(%r15)
   0.00%                                          0x00007f15a3190a14:   jne    0x00007f15a3190d90
                                                  0x00007f15a3190a1a:   mov    %rbp,0x10(%rsp)
                                                  0x00007f15a3190a1f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@0 (line 124)
                                                  0x00007f15a3190a22:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f15a3190db4
   0.01%                                          0x00007f15a3190a2a:   test   %r10d,%r10d
                                                  0x00007f15a3190a2d:   je     0x00007f15a3190d18           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.01%                                          0x00007f15a3190a33:   mov    0x10(,%rax,8),%r11d          ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
   0.00%                                          0x00007f15a3190a3b:   nopl   0x0(%rax,%rax,1)
                                                  0x00007f15a3190a40:   cmp    $0xffda6f0a,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37850})}
          ╭                                       0x00007f15a3190a47:   je     0x00007f15a3190c92
   0.01%  │                                       0x00007f15a3190a4d:   cmp    $0xffda6ef8,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed377c0})}
          │╭                                      0x00007f15a3190a54:   je     0x00007f15a3190c9d
          ││                                      0x00007f15a3190a5a:   nopw   0x0(%rax,%rax,1)
          ││                                      0x00007f15a3190a60:   cmp    $0xffda6f14,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed378a0})}
          ││╭                                     0x00007f15a3190a67:   je     0x00007f15a3190ca8
          │││                                     0x00007f15a3190a6d:   cmp    $0xffda6f01,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37808})}
          │││╭                                    0x00007f15a3190a74:   je     0x00007f15a3190cb3
          ││││                                    0x00007f15a3190a7a:   nopw   0x0(%rax,%rax,1)
          ││││                                    0x00007f15a3190a80:   cmp    $0xffda6f27,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37938})}
          ││││╭                                   0x00007f15a3190a87:   je     0x00007f15a3190cbe
          │││││                                   0x00007f15a3190a8d:   cmp    $0xffda6f43,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37a18})}
          │││││                                   0x00007f15a3190a94:   je     0x00007f15a3190cd4
          │││││                                   0x00007f15a3190a9a:   nopw   0x0(%rax,%rax,1)
          │││││                                   0x00007f15a3190aa0:   cmp    $0xffda6f5e,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37af0})}
          │││││╭                                  0x00007f15a3190aa7:   je     0x00007f15a3190cc9
          ││││││                                  0x00007f15a3190aad:   cmp    $0xffda6f4c,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37a60})}
          ││││││                                  0x00007f15a3190ab4:   je     0x00007f15a3190cdf
          ││││││                                  0x00007f15a3190aba:   nopw   0x0(%rax,%rax,1)
          ││││││                                  0x00007f15a3190ac0:   cmp    $0xffda6f1e,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed378f0})}
          ││││││                                  0x00007f15a3190ac7:   je     0x00007f15a3190cf5
          ││││││                                  0x00007f15a3190acd:   cmp    $0xffda6f30,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37980})}
          ││││││                                  0x00007f15a3190ad4:   je     0x00007f15a3190cea           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││││││                                  0x00007f15a3190ada:   nopw   0x0(%rax,%rax,1)
          ││││││                                  0x00007f15a3190ae0:   cmp    $0xffda6f55,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37aa8})}
          ││││││                                  0x00007f15a3190ae7:   jne    0x00007f15a3190d00           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ││││││                                  0x00007f15a3190aed:   mov    $0xb,%r11d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.02%  ││││││                          ↗↗↗↗↗↗  0x00007f15a3190af3:   mov    %r10d,%r8d
          ││││││                          ││││││  0x00007f15a3190af6:   dec    %r8d
          ││││││                          ││││││  0x00007f15a3190af9:   movslq %r8d,%r8
          ││││││                          ││││││  0x00007f15a3190afc:   mov    %r10d,%r9d
   0.01%  ││││││                          ││││││  0x00007f15a3190aff:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││││││                          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
          ││││││                          ││││││  0x00007f15a3190b03:   cmp    %r8,%r9
          ││││││╭                         ││││││  0x00007f15a3190b06:   ja     0x00007f15a3190b16
          │││││││                         ││││││  0x00007f15a3190b0c:   cmp    $0x2,%r10d
          │││││││                         ││││││  0x00007f15a3190b10:   jae    0x00007f15a3190d48           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││││                         ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
          ││││││↘                         ││││││  0x00007f15a3190b16:   mov    %r11d,%r8d
          ││││││                          ││││││  0x00007f15a3190b19:   mov    $0x1,%r11d
   0.01%  ││││││                          ││││││  0x00007f15a3190b1f:   nop
          ││││││ ╭                        ││││││  0x00007f15a3190b20:   jmp    0x00007f15a3190bf9           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │                        ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
          ││││││ │                        ││││││  0x00007f15a3190b25:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││││ │                        ││││││  0x00007f15a3190b30:   data16 data16 xchg %ax,%ax
          ││││││ │                        ││││││  0x00007f15a3190b34:   nopl   0x0(%rax,%rax,1)
          ││││││ │                        ││││││  0x00007f15a3190b3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │                        ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
  10.12%  ││││││ │           ↗            ││││││  0x00007f15a3190b40:   mov    0x10(%rax,%r11,4),%r9d
  22.77%  ││││││ │           │            ││││││  0x00007f15a3190b45:   cmp    $0xffda6f0a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37850})}
          ││││││ │╭          │            ││││││  0x00007f15a3190b4c:   je     0x00007f15a3190c0e
   8.64%  ││││││ ││          │            ││││││  0x00007f15a3190b52:   cmp    $0xffda6ef8,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed377c0})}
          ││││││ ││╭         │            ││││││  0x00007f15a3190b59:   je     0x00007f15a3190c16
   6.68%  ││││││ │││         │            ││││││  0x00007f15a3190b5f:   nop
   0.07%  ││││││ │││         │            ││││││  0x00007f15a3190b60:   cmp    $0xffda6f14,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed378a0})}
   0.00%  ││││││ │││╭        │            ││││││  0x00007f15a3190b67:   je     0x00007f15a3190c1e
   8.83%  ││││││ ││││        │            ││││││  0x00007f15a3190b6d:   cmp    $0xffda6f01,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37808})}
          ││││││ ││││╭       │            ││││││  0x00007f15a3190b74:   je     0x00007f15a3190c26
   0.12%  ││││││ │││││       │            ││││││  0x00007f15a3190b7a:   nopw   0x0(%rax,%rax,1)
   2.27%  ││││││ │││││       │            ││││││  0x00007f15a3190b80:   cmp    $0xffda6f27,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37938})}
          ││││││ │││││╭      │            ││││││  0x00007f15a3190b87:   je     0x00007f15a3190c2e
   0.13%  ││││││ ││││││      │            ││││││  0x00007f15a3190b8d:   cmp    $0xffda6f43,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37a18})}
          ││││││ ││││││╭     │            ││││││  0x00007f15a3190b94:   je     0x00007f15a3190c3e
   4.35%  ││││││ │││││││     │            ││││││  0x00007f15a3190b9a:   nopw   0x0(%rax,%rax,1)
   0.04%  ││││││ │││││││     │            ││││││  0x00007f15a3190ba0:   cmp    $0xffda6f5e,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37af0})}
          ││││││ │││││││╭    │            ││││││  0x00007f15a3190ba7:   je     0x00007f15a3190c36
   2.72%  ││││││ ││││││││    │            ││││││  0x00007f15a3190bad:   cmp    $0xffda6f4c,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37a60})}
          ││││││ ││││││││╭   │            ││││││  0x00007f15a3190bb4:   je     0x00007f15a3190c4e
   0.13%  ││││││ │││││││││   │            ││││││  0x00007f15a3190bba:   nopw   0x0(%rax,%rax,1)
   2.14%  ││││││ │││││││││   │            ││││││  0x00007f15a3190bc0:   cmp    $0xffda6f1e,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed378f0})}
          ││││││ │││││││││╭  │            ││││││  0x00007f15a3190bc7:   je     0x00007f15a3190c56
   0.07%  ││││││ ││││││││││  │            ││││││  0x00007f15a3190bcd:   cmp    $0xffda6f30,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37980})}
          ││││││ ││││││││││╭ │            ││││││  0x00007f15a3190bd4:   je     0x00007f15a3190c46           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││││││ │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││ │││││││││││ │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.93%  ││││││ │││││││││││ │            ││││││  0x00007f15a3190bda:   nopw   0x0(%rax,%rax,1)
   0.04%  ││││││ │││││││││││ │            ││││││  0x00007f15a3190be0:   cmp    $0xffda6f55,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed37aa8})}
          ││││││ │││││││││││╭│            ││││││  0x00007f15a3190be7:   jne    0x00007f15a3190c5e           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││││││││            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          ││││││ │││││││││││││            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.08%  ││││││ │││││││││││││            ││││││  0x00007f15a3190bed:   mov    $0xb,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││││││││            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││ │││││││││││││            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.58%  ││││││ │││││││││││││ ↗↗↗↗↗↗↗↗↗↗↗││││││  0x00007f15a3190bf3:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││││││││ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   3.63%  ││││││ │││││││││││││ │││││││││││││││││  0x00007f15a3190bf6:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││││││││ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   1.12%  ││││││ ↘││││││││││││ │││││││││││││││││  0x00007f15a3190bf9:   nopl   0x0(%rax)
   4.25%  ││││││  ││││││││││││ │││││││││││││││││  0x00007f15a3190c00:   cmp    %r11d,%r10d
   0.00%  ││││││  │││││││││││╰ │││││││││││││││││  0x00007f15a3190c03:   jg     0x00007f15a3190b40
   0.17%  ││││││  │││││││││││ ╭│││││││││││││││││  0x00007f15a3190c09:   jmp    0x00007f15a3190c78           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││  │││││││││││ ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.87%  ││││││  ↘││││││││││ ││││││││││││││││││  0x00007f15a3190c0e:   mov    $0x3,%r9d
   0.01%  ││││││   ││││││││││ │╰││││││││││││││││  0x00007f15a3190c14:   jmp    0x00007f15a3190bf3
   0.01%  ││││││   ↘│││││││││ │ ││││││││││││││││  0x00007f15a3190c16:   mov    $0x1,%r9d
   0.01%  ││││││    │││││││││ │ ╰│││││││││││││││  0x00007f15a3190c1c:   jmp    0x00007f15a3190bf3
   0.11%  ││││││    ↘││││││││ │  │││││││││││││││  0x00007f15a3190c1e:   mov    $0x4,%r9d
   0.01%  ││││││     ││││││││ │  ╰││││││││││││││  0x00007f15a3190c24:   jmp    0x00007f15a3190bf3
   0.02%  ││││││     ↘│││││││ │   ││││││││││││││  0x00007f15a3190c26:   mov    $0x2,%r9d
   0.69%  ││││││      │││││││ │   ╰│││││││││││││  0x00007f15a3190c2c:   jmp    0x00007f15a3190bf3
   0.01%  ││││││      ↘││││││ │    │││││││││││││  0x00007f15a3190c2e:   mov    $0x6,%r9d
   0.66%  ││││││       ││││││ │    ╰││││││││││││  0x00007f15a3190c34:   jmp    0x00007f15a3190bf3
   0.02%  ││││││       │↘││││ │     ││││││││││││  0x00007f15a3190c36:   mov    $0xc,%r9d
   0.06%  ││││││       │ ││││ │     ╰│││││││││││  0x00007f15a3190c3c:   jmp    0x00007f15a3190bf3
   0.16%  ││││││       ↘ ││││ │      │││││││││││  0x00007f15a3190c3e:   mov    $0x9,%r9d
   0.02%  ││││││         ││││ │      ╰││││││││││  0x00007f15a3190c44:   jmp    0x00007f15a3190bf3
   1.32%  ││││││         ││↘│ │       ││││││││││  0x00007f15a3190c46:   mov    $0x7,%r9d
   0.08%  ││││││         ││ │ │       ╰│││││││││  0x00007f15a3190c4c:   jmp    0x00007f15a3190bf3
   0.04%  ││││││         ↘│ │ │        │││││││││  0x00007f15a3190c4e:   mov    $0xa,%r9d
   0.80%  ││││││          │ │ │        ╰││││││││  0x00007f15a3190c54:   jmp    0x00007f15a3190bf3
   0.03%  ││││││          ↘ │ │         ││││││││  0x00007f15a3190c56:   mov    $0x5,%r9d
   0.05%  ││││││            │ │         ╰│││││││  0x00007f15a3190c5c:   jmp    0x00007f15a3190bf3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││            │ │          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││            │ │          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.28%  ││││││            ↘ │          │││││││  0x00007f15a3190c5e:   xchg   %ax,%ax
   0.02%  ││││││              │          │││││││  0x00007f15a3190c60:   cmp    $0xffda6f39,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fed379c8})}
          ││││││              │          │││││││  0x00007f15a3190c67:   jne    0x00007f15a3190d25           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││              │          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
          ││││││              │          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.05%  ││││││              │          │││││││  0x00007f15a3190c6d:   mov    $0x8,%r9d
   0.03%  ││││││              │          ╰││││││  0x00007f15a3190c73:   jmp    0x00007f15a3190bf3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││              │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          ││││││              │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.06%  ││││││              ↘           ││││││  0x00007f15a3190c78:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││                          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
   0.01%  ││││││                          ││││││  0x00007f15a3190c7b:   mov    0x10(%rsp),%rbp
   0.08%  ││││││                          ││││││  0x00007f15a3190c80:   add    $0x18,%rsp
   0.00%  ││││││                          ││││││  0x00007f15a3190c84:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││││││                          ││││││  0x00007f15a3190c8b:   ja     0x00007f15a3190da0
   0.04%  ││││││                          ││││││  0x00007f15a3190c91:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││││                          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
          ││││││                          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
          ↘│││││                          ││││││  0x00007f15a3190c92:   mov    $0x3,%r11d
           │││││                          ╰│││││  0x00007f15a3190c98:   jmp    0x00007f15a3190af3
   0.01%   ↘││││                           │││││  0x00007f15a3190c9d:   mov    $0x1,%r11d
            ││││                           ╰││││  0x00007f15a3190ca3:   jmp    0x00007f15a3190af3
            ↘│││                            ││││  0x00007f15a3190ca8:   mov    $0x4,%r11d
             │││                            ╰│││  0x00007f15a3190cae:   jmp    0x00007f15a3190af3
             ↘││                             │││  0x00007f15a3190cb3:   mov    $0x2,%r11d
              ││                             ╰││  0x00007f15a3190cb9:   jmp    0x00007f15a3190af3
              ↘│                              ││  0x00007f15a3190cbe:   mov    $0x6,%r11d
               │                              ╰│  0x00007f15a3190cc4:   jmp    0x00007f15a3190af3
               ↘                               │  0x00007f15a3190cc9:   mov    $0xc,%r11d
                                               ╰  0x00007f15a3190ccf:   jmp    0x00007f15a3190af3
                                                  0x00007f15a3190cd4:   mov    $0x9,%r11d
....................................................................................................
  94.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.53%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1062 
   0.68%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1087 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   2.26%  <...other 361 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.53%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 1062 
   4.49%                kernel  [unknown] 
   0.09%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1087 
   0.05%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  xmlStream::write_text 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libjvm.so  relocInfo::initialize 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __strcmp_avx2 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%                        <unknown> 
   0.45%  <...other 162 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.61%        jvmci, level 4
   4.49%                kernel
   0.40%             libjvm.so
   0.26%             libc.so.6
   0.12%   libjvmcicompiler.so
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 9.100 ns/op
# Warmup Iteration   2: 8.809 ns/op
# Warmup Iteration   3: 8.773 ns/op
# Warmup Iteration   4: 8.739 ns/op
# Warmup Iteration   5: 8.758 ns/op
Iteration   1: 8.697 ns/op
Iteration   2: 8.724 ns/op
Iteration   3: 8.723 ns/op
Iteration   4: 8.790 ns/op
Iteration   5: 8.730 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  8.733 ±(99.9%) 0.132 ns/op [Average]
  (min, avg, max) = (8.697, 8.733, 8.790), stdev = 0.034
  CI (99.9%): [8.600, 8.865] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 219405 total address lines.
Perf output processed (skipped 84.468 seconds):
 Column 1: cycles (51364 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1061 

                                                                  #           [sp+0x20]  (sp of caller)
                                                                  0x00007ff0f71923a0:   mov    0x8(%rsi),%r10d
                                                                  0x00007ff0f71923a4:   movabs $0x7ff073000000,%r12
                                                                  0x00007ff0f71923ae:   add    %r12,%r10
                                                                  0x00007ff0f71923b1:   xor    %r12,%r12
                                                                  0x00007ff0f71923b4:   cmp    %r10,%rax
                                                                  0x00007ff0f71923b7:   jne    0x00007ff0f6af9080           ;   {runtime_call ic_miss_stub}
                                                                  0x00007ff0f71923bd:   data16 xchg %ax,%ax
                                                                [Verified Entry Point]
                                                                  0x00007ff0f71923c0:   mov    %eax,-0x14000(%rsp)
   0.01%                                                          0x00007ff0f71923c7:   sub    $0x18,%rsp
                                                                  0x00007ff0f71923cb:   nop
                                                                  0x00007ff0f71923cc:   cmpl   $0x1,0x20(%r15)
   0.01%                                                          0x00007ff0f71923d4:   jne    0x00007ff0f719283e
                                                                  0x00007ff0f71923da:   mov    %rbp,0x10(%rsp)
                                                                  0x00007ff0f71923df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@0 (line 113)
                                                                  0x00007ff0f71923e2:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007ff0f7192866
   0.01%                                                          0x00007ff0f71923ea:   test   %r10d,%r10d
                                                                  0x00007ff0f71923ed:   je     0x00007ff0f71927ca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.01%                                                          0x00007ff0f71923f3:   mov    0x10(,%rax,8),%r11d          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@0 (line 113)
                                                                  0x00007ff0f71923fb:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007ff0f719288d
   0.06%                                                          0x00007ff0f7192403:   cmp    $0x6,%r11d
          ╭                                                       0x00007ff0f7192407:   jge    0x00007ff0f7192458
   0.02%  │                                                       0x00007ff0f719240d:   cmp    $0x3,%r11d
          │╭                                                      0x00007ff0f7192411:   jge    0x00007ff0f719243f
   0.01%  ││                                                      0x00007ff0f7192417:   cmp    $0x2,%r11d
          ││                                                      0x00007ff0f719241b:   nopl   0x0(%rax,%rax,1)
          ││╭                                                     0x00007ff0f7192420:   jge    0x00007ff0f7192767
   0.01%  │││                                                     0x00007ff0f7192426:   cmp    $0x0,%r11d
          │││╭                                                    0x00007ff0f719242a:   je     0x00007ff0f719275c
          ││││                                                    0x00007ff0f7192430:   cmp    $0x1,%r11d
          ││││╭                                                   0x00007ff0f7192434:   je     0x00007ff0f7192751
          │││││                                                   0x00007ff0f719243a:   jmp    0x00007ff0f719281b
          │↘│││                                                   0x00007ff0f719243f:   cmp    $0x5,%r11d
          │ │││                                                   0x00007ff0f7192443:   jge    0x00007ff0f71927bf
          │ │││                                                   0x00007ff0f7192449:   cmp    $0x3,%r11d
          │ │││╭                                                  0x00007ff0f719244d:   je     0x00007ff0f7192538
          │ ││││                                                  0x00007ff0f7192453:   jmp    0x00007ff0f71927b4
          ↘ ││││                                                  0x00007ff0f7192458:   cmp    $0xa,%r11d
            ││││                                                  0x00007ff0f719245c:   nopl   0x0(%rax)
            ││││╭                                                 0x00007ff0f7192460:   jge    0x00007ff0f719248b
            │││││                                                 0x00007ff0f7192466:   cmp    $0x9,%r11d
            │││││╭                                                0x00007ff0f719246a:   jge    0x00007ff0f7192788
            ││││││                                                0x00007ff0f7192470:   cmp    $0x8,%r11d
            ││││││                                                0x00007ff0f7192474:   jge    0x00007ff0f7192793
            ││││││                                                0x00007ff0f719247a:   cmp    $0x6,%r11d
            ││││││                                                0x00007ff0f719247e:   xchg   %ax,%ax
            ││││││                                                0x00007ff0f7192480:   je     0x00007ff0f71927a9
            ││││││                                                0x00007ff0f7192486:   jmp    0x00007ff0f719279e
            ││││↘│                                                0x00007ff0f719248b:   cmp    $0xc,%r11d
            ││││ │╭                                               0x00007ff0f719248f:   jge    0x00007ff0f71924a5
            ││││ ││                                               0x00007ff0f7192495:   cmp    $0xa,%r11d
            ││││ ││╭                                              0x00007ff0f7192499:   je     0x00007ff0f719277d
            ││││ │││                                              0x00007ff0f719249f:   nop
            ││││ │││╭                                             0x00007ff0f71924a0:   jmp    0x00007ff0f7192772
            ││││ │↘││                                             0x00007ff0f71924a5:   cmp    $0x12,%r11d
            ││││ │ ││╭                                            0x00007ff0f71924a9:   jge    0x00007ff0f71924ee
            ││││ │ │││                                            0x00007ff0f71924af:   cmp    $0xf,%r11d
            ││││ │ │││╭                                           0x00007ff0f71924b3:   jge    0x00007ff0f71924d5           ;   {no_reloc}
            ││││ │ ││││                                           0x00007ff0f71924b9:   cmp    $0xe,%r11d
            ││││ │ ││││                                           0x00007ff0f71924bd:   data16 xchg %ax,%ax
            ││││ │ ││││                                           0x00007ff0f71924c0:   jge    0x00007ff0f719281b
            ││││ │ ││││                                           0x00007ff0f71924c6:   cmp    $0xc,%r11d
            ││││ │ ││││                                           0x00007ff0f71924ca:   je     0x00007ff0f719281b
            ││││ │ ││││                                           0x00007ff0f71924d0:   jmp    0x00007ff0f719281b
            ││││ │ │││↘                                           0x00007ff0f71924d5:   cmp    $0x11,%r11d
            ││││ │ │││                                            0x00007ff0f71924d9:   jge    0x00007ff0f719281b
            ││││ │ │││                                            0x00007ff0f71924df:   cmp    $0xf,%r11d
            ││││ │ │││                                            0x00007ff0f71924e3:   je     0x00007ff0f719281b
            ││││ │ │││                                            0x00007ff0f71924e9:   jmp    0x00007ff0f719281b
            ││││ │ ││↘                                            0x00007ff0f71924ee:   cmp    $0x15,%r11d
            ││││ │ ││  ╭                                          0x00007ff0f71924f2:   jge    0x00007ff0f7192515
            ││││ │ ││  │                                          0x00007ff0f71924f8:   cmp    $0x14,%r11d
            ││││ │ ││  │                                          0x00007ff0f71924fc:   nopl   0x0(%rax)
            ││││ │ ││  │                                          0x00007ff0f7192500:   jge    0x00007ff0f719281b
            ││││ │ ││  │                                          0x00007ff0f7192506:   cmp    $0x12,%r11d
            ││││ │ ││  │                                          0x00007ff0f719250a:   je     0x00007ff0f719281b
            ││││ │ ││  │                                          0x00007ff0f7192510:   jmp    0x00007ff0f719281b
            ││││ │ ││  ↘                                          0x00007ff0f7192515:   cmp    $0x17,%r11d
            ││││ │ ││                                             0x00007ff0f7192519:   jg     0x00007ff0f719281b
            ││││ │ ││                                             0x00007ff0f719251f:   cmp    $0x17,%r11d
            ││││ │ ││                                             0x00007ff0f7192523:   jge    0x00007ff0f719281b
            ││││ │ ││                                             0x00007ff0f7192529:   cmp    $0x15,%r11d
            ││││ │ ││                                             0x00007ff0f719252d:   je     0x00007ff0f719281b
            ││││ │ ││                                             0x00007ff0f7192533:   jmp    0x00007ff0f719281b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            ││││ │ ││                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
            ││││ │ ││                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
            │││↘ │ ││                                             0x00007ff0f7192538:   mov    $0x4,%r11d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
            │││  │ ││                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.01%    │││  │ ││                                     ↗↗↗↗↗↗  0x00007ff0f719253e:   mov    %r10d,%r8d
   0.00%    │││  │ ││                                     ││││││  0x00007ff0f7192541:   dec    %r8d
            │││  │ ││                                     ││││││  0x00007ff0f7192544:   movslq %r8d,%r8
            │││  │ ││                                     ││││││  0x00007ff0f7192547:   mov    %r10d,%r9d
   0.02%    │││  │ ││                                     ││││││  0x00007ff0f719254a:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││                                     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
            │││  │ ││                                     ││││││  0x00007ff0f719254e:   cmp    %r8,%r9
            │││  │ ││   ╭                                 ││││││  0x00007ff0f7192551:   ja     0x00007ff0f719256a
            │││  │ ││   │                                 ││││││  0x00007ff0f7192557:   nopw   0x0(%rax,%rax,1)
            │││  │ ││   │                                 ││││││  0x00007ff0f7192560:   cmp    $0x2,%r10d
            │││  │ ││   │                                 ││││││  0x00007ff0f7192564:   jae    0x00007ff0f71927d5           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││   │                                 ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
            │││  │ ││   ↘                                 ││││││  0x00007ff0f719256a:   mov    %r11d,%r8d
            │││  │ ││                                     ││││││  0x00007ff0f719256d:   mov    $0x1,%r11d
   0.01%    │││  │ ││    ╭                                ││││││  0x00007ff0f7192573:   jmp    0x00007ff0f71926d1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │                                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
            │││  │ ││    │                                ││││││  0x00007ff0f7192578:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │                                ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
  23.92%    │││  │ ││    │                   ↗            ││││││  0x00007ff0f7192580:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
            │││  │ ││    │                   │            ││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │││  │ ││    │                   │            ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.65%    │││  │ ││    │                   │            ││││││  0x00007ff0f7192585:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007ff0f71928b0
  21.72%    │││  │ ││    │                   │            ││││││  0x00007ff0f719258d:   cmp    $0x6,%r9d
            │││  │ ││    │╭                  │            ││││││  0x00007ff0f7192591:   jge    0x00007ff0f71925e5
   5.36%    │││  │ ││    ││                  │            ││││││  0x00007ff0f7192597:   cmp    $0x3,%r9d
   2.53%    │││  │ ││    ││                  │            ││││││  0x00007ff0f719259b:   nopl   0x0(%rax,%rax,1)
   0.02%    │││  │ ││    ││╭                 │            ││││││  0x00007ff0f71925a0:   jge    0x00007ff0f71925cb
   3.00%    │││  │ ││    │││                 │            ││││││  0x00007ff0f71925a6:   cmp    $0x2,%r9d
            │││  │ ││    │││╭                │            ││││││  0x00007ff0f71925aa:   jge    0x00007ff0f71926ef
   1.03%    │││  │ ││    ││││                │            ││││││  0x00007ff0f71925b0:   cmp    $0x0,%r9d
            │││  │ ││    ││││╭               │            ││││││  0x00007ff0f71925b4:   je     0x00007ff0f71926df           ;   {no_reloc}
   0.14%    │││  │ ││    │││││               │            ││││││  0x00007ff0f71925ba:   cmp    $0x1,%r9d
            │││  │ ││    │││││               │            ││││││  0x00007ff0f71925be:   xchg   %ax,%ax
   0.88%    │││  │ ││    │││││╭              │            ││││││  0x00007ff0f71925c0:   je     0x00007ff0f71926e7
            │││  │ ││    ││││││              │            ││││││  0x00007ff0f71925c6:   jmp    0x00007ff0f71927f8
   1.42%    │││  │ ││    ││↘│││              │            ││││││  0x00007ff0f71925cb:   cmp    $0x5,%r9d
            │││  │ ││    ││ │││╭             │            ││││││  0x00007ff0f71925cf:   jge    0x00007ff0f719272f
   0.15%    │││  │ ││    ││ ││││             │            ││││││  0x00007ff0f71925d5:   cmp    $0x3,%r9d
            │││  │ ││    ││ ││││╭            │            ││││││  0x00007ff0f71925d9:   je     0x00007ff0f71926c5
   0.91%    │││  │ ││    ││ │││││            │            ││││││  0x00007ff0f71925df:   nop
   0.00%    │││  │ ││    ││ │││││╭           │            ││││││  0x00007ff0f71925e0:   jmp    0x00007ff0f719271f
   7.07%    │││  │ ││    │↘ ││││││           │            ││││││  0x00007ff0f71925e5:   cmp    $0xa,%r9d
            │││  │ ││    │  ││││││╭          │            ││││││  0x00007ff0f71925e9:   jge    0x00007ff0f7192615
   0.11%    │││  │ ││    │  │││││││          │            ││││││  0x00007ff0f71925ef:   cmp    $0x9,%r9d
   0.00%    │││  │ ││    │  │││││││╭         │            ││││││  0x00007ff0f71925f3:   jge    0x00007ff0f71926ff
   4.39%    │││  │ ││    │  ││││││││         │            ││││││  0x00007ff0f71925f9:   cmp    $0x8,%r9d
   0.01%    │││  │ ││    │  ││││││││         │            ││││││  0x00007ff0f71925fd:   data16 xchg %ax,%ax
   0.12%    │││  │ ││    │  ││││││││╭        │            ││││││  0x00007ff0f7192600:   jge    0x00007ff0f71926f7
   0.00%    │││  │ ││    │  │││││││││        │            ││││││  0x00007ff0f7192606:   cmp    $0x6,%r9d
   0.00%    │││  │ ││    │  │││││││││╭       │            ││││││  0x00007ff0f719260a:   je     0x00007ff0f7192727
   1.04%    │││  │ ││    │  ││││││││││╭      │            ││││││  0x00007ff0f7192610:   jmp    0x00007ff0f719270f
   2.14%    │││  │ ││    │  ││││││↘││││      │            ││││││  0x00007ff0f7192615:   cmp    $0xc,%r9d
            │││  │ ││    │  ││││││ ││││╭     │            ││││││  0x00007ff0f7192619:   jge    0x00007ff0f719262e
   0.01%    │││  │ ││    │  ││││││ │││││     │            ││││││  0x00007ff0f719261f:   cmp    $0xa,%r9d
            │││  │ ││    │  ││││││ │││││╭    │            ││││││  0x00007ff0f7192623:   je     0x00007ff0f7192707
   0.01%    │││  │ ││    │  ││││││ ││││││╭   │            ││││││  0x00007ff0f7192629:   jmp    0x00007ff0f7192717
            │││  │ ││    │  ││││││ ││││↘││   │            ││││││  0x00007ff0f719262e:   cmp    $0x12,%r9d
            │││  │ ││    │  ││││││ ││││ ││╭  │            ││││││  0x00007ff0f7192632:   jge    0x00007ff0f7192678
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f7192638:   cmp    $0xf,%r9d
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f719263c:   nopl   0x0(%rax)
            │││  │ ││    │  ││││││ ││││ │││╭ │            ││││││  0x00007ff0f7192640:   jge    0x00007ff0f719265f
            │││  │ ││    │  ││││││ ││││ ││││ │            ││││││  0x00007ff0f7192646:   cmp    $0xe,%r9d
            │││  │ ││    │  ││││││ ││││ ││││ │            ││││││  0x00007ff0f719264a:   jge    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││││ │            ││││││  0x00007ff0f7192650:   cmp    $0xc,%r9d
            │││  │ ││    │  ││││││ ││││ ││││ │            ││││││  0x00007ff0f7192654:   je     0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││││ │            ││││││  0x00007ff0f719265a:   jmp    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ │││↘ │            ││││││  0x00007ff0f719265f:   cmp    $0x11,%r9d
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f7192663:   jge    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f7192669:   cmp    $0xf,%r9d
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f719266d:   je     0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ │││  │            ││││││  0x00007ff0f7192673:   jmp    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││↘  │            ││││││  0x00007ff0f7192678:   cmp    $0x15,%r9d
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f719267c:   nopl   0x0(%rax)
            │││  │ ││    │  ││││││ ││││ ││  ╭│            ││││││  0x00007ff0f7192680:   jge    0x00007ff0f719269f
            │││  │ ││    │  ││││││ ││││ ││  ││            ││││││  0x00007ff0f7192686:   cmp    $0x14,%r9d
            │││  │ ││    │  ││││││ ││││ ││  ││            ││││││  0x00007ff0f719268a:   jge    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││  ││            ││││││  0x00007ff0f7192690:   cmp    $0x12,%r9d
            │││  │ ││    │  ││││││ ││││ ││  ││            ││││││  0x00007ff0f7192694:   je     0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││  ││            ││││││  0x00007ff0f719269a:   jmp    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││  ↘│            ││││││  0x00007ff0f719269f:   cmp    $0x17,%r9d
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926a3:   jg     0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926a9:   cmp    $0x17,%r9d
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926ad:   jge    0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926b3:   cmp    $0x15,%r9d                   ;   {no_reloc}
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926b7:   je     0x00007ff0f71927f8
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926bd:   data16 xchg %ax,%ax
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││  0x00007ff0f71926c0:   jmp    0x00007ff0f71927f8           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
            │││  │ ││    │  ││││││ ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.01%    │││  │ ││    │  ││││↘│ ││││ ││   │            ││││││  0x00007ff0f71926c5:   mov    $0x4,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │  ││││ │ ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
            │││  │ ││    │  ││││ │ ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
  10.16%    │││  │ ││    │  ││││ │ ││││ ││   │ ↗↗↗↗↗↗↗↗↗↗↗││││││  0x00007ff0f71926cb:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │  ││││ │ ││││ ││   │ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.07%    │││  │ ││    │  ││││ │ ││││ ││   │ │││││││││││││││││  0x00007ff0f71926ce:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││    │  ││││ │ ││││ ││   │ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.07%    │││  │ ││    ↘  ││││ │ ││││ ││   │ │││││││││││││││││  0x00007ff0f71926d1:   cmp    %r11d,%r10d
   0.00%    │││  │ ││       ││││ │ ││││ ││   ╰ │││││││││││││││││  0x00007ff0f71926d4:   jg     0x00007ff0f7192580
   0.02%    │││  │ ││       ││││ │ ││││ ││    ╭│││││││││││││││││  0x00007ff0f71926da:   jmp    0x00007ff0f7192737           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││       ││││ │ ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.01%    │││  │ ││       │↘││ │ ││││ ││    ││││││││││││││││││  0x00007ff0f71926df:   mov    $0x1,%r9d
   0.00%    │││  │ ││       │ ││ │ ││││ ││    │╰││││││││││││││││  0x00007ff0f71926e5:   jmp    0x00007ff0f71926cb
   0.00%    │││  │ ││       │ ↘│ │ ││││ ││    │ ││││││││││││││││  0x00007ff0f71926e7:   mov    $0x2,%r9d
   0.16%    │││  │ ││       │  │ │ ││││ ││    │ ╰│││││││││││││││  0x00007ff0f71926ed:   jmp    0x00007ff0f71926cb
   0.04%    │││  │ ││       ↘  │ │ ││││ ││    │  │││││││││││││││  0x00007ff0f71926ef:   mov    $0x3,%r9d
   0.07%    │││  │ ││          │ │ ││││ ││    │  ╰││││││││││││││  0x00007ff0f71926f5:   jmp    0x00007ff0f71926cb
   0.05%    │││  │ ││          │ │ │↘││ ││    │   ││││││││││││││  0x00007ff0f71926f7:   mov    $0x9,%r9d
   1.01%    │││  │ ││          │ │ │ ││ ││    │   ╰│││││││││││││  0x00007ff0f71926fd:   jmp    0x00007ff0f71926cb
   1.12%    │││  │ ││          │ │ ↘ ││ ││    │    │││││││││││││  0x00007ff0f71926ff:   mov    $0xa,%r9d
   0.00%    │││  │ ││          │ │   ││ ││    │    ╰││││││││││││  0x00007ff0f7192705:   jmp    0x00007ff0f71926cb
   1.01%    │││  │ ││          │ │   ││ ↘│    │     ││││││││││││  0x00007ff0f7192707:   mov    $0xb,%r9d
   0.00%    │││  │ ││          │ │   ││  │    │     ╰│││││││││││  0x00007ff0f719270d:   jmp    0x00007ff0f71926cb
   0.00%    │││  │ ││          │ │   │↘  │    │      │││││││││││  0x00007ff0f719270f:   mov    $0x8,%r9d
   0.01%    │││  │ ││          │ │   │   │    │      ╰││││││││││  0x00007ff0f7192715:   jmp    0x00007ff0f71926cb
   1.05%    │││  │ ││          │ │   │   ↘    │       ││││││││││  0x00007ff0f7192717:   mov    $0xc,%r9d
   0.01%    │││  │ ││          │ │   │        │       ╰│││││││││  0x00007ff0f719271d:   jmp    0x00007ff0f71926cb
   0.05%    │││  │ ││          │ ↘   │        │        │││││││││  0x00007ff0f719271f:   mov    $0x5,%r9d
   0.04%    │││  │ ││          │     │        │        ╰││││││││  0x00007ff0f7192725:   jmp    0x00007ff0f71926cb
   1.04%    │││  │ ││          │     ↘        │         ││││││││  0x00007ff0f7192727:   mov    $0x7,%r9d
   0.00%    │││  │ ││          │              │         ╰│││││││  0x00007ff0f719272d:   jmp    0x00007ff0f71926cb
   1.10%    │││  │ ││          ↘              │          │││││││  0x00007ff0f719272f:   mov    $0x6,%r9d
   0.00%    │││  │ ││                         │          ╰││││││  0x00007ff0f7192735:   jmp    0x00007ff0f71926cb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││                         │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
            │││  │ ││                         │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.08%    │││  │ ││                         ↘           ││││││  0x00007ff0f7192737:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││  │ ││                                     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
   0.02%    │││  │ ││                                     ││││││  0x00007ff0f719273a:   mov    0x10(%rsp),%rbp
   0.11%    │││  │ ││                                     ││││││  0x00007ff0f719273f:   add    $0x18,%rsp
   0.00%    │││  │ ││                                     ││││││  0x00007ff0f7192743:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │││  │ ││                                     ││││││  0x00007ff0f719274a:   ja     0x00007ff0f719284e
   0.04%    │││  │ ││                                     ││││││  0x00007ff0f7192750:   ret    
            ││↘  │ ││                                     ││││││  0x00007ff0f7192751:   mov    $0x2,%r11d
            ││   │ ││                                     ╰│││││  0x00007ff0f7192757:   jmp    0x00007ff0f719253e
   0.01%    │↘   │ ││                                      │││││  0x00007ff0f719275c:   mov    $0x1,%r11d
            │    │ ││                                      ╰││││  0x00007ff0f7192762:   jmp    0x00007ff0f719253e
            ↘    │ ││                                       ││││  0x00007ff0f7192767:   mov    $0x3,%r11d
                 │ ││                                       ╰│││  0x00007ff0f719276d:   jmp    0x00007ff0f719253e
                 │ │↘                                        │││  0x00007ff0f7192772:   mov    $0xc,%r11d
                 │ │                                         ╰││  0x00007ff0f7192778:   jmp    0x00007ff0f719253e
                 │ ↘                                          ││  0x00007ff0f719277d:   mov    $0xb,%r11d
                 │                                            ╰│  0x00007ff0f7192783:   jmp    0x00007ff0f719253e
                 ↘                                             │  0x00007ff0f7192788:   mov    $0xa,%r11d
                                                               ╰  0x00007ff0f719278e:   jmp    0x00007ff0f719253e
                                                                  0x00007ff0f7192793:   mov    $0x9,%r11d
....................................................................................................
  95.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.19%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1061 
   0.60%                kernel  [unknown] 
   0.36%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1082 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%             libjvm.so  fileStream::write 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   2.06%  <...other 356 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.19%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 1061 
   3.74%                kernel  [unknown] 
   0.19%                        <unknown> 
   0.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1082 
   0.08%             libjvm.so  fileStream::write 
   0.05%             libjvm.so  defaultStream::hold 
   0.05%             libc.so.6  __strchr_avx2 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  xmlStream::write 
   0.02%             libc.so.6  read 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  syscall 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.29%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.31%        jvmci, level 4
   3.74%                kernel
   0.41%             libjvm.so
   0.24%             libc.so.6
   0.19%                      
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%          libjimage.so
   0.00%        perf-18430.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 66.67% complete, ETA 00:02:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.706 ns/op
# Warmup Iteration   2: 9.458 ns/op
# Warmup Iteration   3: 9.445 ns/op
# Warmup Iteration   4: 9.343 ns/op
# Warmup Iteration   5: 9.379 ns/op
Iteration   1: 9.353 ns/op
Iteration   2: 9.427 ns/op
Iteration   3: 9.377 ns/op
Iteration   4: 9.539 ns/op
Iteration   5: 9.356 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  9.410 ±(99.9%) 0.300 ns/op [Average]
  (min, avg, max) = (9.353, 9.410, 9.539), stdev = 0.078
  CI (99.9%): [9.110, 9.711] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 211784 total address lines.
Perf output processed (skipped 83.811 seconds):
 Column 1: cycles (51907 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1071 

                                                                     #           [sp+0x20]  (sp of caller)
                                                                     0x00007f74b718ff20:   mov    0x8(%rsi),%r10d
                                                                     0x00007f74b718ff24:   movabs $0x7f7433000000,%r12
                                                                     0x00007f74b718ff2e:   add    %r12,%r10
                                                                     0x00007f74b718ff31:   xor    %r12,%r12
                                                                     0x00007f74b718ff34:   cmp    %r10,%rax
                                                                     0x00007f74b718ff37:   jne    0x00007f74b6af9080           ;   {runtime_call ic_miss_stub}
                                                                     0x00007f74b718ff3d:   data16 xchg %ax,%ax
                                                                   [Verified Entry Point]
                                                                     0x00007f74b718ff40:   mov    %eax,-0x14000(%rsp)
   0.02%                                                             0x00007f74b718ff47:   sub    $0x18,%rsp
   0.00%                                                             0x00007f74b718ff4b:   nop
                                                                     0x00007f74b718ff4c:   cmpl   $0x1,0x20(%r15)
   0.01%                                                             0x00007f74b718ff54:   jne    0x00007f74b71903c7
   0.00%                                                             0x00007f74b718ff5a:   mov    %rbp,0x10(%rsp)
                                                                     0x00007f74b718ff5f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                               ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@0 (line 102)
                                                                     0x00007f74b718ff62:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f74b71903eb
   0.01%                                                             0x00007f74b718ff6a:   test   %r10d,%r10d
                                                                     0x00007f74b718ff6d:   je     0x00007f74b7190353           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.01%                                                             0x00007f74b718ff73:   mov    0x10(,%rax,8),%r11d          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                                                                               ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@0 (line 102)
                                                                     0x00007f74b718ff7b:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f74b719040e
   0.03%                                                             0x00007f74b718ff83:   cmp    $0x6,%r11d
          ╭                                                          0x00007f74b718ff87:   jge    0x00007f74b718ffd8
   0.01%  │                                                          0x00007f74b718ff8d:   cmp    $0x3,%r11d
          │╭                                                         0x00007f74b718ff91:   jge    0x00007f74b718ffbf
   0.01%  ││                                                         0x00007f74b718ff97:   cmp    $0x2,%r11d
          ││                                                         0x00007f74b718ff9b:   nopl   0x0(%rax,%rax,1)
          ││╭                                                        0x00007f74b718ffa0:   jge    0x00007f74b71902f0
          │││                                                        0x00007f74b718ffa6:   cmp    $0x0,%r11d
          │││╭                                                       0x00007f74b718ffaa:   je     0x00007f74b71902e5
          ││││                                                       0x00007f74b718ffb0:   cmp    $0x1,%r11d
          ││││╭                                                      0x00007f74b718ffb4:   je     0x00007f74b71902d7
          │││││                                                      0x00007f74b718ffba:   jmp    0x00007f74b719035e
          │↘│││                                                      0x00007f74b718ffbf:   cmp    $0x5,%r11d
          │ │││                                                      0x00007f74b718ffc3:   jge    0x00007f74b7190327
          │ │││                                                      0x00007f74b718ffc9:   cmp    $0x3,%r11d
          │ │││╭                                                     0x00007f74b718ffcd:   je     0x00007f74b71900bf
          │ ││││                                                     0x00007f74b718ffd3:   jmp    0x00007f74b7190348
          ↘ ││││                                                     0x00007f74b718ffd8:   cmp    $0xa,%r11d
            ││││                                                     0x00007f74b718ffdc:   nopl   0x0(%rax)
            ││││╭                                                    0x00007f74b718ffe0:   jge    0x00007f74b719000e
            │││││                                                    0x00007f74b718ffe6:   cmp    $0x8,%r11d
            │││││╭                                                   0x00007f74b718ffea:   jge    0x00007f74b718ffff
            ││││││                                                   0x00007f74b718fff0:   cmp    $0x6,%r11d
            ││││││╭                                                  0x00007f74b718fff4:   je     0x00007f74b71902fb
            │││││││╭                                                 0x00007f74b718fffa:   jmp    0x00007f74b719031c
            │││││↘││                                                 0x00007f74b718ffff:   cmp    $0x8,%r11d
            │││││ ││╭                                                0x00007f74b7190003:   je     0x00007f74b7190311
            │││││ │││╭                                               0x00007f74b7190009:   jmp    0x00007f74b7190306
            ││││↘ ││││                                               0x00007f74b719000e:   cmp    $0xc,%r11d
            ││││  ││││╭                                              0x00007f74b7190012:   jge    0x00007f74b719002b
            ││││  │││││                                              0x00007f74b7190018:   cmp    $0xa,%r11d
            ││││  │││││                                              0x00007f74b719001c:   nopl   0x0(%rax)
            ││││  │││││                                              0x00007f74b7190020:   je     0x00007f74b719033d
            ││││  │││││                                              0x00007f74b7190026:   jmp    0x00007f74b7190332
            ││││  ││││↘                                              0x00007f74b719002b:   cmp    $0x12,%r11d
            ││││  ││││ ╭                                             0x00007f74b719002f:   jge    0x00007f74b7190075
            ││││  ││││ │                                             0x00007f74b7190035:   cmp    $0xf,%r11d                   ;   {no_reloc}
            ││││  ││││ │╭                                            0x00007f74b7190039:   jge    0x00007f74b7190058
            ││││  ││││ ││                                            0x00007f74b719003f:   cmp    $0xe,%r11d
            ││││  ││││ ││                                            0x00007f74b7190043:   jge    0x00007f74b719035e
            ││││  ││││ ││                                            0x00007f74b7190049:   cmp    $0xc,%r11d
            ││││  ││││ ││                                            0x00007f74b719004d:   je     0x00007f74b719035e
            ││││  ││││ ││                                            0x00007f74b7190053:   jmp    0x00007f74b719035e
            ││││  ││││ │↘                                            0x00007f74b7190058:   cmp    $0x11,%r11d
            ││││  ││││ │                                             0x00007f74b719005c:   nopl   0x0(%rax)
            ││││  ││││ │                                             0x00007f74b7190060:   jge    0x00007f74b719035e
            ││││  ││││ │                                             0x00007f74b7190066:   cmp    $0xf,%r11d
            ││││  ││││ │                                             0x00007f74b719006a:   je     0x00007f74b719035e
            ││││  ││││ │                                             0x00007f74b7190070:   jmp    0x00007f74b719035e
            ││││  ││││ ↘                                             0x00007f74b7190075:   cmp    $0x15,%r11d
            ││││  ││││   ╭                                           0x00007f74b7190079:   jge    0x00007f74b7190098
            ││││  ││││   │                                           0x00007f74b719007f:   cmp    $0x14,%r11d
            ││││  ││││   │                                           0x00007f74b7190083:   jge    0x00007f74b719035e
            ││││  ││││   │                                           0x00007f74b7190089:   cmp    $0x12,%r11d
            ││││  ││││   │                                           0x00007f74b719008d:   je     0x00007f74b719035e
            ││││  ││││   │                                           0x00007f74b7190093:   jmp    0x00007f74b719035e
            ││││  ││││   ↘                                           0x00007f74b7190098:   cmp    $0x17,%r11d
            ││││  ││││                                               0x00007f74b719009c:   nopl   0x0(%rax)
            ││││  ││││                                               0x00007f74b71900a0:   jg     0x00007f74b719035e
            ││││  ││││                                               0x00007f74b71900a6:   cmp    $0x17,%r11d
            ││││  ││││                                               0x00007f74b71900aa:   jge    0x00007f74b719035e
            ││││  ││││                                               0x00007f74b71900b0:   cmp    $0x15,%r11d
            ││││  ││││                                               0x00007f74b71900b4:   je     0x00007f74b719035e
            ││││  ││││                                               0x00007f74b71900ba:   jmp    0x00007f74b719035e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            ││││  ││││                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
            ││││  ││││                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
            │││↘  ││││                                               0x00007f74b71900bf:   mov    $0x4,%r11d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
            │││   ││││                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.01%    │││   ││││                                       ↗↗↗↗↗↗  0x00007f74b71900c5:   mov    %r10d,%r8d
            │││   ││││                                       ││││││  0x00007f74b71900c8:   dec    %r8d
            │││   ││││                                       ││││││  0x00007f74b71900cb:   movslq %r8d,%r8
            │││   ││││                                       ││││││  0x00007f74b71900ce:   mov    %r10d,%r9d
   0.01%    │││   ││││                                       ││││││  0x00007f74b71900d1:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││                                       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@3 (line 103)
            │││   ││││                                       ││││││  0x00007f74b71900d5:   cmp    %r8,%r9
            │││   ││││    ╭                                  ││││││  0x00007f74b71900d8:   ja     0x00007f74b71900ea
            │││   ││││    │                                  ││││││  0x00007f74b71900de:   xchg   %ax,%ax
            │││   ││││    │                                  ││││││  0x00007f74b71900e0:   cmp    $0x2,%r10d
            │││   ││││    │                                  ││││││  0x00007f74b71900e4:   jae    0x00007f74b71903a4           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││    │                                  ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@22 (line 103)
            │││   ││││    ↘                                  ││││││  0x00007f74b71900ea:   mov    %r11d,%r8d
            │││   ││││                                       ││││││  0x00007f74b71900ed:   mov    $0x1,%r11d
   0.01%    │││   ││││     ╭                                 ││││││  0x00007f74b71900f3:   jmp    0x00007f74b7190257           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │                                 ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
            │││   ││││     │                                 ││││││  0x00007f74b71900f8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │                                 ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
  22.94%    │││   ││││     │                    ↗            ││││││  0x00007f74b7190100:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
            │││   ││││     │                    │            ││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │││   ││││     │                    │            ││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.98%    │││   ││││     │                    │            ││││││  0x00007f74b7190105:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f74b7190431
  22.65%    │││   ││││     │                    │            ││││││  0x00007f74b719010d:   cmp    $0x6,%r9d
            │││   ││││     │╭                   │            ││││││  0x00007f74b7190111:   jge    0x00007f74b7190165
   5.64%    │││   ││││     ││                   │            ││││││  0x00007f74b7190117:   cmp    $0x3,%r9d
   1.32%    │││   ││││     ││                   │            ││││││  0x00007f74b719011b:   nopl   0x0(%rax,%rax,1)
   0.01%    │││   ││││     ││╭                  │            ││││││  0x00007f74b7190120:   jge    0x00007f74b719014b
   2.75%    │││   ││││     │││                  │            ││││││  0x00007f74b7190126:   cmp    $0x2,%r9d
            │││   ││││     │││╭                 │            ││││││  0x00007f74b719012a:   jge    0x00007f74b7190275
   0.06%    │││   ││││     ││││                 │            ││││││  0x00007f74b7190130:   cmp    $0x0,%r9d
            │││   ││││     ││││╭                │            ││││││  0x00007f74b7190134:   je     0x00007f74b7190265           ;   {no_reloc}
   0.17%    │││   ││││     │││││                │            ││││││  0x00007f74b719013a:   cmp    $0x1,%r9d
   0.00%    │││   ││││     │││││                │            ││││││  0x00007f74b719013e:   xchg   %ax,%ax
   0.82%    │││   ││││     │││││╭               │            ││││││  0x00007f74b7190140:   je     0x00007f74b719026d
            │││   ││││     ││││││               │            ││││││  0x00007f74b7190146:   jmp    0x00007f74b7190381
   2.16%    │││   ││││     ││↘│││               │            ││││││  0x00007f74b719014b:   cmp    $0x5,%r9d
            │││   ││││     ││ │││╭              │            ││││││  0x00007f74b719014f:   jge    0x00007f74b71902b5
   0.18%    │││   ││││     ││ ││││              │            ││││││  0x00007f74b7190155:   cmp    $0x3,%r9d
            │││   ││││     ││ ││││╭             │            ││││││  0x00007f74b7190159:   je     0x00007f74b719024b
   0.06%    │││   ││││     ││ │││││             │            ││││││  0x00007f74b719015f:   nop
   0.00%    │││   ││││     ││ │││││╭            │            ││││││  0x00007f74b7190160:   jmp    0x00007f74b71902a5
   7.86%    │││   ││││     │↘ ││││││            │            ││││││  0x00007f74b7190165:   cmp    $0xa,%r9d
            │││   ││││     │  ││││││╭           │            ││││││  0x00007f74b7190169:   jge    0x00007f74b719019a
   0.55%    │││   ││││     │  │││││││           │            ││││││  0x00007f74b719016f:   cmp    $0x8,%r9d
            │││   ││││     │  │││││││╭          │            ││││││  0x00007f74b7190173:   jge    0x00007f74b719018b
   2.68%    │││   ││││     │  ││││││││          │            ││││││  0x00007f74b7190179:   cmp    $0x6,%r9d
   0.01%    │││   ││││     │  ││││││││          │            ││││││  0x00007f74b719017d:   data16 xchg %ax,%ax
   0.07%    │││   ││││     │  ││││││││╭         │            ││││││  0x00007f74b7190180:   je     0x00007f74b719028d
   0.02%    │││   ││││     │  │││││││││╭        │            ││││││  0x00007f74b7190186:   jmp    0x00007f74b7190295
   1.96%    │││   ││││     │  │││││││↘││        │            ││││││  0x00007f74b719018b:   cmp    $0x8,%r9d
            │││   ││││     │  │││││││ ││╭       │            ││││││  0x00007f74b719018f:   je     0x00007f74b719027d
   0.01%    │││   ││││     │  │││││││ │││╭      │            ││││││  0x00007f74b7190195:   jmp    0x00007f74b7190285
   2.51%    │││   ││││     │  ││││││↘ ││││      │            ││││││  0x00007f74b719019a:   cmp    $0xc,%r9d
   0.02%    │││   ││││     │  ││││││  ││││      │            ││││││  0x00007f74b719019e:   xchg   %ax,%ax
            │││   ││││     │  ││││││  ││││╭     │            ││││││  0x00007f74b71901a0:   jge    0x00007f74b71901b5
            │││   ││││     │  ││││││  │││││     │            ││││││  0x00007f74b71901a6:   cmp    $0xa,%r9d
            │││   ││││     │  ││││││  │││││╭    │            ││││││  0x00007f74b71901aa:   je     0x00007f74b719029d
   0.96%    │││   ││││     │  ││││││  ││││││╭   │            ││││││  0x00007f74b71901b0:   jmp    0x00007f74b71902ad
            │││   ││││     │  ││││││  ││││↘││   │            ││││││  0x00007f74b71901b5:   cmp    $0x12,%r9d
            │││   ││││     │  ││││││  ││││ ││╭  │            ││││││  0x00007f74b71901b9:   jge    0x00007f74b71901fe
            │││   ││││     │  ││││││  ││││ │││  │            ││││││  0x00007f74b71901bf:   cmp    $0xf,%r9d
            │││   ││││     │  ││││││  ││││ │││╭ │            ││││││  0x00007f74b71901c3:   jge    0x00007f74b71901e5
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901c9:   cmp    $0xe,%r9d
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901cd:   jge    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901d3:   cmp    $0xc,%r9d
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901d7:   je     0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901dd:   data16 xchg %ax,%ax
            │││   ││││     │  ││││││  ││││ ││││ │            ││││││  0x00007f74b71901e0:   jmp    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ │││↘ │            ││││││  0x00007f74b71901e5:   cmp    $0x11,%r9d
            │││   ││││     │  ││││││  ││││ │││  │            ││││││  0x00007f74b71901e9:   jge    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ │││  │            ││││││  0x00007f74b71901ef:   cmp    $0xf,%r9d
            │││   ││││     │  ││││││  ││││ │││  │            ││││││  0x00007f74b71901f3:   je     0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ │││  │            ││││││  0x00007f74b71901f9:   jmp    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││↘  │            ││││││  0x00007f74b71901fe:   cmp    $0x15,%r9d
            │││   ││││     │  ││││││  ││││ ││  ╭│            ││││││  0x00007f74b7190202:   jge    0x00007f74b7190225
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b7190208:   cmp    $0x14,%r9d
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b719020c:   jge    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b7190212:   cmp    $0x12,%r9d
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b7190216:   je     0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b719021c:   nopl   0x0(%rax)
            │││   ││││     │  ││││││  ││││ ││  ││            ││││││  0x00007f74b7190220:   jmp    0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││  ↘│            ││││││  0x00007f74b7190225:   cmp    $0x17,%r9d
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b7190229:   jg     0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b719022f:   cmp    $0x17,%r9d
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b7190233:   jge    0x00007f74b7190381           ;   {no_reloc}
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b7190239:   cmp    $0x15,%r9d
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b719023d:   data16 xchg %ax,%ax
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b7190240:   je     0x00007f74b7190381
            │││   ││││     │  ││││││  ││││ ││   │            ││││││  0x00007f74b7190246:   jmp    0x00007f74b7190381           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │  ││││││  ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
            │││   ││││     │  ││││││  ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.93%    │││   ││││     │  ││││↘│  ││││ ││   │            ││││││  0x00007f74b719024b:   mov    $0x4,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │  ││││ │  ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
            │││   ││││     │  ││││ │  ││││ ││   │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   9.41%    │││   ││││     │  ││││ │  ││││ ││   │ ↗↗↗↗↗↗↗↗↗↗↗││││││  0x00007f74b7190251:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │  ││││ │  ││││ ││   │ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.08%    │││   ││││     │  ││││ │  ││││ ││   │ │││││││││││││││││  0x00007f74b7190254:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││     │  ││││ │  ││││ ││   │ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.19%    │││   ││││     ↘  ││││ │  ││││ ││   │ │││││││││││││││││  0x00007f74b7190257:   cmp    %r11d,%r10d
            │││   ││││        ││││ │  ││││ ││   ╰ │││││││││││││││││  0x00007f74b719025a:   jg     0x00007f74b7190100
   0.08%    │││   ││││        ││││ │  ││││ ││    ╭│││││││││││││││││  0x00007f74b7190260:   jmp    0x00007f74b71902bd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││        ││││ │  ││││ ││    ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.02%    │││   ││││        │↘││ │  ││││ ││    ││││││││││││││││││  0x00007f74b7190265:   mov    $0x1,%r9d
            │││   ││││        │ ││ │  ││││ ││    │╰││││││││││││││││  0x00007f74b719026b:   jmp    0x00007f74b7190251
   0.02%    │││   ││││        │ ↘│ │  ││││ ││    │ ││││││││││││││││  0x00007f74b719026d:   mov    $0x2,%r9d
   0.19%    │││   ││││        │  │ │  ││││ ││    │ ╰│││││││││││││││  0x00007f74b7190273:   jmp    0x00007f74b7190251
   0.00%    │││   ││││        ↘  │ │  ││││ ││    │  │││││││││││││││  0x00007f74b7190275:   mov    $0x3,%r9d
   0.03%    │││   ││││           │ │  ││││ ││    │  ╰││││││││││││││  0x00007f74b719027b:   jmp    0x00007f74b7190251
   1.02%    │││   ││││           │ │  ││↘│ ││    │   ││││││││││││││  0x00007f74b719027d:   mov    $0x9,%r9d
   0.01%    │││   ││││           │ │  ││ │ ││    │   ╰│││││││││││││  0x00007f74b7190283:   jmp    0x00007f74b7190251
   0.98%    │││   ││││           │ │  ││ ↘ ││    │    │││││││││││││  0x00007f74b7190285:   mov    $0xa,%r9d
   0.01%    │││   ││││           │ │  ││   ││    │    ╰││││││││││││  0x00007f74b719028b:   jmp    0x00007f74b7190251
   0.06%    │││   ││││           │ │  ↘│   ││    │     ││││││││││││  0x00007f74b719028d:   mov    $0x7,%r9d
   0.84%    │││   ││││           │ │   │   ││    │     ╰│││││││││││  0x00007f74b7190293:   jmp    0x00007f74b7190251
   0.92%    │││   ││││           │ │   ↘   ││    │      │││││││││││  0x00007f74b7190295:   mov    $0x8,%r9d
   0.01%    │││   ││││           │ │       ││    │      ╰││││││││││  0x00007f74b719029b:   jmp    0x00007f74b7190251
   0.91%    │││   ││││           │ │       ↘│    │       ││││││││││  0x00007f74b719029d:   mov    $0xb,%r9d
   0.00%    │││   ││││           │ │        │    │       ╰│││││││││  0x00007f74b71902a3:   jmp    0x00007f74b7190251
   0.87%    │││   ││││           │ ↘        │    │        │││││││││  0x00007f74b71902a5:   mov    $0x5,%r9d
   0.04%    │││   ││││           │          │    │        ╰││││││││  0x00007f74b71902ab:   jmp    0x00007f74b7190251
   0.01%    │││   ││││           │          ↘    │         ││││││││  0x00007f74b71902ad:   mov    $0xc,%r9d
   0.00%    │││   ││││           │               │         ╰│││││││  0x00007f74b71902b3:   jmp    0x00007f74b7190251
   0.92%    │││   ││││           ↘               │          │││││││  0x00007f74b71902b5:   mov    $0x6,%r9d
   0.01%    │││   ││││                           │          ╰││││││  0x00007f74b71902bb:   jmp    0x00007f74b7190251           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││                           │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
            │││   ││││                           │           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.08%    │││   ││││                           ↘           ││││││  0x00007f74b71902bd:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │││   ││││                                       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
   0.01%    │││   ││││                                       ││││││  0x00007f74b71902c0:   mov    0x10(%rsp),%rbp
   0.11%    │││   ││││                                       ││││││  0x00007f74b71902c5:   add    $0x18,%rsp
            │││   ││││                                       ││││││  0x00007f74b71902c9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │││   ││││                                       ││││││  0x00007f74b71902d0:   ja     0x00007f74b71903d7
   0.02%    │││   ││││                                       ││││││  0x00007f74b71902d6:   ret    
            ││↘   ││││                                       ││││││  0x00007f74b71902d7:   mov    $0x2,%r11d
            ││    ││││                                       ││││││  0x00007f74b71902dd:   data16 xchg %ax,%ax
            ││    ││││                                       ╰│││││  0x00007f74b71902e0:   jmp    0x00007f74b71900c5
   0.02%    │↘    ││││                                        │││││  0x00007f74b71902e5:   mov    $0x1,%r11d
   0.00%    │     ││││                                        ╰││││  0x00007f74b71902eb:   jmp    0x00007f74b71900c5
            ↘     ││││                                         ││││  0x00007f74b71902f0:   mov    $0x3,%r11d
                  ││││                                         ╰│││  0x00007f74b71902f6:   jmp    0x00007f74b71900c5
                  ↘│││                                          │││  0x00007f74b71902fb:   mov    $0x7,%r11d
                   │││                                          ╰││  0x00007f74b7190301:   jmp    0x00007f74b71900c5
                   ││↘                                           ││  0x00007f74b7190306:   mov    $0xa,%r11d
                   ││                                            ╰│  0x00007f74b719030c:   jmp    0x00007f74b71900c5
                   │↘                                             │  0x00007f74b7190311:   mov    $0x9,%r11d
                   │                                              ╰  0x00007f74b7190317:   jmp    0x00007f74b71900c5
                   ↘                                                 0x00007f74b719031c:   mov    $0x8,%r11d
                                                                     0x00007f74b7190322:   jmp    0x00007f74b71900c5
....................................................................................................
  94.34%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.34%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1071 
   0.88%                kernel  [unknown] 
   0.36%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1094 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  fileStream::write 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  defaultStream::hold 
   2.63%  <...other 429 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.34%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 1071 
   4.22%                kernel  [unknown] 
   0.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1094 
   0.06%             libjvm.so  fileStream::write 
   0.05%             libjvm.so  defaultStream::hold 
   0.05%             libc.so.6  __vfprintf_internal 
   0.05%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.04%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  __GI___libc_write 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.02%                        <unknown> 
   0.02%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.74%  <...other 241 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.47%        jvmci, level 4
   4.22%                kernel
   0.52%             libjvm.so
   0.35%             libc.so.6
   0.29%   libjvmcicompiler.so
   0.06%        hsdis-amd64.so
   0.04%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.02%                      
   0.01%           c1, level 3
   0.01%                [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:08

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
EnumSwitchBenchmark.chained_ifs                     12  avgt    5  10.911 ± 0.655  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5   8.733 ± 0.132  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               12  avgt    5   9.410 ± 0.300  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
