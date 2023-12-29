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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.637 ns/op
# Warmup Iteration   2: 6.632 ns/op
# Warmup Iteration   3: 6.377 ns/op
# Warmup Iteration   4: 6.375 ns/op
# Warmup Iteration   5: 6.477 ns/op
Iteration   1: 6.282 ns/op
Iteration   2: 6.336 ns/op
Iteration   3: 6.442 ns/op
Iteration   4: 6.356 ns/op
Iteration   5: 6.416 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  6.366 ±(99.9%) 0.246 ns/op [Average]
  (min, avg, max) = (6.282, 6.366, 6.442), stdev = 0.064
  CI (99.9%): [6.120, 6.613] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 218860 total address lines.
Perf output processed (skipped 78.951 seconds):
 Column 1: cycles (50221 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1039 

                                                 #           [sp+0x30]  (sp of caller)
                                                 0x00007f880f196940:   mov    0x8(%rsi),%r10d
                                                 0x00007f880f196944:   movabs $0x7f878b000000,%r12
                                                 0x00007f880f19694e:   add    %r12,%r10
                                                 0x00007f880f196951:   xor    %r12,%r12
                                                 0x00007f880f196954:   cmp    %r10,%rax
                                                 0x00007f880f196957:   jne    0x00007f880eaf9080           ;   {runtime_call ic_miss_stub}
                                                 0x00007f880f19695d:   data16 xchg %ax,%ax
                                               [Verified Entry Point]
                                                 0x00007f880f196960:   mov    %eax,-0x14000(%rsp)
   0.01%                                         0x00007f880f196967:   sub    $0x28,%rsp
                                                 0x00007f880f19696b:   nop
                                                 0x00007f880f19696c:   cmpl   $0x1,0x20(%r15)
   0.02%                                         0x00007f880f196974:   jne    0x00007f880f196f44
                                                 0x00007f880f19697a:   mov    %rbp,0x20(%rsp)
                                                 0x00007f880f19697f:   mov    %rsi,%r10
                                                 0x00007f880f196982:   mov    0x18(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
   0.01%                                         0x00007f880f196986:   mov    0xc(,%rsi,8),%r11d           ; implicit exception: dispatches to 0x00007f880f196f68
                                                 0x00007f880f19698e:   test   %r11d,%r11d
                                                 0x00007f880f196991:   je     0x00007f880f196e55           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%                                         0x00007f880f196997:   mov    %r11d,0x14(%rsp)
   0.02%                                         0x00007f880f19699c:   mov    0x10(,%rsi,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
                                                 0x00007f880f1969a4:   mov    %esi,%r9d
                                                 0x00007f880f1969a7:   shl    $0x3,%r9
                                                 0x00007f880f1969ab:   movabs $0x7fed350a8,%rbx            ;   {oop([B{0x00000007fed350a8})}
   0.01%                                         0x00007f880f1969b5:   movabs $0x7fed35078,%rbp            ;   {oop([B{0x00000007fed35078})}
                                                 0x00007f880f1969bf:   movabs $0x7fed35048,%r13            ;   {oop([B{0x00000007fed35048})}
                                                 0x00007f880f1969c9:   cmp    $0xffda6a06,%r8d             ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
          ╭                                      0x00007f880f1969d0:   je     0x00007f880f196e0c
          │                                      0x00007f880f1969d6:   test   %r8d,%r8d
          │╭                                     0x00007f880f1969d9:   je     0x00007f880f196a51
          ││                                     0x00007f880f1969df:   nop
          ││                                     0x00007f880f1969e0:   cmpb   $0x0,0x10(,%r8,8)
          ││╭                                    0x00007f880f1969e9:   jne    0x00007f880f196a51
          │││                                    0x00007f880f1969ef:   mov    0x14(,%r8,8),%esi
          │││                                    0x00007f880f1969f7:   test   %esi,%esi
          │││                                    0x00007f880f1969f9:   je     0x00007f880f196ef9
          │││                                    0x00007f880f1969ff:   nop
          │││                                    0x00007f880f196a00:   cmpl   $0x5,0xc(,%rsi,8)
          │││╭                                   0x00007f880f196a08:   jne    0x00007f880f196a51
          ││││                                   0x00007f880f196a0e:   shl    $0x3,%rsi
          ││││                                   0x00007f880f196a12:   mov    %r13,%rdi
          ││││                                   0x00007f880f196a15:   mov    $0x5,%edx
          ││││                                   0x00007f880f196a1a:   mov    $0x10,%rax
          ││││                                   0x00007f880f196a21:   mov    $0x10,%rcx
          ││││                                   0x00007f880f196a28:   add    %rax,%rsi
          ││││                                   0x00007f880f196a2b:   add    %rcx,%rdi
          ││││                                   0x00007f880f196a2e:   mov    $0x1,%r14d
          ││││                                   0x00007f880f196a34:   mov    (%rsi),%edx
          ││││                                   0x00007f880f196a36:   xor    (%rdi),%edx
          ││││                                   0x00007f880f196a38:   mov    0x1(%rsi),%esi
          ││││                                   0x00007f880f196a3b:   xor    0x1(%rdi),%esi
          ││││                                   0x00007f880f196a3e:   xor    %rdi,%rdi
          ││││                                   0x00007f880f196a41:   or     %rsi,%rdx
          ││││                                   0x00007f880f196a44:   cmovne %edi,%r14d                   ;* unwind (locked if synchronized)
          ││││                                                                                             ; - java.lang.String::equals@-3
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          ││││                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││                                   0x00007f880f196a48:   test   %r14d,%r14d
          ││││╭                                  0x00007f880f196a4b:   jne    0x00007f880f196dfc
          │↘↘↘│                                  0x00007f880f196a51:   cmp    $0xffda6a0c,%r8d             ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
          │   │╭                                 0x00007f880f196a58:   je     0x00007f880f196e1c           ;* unwind (locked if synchronized)
          │   ││                                                                                           ; - java.lang.String::equals@-3
          │   ││                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   ││                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ││                                 0x00007f880f196a5e:   mov    %r8d,%r14d
          │   ││                                 0x00007f880f196a61:   shl    $0x3,%r14                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          │   ││                                 0x00007f880f196a65:   test   %r8d,%r8d
          │   ││╭                                0x00007f880f196a68:   je     0x00007f880f196e2c
          │   │││                                0x00007f880f196a6e:   cmpb   $0x0,0x10(,%r8,8)
          │   │││╭                               0x00007f880f196a77:   jne    0x00007f880f196e36           ;* unwind (locked if synchronized)
          │   ││││                                                                                         ; - java.lang.String::equals@-3
          │   ││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   ││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ││││                               0x00007f880f196a7d:   mov    0x14(,%r8,8),%esi            ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=NarrowOop r9=Oop r10=Oop r13=Oop r14=Oop }
          │   ││││                                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││││                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │   ││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ││││                               0x00007f880f196a85:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f880f196f8d
          │   ││││                               0x00007f880f196a8d:   jne    0x00007f880f196e40
          │   ││││                               0x00007f880f196a93:   mov    %r10,0x8(%rsp)
          │   ││││                               0x00007f880f196a98:   shl    $0x3,%rsi
          │   ││││                               0x00007f880f196a9c:   mov    %rbp,%rdi
          │   ││││                               0x00007f880f196a9f:   mov    $0x7,%edx
          │   ││││                               0x00007f880f196aa4:   mov    $0x10,%rax
          │   ││││                               0x00007f880f196aab:   mov    $0x10,%rcx
          │   ││││                               0x00007f880f196ab2:   add    %rax,%rsi
          │   ││││                               0x00007f880f196ab5:   add    %rcx,%rdi
          │   ││││                               0x00007f880f196ab8:   mov    $0x1,%r10d
          │   ││││                               0x00007f880f196abe:   mov    (%rsi),%edx
          │   ││││                               0x00007f880f196ac0:   xor    (%rdi),%edx
          │   ││││                               0x00007f880f196ac2:   mov    0x3(%rsi),%esi
          │   ││││                               0x00007f880f196ac5:   xor    0x3(%rdi),%esi
          │   ││││                               0x00007f880f196ac8:   xor    %rdi,%rdi
          │   ││││                               0x00007f880f196acb:   or     %rsi,%rdx
          │   ││││                               0x00007f880f196ace:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
          │   ││││                                                                                         ; - java.lang.String::equals@-3
          │   ││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   ││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ││││                               0x00007f880f196ad2:   test   %r10d,%r10d
          │   ││││╭                              0x00007f880f196ad5:   jne    0x00007f880f196df1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           ↗  0x00007f880f196adb:   nopl   0x0(%rax,%rax,1)
          │   │││││                           │  0x00007f880f196ae0:   cmp    $0xffda6a12,%r8d             ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
          │   │││││                           │  0x00007f880f196ae7:   je     0x00007f880f196e4a           ; ImmutableOopMap {rbx=Oop rbp=Oop r8=NarrowOop r9=Oop r13=Oop r14=Oop [8]=Oop }
          │   │││││                           │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││││                           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           │  0x00007f880f196aed:   movsbl 0x10(,%r8,8),%esi            ; implicit exception: dispatches to 0x00007f880f196fb0
          │   │││││                           │  0x00007f880f196af6:   mov    0x14(,%r8,8),%edi            ;* unwind (locked if synchronized)
          │   │││││                           │                                                            ; - java.lang.String::equals@-3
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           │  0x00007f880f196afe:   xchg   %ax,%ax
          │   │││││                           │  0x00007f880f196b00:   test   %sil,%sil
          │   │││││                           │  0x00007f880f196b03:   jne    0x00007f880f196e90           ; ImmutableOopMap {rbx=Oop rbp=Oop rdi=NarrowOop r9=Oop r13=Oop r14=Oop [8]=Oop }
          │   │││││                           │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││││                           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           │  0x00007f880f196b09:   cmpl   $0x10,0xc(,%rdi,8)           ; implicit exception: dispatches to 0x00007f880f196fd3
          │   │││││                           │  0x00007f880f196b11:   jne    0x00007f880f196e90
          │   │││││                           │  0x00007f880f196b17:   shl    $0x3,%rdi
          │   │││││                           │  0x00007f880f196b1b:   mov    %rdi,%rsi
          │   │││││                           │  0x00007f880f196b1e:   mov    %rbx,%rdi
          │   │││││                           │  0x00007f880f196b21:   mov    $0x10,%edx
          │   │││││                           │  0x00007f880f196b26:   mov    $0x10,%rax
          │   │││││                           │  0x00007f880f196b2d:   mov    $0x10,%rcx
          │   │││││                           │  0x00007f880f196b34:   add    %rax,%rsi
          │   │││││                           │  0x00007f880f196b37:   add    %rcx,%rdi
          │   │││││                           │  0x00007f880f196b3a:   mov    $0x1,%r10d
          │   │││││                           │  0x00007f880f196b40:   vmovdqu (%rsi),%xmm0
          │   │││││                           │  0x00007f880f196b44:   vmovdqu (%rdi),%xmm1
          │   │││││                           │  0x00007f880f196b48:   vpxor  %xmm1,%xmm0,%xmm0
          │   │││││                           │  0x00007f880f196b4c:   xor    %rsi,%rsi
          │   │││││                           │  0x00007f880f196b4f:   vptest %xmm0,%xmm0
          │   │││││                           │  0x00007f880f196b54:   cmovne %esi,%r10d                   ;* unwind (locked if synchronized)
          │   │││││                           │                                                            ; - java.lang.String::equals@-3
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           │  0x00007f880f196b58:   nopl   0x0(%rax,%rax,1)
          │   │││││                           │  0x00007f880f196b60:   test   %r10d,%r10d
          │   │││││                           │  0x00007f880f196b63:   je     0x00007f880f196ed6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │   │││││                           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││                           │  0x00007f880f196b69:   mov    $0x3,%r10d
          │   │││││                       ↗↗↗↗│  0x00007f880f196b6f:   mov    %r11d,%esi
          │   │││││                       │││││  0x00007f880f196b72:   dec    %esi
   0.01%  │   │││││                       │││││  0x00007f880f196b74:   movslq %esi,%rsi
          │   │││││                       │││││  0x00007f880f196b77:   mov    %r11d,%edi
          │   │││││                       │││││  0x00007f880f196b7a:   nopw   0x0(%rax,%rax,1)
          │   │││││                       │││││  0x00007f880f196b80:   cmp    %rsi,%rdi
          │   │││││╭                      │││││  0x00007f880f196b83:   ja     0x00007f880f196b93
          │   ││││││                      │││││  0x00007f880f196b89:   cmp    $0x2,%r11d
          │   ││││││                      │││││  0x00007f880f196b8d:   jae    0x00007f880f196f21           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││││││                      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.01%  │   │││││↘                      │││││  0x00007f880f196b93:   mov    %r10d,%r8d
          │   │││││                       │││││  0x00007f880f196b96:   mov    $0x1,%r10d
          │   │││││                       │││││  0x00007f880f196b9c:   nopl   0x0(%rax)
          │   │││││ ╭                     │││││  0x00007f880f196ba0:   jmp    0x00007f880f196d79           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │                     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │   │││││ │                     │││││  0x00007f880f196ba5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   │││││ │                     │││││  0x00007f880f196bb0:   data16 data16 xchg %ax,%ax
          │   │││││ │                     │││││  0x00007f880f196bb4:   nopl   0x0(%rax,%rax,1)
          │   │││││ │                     │││││  0x00007f880f196bbc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ │                     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%  │   │││││ │           ↗         │││││  0x00007f880f196bc0:   mov    0x10(%r9,%r10,4),%r14d
   0.01%  │   │││││ │           │         │││││  0x00007f880f196bc5:   cmp    $0xffda6a06,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
          │   │││││ │╭          │         │││││  0x00007f880f196bcc:   je     0x00007f880f196d9c
   0.01%  │   │││││ ││          │         │││││  0x00007f880f196bd2:   test   %r14d,%r14d
          │   │││││ ││╭         │         │││││  0x00007f880f196bd5:   je     0x00007f880f196c51
   8.41%  │   │││││ │││         │         │││││  0x00007f880f196bdb:   nopl   0x0(%rax,%rax,1)
   0.02%  │   │││││ │││         │         │││││  0x00007f880f196be0:   cmpb   $0x0,0x10(,%r14,8)
   0.13%  │   │││││ │││╭        │         │││││  0x00007f880f196be9:   jne    0x00007f880f196c51
   8.25%  │   │││││ ││││        │         │││││  0x00007f880f196bef:   mov    0x14(,%r14,8),%esi           ;* unwind (locked if synchronized)
          │   │││││ ││││        │         │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││││        │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │   │││││ ││││        │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.02%  │   │││││ ││││        │         │││││  0x00007f880f196bf7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r13=Oop r14=NarrowOop [8]=Oop }
          │   │││││ ││││        │         │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │   │││││ ││││        │         │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │   │││││ ││││        │         │││││  0x00007f880f196c00:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f880f196ff6
  20.07%  │   │││││ ││││╭       │         │││││  0x00007f880f196c08:   jne    0x00007f880f196c51
          │   │││││ │││││       │         │││││  0x00007f880f196c0e:   shl    $0x3,%rsi
          │   │││││ │││││       │         │││││  0x00007f880f196c12:   mov    %r13,%rdi
          │   │││││ │││││       │         │││││  0x00007f880f196c15:   mov    $0x5,%edx
          │   │││││ │││││       │         │││││  0x00007f880f196c1a:   mov    $0x10,%rax
          │   │││││ │││││       │         │││││  0x00007f880f196c21:   mov    $0x10,%rcx
          │   │││││ │││││       │         │││││  0x00007f880f196c28:   add    %rax,%rsi
          │   │││││ │││││       │         │││││  0x00007f880f196c2b:   add    %rcx,%rdi
          │   │││││ │││││       │         │││││  0x00007f880f196c2e:   mov    $0x1,%r11d
          │   │││││ │││││       │         │││││  0x00007f880f196c34:   mov    (%rsi),%edx
          │   │││││ │││││       │         │││││  0x00007f880f196c36:   xor    (%rdi),%edx
          │   │││││ │││││       │         │││││  0x00007f880f196c38:   mov    0x1(%rsi),%esi
          │   │││││ │││││       │         │││││  0x00007f880f196c3b:   xor    0x1(%rdi),%esi
          │   │││││ │││││       │         │││││  0x00007f880f196c3e:   xor    %rdi,%rdi
          │   │││││ │││││       │         │││││  0x00007f880f196c41:   or     %rsi,%rdx
          │   │││││ │││││       │         │││││  0x00007f880f196c44:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   │││││ │││││       │         │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ │││││       │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │   │││││ │││││       │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ │││││       │         │││││  0x00007f880f196c48:   test   %r11d,%r11d
          │   │││││ │││││╭      │         │││││  0x00007f880f196c4b:   jne    0x00007f880f196d95
   8.34%  │   │││││ ││↘↘↘│      │         │││││  0x00007f880f196c51:   cmp    $0xffda6a0c,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
          │   │││││ ││   │╭     │         │││││  0x00007f880f196c58:   je     0x00007f880f196da3           ;* unwind (locked if synchronized)
          │   │││││ ││   ││     │         │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││   ││     │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   │││││ ││   ││     │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%  │   │││││ ││   ││     │         │││││  0x00007f880f196c5e:   mov    %r14d,%r11d
          │   │││││ ││   ││     │         │││││  0x00007f880f196c61:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││     │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.01%  │   │││││ ││   ││     │         │││││  0x00007f880f196c65:   test   %r14d,%r14d
          │   │││││ ││   ││╭    │         │││││  0x00007f880f196c68:   je     0x00007f880f196daa
   4.12%  │   │││││ ││   │││    │         │││││  0x00007f880f196c6e:   cmpb   $0x0,0x10(,%r14,8)
   0.00%  │   │││││ ││   │││╭   │         │││││  0x00007f880f196c77:   jne    0x00007f880f196db3           ;* unwind (locked if synchronized)
          │   │││││ ││   ││││   │         │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││   ││││   │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   │││││ ││   ││││   │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.02%  │   │││││ ││   ││││   │         │││││  0x00007f880f196c7d:   mov    0x14(,%r14,8),%esi           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r11=Oop r13=Oop r14=NarrowOop [8]=Oop }
          │   │││││ ││   ││││   │         │││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││││ ││   ││││   │         │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │   │││││ ││   ││││   │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.19%  │   │││││ ││   ││││   │         │││││  0x00007f880f196c85:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f880f197019
   0.02%  │   │││││ ││   ││││╭  │         │││││  0x00007f880f196c8d:   jne    0x00007f880f196dbc
          │   │││││ ││   │││││  │         │││││  0x00007f880f196c93:   mov    %r11,(%rsp)
          │   │││││ ││   │││││  │         │││││  0x00007f880f196c97:   shl    $0x3,%rsi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196c9b:   mov    %rbp,%rdi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196c9e:   mov    $0x7,%edx
          │   │││││ ││   │││││  │         │││││  0x00007f880f196ca3:   mov    $0x10,%rax
          │   │││││ ││   │││││  │         │││││  0x00007f880f196caa:   mov    $0x10,%rcx
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cb1:   add    %rax,%rsi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cb4:   add    %rcx,%rdi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cb7:   mov    $0x1,%r11d
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cbd:   mov    (%rsi),%edx
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cbf:   xor    (%rdi),%edx
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cc1:   mov    0x3(%rsi),%esi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cc4:   xor    0x3(%rdi),%esi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cc7:   xor    %rdi,%rdi
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cca:   or     %rsi,%rdx
          │   │││││ ││   │││││  │         │││││  0x00007f880f196ccd:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   │││││ ││   │││││  │         │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││   │││││  │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   │││││ ││   │││││  │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   │││││  │         │││││  0x00007f880f196cd1:   test   %r11d,%r11d
          │   │││││ ││   │││││╭ │         │││││  0x00007f880f196cd4:   jne    0x00007f880f196d8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││ │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││ ││   ││││││ │         │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.02%  │   │││││ ││   ││││││ │     ↗↗↗ │││││  0x00007f880f196cda:   nopw   0x0(%rax,%rax,1)
          │   │││││ ││   ││││││ │     │││ │││││  0x00007f880f196ce0:   cmp    $0xffda6a12,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
          │   │││││ ││   ││││││╭│     │││ │││││  0x00007f880f196ce7:   je     0x00007f880f196dc5           ; ImmutableOopMap {rbx=Oop rbp=Oop r9=Oop r13=Oop r14=NarrowOop [0]=Oop [8]=Oop }
          │   │││││ ││   ││││││││     │││ │││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196ced:   movsbl 0x10(,%r14,8),%esi           ; implicit exception: dispatches to 0x00007f880f19703c
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196cf6:   mov    0x14(,%r14,8),%edi           ;* unwind (locked if synchronized)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196cfe:   xchg   %ax,%ax
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d00:   test   %sil,%sil
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d03:   jne    0x00007f880f196e60           ; ImmutableOopMap {rbx=Oop rbp=Oop rdi=NarrowOop r9=Oop r13=Oop [0]=Oop [8]=Oop }
          │   │││││ ││   ││││││││     │││ │││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d09:   cmpl   $0x10,0xc(,%rdi,8)           ; implicit exception: dispatches to 0x00007f880f19705f
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d11:   jne    0x00007f880f196e60
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d17:   shl    $0x3,%rdi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d1b:   mov    %rdi,%rsi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d1e:   mov    %rbx,%rdi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d21:   mov    $0x10,%edx
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d26:   mov    $0x10,%rax
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d2d:   mov    $0x10,%rcx
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d34:   add    %rax,%rsi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d37:   add    %rcx,%rdi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d3a:   mov    $0x1,%r11d
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d40:   vmovdqu (%rsi),%xmm0
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d44:   vmovdqu (%rdi),%xmm1
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d48:   vpxor  %xmm1,%xmm0,%xmm0
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d4c:   xor    %rsi,%rsi
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d4f:   vptest %xmm0,%xmm0
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d54:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - java.lang.String::equals@-3
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d58:   nopl   0x0(%rax,%rax,1)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d60:   test   %r11d,%r11d
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d63:   je     0x00007f880f196eb3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │   │││││ ││   ││││││││     │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││ ││   ││││││││     │││ │││││  0x00007f880f196d69:   mov    $0x3,%eax
  12.71%  │   │││││ ││   ││││││││ ↗↗↗↗│││↗│││││  0x00007f880f196d6e:   add    %eax,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   0.00%  │   │││││ ││   ││││││││ │││││││││││││  0x00007f880f196d71:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
          │   │││││ ││   ││││││││ │││││││││││││  0x00007f880f196d74:   mov    0x14(%rsp),%r11d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │   │││││ ││   ││││││││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.02%  │   │││││ ↘│   ││││││││ │││││││││││││  0x00007f880f196d79:   nopl   0x0(%rax)
  12.63%  │   │││││  │   ││││││││ │││││││││││││  0x00007f880f196d80:   cmp    %r10d,%r11d
          │   │││││  │   │││││││╰ │││││││││││││  0x00007f880f196d83:   jg     0x00007f880f196bc0
   0.05%  │   │││││  │   │││││││ ╭│││││││││││││  0x00007f880f196d89:   jmp    0x00007f880f196dcc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││││  │   │││││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          │   │││││  │   │││││↘│ ││││││││││││││  0x00007f880f196d8e:   mov    $0x2,%eax
          │   │││││  │   │││││ │ │╰││││││││││││  0x00007f880f196d93:   jmp    0x00007f880f196d6e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││  │   │││││ │ │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │   │││││  │   │││││ │ │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   │││││  │   ↘││││ │ │ ││││││││││││  0x00007f880f196d95:   mov    $0x1,%eax
          │   │││││  │    ││││ │ │ ╰│││││││││││  0x00007f880f196d9a:   jmp    0x00007f880f196d6e
   4.22%  │   │││││  ↘    ││││ │ │  │││││││││││  0x00007f880f196d9c:   mov    $0x1,%eax
   0.00%  │   │││││       ││││ │ │  ╰││││││││││  0x00007f880f196da1:   jmp    0x00007f880f196d6e           ;* unwind (locked if synchronized)
          │   │││││       ││││ │ │   ││││││││││                                                            ; - java.lang.String::equals@-3
          │   │││││       ││││ │ │   ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │   │││││       ││││ │ │   ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.12%  │   │││││       ↘│││ │ │   ││││││││││  0x00007f880f196da3:   mov    $0x2,%eax
          │   │││││        │││ │ │   ╰│││││││││  0x00007f880f196da8:   jmp    0x00007f880f196d6e
          │   │││││        ↘││ │ │    │││││││││  0x00007f880f196daa:   mov    %r11,(%rsp)
          │   │││││         ││ │ │    ╰││││││││  0x00007f880f196dae:   jmp    0x00007f880f196cda
          │   │││││         ↘│ │ │     ││││││││  0x00007f880f196db3:   mov    %r11,(%rsp)
          │   │││││          │ │ │     ╰│││││││  0x00007f880f196db7:   jmp    0x00007f880f196cda
   0.01%  │   │││││          ↘ │ │      │││││││  0x00007f880f196dbc:   mov    %r11,(%rsp)
   3.96%  │   │││││            │ │      ╰││││││  0x00007f880f196dc0:   jmp    0x00007f880f196cda           ;* unwind (locked if synchronized)
          │   │││││            │ │       ││││││                                                            ; - java.lang.String::equals@-3
          │   │││││            │ │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │   │││││            │ │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.17%  │   │││││            ↘ │       ││││││  0x00007f880f196dc5:   mov    $0x3,%eax
   0.01%  │   │││││              │       ╰│││││  0x00007f880f196dca:   jmp    0x00007f880f196d6e           ;* unwind (locked if synchronized)
          │   │││││              │        │││││                                                            ; - java.lang.String::equals@-3
          │   │││││              │        │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   │││││              │        │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.07%  │   │││││              ↘        │││││  0x00007f880f196dcc:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │   │││││                       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@41 (line 129)
   0.00%  │   │││││                       │││││  0x00007f880f196dcf:   mov    0x20(%rsp),%rbp
   0.05%  │   │││││                       │││││  0x00007f880f196dd4:   add    $0x28,%rsp
          │   │││││                       │││││  0x00007f880f196dd8:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
          │   │││││                       │││││  0x00007f880f196de0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   │││││                       │││││  0x00007f880f196de7:   ja     0x00007f880f196f54
   0.02%  │   │││││                       │││││  0x00007f880f196ded:   vzeroupper 
   0.00%  │   │││││                       │││││  0x00007f880f196df0:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │││││                       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │   │││││                       │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ││││↘                       │││││  0x00007f880f196df1:   mov    $0x2,%r10d
          │   ││││                        ╰││││  0x00007f880f196df7:   jmp    0x00007f880f196b6f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                         ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │   ││││                         ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │   ↘│││                         ││││  0x00007f880f196dfc:   mov    %r10,0x8(%rsp)
          │    │││                         ││││  0x00007f880f196e01:   mov    $0x1,%r10d
          │    │││                         ╰│││  0x00007f880f196e07:   jmp    0x00007f880f196b6f
          ↘    │││                          │││  0x00007f880f196e0c:   mov    %r10,0x8(%rsp)
   0.02%       │││                          │││  0x00007f880f196e11:   mov    $0x1,%r10d
   0.00%       │││                          ╰││  0x00007f880f196e17:   jmp    0x00007f880f196b6f           ;* unwind (locked if synchronized)
               │││                           ││                                                            ; - java.lang.String::equals@-3
               │││                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
               │││                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
               ↘││                           ││  0x00007f880f196e1c:   mov    %r10,0x8(%rsp)
                ││                           ││  0x00007f880f196e21:   mov    $0x2,%r10d
                ││                           ╰│  0x00007f880f196e27:   jmp    0x00007f880f196b6f
                ↘│                            │  0x00007f880f196e2c:   mov    %r10,0x8(%rsp)
                 │                            ╰  0x00007f880f196e31:   jmp    0x00007f880f196adb
                 ↘                               0x00007f880f196e36:   mov    %r10,0x8(%rsp)
                                                 0x00007f880f196e3b:   jmp    0x00007f880f196adb
....................................................................................................
  95.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1039 
   0.61%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.11%     [kernel.kallsyms]  __mod_lruvec_state 
   0.10%     [kernel.kallsyms]  __mod_memcg_state 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1062 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  _raw_spin_lock_irqsave 
   0.05%     [kernel.kallsyms]  vfs_write 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.70%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1039 
   0.61%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.26%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.12%                        <unknown> 
   0.11%     [kernel.kallsyms]  __mod_lruvec_state 
   0.10%     [kernel.kallsyms]  __mod_memcg_state 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1062 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  _raw_spin_lock_irqsave 
   0.05%     [kernel.kallsyms]  vfs_write 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.61%  <...other 265 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.92%        jvmci, level 4
   3.41%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.18%             libc.so.6
   0.12%                      
   0.05%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                kvm.ko
   0.00%        libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:25:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.806 ns/op
# Warmup Iteration   2: 12.432 ns/op
# Warmup Iteration   3: 12.147 ns/op
# Warmup Iteration   4: 12.347 ns/op
# Warmup Iteration   5: 12.251 ns/op
Iteration   1: 12.007 ns/op
Iteration   2: 12.252 ns/op
Iteration   3: 12.158 ns/op
Iteration   4: 12.244 ns/op
Iteration   5: 12.214 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  12.175 ±(99.9%) 0.388 ns/op [Average]
  (min, avg, max) = (12.007, 12.175, 12.252), stdev = 0.101
  CI (99.9%): [11.787, 12.563] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 210914 total address lines.
Perf output processed (skipped 77.785 seconds):
 Column 1: cycles (50081 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1024 

                                                                                    #           [sp+0x50]  (sp of caller)
                                                                                    0x00007fc7cb18e760:   mov    0x8(%rsi),%r10d
                                                                                    0x00007fc7cb18e764:   movabs $0x7fc747000000,%r12
                                                                                    0x00007fc7cb18e76e:   add    %r12,%r10
                                                                                    0x00007fc7cb18e771:   xor    %r12,%r12
                                                                                    0x00007fc7cb18e774:   cmp    %r10,%rax
                                                                                    0x00007fc7cb18e777:   jne    0x00007fc7caaf9080           ;   {runtime_call ic_miss_stub}
                                                                                    0x00007fc7cb18e77d:   data16 xchg %ax,%ax
                                                                                  [Verified Entry Point]
                                                                                    0x00007fc7cb18e780:   mov    %eax,-0x14000(%rsp)
   0.01%                                                                            0x00007fc7cb18e787:   sub    $0x48,%rsp
                                                                                    0x00007fc7cb18e78b:   nop
                                                                                    0x00007fc7cb18e78c:   cmpl   $0x1,0x20(%r15)
   0.00%                                                                            0x00007fc7cb18e794:   jne    0x00007fc7cb18f27b
                                                                                    0x00007fc7cb18e79a:   mov    %rbp,0x40(%rsp)
                                                                                    0x00007fc7cb18e79f:   mov    %rsi,%r10
                                                                                    0x00007fc7cb18e7a2:   mov    0x18(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
                                                                                                                                              ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
   0.00%                                                                            0x00007fc7cb18e7a6:   mov    0xc(,%rsi,8),%r11d           ; implicit exception: dispatches to 0x00007fc7cb18f29f
                                                                                    0x00007fc7cb18e7ae:   test   %r11d,%r11d
                                                                                    0x00007fc7cb18e7b1:   je     0x00007fc7cb18f17b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%                                                                            0x00007fc7cb18e7b7:   mov    %r11d,0x34(%rsp)
   0.00%                                                                            0x00007fc7cb18e7bc:   mov    0x10(,%rsi,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
                                                                                    0x00007fc7cb18e7c4:   mov    %esi,%r9d
                                                                                    0x00007fc7cb18e7c7:   shl    $0x3,%r9                     ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                                                                                    0x00007fc7cb18e7cb:   mov    %r9,0x28(%rsp)
   0.00%                                                                            0x00007fc7cb18e7d0:   movabs $0x7fed35148,%rbx            ;   {oop([B{0x00000007fed35148})}
                                                                                    0x00007fc7cb18e7da:   movabs $0x7fed35118,%rbp            ;   {oop([B{0x00000007fed35118})}
                                                                                    0x00007fc7cb18e7e4:   movabs $0x7fed350e0,%r13            ;   {oop([B{0x00000007fed350e0})}
                                                                                    0x00007fc7cb18e7ee:   movabs $0x7fed350a8,%r14            ;   {oop([B{0x00000007fed350a8})}
   0.00%                                                                            0x00007fc7cb18e7f8:   movabs $0x7fed35078,%rcx            ;   {oop([B{0x00000007fed35078})}
                                                                                    0x00007fc7cb18e802:   movabs $0x7fed35048,%rax            ;   {oop([B{0x00000007fed35048})}
                                                                                    0x00007fc7cb18e80c:   mov    %rax,0x20(%rsp)
                                                                                    0x00007fc7cb18e811:   cmp    $0xffda6a06,%r8d             ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
          ╭                                                                         0x00007fc7cb18e818:   je     0x00007fc7cb18f0e8
          │                                                                         0x00007fc7cb18e81e:   xchg   %ax,%ax
          │                                                                         0x00007fc7cb18e820:   test   %r8d,%r8d
          │╭                                                                        0x00007fc7cb18e823:   je     0x00007fc7cb18f0fb
          ││                                                                        0x00007fc7cb18e829:   cmpb   $0x0,0x10(,%r8,8)
          ││╭                                                                       0x00007fc7cb18e832:   jne    0x00007fc7cb18f108
          │││                                                                       0x00007fc7cb18e838:   mov    0x14(,%r8,8),%esi
          │││                                                                       0x00007fc7cb18e840:   test   %esi,%esi
          │││                                                                       0x00007fc7cb18e842:   je     0x00007fc7cb18f230
          │││                                                                       0x00007fc7cb18e848:   cmpl   $0x5,0xc(,%rsi,8)
          │││                                                                       0x00007fc7cb18e850:   jne    0x00007fc7cb18f115
          │││                                                                       0x00007fc7cb18e856:   mov    %r10,0x18(%rsp)
          │││                                                                       0x00007fc7cb18e85b:   shl    $0x3,%rsi
          │││                                                                       0x00007fc7cb18e85f:   mov    %rax,%rdi
          │││                                                                       0x00007fc7cb18e862:   mov    $0x5,%edx
          │││                                                                       0x00007fc7cb18e867:   mov    $0x10,%rax
          │││                                                                       0x00007fc7cb18e86e:   mov    %rcx,%r10
          │││                                                                       0x00007fc7cb18e871:   mov    $0x10,%rcx
          │││                                                                       0x00007fc7cb18e878:   add    %rax,%rsi
          │││                                                                       0x00007fc7cb18e87b:   add    %rcx,%rdi
          │││                                                                       0x00007fc7cb18e87e:   mov    $0x1,%r9d
          │││                                                                       0x00007fc7cb18e884:   mov    (%rsi),%edx
          │││                                                                       0x00007fc7cb18e886:   xor    (%rdi),%edx
          │││                                                                       0x00007fc7cb18e888:   mov    0x1(%rsi),%esi
          │││                                                                       0x00007fc7cb18e88b:   xor    0x1(%rdi),%esi
          │││                                                                       0x00007fc7cb18e88e:   xor    %rdi,%rdi
          │││                                                                       0x00007fc7cb18e891:   or     %rsi,%rdx
          │││                                                                       0x00007fc7cb18e894:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││                                                                                                                                 ; - java.lang.String::equals@-3
          │││                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │││                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││                                                                       0x00007fc7cb18e898:   nopl   0x0(%rax,%rax,1)
          │││                                                                       0x00007fc7cb18e8a0:   test   %r9d,%r9d
          │││╭                                                                      0x00007fc7cb18e8a3:   jne    0x00007fc7cb18f0b1
          ││││                                                                  ↗↗  0x00007fc7cb18e8a9:   cmp    $0xffda6a0c,%r8d             ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
          ││││                                                                  ││  0x00007fc7cb18e8b0:   je     0x00007fc7cb18f125           ;* unwind (locked if synchronized)
          ││││                                                                  ││                                                            ; - java.lang.String::equals@-3
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││                                                                  ││  0x00007fc7cb18e8b6:   mov    %r8d,%r9d
          ││││                                                                  ││  0x00007fc7cb18e8b9:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          ││││                                                                  ││  0x00007fc7cb18e8bd:   data16 xchg %ax,%ax
          ││││                                                                  ││  0x00007fc7cb18e8c0:   test   %r8d,%r8d
          ││││                                                                  ││  0x00007fc7cb18e8c3:   je     0x00007fc7cb18f130
          ││││                                                                  ││  0x00007fc7cb18e8c9:   cmpb   $0x0,0x10(,%r8,8)
          ││││                                                                  ││  0x00007fc7cb18e8d2:   jne    0x00007fc7cb18f13a           ;* unwind (locked if synchronized)
          ││││                                                                  ││                                                            ; - java.lang.String::equals@-3
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││                                                                  ││  0x00007fc7cb18e8d8:   mov    0x14(,%r8,8),%esi            ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=NarrowOop r9=Oop r10=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
          ││││                                                                  ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                                  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││                                                                  ││  0x00007fc7cb18e8e0:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f2c2
          ││││                                                                  ││  0x00007fc7cb18e8e8:   jne    0x00007fc7cb18f145
          ││││                                                                  ││  0x00007fc7cb18e8ee:   mov    %r9,0x10(%rsp)
          ││││                                                                  ││  0x00007fc7cb18e8f3:   shl    $0x3,%rsi
          ││││                                                                  ││  0x00007fc7cb18e8f7:   mov    %r10,%rdi
          ││││                                                                  ││  0x00007fc7cb18e8fa:   mov    $0x7,%edx
          ││││                                                                  ││  0x00007fc7cb18e8ff:   mov    $0x10,%rax
          ││││                                                                  ││  0x00007fc7cb18e906:   mov    $0x10,%rcx
          ││││                                                                  ││  0x00007fc7cb18e90d:   add    %rax,%rsi
          ││││                                                                  ││  0x00007fc7cb18e910:   add    %rcx,%rdi
          ││││                                                                  ││  0x00007fc7cb18e913:   mov    $0x1,%r9d
          ││││                                                                  ││  0x00007fc7cb18e919:   mov    (%rsi),%edx
          ││││                                                                  ││  0x00007fc7cb18e91b:   xor    (%rdi),%edx
          ││││                                                                  ││  0x00007fc7cb18e91d:   mov    0x3(%rsi),%esi
          ││││                                                                  ││  0x00007fc7cb18e920:   xor    0x3(%rdi),%esi
          ││││                                                                  ││  0x00007fc7cb18e923:   xor    %rdi,%rdi
          ││││                                                                  ││  0x00007fc7cb18e926:   or     %rsi,%rdx
          ││││                                                                  ││  0x00007fc7cb18e929:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          ││││                                                                  ││                                                            ; - java.lang.String::equals@-3
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          ││││                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││                                                                  ││  0x00007fc7cb18e92d:   test   %r9d,%r9d
          ││││╭                                                                 ││  0x00007fc7cb18e930:   jne    0x00007fc7cb18f0bc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││││                                                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││                                                                 ││  0x00007fc7cb18e936:   data16 nopw 0x0(%rax,%rax,1)
          │││││                                                                 ││  0x00007fc7cb18e940:   cmp    $0xffda6a12,%r8d             ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
          │││││                                                                 ││  0x00007fc7cb18e947:   je     0x00007fc7cb18f14f
          │││││                                                                 ││  0x00007fc7cb18e94d:   test   %r8d,%r8d
          │││││╭                                                                ││  0x00007fc7cb18e950:   je     0x00007fc7cb18e9d5
          ││││││                                                                ││  0x00007fc7cb18e956:   data16 nopw 0x0(%rax,%rax,1)
          ││││││                                                                ││  0x00007fc7cb18e960:   cmpb   $0x0,0x10(,%r8,8)
          ││││││╭                                                               ││  0x00007fc7cb18e969:   jne    0x00007fc7cb18e9d5
          │││││││                                                               ││  0x00007fc7cb18e96f:   mov    0x14(,%r8,8),%esi            ;* unwind (locked if synchronized)
          │││││││                                                               ││                                                            ; - java.lang.String::equals@-3
          │││││││                                                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │││││││                                                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││││                                                               ││  0x00007fc7cb18e977:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=NarrowOop r10=Oop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││││                                                               ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││││                                                               ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││││││                                                               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││││                                                               ││  0x00007fc7cb18e980:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007fc7cb18f2e5
          │││││││╭                                                              ││  0x00007fc7cb18e988:   jne    0x00007fc7cb18e9d5
          ││││││││                                                              ││  0x00007fc7cb18e98e:   shl    $0x3,%rsi
          ││││││││                                                              ││  0x00007fc7cb18e992:   mov    %r14,%rdi
          ││││││││                                                              ││  0x00007fc7cb18e995:   mov    $0x10,%edx
          ││││││││                                                              ││  0x00007fc7cb18e99a:   mov    $0x10,%rax
          ││││││││                                                              ││  0x00007fc7cb18e9a1:   mov    $0x10,%rcx
          ││││││││                                                              ││  0x00007fc7cb18e9a8:   add    %rax,%rsi
          ││││││││                                                              ││  0x00007fc7cb18e9ab:   add    %rcx,%rdi
          ││││││││                                                              ││  0x00007fc7cb18e9ae:   mov    $0x1,%r9d
          ││││││││                                                              ││  0x00007fc7cb18e9b4:   vmovdqu (%rsi),%xmm0
          ││││││││                                                              ││  0x00007fc7cb18e9b8:   vmovdqu (%rdi),%xmm1
          ││││││││                                                              ││  0x00007fc7cb18e9bc:   vpxor  %xmm1,%xmm0,%xmm0
          ││││││││                                                              ││  0x00007fc7cb18e9c0:   xor    %rsi,%rsi
          ││││││││                                                              ││  0x00007fc7cb18e9c3:   vptest %xmm0,%xmm0
          ││││││││                                                              ││  0x00007fc7cb18e9c8:   cmovne %esi,%r9d                    ;* unwind (locked if synchronized)
          ││││││││                                                              ││                                                            ; - java.lang.String::equals@-3
          ││││││││                                                              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          ││││││││                                                              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││││││││                                                              ││  0x00007fc7cb18e9cc:   test   %r9d,%r9d
          ││││││││╭                                                             ││  0x00007fc7cb18e9cf:   jne    0x00007fc7cb18f0c7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││││││││                                                             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││↘↘↘│                                                             ││  0x00007fc7cb18e9d5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││││   │                                                             ││  0x00007fc7cb18e9e0:   cmp    $0xffda6a19,%r8d             ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
          │││││   │                                                             ││  0x00007fc7cb18e9e7:   je     0x00007fc7cb18f15a
          │││││   │                                                             ││  0x00007fc7cb18e9ed:   test   %r8d,%r8d
          │││││   │╭                                                            ││  0x00007fc7cb18e9f0:   je     0x00007fc7cb18ea75
          │││││   ││                                                            ││  0x00007fc7cb18e9f6:   data16 nopw 0x0(%rax,%rax,1)
          │││││   ││                                                            ││  0x00007fc7cb18ea00:   cmpb   $0x0,0x10(,%r8,8)
          │││││   ││╭                                                           ││  0x00007fc7cb18ea09:   jne    0x00007fc7cb18ea75
          │││││   │││                                                           ││  0x00007fc7cb18ea0f:   mov    0x14(,%r8,8),%esi            ;* unwind (locked if synchronized)
          │││││   │││                                                           ││                                                            ; - java.lang.String::equals@-3
          │││││   │││                                                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││││   │││                                                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │││                                                           ││  0x00007fc7cb18ea17:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=NarrowOop r10=Oop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │││                                                           ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │││                                                           ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││││   │││                                                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │││                                                           ││  0x00007fc7cb18ea20:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f308
          │││││   │││╭                                                          ││  0x00007fc7cb18ea28:   jne    0x00007fc7cb18ea75
          │││││   ││││                                                          ││  0x00007fc7cb18ea2e:   shl    $0x3,%rsi
          │││││   ││││                                                          ││  0x00007fc7cb18ea32:   mov    %r13,%rdi
          │││││   ││││                                                          ││  0x00007fc7cb18ea35:   mov    $0xa,%edx
          │││││   ││││                                                          ││  0x00007fc7cb18ea3a:   mov    $0x10,%rax
          │││││   ││││                                                          ││  0x00007fc7cb18ea41:   mov    $0x10,%rcx
          │││││   ││││                                                          ││  0x00007fc7cb18ea48:   add    %rax,%rsi
          │││││   ││││                                                          ││  0x00007fc7cb18ea4b:   add    %rcx,%rdi
          │││││   ││││                                                          ││  0x00007fc7cb18ea4e:   mov    $0x1,%r9d
          │││││   ││││                                                          ││  0x00007fc7cb18ea54:   mov    (%rsi),%rdx
          │││││   ││││                                                          ││  0x00007fc7cb18ea57:   xor    (%rdi),%rdx
          │││││   ││││                                                          ││  0x00007fc7cb18ea5a:   mov    0x2(%rsi),%rsi
          │││││   ││││                                                          ││  0x00007fc7cb18ea5e:   xor    0x2(%rdi),%rsi
          │││││   ││││                                                          ││  0x00007fc7cb18ea62:   xor    %rdi,%rdi
          │││││   ││││                                                          ││  0x00007fc7cb18ea65:   or     %rsi,%rdx
          │││││   ││││                                                          ││  0x00007fc7cb18ea68:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││││   ││││                                                          ││                                                            ; - java.lang.String::equals@-3
          │││││   ││││                                                          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││││   ││││                                                          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   ││││                                                          ││  0x00007fc7cb18ea6c:   test   %r9d,%r9d
          │││││   ││││╭                                                         ││  0x00007fc7cb18ea6f:   jne    0x00007fc7cb18f0d2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │││││                                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││││   │││││                                                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │↘↘↘│                                                         ││  0x00007fc7cb18ea75:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │                                                         ││  0x00007fc7cb18ea80:   cmp    $0xffda6a20,%r8d             ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
          │││││   │   │                                                         ││  0x00007fc7cb18ea87:   je     0x00007fc7cb18f165
          │││││   │   │                                                         ││  0x00007fc7cb18ea8d:   test   %r8d,%r8d
          │││││   │   │╭                                                        ││  0x00007fc7cb18ea90:   je     0x00007fc7cb18eb17
          │││││   │   ││                                                        ││  0x00007fc7cb18ea96:   data16 nopw 0x0(%rax,%rax,1)
          │││││   │   ││                                                        ││  0x00007fc7cb18eaa0:   cmpb   $0x0,0x10(,%r8,8)
          │││││   │   ││╭                                                       ││  0x00007fc7cb18eaa9:   jne    0x00007fc7cb18eb17
          │││││   │   │││                                                       ││  0x00007fc7cb18eaaf:   mov    0x14(,%r8,8),%esi            ;* unwind (locked if synchronized)
          │││││   │   │││                                                       ││                                                            ; - java.lang.String::equals@-3
          │││││   │   │││                                                       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││││   │   │││                                                       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │││                                                       ││  0x00007fc7cb18eab7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=NarrowOop r10=Oop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │││                                                       ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │││                                                       ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││││   │   │││                                                       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │││                                                       ││  0x00007fc7cb18eac0:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f32d
          │││││   │   │││╭                                                      ││  0x00007fc7cb18eac8:   jne    0x00007fc7cb18eb17
          │││││   │   ││││                                                      ││  0x00007fc7cb18eace:   shl    $0x3,%rsi
          │││││   │   ││││                                                      ││  0x00007fc7cb18ead2:   mov    %rbp,%rdi
          │││││   │   ││││                                                      ││  0x00007fc7cb18ead5:   mov    $0x3,%edx
          │││││   │   ││││                                                      ││  0x00007fc7cb18eada:   mov    $0x10,%rax
          │││││   │   ││││                                                      ││  0x00007fc7cb18eae1:   mov    $0x10,%rcx
          │││││   │   ││││                                                      ││  0x00007fc7cb18eae8:   add    %rax,%rsi
          │││││   │   ││││                                                      ││  0x00007fc7cb18eaeb:   add    %rcx,%rdi
          │││││   │   ││││                                                      ││  0x00007fc7cb18eaee:   mov    $0x1,%r9d
          │││││   │   ││││                                                      ││  0x00007fc7cb18eaf4:   movzwq (%rsi),%rdx
          │││││   │   ││││                                                      ││  0x00007fc7cb18eaf8:   xor    (%rdi),%dx
          │││││   │   ││││                                                      ││  0x00007fc7cb18eafb:   movzwq 0x1(%rsi),%rsi
          │││││   │   ││││                                                      ││  0x00007fc7cb18eb00:   xor    0x1(%rdi),%si
          │││││   │   ││││                                                      ││  0x00007fc7cb18eb04:   xor    %rdi,%rdi
          │││││   │   ││││                                                      ││  0x00007fc7cb18eb07:   or     %rsi,%rdx
          │││││   │   ││││                                                      ││  0x00007fc7cb18eb0a:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││││   │   ││││                                                      ││                                                            ; - java.lang.String::equals@-3
          │││││   │   ││││                                                      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││││   │   ││││                                                      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   ││││                                                      ││  0x00007fc7cb18eb0e:   test   %r9d,%r9d
          │││││   │   ││││╭                                                     ││  0x00007fc7cb18eb11:   jne    0x00007fc7cb18f0dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │││││                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │││││                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │↘↘↘│                                                     ││  0x00007fc7cb18eb17:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb20:   cmp    $0xffda6a26,%r8d             ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb27:   je     0x00007fc7cb18f170           ; ImmutableOopMap {rbx=Oop rbp=Oop r8=NarrowOop r10=Oop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │                                                     ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │                                                     ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb2d:   movsbl 0x10(,%r8,8),%esi            ; implicit exception: dispatches to 0x00007fc7cb18f350
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb36:   mov    0x14(,%r8,8),%edi            ;* unwind (locked if synchronized)
          │││││   │   │   │                                                     ││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb3e:   xchg   %ax,%ax
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb40:   test   %sil,%sil
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb43:   jne    0x00007fc7cb18f1c0           ; ImmutableOopMap {rbx=Oop rbp=Oop rdi=NarrowOop r10=Oop r13=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │                                                     ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │                                                     ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb49:   cmpl   $0x3,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f373
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb51:   jne    0x00007fc7cb18f1c0
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb57:   shl    $0x3,%rdi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb5b:   mov    %rdi,%rsi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb5e:   mov    %rbx,%rdi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb61:   mov    $0x3,%edx
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb66:   mov    $0x10,%rax
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb6d:   mov    $0x10,%rcx
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb74:   add    %rax,%rsi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb77:   add    %rcx,%rdi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb7a:   mov    $0x1,%r8d
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb80:   movzwq (%rsi),%rdx
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb84:   xor    (%rdi),%dx
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb87:   movzwq 0x1(%rsi),%rsi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb8c:   xor    0x1(%rdi),%si
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb90:   xor    %rdi,%rdi
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb93:   or     %rsi,%rdx
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb96:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │                                                     ││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eb9a:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eba0:   test   %r8d,%r8d
          │││││   │   │   │                                                     ││  0x00007fc7cb18eba3:   je     0x00007fc7cb18f20d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
          │││││   │   │   │                                                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                                                     ││  0x00007fc7cb18eba9:   mov    $0x6,%r8d
   0.01%  │││││   │   │   │                                               ↗↗↗↗↗↗││  0x00007fc7cb18ebaf:   mov    %r11d,%esi
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebb2:   dec    %esi
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebb4:   movslq %esi,%rsi
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebb7:   mov    %r11d,%edi
   0.01%  │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebba:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebc0:   cmp    %rsi,%rdi
          │││││   │   │   │╭                                              ││││││││  0x00007fc7cb18ebc3:   ja     0x00007fc7cb18ebd3
          │││││   │   │   ││                                              ││││││││  0x00007fc7cb18ebc9:   cmp    $0x2,%r11d
          │││││   │   │   ││                                              ││││││││  0x00007fc7cb18ebcd:   jae    0x00007fc7cb18f258           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   ││                                              ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          │││││   │   │   │↘                                              ││││││││  0x00007fc7cb18ebd3:   mov    %r8d,%ecx
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebd6:   mov    $0x1,%r8d
   0.01%  │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebdc:   mov    0x20(%rsp),%rax
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18ebe1:   mov    0x28(%rsp),%r9
          │││││   │   │   │ ╭                                             ││││││││  0x00007fc7cb18ebe6:   jmp    0x00007fc7cb18efca           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ │                                             ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │││││   │   │   │ │                                             ││││││││  0x00007fc7cb18ebeb:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │   │ │                                             ││││││││  0x00007fc7cb18ebf6:   data16 data16 xchg %ax,%ax
          │││││   │   │   │ │                                             ││││││││  0x00007fc7cb18ebfa:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ │                                             ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   5.57%  │││││   │   │   │ │                          ↗                  ││││││││  0x00007fc7cb18ec00:   mov    0x10(%r9,%r8,4),%edx
   0.09%  │││││   │   │   │ │                          │                  ││││││││  0x00007fc7cb18ec05:   cmp    $0xffda6a06,%edx             ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
          │││││   │   │   │ │╭                         │                  ││││││││  0x00007fc7cb18ec0b:   je     0x00007fc7cb18effb
   0.06%  │││││   │   │   │ ││                         │                  ││││││││  0x00007fc7cb18ec11:   test   %edx,%edx
          │││││   │   │   │ ││╭                        │                  ││││││││  0x00007fc7cb18ec13:   je     0x00007fc7cb18f00a
   0.03%  │││││   │   │   │ │││                        │                  ││││││││  0x00007fc7cb18ec19:   nopl   0x0(%rax)
   5.15%  │││││   │   │   │ │││                        │                  ││││││││  0x00007fc7cb18ec20:   cmpb   $0x0,0x10(,%rdx,8)
   1.24%  │││││   │   │   │ │││╭                       │                  ││││││││  0x00007fc7cb18ec28:   jne    0x00007fc7cb18f01a
   1.06%  │││││   │   │   │ ││││                       │                  ││││││││  0x00007fc7cb18ec2e:   mov    0x14(,%rdx,8),%esi           ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││                       │                  ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││                       │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │││││   │   │   │ ││││                       │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.45%  │││││   │   │   │ ││││                       │                  ││││││││  0x00007fc7cb18ec35:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop rdx=NarrowOop rbx=Oop rbp=Oop rsi=NarrowOop r9=Oop r10=Oop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││                       │                  ││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││                       │                  ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │││││   │   │   │ ││││                       │                  ││││││││  0x00007fc7cb18ec40:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f396
   6.42%  │││││   │   │   │ ││││╭                      │                  ││││││││  0x00007fc7cb18ec48:   jne    0x00007fc7cb18f02a
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec4e:   mov    %r8d,0x30(%rsp)
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec53:   shl    $0x3,%rsi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec57:   mov    %rax,%rdi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec5a:   mov    %edx,%r11d
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec5d:   mov    $0x5,%edx
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec62:   mov    $0x10,%rax
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec69:   mov    %ecx,%r9d
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec6c:   mov    $0x10,%rcx
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec73:   add    %rax,%rsi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec76:   add    %rcx,%rdi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec79:   mov    $0x1,%r8d
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec7f:   mov    (%rsi),%edx
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec81:   xor    (%rdi),%edx
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec83:   mov    0x1(%rsi),%esi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec86:   xor    0x1(%rdi),%esi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec89:   xor    %rdi,%rdi
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec8c:   or     %rsi,%rdx
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec8f:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │ │││││                      │                  ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ │││││                      │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │││││   │   │   │ │││││                      │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││                      │                  ││││││││  0x00007fc7cb18ec93:   test   %r8d,%r8d
          │││││   │   │   │ │││││╭                     │                  ││││││││  0x00007fc7cb18ec96:   jne    0x00007fc7cb18efd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││                     │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │││││   │   │   │ ││││││                     │                  ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.37%  │││││   │   │   │ ││││││                     │       ↗↗↗        ││││││││  0x00007fc7cb18ec9c:   nopl   0x0(%rax)
          │││││   │   │   │ ││││││                     │       │││        ││││││││  0x00007fc7cb18eca0:   cmp    $0xffda6a0c,%r11d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
          │││││   │   │   │ ││││││╭                    │       │││        ││││││││  0x00007fc7cb18eca7:   je     0x00007fc7cb18f03a           ;* unwind (locked if synchronized)
          │││││   │   │   │ │││││││                    │       │││        ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ │││││││                    │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │││││   │   │   │ │││││││                    │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││││                    │       │││        ││││││││  0x00007fc7cb18ecad:   mov    %r11d,%r8d
          │││││   │   │   │ │││││││                    │       │││        ││││││││  0x00007fc7cb18ecb0:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ │││││││                    │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   4.45%  │││││   │   │   │ │││││││                    │       │││        ││││││││  0x00007fc7cb18ecb4:   test   %r11d,%r11d
          │││││   │   │   │ │││││││╭                   │       │││        ││││││││  0x00007fc7cb18ecb7:   je     0x00007fc7cb18f045
          │││││   │   │   │ ││││││││                   │       │││        ││││││││  0x00007fc7cb18ecbd:   data16 xchg %ax,%ax
          │││││   │   │   │ ││││││││                   │       │││        ││││││││  0x00007fc7cb18ecc0:   cmpb   $0x0,0x10(,%r11,8)
   4.39%  │││││   │   │   │ ││││││││╭                  │       │││        ││││││││  0x00007fc7cb18ecc9:   jne    0x00007fc7cb18f04f
   0.00%  │││││   │   │   │ │││││││││                  │       │││        ││││││││  0x00007fc7cb18eccf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││││││                  │       │││        ││││││││  0x00007fc7cb18ecd7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r8=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │││││   │   │   │ │││││││││                  │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││││││                  │       │││        ││││││││  0x00007fc7cb18ece0:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f3b9
   4.28%  │││││   │   │   │ │││││││││╭                 │       │││        ││││││││  0x00007fc7cb18ece8:   jne    0x00007fc7cb18f059
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ecee:   mov    %r8,0x8(%rsp)
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ecf3:   shl    $0x3,%rsi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ecf7:   mov    %r10,%rdi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ecfa:   mov    $0x7,%edx
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ecff:   mov    $0x10,%rax
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed06:   mov    $0x10,%rcx
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed0d:   add    %rax,%rsi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed10:   add    %rcx,%rdi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed13:   mov    $0x1,%r8d
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed19:   mov    (%rsi),%edx
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed1b:   xor    (%rdi),%edx
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed1d:   mov    0x3(%rsi),%esi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed20:   xor    0x3(%rdi),%esi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed23:   xor    %rdi,%rdi
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed26:   or     %rsi,%rdx
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed29:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││                 │       │││        ││││││││  0x00007fc7cb18ed2d:   test   %r8d,%r8d
          │││││   │   │   │ ││││││││││╭                │       │││        ││││││││  0x00007fc7cb18ed30:   jne    0x00007fc7cb18efdf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ │││││││││││                │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││││   │   │   │ │││││││││││                │       │││        ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││││││││                │       │││ ↗↗↗    ││││││││  0x00007fc7cb18ed36:   data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │   │ │││││││││││                │       │││ │││    ││││││││  0x00007fc7cb18ed40:   cmp    $0xffda6a12,%r11d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
          │││││   │   │   │ │││││││││││╭               │       │││ │││    ││││││││  0x00007fc7cb18ed47:   je     0x00007fc7cb18f065
          │││││   │   │   │ ││││││││││││               │       │││ │││    ││││││││  0x00007fc7cb18ed4d:   test   %r11d,%r11d
          │││││   │   │   │ ││││││││││││╭              │       │││ │││    ││││││││  0x00007fc7cb18ed50:   je     0x00007fc7cb18edd5
   3.22%  │││││   │   │   │ │││││││││││││              │       │││ │││    ││││││││  0x00007fc7cb18ed56:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │││││   │   │   │ │││││││││││││              │       │││ │││    ││││││││  0x00007fc7cb18ed60:   cmpb   $0x0,0x10(,%r11,8)
          │││││   │   │   │ │││││││││││││╭             │       │││ │││    ││││││││  0x00007fc7cb18ed69:   jne    0x00007fc7cb18edd5
   3.38%  │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││  0x00007fc7cb18ed6f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││  0x00007fc7cb18ed77:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││││             │       │││ │││    ││││││││  0x00007fc7cb18ed80:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007fc7cb18f3dc
   3.29%  │││││   │   │   │ ││││││││││││││╭            │       │││ │││    ││││││││  0x00007fc7cb18ed88:   jne    0x00007fc7cb18edd5
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18ed8e:   shl    $0x3,%rsi
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18ed92:   mov    %r14,%rdi
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18ed95:   mov    $0x10,%edx
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18ed9a:   mov    $0x10,%rax
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18eda1:   mov    $0x10,%rcx
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18eda8:   add    %rax,%rsi
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edab:   add    %rcx,%rdi
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edae:   mov    $0x1,%r8d
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edb4:   vmovdqu (%rsi),%xmm0
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edb8:   vmovdqu (%rdi),%xmm1
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edbc:   vpxor  %xmm1,%xmm0,%xmm0
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edc0:   xor    %rsi,%rsi
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edc3:   vptest %xmm0,%xmm0
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edc8:   cmovne %esi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ │││││││││││││││            │       │││ │││    ││││││││  0x00007fc7cb18edcc:   test   %r8d,%r8d
          │││││   │   │   │ │││││││││││││││╭           │       │││ │││    ││││││││  0x00007fc7cb18edcf:   jne    0x00007fc7cb18efe6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││││││           │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││││   │   │   │ ││││││││││││││││           │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││↘↘↘│           │       │││ │││    ││││││││  0x00007fc7cb18edd5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │   │ ││││││││││││   │           │       │││ │││    ││││││││  0x00007fc7cb18ede0:   cmp    $0xffda6a19,%r11d            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
          │││││   │   │   │ ││││││││││││   │╭          │       │││ │││    ││││││││  0x00007fc7cb18ede7:   je     0x00007fc7cb18f06f
          │││││   │   │   │ ││││││││││││   ││          │       │││ │││    ││││││││  0x00007fc7cb18eded:   test   %r11d,%r11d
          │││││   │   │   │ ││││││││││││   ││╭         │       │││ │││    ││││││││  0x00007fc7cb18edf0:   je     0x00007fc7cb18ee75
   2.18%  │││││   │   │   │ ││││││││││││   │││         │       │││ │││    ││││││││  0x00007fc7cb18edf6:   data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │   │ ││││││││││││   │││         │       │││ │││    ││││││││  0x00007fc7cb18ee00:   cmpb   $0x0,0x10(,%r11,8)
          │││││   │   │   │ ││││││││││││   │││╭        │       │││ │││    ││││││││  0x00007fc7cb18ee09:   jne    0x00007fc7cb18ee75
   2.22%  │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││  0x00007fc7cb18ee0f:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││  0x00007fc7cb18ee17:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││││        │       │││ │││    ││││││││  0x00007fc7cb18ee20:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f3ff
   2.28%  │││││   │   │   │ ││││││││││││   ││││╭       │       │││ │││    ││││││││  0x00007fc7cb18ee28:   jne    0x00007fc7cb18ee75
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee2e:   shl    $0x3,%rsi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee32:   mov    %r13,%rdi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee35:   mov    $0xa,%edx
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee3a:   mov    $0x10,%rax
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee41:   mov    $0x10,%rcx
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee48:   add    %rax,%rsi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee4b:   add    %rcx,%rdi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee4e:   mov    $0x1,%r8d
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee54:   mov    (%rsi),%rdx
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee57:   xor    (%rdi),%rdx
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee5a:   mov    0x2(%rsi),%rsi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee5e:   xor    0x2(%rdi),%rsi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee62:   xor    %rdi,%rdi
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee65:   or     %rsi,%rdx
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee68:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   │││││       │       │││ │││    ││││││││  0x00007fc7cb18ee6c:   test   %r8d,%r8d
          │││││   │   │   │ ││││││││││││   │││││╭      │       │││ │││    ││││││││  0x00007fc7cb18ee6f:   jne    0x00007fc7cb18efed           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││││││      │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││││   │   │   │ ││││││││││││   ││││││      │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%  │││││   │   │   │ ││││││││││││   ││↘↘↘│      │       │││ │││    ││││││││  0x00007fc7cb18ee75:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││││   │   │   │ ││││││││││││   ││   │      │       │││ │││    ││││││││  0x00007fc7cb18ee80:   cmp    $0xffda6a20,%r11d            ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
          │││││   │   │   │ ││││││││││││   ││   │╭     │       │││ │││    ││││││││  0x00007fc7cb18ee87:   je     0x00007fc7cb18f079
          │││││   │   │   │ ││││││││││││   ││   ││     │       │││ │││    ││││││││  0x00007fc7cb18ee8d:   test   %r11d,%r11d
          │││││   │   │   │ ││││││││││││   ││   ││╭    │       │││ │││    ││││││││  0x00007fc7cb18ee90:   je     0x00007fc7cb18ef17
   1.06%  │││││   │   │   │ ││││││││││││   ││   │││    │       │││ │││    ││││││││  0x00007fc7cb18ee96:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │││││   │   │   │ ││││││││││││   ││   │││    │       │││ │││    ││││││││  0x00007fc7cb18eea0:   cmpb   $0x0,0x10(,%r11,8)
          │││││   │   │   │ ││││││││││││   ││   │││╭   │       │││ │││    ││││││││  0x00007fc7cb18eea9:   jne    0x00007fc7cb18ef17
   1.06%  │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││  0x00007fc7cb18eeaf:   mov    0x14(,%r11,8),%esi           ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%  │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││  0x00007fc7cb18eeb7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=NarrowOop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││││   │       │││ │││    ││││││││  0x00007fc7cb18eec0:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f422
   1.08%  │││││   │   │   │ ││││││││││││   ││   ││││╭  │       │││ │││    ││││││││  0x00007fc7cb18eec8:   jne    0x00007fc7cb18ef17
   0.00%  │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eece:   shl    $0x3,%rsi
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eed2:   mov    %rbp,%rdi
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eed5:   mov    $0x3,%edx
   1.06%  │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eeda:   mov    $0x10,%rax
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eee1:   mov    $0x10,%rcx
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eee8:   add    %rax,%rsi
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eeeb:   add    %rcx,%rdi
   1.08%  │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eeee:   mov    $0x1,%r8d
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eef4:   movzwq (%rsi),%rdx
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eef8:   xor    (%rdi),%dx
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18eefb:   movzwq 0x1(%rsi),%rsi
   1.05%  │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18ef00:   xor    0x1(%rdi),%si
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18ef04:   xor    %rdi,%rdi
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18ef07:   or     %rsi,%rdx
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18ef0a:   cmovne %edi,%r8d                    ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.06%  │││││   │   │   │ ││││││││││││   ││   │││││  │       │││ │││    ││││││││  0x00007fc7cb18ef0e:   test   %r8d,%r8d
          │││││   │   │   │ ││││││││││││   ││   │││││╭ │       │││ │││    ││││││││  0x00007fc7cb18ef11:   jne    0x00007fc7cb18eff4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││││││ │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │ ││││││││││││   ││   ││││││ │       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││↘↘↘│ │       │││ │││    ││││││││  0x00007fc7cb18ef17:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │ ││││││││││││   ││   ││   │ │       │││ │││    ││││││││  0x00007fc7cb18ef20:   cmp    $0xffda6a26,%r11d            ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
          │││││   │   │   │ ││││││││││││   ││   ││   │╭│       │││ │││    ││││││││  0x00007fc7cb18ef27:   je     0x00007fc7cb18f085           ; ImmutableOopMap {rbx=Oop rbp=Oop r10=Oop r11=NarrowOop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef2d:   movsbl 0x10(,%r11,8),%esi           ; implicit exception: dispatches to 0x00007fc7cb18f445
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef36:   mov    0x14(,%r11,8),%edi           ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef3e:   xchg   %ax,%ax
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef40:   test   %sil,%sil
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef43:   jne    0x00007fc7cb18f185           ; ImmutableOopMap {rbx=Oop rbp=Oop rdi=NarrowOop r10=Oop r13=Oop r14=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef49:   cmpl   $0x3,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007fc7cb18f468
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef51:   jne    0x00007fc7cb18f185
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef57:   shl    $0x3,%rdi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef5b:   mov    %rdi,%rsi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef5e:   mov    %rbx,%rdi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef61:   mov    $0x3,%edx
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef66:   mov    $0x10,%rax
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef6d:   mov    $0x10,%rcx
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef74:   add    %rax,%rsi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef77:   add    %rcx,%rdi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef7a:   mov    $0x1,%r11d
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef80:   movzwq (%rsi),%rdx
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef84:   xor    (%rdi),%dx
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef87:   movzwq 0x1(%rsi),%rsi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef8c:   xor    0x1(%rdi),%si
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef90:   xor    %rdi,%rdi
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef93:   or     %rsi,%rdx
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef96:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18ef9a:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18efa0:   test   %r11d,%r11d
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18efa3:   je     0x00007fc7cb18f1e8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││       │││ │││    ││││││││  0x00007fc7cb18efa9:   mov    $0x6,%eax
   5.34%  │││││   │   │   │ ││││││││││││   ││   ││   │││ ↗↗↗↗↗↗│││↗│││↗↗↗↗││││││││  0x00007fc7cb18efae:   mov    %r9d,%ecx
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efb1:   add    %eax,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efb3:   mov    0x30(%rsp),%r8d
   1.04%  │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efb8:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   5.37%  │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efbb:   mov    0x20(%rsp),%rax
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efc0:   mov    0x28(%rsp),%r9
   0.00%  │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efc5:   mov    0x34(%rsp),%r11d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │ ││││││││││││   ││   ││   │││ │││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   1.07%  │││││   │   │   │ ↘│││││││││││   ││   ││   │││ │││││││││││││││││││││││││  0x00007fc7cb18efca:   cmp    %r8d,%r11d
          │││││   │   │   │  │││││││││││   ││   ││   ││╰ │││││││││││││││││││││││││  0x00007fc7cb18efcd:   jg     0x00007fc7cb18ec00
   0.01%  │││││   │   │   │  │││││││││││   ││   ││   ││ ╭│││││││││││││││││││││││││  0x00007fc7cb18efd3:   jmp    0x00007fc7cb18f08f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │  │││││││││││   ││   ││   ││ ││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          │││││   │   │   │  ││││↘││││││   ││   ││   ││ ││││││││││││││││││││││││││  0x00007fc7cb18efd8:   mov    $0x1,%eax
          │││││   │   │   │  ││││ ││││││   ││   ││   ││ │╰││││││││││││││││││││││││  0x00007fc7cb18efdd:   jmp    0x00007fc7cb18efae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │  ││││ ││││││   ││   ││   ││ │ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││││   │   │   │  ││││ ││││││   ││   ││   ││ │ ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │  ││││ ││││↘│   ││   ││   ││ │ ││││││││││││││││││││││││  0x00007fc7cb18efdf:   mov    $0x2,%eax
          │││││   │   │   │  ││││ ││││ │   ││   ││   ││ │ ╰│││││││││││││││││││││││  0x00007fc7cb18efe4:   jmp    0x00007fc7cb18efae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │  ││││ ││││ │   ││   ││   ││ │  │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││││   │   │   │  ││││ ││││ │   ││   ││   ││ │  │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │  ││││ ││││ │   ↘│   ││   ││ │  │││││││││││││││││││││││  0x00007fc7cb18efe6:   mov    $0x3,%eax
          │││││   │   │   │  ││││ ││││ │    │   ││   ││ │  ╰││││││││││││││││││││││  0x00007fc7cb18efeb:   jmp    0x00007fc7cb18efae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │  ││││ ││││ │    │   ││   ││ │   ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││││   │   │   │  ││││ ││││ │    │   ││   ││ │   ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │  ││││ ││││ │    │   ↘│   ││ │   ││││││││││││││││││││││  0x00007fc7cb18efed:   mov    $0x4,%eax
          │││││   │   │   │  ││││ ││││ │    │    │   ││ │   ╰│││││││││││││││││││││  0x00007fc7cb18eff2:   jmp    0x00007fc7cb18efae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │  ││││ ││││ │    │    │   ││ │    │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││││   │   │   │  ││││ ││││ │    │    │   ││ │    │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │  ││││ ││││ │    │    │   ↘│ │    │││││││││││││││││││││  0x00007fc7cb18eff4:   mov    $0x5,%eax
          │││││   │   │   │  ││││ ││││ │    │    │    │ │    ╰││││││││││││││││││││  0x00007fc7cb18eff9:   jmp    0x00007fc7cb18efae
   1.12%  │││││   │   │   │  ↘│││ ││││ │    │    │    │ │     ││││││││││││││││││││  0x00007fc7cb18effb:   mov    %r8d,0x30(%rsp)
          │││││   │   │   │   │││ ││││ │    │    │    │ │     ││││││││││││││││││││  0x00007fc7cb18f000:   mov    $0x1,%eax
          │││││   │   │   │   │││ ││││ │    │    │    │ │     ││││││││││││││││││││  0x00007fc7cb18f005:   mov    %ecx,%r9d
          │││││   │   │   │   │││ ││││ │    │    │    │ │     ╰│││││││││││││││││││  0x00007fc7cb18f008:   jmp    0x00007fc7cb18efae
          │││││   │   │   │   ↘││ ││││ │    │    │    │ │      │││││││││││││││││││  0x00007fc7cb18f00a:   mov    %r8d,0x30(%rsp)
          │││││   │   │   │    ││ ││││ │    │    │    │ │      │││││││││││││││││││  0x00007fc7cb18f00f:   mov    %edx,%r11d
          │││││   │   │   │    ││ ││││ │    │    │    │ │      │││││││││││││││││││  0x00007fc7cb18f012:   mov    %ecx,%r9d
          │││││   │   │   │    ││ ││││ │    │    │    │ │      ╰││││││││││││││││││  0x00007fc7cb18f015:   jmp    0x00007fc7cb18ec9c
          │││││   │   │   │    ↘│ ││││ │    │    │    │ │       ││││││││││││││││││  0x00007fc7cb18f01a:   mov    %r8d,0x30(%rsp)
          │││││   │   │   │     │ ││││ │    │    │    │ │       ││││││││││││││││││  0x00007fc7cb18f01f:   mov    %edx,%r11d                   ;   {no_reloc}
          │││││   │   │   │     │ ││││ │    │    │    │ │       ││││││││││││││││││  0x00007fc7cb18f022:   mov    %ecx,%r9d
          │││││   │   │   │     │ ││││ │    │    │    │ │       ╰│││││││││││││││││  0x00007fc7cb18f025:   jmp    0x00007fc7cb18ec9c
   5.51%  │││││   │   │   │     ↘ ││││ │    │    │    │ │        │││││││││││││││││  0x00007fc7cb18f02a:   mov    %r8d,0x30(%rsp)
          │││││   │   │   │       ││││ │    │    │    │ │        │││││││││││││││││  0x00007fc7cb18f02f:   mov    %edx,%r11d
          │││││   │   │   │       ││││ │    │    │    │ │        │││││││││││││││││  0x00007fc7cb18f032:   mov    %ecx,%r9d
          │││││   │   │   │       ││││ │    │    │    │ │        ╰││││││││││││││││  0x00007fc7cb18f035:   jmp    0x00007fc7cb18ec9c           ;* unwind (locked if synchronized)
          │││││   │   │   │       ││││ │    │    │    │ │         ││││││││││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │       ││││ │    │    │    │ │         ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │││││   │   │   │       ││││ │    │    │    │ │         ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.13%  │││││   │   │   │       ↘│││ │    │    │    │ │         ││││││││││││││││  0x00007fc7cb18f03a:   mov    $0x2,%eax
   0.00%  │││││   │   │   │        │││ │    │    │    │ │         ││││││││││││││││  0x00007fc7cb18f03f:   nop
          │││││   │   │   │        │││ │    │    │    │ │         ╰│││││││││││││││  0x00007fc7cb18f040:   jmp    0x00007fc7cb18efae
          │││││   │   │   │        ↘││ │    │    │    │ │          │││││││││││││││  0x00007fc7cb18f045:   mov    %r8,0x8(%rsp)
          │││││   │   │   │         ││ │    │    │    │ │          ╰││││││││││││││  0x00007fc7cb18f04a:   jmp    0x00007fc7cb18ed36
          │││││   │   │   │         ↘│ │    │    │    │ │           ││││││││││││││  0x00007fc7cb18f04f:   mov    %r8,0x8(%rsp)
          │││││   │   │   │          │ │    │    │    │ │           ╰│││││││││││││  0x00007fc7cb18f054:   jmp    0x00007fc7cb18ed36
   0.00%  │││││   │   │   │          ↘ │    │    │    │ │            │││││││││││││  0x00007fc7cb18f059:   mov    %r8,0x8(%rsp)
          │││││   │   │   │            │    │    │    │ │            │││││││││││││  0x00007fc7cb18f05e:   xchg   %ax,%ax
   4.39%  │││││   │   │   │            │    │    │    │ │            ╰││││││││││││  0x00007fc7cb18f060:   jmp    0x00007fc7cb18ed36           ;* unwind (locked if synchronized)
          │││││   │   │   │            │    │    │    │ │             ││││││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │            │    │    │    │ │             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │││││   │   │   │            │    │    │    │ │             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.02%  │││││   │   │   │            ↘    │    │    │ │             ││││││││││││  0x00007fc7cb18f065:   mov    $0x3,%eax
          │││││   │   │   │                 │    │    │ │             ╰│││││││││││  0x00007fc7cb18f06a:   jmp    0x00007fc7cb18efae           ;* unwind (locked if synchronized)
          │││││   │   │   │                 │    │    │ │              │││││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                 │    │    │ │              │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │││││   │   │   │                 │    │    │ │              │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.04%  │││││   │   │   │                 ↘    │    │ │              │││││││││││  0x00007fc7cb18f06f:   mov    $0x4,%eax
          │││││   │   │   │                      │    │ │              ╰││││││││││  0x00007fc7cb18f074:   jmp    0x00007fc7cb18efae           ;* unwind (locked if synchronized)
          │││││   │   │   │                      │    │ │               ││││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                      │    │ │               ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │││││   │   │   │                      │    │ │               ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.03%  │││││   │   │   │                      ↘    │ │               ││││││││││  0x00007fc7cb18f079:   mov    $0x5,%eax
          │││││   │   │   │                           │ │               ││││││││││  0x00007fc7cb18f07e:   xchg   %ax,%ax
          │││││   │   │   │                           │ │               ╰│││││││││  0x00007fc7cb18f080:   jmp    0x00007fc7cb18efae           ;* unwind (locked if synchronized)
          │││││   │   │   │                           │ │                │││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                           │ │                │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │││││   │   │   │                           │ │                │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││││   │   │   │                           ↘ │                │││││││││  0x00007fc7cb18f085:   mov    $0x6,%eax
   1.06%  │││││   │   │   │                             │                ╰││││││││  0x00007fc7cb18f08a:   jmp    0x00007fc7cb18efae           ;* unwind (locked if synchronized)
          │││││   │   │   │                             │                 ││││││││                                                            ; - java.lang.String::equals@-3
          │││││   │   │   │                             │                 ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │││││   │   │   │                             │                 ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.03%  │││││   │   │   │                             ↘                 ││││││││  0x00007fc7cb18f08f:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │                                               ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@41 (line 129)
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18f091:   mov    0x40(%rsp),%rbp
   0.02%  │││││   │   │   │                                               ││││││││  0x00007fc7cb18f096:   add    $0x48,%rsp
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18f09a:   nopw   0x0(%rax,%rax,1)
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18f0a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││   │   │   │                                               ││││││││  0x00007fc7cb18f0a7:   ja     0x00007fc7cb18f28b
   0.01%  │││││   │   │   │                                               ││││││││  0x00007fc7cb18f0ad:   vzeroupper 
   0.00%  │││││   │   │   │                                               ││││││││  0x00007fc7cb18f0b0:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││   │   │   │                                               ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │││││   │   │   │                                               ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││↘│   │   │   │                                               ││││││││  0x00007fc7cb18f0b1:   mov    $0x1,%r8d
          │││ │   │   │   │                                               ╰│││││││  0x00007fc7cb18f0b7:   jmp    0x00007fc7cb18ebaf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │   │   │   │                                                │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │││ │   │   │   │                                                │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││ ↘   │   │   │                                                │││││││  0x00007fc7cb18f0bc:   mov    $0x2,%r8d
          │││     │   │   │                                                ╰││││││  0x00007fc7cb18f0c2:   jmp    0x00007fc7cb18ebaf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││     │   │   │                                                 ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │││     │   │   │                                                 ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││     ↘   │   │                                                 ││││││  0x00007fc7cb18f0c7:   mov    $0x3,%r8d
          │││         │   │                                                 ╰│││││  0x00007fc7cb18f0cd:   jmp    0x00007fc7cb18ebaf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││         │   │                                                  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │││         │   │                                                  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││         ↘   │                                                  │││││  0x00007fc7cb18f0d2:   mov    $0x4,%r8d
          │││             │                                                  ╰││││  0x00007fc7cb18f0d8:   jmp    0x00007fc7cb18ebaf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││             │                                                   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │││             │                                                   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │││             ↘                                                   ││││  0x00007fc7cb18f0dd:   mov    $0x5,%r8d
          │││                                                                 ╰│││  0x00007fc7cb18f0e3:   jmp    0x00007fc7cb18ebaf
   0.01%  ↘││                                                                  │││  0x00007fc7cb18f0e8:   mov    $0x1,%r8d
           ││                                                                  │││  0x00007fc7cb18f0ee:   mov    %r10,0x18(%rsp)
           ││                                                                  │││  0x00007fc7cb18f0f3:   mov    %rcx,%r10
           ││                                                                  ╰││  0x00007fc7cb18f0f6:   jmp    0x00007fc7cb18ebaf
           ↘│                                                                   ││  0x00007fc7cb18f0fb:   mov    %r10,0x18(%rsp)
            │                                                                   ││  0x00007fc7cb18f100:   mov    %rcx,%r10
            │                                                                   ╰│  0x00007fc7cb18f103:   jmp    0x00007fc7cb18e8a9
            ↘                                                                    │  0x00007fc7cb18f108:   mov    %r10,0x18(%rsp)
                                                                                 │  0x00007fc7cb18f10d:   mov    %rcx,%r10
                                                                                 ╰  0x00007fc7cb18f110:   jmp    0x00007fc7cb18e8a9
                                                                                    0x00007fc7cb18f115:   mov    %r10,0x18(%rsp)
....................................................................................................
  95.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.87%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1024 
   0.60%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.30%     [kernel.kallsyms]  exc_page_fault 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  native_read_msr 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  release_pages 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1053 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  vm_normal_page 
   1.65%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.87%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1024 
   0.60%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.30%     [kernel.kallsyms]  exc_page_fault 
   0.23%     [kernel.kallsyms]  __free_one_page 
   0.20%     [kernel.kallsyms]  native_read_msr 
   0.15%                        <unknown> 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  release_pages 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 1053 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.54%  <...other 267 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.93%        jvmci, level 4
   3.39%     [kernel.kallsyms]
   0.30%             libjvm.so
   0.16%             libc.so.6
   0.15%                      
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%           c1, level 1
   0.00%               nvme.ko
   0.00%                kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:22:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.051 ns/op
# Warmup Iteration   2: 25.016 ns/op
# Warmup Iteration   3: 25.790 ns/op
# Warmup Iteration   4: 25.000 ns/op
# Warmup Iteration   5: 25.291 ns/op
Iteration   1: 25.683 ns/op
Iteration   2: 24.994 ns/op
Iteration   3: 24.671 ns/op
Iteration   4: 25.336 ns/op
Iteration   5: 25.451 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  25.227 ±(99.9%) 1.532 ns/op [Average]
  (min, avg, max) = (24.671, 25.227, 25.683), stdev = 0.398
  CI (99.9%): [23.695, 26.759] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 221195 total address lines.
Perf output processed (skipped 78.785 seconds):
 Column 1: cycles (50053 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1061 

                                                                      # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                      #           [sp+0x20]  (sp of caller)
                                                                      0x00007f2f77199480:   mov    0x8(%rsi),%r10d
                                                                      0x00007f2f77199484:   movabs $0x7f2ef3000000,%r12
                                                                      0x00007f2f7719948e:   add    %r12,%r10
                                                                      0x00007f2f77199491:   xor    %r12,%r12
                                                                      0x00007f2f77199494:   cmp    %r10,%rax
                                                                      0x00007f2f77199497:   jne    0x00007f2f76af9080           ;   {runtime_call ic_miss_stub}
                                                                      0x00007f2f7719949d:   data16 xchg %ax,%ax
                                                                    [Verified Entry Point]
   1.22%                                                              0x00007f2f771994a0:   mov    %eax,-0x14000(%rsp)
   2.06%                                                              0x00007f2f771994a7:   sub    $0x18,%rsp
   0.81%                                                              0x00007f2f771994ab:   nop
   0.41%                                                              0x00007f2f771994ac:   cmpl   $0x1,0x20(%r15)
   0.99%                                                              0x00007f2f771994b4:   jne    0x00007f2f77199d17
   0.97%                                                              0x00007f2f771994ba:   mov    %rbp,0x10(%rsp)
   0.83%                                                              0x00007f2f771994bf:   mov    %rdx,%r10
   0.40%                                                              0x00007f2f771994c2:   movabs $0x7fed35030,%rsi            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
   0.92%                                                              0x00007f2f771994cc:   cmp    %r10,%rsi
          ╭                                                           0x00007f2f771994cf:   je     0x00007f2f77199b76
   0.79%  │                                                           0x00007f2f771994d5:   test   %r10,%r10
          │╭                                                          0x00007f2f771994d8:   je     0x00007f2f77199549
   0.70%  ││                                                          0x00007f2f771994de:   xchg   %ax,%ax
   0.42%  ││                                                          0x00007f2f771994e0:   cmpb   $0x0,0x10(%r10)
   2.40%  ││╭                                                         0x00007f2f771994e5:   jne    0x00007f2f77199549           ;* unwind (locked if synchronized)
          │││                                                                                                                   ; - java.lang.String::equals@-3
          │││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.10%  │││                                                         0x00007f2f771994eb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │││                                                                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@0 (line 244)
   0.53%  │││                                                         0x00007f2f771994ef:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199e26
   7.02%  │││╭                                                        0x00007f2f771994f7:   jne    0x00007f2f77199549
   0.20%  ││││                                                        0x00007f2f771994fd:   shl    $0x3,%rsi
   0.05%  ││││                                                        0x00007f2f77199501:   movabs $0x7fed35048,%rdi            ;   {oop([B{0x00000007fed35048})}
          ││││                                                        0x00007f2f7719950b:   mov    $0x5,%edx
          ││││                                                        0x00007f2f77199510:   mov    $0x10,%rax
   0.23%  ││││                                                        0x00007f2f77199517:   mov    $0x10,%rcx
   0.04%  ││││                                                        0x00007f2f7719951e:   add    %rax,%rsi
          ││││                                                        0x00007f2f77199521:   add    %rcx,%rdi
          ││││                                                        0x00007f2f77199524:   mov    $0x1,%r11d
   0.18%  ││││                                                        0x00007f2f7719952a:   mov    (%rsi),%edx
   0.05%  ││││                                                        0x00007f2f7719952c:   xor    (%rdi),%edx
          ││││                                                        0x00007f2f7719952e:   mov    0x1(%rsi),%esi
          ││││                                                        0x00007f2f77199531:   xor    0x1(%rdi),%esi
   0.20%  ││││                                                        0x00007f2f77199534:   xor    %rdi,%rdi
   0.04%  ││││                                                        0x00007f2f77199537:   or     %rsi,%rdx
   0.01%  ││││                                                        0x00007f2f7719953a:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          ││││                                                                                                                  ; - java.lang.String::equals@-3
          ││││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.24%  ││││                                                        0x00007f2f7719953e:   xchg   %ax,%ax
          ││││                                                        0x00007f2f77199540:   test   %r11d,%r11d
          ││││╭                                                       0x00007f2f77199543:   jne    0x00007f2f77199b76
   2.47%  │↘↘↘│                                                       0x00007f2f77199549:   movabs $0x7fed35060,%rsi            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
   0.00%  │   │                                                       0x00007f2f77199553:   cmp    %r10,%rsi
          │   │╭                                                      0x00007f2f77199556:   je     0x00007f2f77199b95
   0.04%  │   ││                                                      0x00007f2f7719955c:   nopl   0x0(%rax)
   0.34%  │   ││                                                      0x00007f2f77199560:   test   %r10,%r10
          │   ││╭                                                     0x00007f2f77199563:   je     0x00007f2f771995d8
   2.28%  │   │││                                                     0x00007f2f77199569:   cmpb   $0x0,0x10(%r10)
   0.00%  │   │││╭                                                    0x00007f2f7719956e:   jne    0x00007f2f771995d8
   0.05%  │   ││││                                                    0x00007f2f77199574:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
          │   ││││                                                                                                              ; - java.lang.String::equals@-3
          │   ││││                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.30%  │   ││││                                                    0x00007f2f77199578:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││││                                                                                                              ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││││                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
   2.31%  │   ││││                                                    0x00007f2f77199580:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199e4d
   0.07%  │   ││││╭                                                   0x00007f2f77199588:   jne    0x00007f2f771995d8
          │   │││││                                                   0x00007f2f7719958e:   shl    $0x3,%rsi
   0.25%  │   │││││                                                   0x00007f2f77199592:   movabs $0x7fed35078,%rdi            ;   {oop([B{0x00000007fed35078})}
          │   │││││                                                   0x00007f2f7719959c:   mov    $0x7,%edx
          │   │││││                                                   0x00007f2f771995a1:   mov    $0x10,%rax
          │   │││││                                                   0x00007f2f771995a8:   mov    $0x10,%rcx
   0.26%  │   │││││                                                   0x00007f2f771995af:   add    %rax,%rsi
          │   │││││                                                   0x00007f2f771995b2:   add    %rcx,%rdi
          │   │││││                                                   0x00007f2f771995b5:   mov    $0x1,%r11d
          │   │││││                                                   0x00007f2f771995bb:   mov    (%rsi),%edx
   0.26%  │   │││││                                                   0x00007f2f771995bd:   xor    (%rdi),%edx
          │   │││││                                                   0x00007f2f771995bf:   mov    0x3(%rsi),%esi
          │   │││││                                                   0x00007f2f771995c2:   xor    0x3(%rdi),%esi
          │   │││││                                                   0x00007f2f771995c5:   xor    %rdi,%rdi
   0.28%  │   │││││                                                   0x00007f2f771995c8:   or     %rsi,%rdx
          │   │││││                                                   0x00007f2f771995cb:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   │││││                                                                                                             ; - java.lang.String::equals@-3
          │   │││││                                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.10%  │   │││││                                                   0x00007f2f771995cf:   test   %r11d,%r11d
          │   │││││╭                                                  0x00007f2f771995d2:   jne    0x00007f2f77199b95
   0.43%  │   ││↘↘↘│                                                  0x00007f2f771995d8:   movabs $0x7fed35090,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
   2.09%  │   ││   │                                                  0x00007f2f771995e2:   cmp    %r10,%rsi
          │   ││   │╭                                                 0x00007f2f771995e5:   je     0x00007f2f77199bb4
          │   ││   ││                                                 0x00007f2f771995eb:   test   %r10,%r10
          │   ││   ││╭                                                0x00007f2f771995ee:   je     0x00007f2f7719965f
   0.05%  │   ││   │││                                                0x00007f2f771995f4:   cmpb   $0x0,0x10(%r10)
   0.31%  │   ││   │││╭                                               0x00007f2f771995f9:   jne    0x00007f2f7719965f           ;* unwind (locked if synchronized)
          │   ││   ││││                                                                                                         ; - java.lang.String::equals@-3
          │   ││   ││││                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
   1.99%  │   ││   ││││                                               0x00007f2f771995ff:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││││                                                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││││                                                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
   0.00%  │   ││   ││││                                               0x00007f2f77199603:   cmpl   $0x10,0xc(,%rsi,8)           ; implicit exception: dispatches to 0x00007f2f77199e70
   0.40%  │   ││   ││││╭                                              0x00007f2f7719960b:   jne    0x00007f2f7719965f
          │   ││   │││││                                              0x00007f2f77199611:   shl    $0x3,%rsi
          │   ││   │││││                                              0x00007f2f77199615:   movabs $0x7fed350a8,%rdi            ;   {oop([B{0x00000007fed350a8})}
          │   ││   │││││                                              0x00007f2f7719961f:   mov    $0x10,%edx
          │   ││   │││││                                              0x00007f2f77199624:   mov    $0x10,%rax
          │   ││   │││││                                              0x00007f2f7719962b:   mov    $0x10,%rcx
          │   ││   │││││                                              0x00007f2f77199632:   add    %rax,%rsi
          │   ││   │││││                                              0x00007f2f77199635:   add    %rcx,%rdi
          │   ││   │││││                                              0x00007f2f77199638:   mov    $0x1,%r11d
          │   ││   │││││                                              0x00007f2f7719963e:   vmovdqu (%rsi),%xmm0
          │   ││   │││││                                              0x00007f2f77199642:   vmovdqu (%rdi),%xmm1
          │   ││   │││││                                              0x00007f2f77199646:   vpxor  %xmm1,%xmm0,%xmm0
          │   ││   │││││                                              0x00007f2f7719964a:   xor    %rsi,%rsi
          │   ││   │││││                                              0x00007f2f7719964d:   vptest %xmm0,%xmm0
          │   ││   │││││                                              0x00007f2f77199652:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   │││││                                                                                                        ; - java.lang.String::equals@-3
          │   ││   │││││                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │   ││   │││││                                              0x00007f2f77199656:   test   %r11d,%r11d
          │   ││   │││││╭                                             0x00007f2f77199659:   jne    0x00007f2f77199bb4
   1.96%  │   ││   ││↘↘↘│                                             0x00007f2f7719965f:   movabs $0x7fed350c8,%rsi            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
   0.00%  │   ││   ││   │                                             0x00007f2f77199669:   cmp    %r10,%rsi
          │   ││   ││   │╭                                            0x00007f2f7719966c:   je     0x00007f2f77199bd3
   0.01%  │   ││   ││   ││                                            0x00007f2f77199672:   test   %r10,%r10
          │   ││   ││   ││╭                                           0x00007f2f77199675:   je     0x00007f2f771996eb
   0.22%  │   ││   ││   │││                                           0x00007f2f7719967b:   nopl   0x0(%rax,%rax,1)
   1.85%  │   ││   ││   │││                                           0x00007f2f77199680:   cmpb   $0x0,0x10(%r10)
   0.01%  │   ││   ││   │││╭                                          0x00007f2f77199685:   jne    0x00007f2f771996eb           ;* unwind (locked if synchronized)
          │   ││   ││   ││││                                                                                                    ; - java.lang.String::equals@-3
          │   ││   ││   ││││                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.01%  │   ││   ││   ││││                                          0x00007f2f7719968b:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││││                                                                                                    ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││││                                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
   0.20%  │   ││   ││   ││││                                          0x00007f2f7719968f:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199e93
   1.96%  │   ││   ││   ││││╭                                         0x00007f2f77199697:   jne    0x00007f2f771996eb
   0.01%  │   ││   ││   │││││                                         0x00007f2f7719969d:   shl    $0x3,%rsi
          │   ││   ││   │││││                                         0x00007f2f771996a1:   movabs $0x7fed350e0,%rdi            ;   {oop([B{0x00000007fed350e0})}
   0.24%  │   ││   ││   │││││                                         0x00007f2f771996ab:   mov    $0xa,%edx
   0.00%  │   ││   ││   │││││                                         0x00007f2f771996b0:   mov    $0x10,%rax
   0.00%  │   ││   ││   │││││                                         0x00007f2f771996b7:   mov    $0x10,%rcx
          │   ││   ││   │││││                                         0x00007f2f771996be:   add    %rax,%rsi
   0.26%  │   ││   ││   │││││                                         0x00007f2f771996c1:   add    %rcx,%rdi
          │   ││   ││   │││││                                         0x00007f2f771996c4:   mov    $0x1,%r11d
   0.01%  │   ││   ││   │││││                                         0x00007f2f771996ca:   mov    (%rsi),%rdx
          │   ││   ││   │││││                                         0x00007f2f771996cd:   xor    (%rdi),%rdx
   0.29%  │   ││   ││   │││││                                         0x00007f2f771996d0:   mov    0x2(%rsi),%rsi
   0.06%  │   ││   ││   │││││                                         0x00007f2f771996d4:   xor    0x2(%rdi),%rsi
   0.24%  │   ││   ││   │││││                                         0x00007f2f771996d8:   xor    %rdi,%rdi
          │   ││   ││   │││││                                         0x00007f2f771996db:   or     %rsi,%rdx
   0.23%  │   ││   ││   │││││                                         0x00007f2f771996de:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   │││││                                                                                                   ; - java.lang.String::equals@-3
          │   ││   ││   │││││                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.30%  │   ││   ││   │││││                                         0x00007f2f771996e2:   test   %r11d,%r11d
          │   ││   ││   │││││╭                                        0x00007f2f771996e5:   jne    0x00007f2f77199bd3
   0.27%  │   ││   ││   ││↘↘↘│                                        0x00007f2f771996eb:   movabs $0x7fed35100,%rsi            ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
   0.25%  │   ││   ││   ││   │                                        0x00007f2f771996f5:   cmp    %r10,%rsi
          │   ││   ││   ││   │╭                                       0x00007f2f771996f8:   je     0x00007f2f77199bf2
   1.37%  │   ││   ││   ││   ││                                       0x00007f2f771996fe:   xchg   %ax,%ax
   0.00%  │   ││   ││   ││   ││                                       0x00007f2f77199700:   test   %r10,%r10
          │   ││   ││   ││   ││╭                                      0x00007f2f77199703:   je     0x00007f2f7719977e
   0.26%  │   ││   ││   ││   │││                                      0x00007f2f77199709:   cmpb   $0x0,0x10(%r10)
   0.12%  │   ││   ││   ││   │││╭                                     0x00007f2f7719970e:   jne    0x00007f2f7719977e
   1.40%  │   ││   ││   ││   ││││                                     0x00007f2f77199714:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││││                                                                                               ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.01%  │   ││   ││   ││   ││││                                     0x00007f2f77199718:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││││                                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││││                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
   0.29%  │   ││   ││   ││   ││││                                     0x00007f2f77199720:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199eb6
   1.59%  │   ││   ││   ││   ││││╭                                    0x00007f2f77199728:   jne    0x00007f2f7719977e
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f7719972e:   shl    $0x3,%rsi
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f77199732:   movabs $0x7fed35118,%rdi            ;   {oop([B{0x00000007fed35118})}
   0.00%  │   ││   ││   ││   │││││                                    0x00007f2f7719973c:   mov    $0x3,%edx
   0.83%  │   ││   ││   ││   │││││                                    0x00007f2f77199741:   mov    $0x10,%rax
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f77199748:   mov    $0x10,%rcx
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f7719974f:   add    %rax,%rsi
          │   ││   ││   ││   │││││                                    0x00007f2f77199752:   add    %rcx,%rdi
   0.81%  │   ││   ││   ││   │││││                                    0x00007f2f77199755:   mov    $0x1,%r11d
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f7719975b:   movzwq (%rsi),%rdx
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f7719975f:   xor    (%rdi),%dx
   0.00%  │   ││   ││   ││   │││││                                    0x00007f2f77199762:   movzwq 0x1(%rsi),%rsi
   0.80%  │   ││   ││   ││   │││││                                    0x00007f2f77199767:   xor    0x1(%rdi),%si
   0.01%  │   ││   ││   ││   │││││                                    0x00007f2f7719976b:   xor    %rdi,%rdi
   0.00%  │   ││   ││   ││   │││││                                    0x00007f2f7719976e:   or     %rsi,%rdx
   0.00%  │   ││   ││   ││   │││││                                    0x00007f2f77199771:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   │││││                                                                                              ; - java.lang.String::equals@-3
          │   ││   ││   ││   │││││                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.86%  │   ││   ││   ││   │││││                                    0x00007f2f77199775:   test   %r11d,%r11d
          │   ││   ││   ││   │││││╭                                   0x00007f2f77199778:   jne    0x00007f2f77199bf2
   0.13%  │   ││   ││   ││   ││↘↘↘│                                   0x00007f2f7719977e:   movabs $0x7fed35130,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
   0.25%  │   ││   ││   ││   ││   │                                   0x00007f2f77199788:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   │╭                                  0x00007f2f7719978b:   je     0x00007f2f77199c11
   0.12%  │   ││   ││   ││   ││   ││                                  0x00007f2f77199791:   test   %r10,%r10
          │   ││   ││   ││   ││   ││╭                                 0x00007f2f77199794:   je     0x00007f2f7719980d
   1.12%  │   ││   ││   ││   ││   │││                                 0x00007f2f7719979a:   nopw   0x0(%rax,%rax,1)
   0.12%  │   ││   ││   ││   ││   │││                                 0x00007f2f771997a0:   cmpb   $0x0,0x10(%r10)
   0.27%  │   ││   ││   ││   ││   │││╭                                0x00007f2f771997a5:   jne    0x00007f2f7719980d           ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││││                                                                                          ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││││                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.09%  │   ││   ││   ││   ││   ││││                                0x00007f2f771997ab:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││││                                                                                          ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││││                                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
   1.00%  │   ││   ││   ││   ││   ││││                                0x00007f2f771997af:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199ed9
   0.41%  │   ││   ││   ││   ││   ││││╭                               0x00007f2f771997b7:   jne    0x00007f2f7719980d
   0.00%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997bd:   shl    $0x3,%rsi
   0.39%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997c1:   movabs $0x7fed35148,%rdi            ;   {oop([B{0x00000007fed35148})}
   0.11%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997cb:   mov    $0x3,%edx
          │   ││   ││   ││   ││   │││││                               0x00007f2f771997d0:   mov    $0x10,%rax
   0.00%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997d7:   mov    $0x10,%rcx
   0.39%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997de:   add    %rax,%rsi
   0.12%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997e1:   add    %rcx,%rdi
          │   ││   ││   ││   ││   │││││                               0x00007f2f771997e4:   mov    $0x1,%r11d
   0.01%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997ea:   movzwq (%rsi),%rdx
   0.43%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997ee:   xor    (%rdi),%dx
   0.12%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997f1:   movzwq 0x1(%rsi),%rsi
          │   ││   ││   ││   ││   │││││                               0x00007f2f771997f6:   xor    0x1(%rdi),%si
   0.00%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997fa:   xor    %rdi,%rdi
   0.42%  │   ││   ││   ││   ││   │││││                               0x00007f2f771997fd:   or     %rsi,%rdx
   0.11%  │   ││   ││   ││   ││   │││││                               0x00007f2f77199800:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   │││││                                                                                         ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   │││││                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.00%  │   ││   ││   ││   ││   │││││                               0x00007f2f77199804:   test   %r11d,%r11d
          │   ││   ││   ││   ││   │││││╭                              0x00007f2f77199807:   jne    0x00007f2f77199c11
   0.14%  │   ││   ││   ││   ││   ││↘↘↘│                              0x00007f2f7719980d:   movabs $0x7fed35160,%rsi            ;   {oop(&quot;VAN&quot;{0x00000007fed35160})}
   1.13%  │   ││   ││   ││   ││   ││   │                              0x00007f2f77199817:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   │╭                             0x00007f2f7719981a:   je     0x00007f2f77199c31
   0.08%  │   ││   ││   ││   ││   ││   ││                             0x00007f2f77199820:   test   %r10,%r10
          │   ││   ││   ││   ││   ││   ││╭                            0x00007f2f77199823:   je     0x00007f2f7719989e
   0.30%  │   ││   ││   ││   ││   ││   │││                            0x00007f2f77199829:   cmpb   $0x0,0x10(%r10)
   0.15%  │   ││   ││   ││   ││   ││   │││╭                           0x00007f2f7719982e:   jne    0x00007f2f7719989e
   0.77%  │   ││   ││   ││   ││   ││   ││││                           0x00007f2f77199834:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││││                                                                                     ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││││                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.10%  │   ││   ││   ││   ││   ││   ││││                           0x00007f2f77199838:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││││                                                                                     ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││││                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
   0.27%  │   ││   ││   ││   ││   ││   ││││                           0x00007f2f77199840:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199efc
   1.07%  │   ││   ││   ││   ││   ││   ││││╭                          0x00007f2f77199848:   jne    0x00007f2f7719989e
   0.13%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719984e:   shl    $0x3,%rsi
          │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199852:   movabs $0x7fed35178,%rdi            ;   {oop([B{0x00000007fed35178})}
   0.00%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719985c:   mov    $0x3,%edx
   0.14%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199861:   mov    $0x10,%rax
   0.13%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199868:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719986f:   add    %rax,%rsi
   0.00%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199872:   add    %rcx,%rdi
   0.16%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199875:   mov    $0x1,%r11d
   0.14%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719987b:   movzwq (%rsi),%rdx
   0.01%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719987f:   xor    (%rdi),%dx
   0.02%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199882:   movzwq 0x1(%rsi),%rsi
   0.15%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199887:   xor    0x1(%rdi),%si
   0.10%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719988b:   xor    %rdi,%rdi
          │   ││   ││   ││   ││   ││   │││││                          0x00007f2f7719988e:   or     %rsi,%rdx
   0.10%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199891:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   │││││                                                                                    ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   │││││                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.24%  │   ││   ││   ││   ││   ││   │││││                          0x00007f2f77199895:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   │││││╭                         0x00007f2f77199898:   jne    0x00007f2f77199c31
   0.19%  │   ││   ││   ││   ││   ││   ││↘↘↘│                         0x00007f2f7719989e:   movabs $0x7fed35190,%rsi            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fed35190})}
   0.22%  │   ││   ││   ││   ││   ││   ││   │                         0x00007f2f771998a8:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   ││   │╭                        0x00007f2f771998ab:   je     0x00007f2f77199c51
   0.12%  │   ││   ││   ││   ││   ││   ││   ││                        0x00007f2f771998b1:   test   %r10,%r10
          │   ││   ││   ││   ││   ││   ││   ││╭                       0x00007f2f771998b4:   je     0x00007f2f7719992b
   0.71%  │   ││   ││   ││   ││   ││   ││   │││                       0x00007f2f771998ba:   nopw   0x0(%rax,%rax,1)
   0.17%  │   ││   ││   ││   ││   ││   ││   │││                       0x00007f2f771998c0:   cmpb   $0x0,0x10(%r10)
          │   ││   ││   ││   ││   ││   ││   │││╭                      0x00007f2f771998c5:   jne    0x00007f2f7719992b           ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││││                                                                                ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
   0.11%  │   ││   ││   ││   ││   ││   ││   ││││                      0x00007f2f771998cb:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││││                                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││││                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
   0.73%  │   ││   ││   ││   ││   ││   ││   ││││                      0x00007f2f771998cf:   cmpl   $0xa,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199f1f
   0.24%  │   ││   ││   ││   ││   ││   ││   ││││╭                     0x00007f2f771998d7:   jne    0x00007f2f7719992b
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998dd:   shl    $0x3,%rsi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998e1:   movabs $0x7fed351a8,%rdi            ;   {oop([B{0x00000007fed351a8})}
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998eb:   mov    $0xa,%edx
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998f0:   mov    $0x10,%rax
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998f7:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f771998fe:   add    %rax,%rsi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199901:   add    %rcx,%rdi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199904:   mov    $0x1,%r11d
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f7719990a:   mov    (%rsi),%rdx
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f7719990d:   xor    (%rdi),%rdx
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199910:   mov    0x2(%rsi),%rsi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199914:   xor    0x2(%rdi),%rsi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199918:   xor    %rdi,%rdi
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f7719991b:   or     %rsi,%rdx
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f7719991e:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   │││││                                                                               ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   │││││                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
          │   ││   ││   ││   ││   ││   ││   │││││                     0x00007f2f77199922:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   ││   │││││╭                    0x00007f2f77199925:   jne    0x00007f2f77199c51
   0.43%  │   ││   ││   ││   ││   ││   ││   ││↘↘↘│                    0x00007f2f7719992b:   movabs $0x7fed351c8,%rsi            ;   {oop(&quot;TRUCK&quot;{0x00000007fed351c8})}
   0.55%  │   ││   ││   ││   ││   ││   ││   ││   │                    0x00007f2f77199935:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   │╭                   0x00007f2f77199938:   je     0x00007f2f77199c71
   0.13%  │   ││   ││   ││   ││   ││   ││   ││   ││                   0x00007f2f7719993e:   xchg   %ax,%ax
   0.00%  │   ││   ││   ││   ││   ││   ││   ││   ││                   0x00007f2f77199940:   test   %r10,%r10
          │   ││   ││   ││   ││   ││   ││   ││   ││╭                  0x00007f2f77199943:   je     0x00007f2f771999b8
   0.35%  │   ││   ││   ││   ││   ││   ││   ││   │││                  0x00007f2f77199949:   cmpb   $0x0,0x10(%r10)
   0.36%  │   ││   ││   ││   ││   ││   ││   ││   │││╭                 0x00007f2f7719994e:   jne    0x00007f2f771999b8
   0.10%  │   ││   ││   ││   ││   ││   ││   ││   ││││                 0x00007f2f77199954:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││││                                                                           ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││││                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
          │   ││   ││   ││   ││   ││   ││   ││   ││││                 0x00007f2f77199958:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││   ││││                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││││                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@87 (line 260)
   0.38%  │   ││   ││   ││   ││   ││   ││   ││   ││││                 0x00007f2f77199960:   cmpl   $0x5,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199f42
   0.41%  │   ││   ││   ││   ││   ││   ││   ││   ││││╭                0x00007f2f77199968:   jne    0x00007f2f771999b8
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719996e:   shl    $0x3,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f77199972:   movabs $0x7fed351e0,%rdi            ;   {oop([B{0x00000007fed351e0})}
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719997c:   mov    $0x5,%edx
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f77199981:   mov    $0x10,%rax
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f77199988:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719998f:   add    %rax,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f77199992:   add    %rcx,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f77199995:   mov    $0x1,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719999b:   mov    (%rsi),%edx
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719999d:   xor    (%rdi),%edx
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f7719999f:   mov    0x1(%rsi),%esi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f771999a2:   xor    0x1(%rdi),%esi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f771999a5:   xor    %rdi,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f771999a8:   or     %rsi,%rdx
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f771999ab:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   │││││                                                                          ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   │││││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
          │   ││   ││   ││   ││   ││   ││   ││   │││││                0x00007f2f771999af:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   │││││╭               0x00007f2f771999b2:   jne    0x00007f2f77199c71
   0.12%  │   ││   ││   ││   ││   ││   ││   ││   ││↘↘↘│               0x00007f2f771999b8:   movabs $0x7fed351f8,%rsi            ;   {oop(&quot;BUS&quot;{0x00000007fed351f8})}
   0.21%  │   ││   ││   ││   ││   ││   ││   ││   ││   │               0x00007f2f771999c2:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │╭              0x00007f2f771999c5:   je     0x00007f2f77199c91
   0.33%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││              0x00007f2f771999cb:   test   %r10,%r10
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││╭             0x00007f2f771999ce:   je     0x00007f2f77199a49
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││             0x00007f2f771999d4:   cmpb   $0x0,0x10(%r10)
   0.01%  │   ││   ││   ││   ││   ││   ││   ││   ││   │││╭            0x00007f2f771999d9:   jne    0x00007f2f77199a49           ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                      ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
   0.25%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││││            0x00007f2f771999df:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@99 (line 262)
   0.34%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││││            0x00007f2f771999e3:   cmpl   $0x3,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199f65
   0.01%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││││╭           0x00007f2f771999eb:   jne    0x00007f2f77199a49
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f771999f1:   shl    $0x3,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f771999f5:   movabs $0x7fed35210,%rdi            ;   {oop([B{0x00000007fed35210})}
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f771999ff:   mov    $0x3,%edx
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a04:   mov    $0x10,%rax
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a0b:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a12:   add    %rax,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a15:   add    %rcx,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a18:   mov    $0x1,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a1e:   movzwq (%rsi),%rdx
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a22:   xor    (%rdi),%dx
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a25:   movzwq 0x1(%rsi),%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a2a:   xor    0x1(%rdi),%si
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a2e:   xor    %rdi,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a31:   or     %rsi,%rdx
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a34:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││                                                                     ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a38:   nopl   0x0(%rax,%rax,1)
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││           0x00007f2f77199a40:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   │││││╭          0x00007f2f77199a43:   jne    0x00007f2f77199c91
   0.20%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││↘↘↘│          0x00007f2f77199a49:   movabs $0x7fed35228,%rsi            ;   {oop(&quot;TRACTOR&quot;{0x00000007fed35228})}
   0.32%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │          0x00007f2f77199a53:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │╭         0x00007f2f77199a56:   je     0x00007f2f77199cb1
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││         0x00007f2f77199a5c:   nopl   0x0(%rax)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││         0x00007f2f77199a60:   test   %r10,%r10
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││╭        0x00007f2f77199a63:   je     0x00007f2f77199ad8
   0.08%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││        0x00007f2f77199a69:   cmpb   $0x0,0x10(%r10)
   0.15%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││╭       0x00007f2f77199a6e:   jne    0x00007f2f77199ad8
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││       0x00007f2f77199a74:   mov    0x14(%r10),%esi              ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                 ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@120 (line 266)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││       0x00007f2f77199a78:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@111 (line 264)
   0.11%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││       0x00007f2f77199a80:   cmpl   $0x7,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f2f77199f88
   0.17%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││╭      0x00007f2f77199a88:   jne    0x00007f2f77199ad8
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199a8e:   shl    $0x3,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199a92:   movabs $0x7fed35240,%rdi            ;   {oop([B{0x00000007fed35240})}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199a9c:   mov    $0x7,%edx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199aa1:   mov    $0x10,%rax
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199aa8:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199aaf:   add    %rax,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199ab2:   add    %rcx,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199ab5:   mov    $0x1,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199abb:   mov    (%rsi),%edx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199abd:   xor    (%rdi),%edx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199abf:   mov    0x3(%rsi),%esi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199ac2:   xor    0x3(%rdi),%esi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199ac5:   xor    %rdi,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199ac8:   or     %rsi,%rdx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199acb:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││                                                                ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@120 (line 266)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││      0x00007f2f77199acf:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││││╭     0x00007f2f77199ad2:   jne    0x00007f2f77199cb1
   0.10%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││↘↘↘│     0x00007f2f77199ad8:   movabs $0x7fed35258,%rsi            ;   {oop(&quot;MONORAIL&quot;{0x00000007fed35258})}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │     0x00007f2f77199ae2:   cmp    %r10,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │╭    0x00007f2f77199ae5:   je     0x00007f2f77199b57           ; ImmutableOopMap {r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││                                                              ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@123 (line 266)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││    0x00007f2f77199aeb:   movsbl 0x10(%r10),%esi              ; implicit exception: dispatches to 0x00007f2f77199fad
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││    0x00007f2f77199af0:   mov    0x14(%r10),%edi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││    0x00007f2f77199af4:   test   %sil,%sil
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││╭   0x00007f2f77199af7:   jne    0x00007f2f77199cd1           ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││                                                             ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││   0x00007f2f77199afd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rdi=NarrowOop r10=Oop }
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@123 (line 266)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││   0x00007f2f77199b00:   cmpl   $0x8,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007f2f77199fd0
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │││╭  0x00007f2f77199b08:   jne    0x00007f2f77199cd1
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b0e:   shl    $0x3,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b12:   movabs $0x7fed35270,%rdx            ;   {oop([B{0x00000007fed35270})}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b1c:   mov    %rdi,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b1f:   mov    %rdx,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b22:   mov    $0x8,%edx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b27:   mov    $0x10,%rax
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b2e:   mov    $0x10,%rcx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b35:   add    %rax,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b38:   add    %rcx,%rdi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b3b:   mov    $0x1,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b41:   mov    (%rsi),%rdx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b44:   xor    %rsi,%rsi
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b47:   xor    (%rdi),%rdx
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b4a:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                            ; - java.lang.String::equals@-3
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b4e:   test   %r11d,%r11d
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││  0x00007f2f77199b51:   je     0x00007f2f77199cf4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@135 (line 268)
   0.26%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │↘││  0x00007f2f77199b57:   mov    $0xc,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@140 (line 269)
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b5c:   mov    0x10(%rsp),%rbp
   0.00%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b61:   add    $0x18,%rsp
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b65:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b6c:   ja     0x00007f2f77199d27
   0.26%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b72:   vzeroupper 
   0.27%  │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b75:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
   0.26%  ↘   ↘│   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b76:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@12 (line 247)
   0.01%       │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b7b:   mov    0x10(%rsp),%rbp
   0.17%       │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b80:   add    $0x18,%rsp
               │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b84:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b8b:   ja     0x00007f2f77199d3b
   0.08%       │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b91:   vzeroupper 
   0.26%       │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b94:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │   ││   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
   0.24%       ↘   ↘│   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b95:   mov    $0x2,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                    │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@23 (line 249)
                    │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b9a:   mov    0x10(%rsp),%rbp
                    │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199b9f:   add    $0x18,%rsp
   0.00%            │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199ba3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                    │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199baa:   ja     0x00007f2f77199d4f
   0.28%            │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bb0:   vzeroupper 
   0.26%            │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bb3:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                    │   ││   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
   0.11%            ↘   ↘│   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bb4:   mov    $0x3,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                         │   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@34 (line 251)
                         │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bb9:   mov    0x10(%rsp),%rbp
                         │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bbe:   add    $0x18,%rsp
   0.14%                 │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bc2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                         │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bc9:   ja     0x00007f2f77199d66
   0.09%                 │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bcf:   vzeroupper 
   0.26%                 │   ││   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bd2:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                         │   ││   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
   0.24%                 ↘   ↘│   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bd3:   mov    $0x4,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                              │   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@45 (line 253)
                              │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bd8:   mov    0x10(%rsp),%rbp
                              │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bdd:   add    $0x18,%rsp
                              │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199be1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199be8:   ja     0x00007f2f77199d7a
   0.26%                      │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bee:   vzeroupper 
   0.24%                      │   ││   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bf1:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                              │   ││   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
   0.18%                      ↘   ↘│   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bf2:   mov    $0x5,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                   │   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@56 (line 255)
                                   │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bf7:   mov    0x10(%rsp),%rbp
                                   │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199bfc:   add    $0x18,%rsp
   0.11%                           │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199c00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                   │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199c07:   ja     0x00007f2f77199d8e
   0.17%                           │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199c0d:   vzeroupper 
   0.28%                           │   ││   ││   ││   ││   ││   │ ││  0x00007f2f77199c10:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                   │   ││   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
                                   ↘   ↘│   ││   ││   ││   ││   │ ││  0x00007f2f77199c11:   mov    $0x6,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                        │   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@68 (line 257)
   0.27%                                │   ││   ││   ││   ││   │ ││  0x00007f2f77199c16:   mov    0x10(%rsp),%rbp
   0.00%                                │   ││   ││   ││   ││   │ ││  0x00007f2f77199c1b:   add    $0x18,%rsp
   0.00%                                │   ││   ││   ││   ││   │ ││  0x00007f2f77199c1f:   nop
                                        │   ││   ││   ││   ││   │ ││  0x00007f2f77199c20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                        │   ││   ││   ││   ││   │ ││  0x00007f2f77199c27:   ja     0x00007f2f77199da6
   0.24%                                │   ││   ││   ││   ││   │ ││  0x00007f2f77199c2d:   vzeroupper 
   0.22%                                │   ││   ││   ││   ││   │ ││  0x00007f2f77199c30:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                        │   ││   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
   0.02%                                ↘   ↘│   ││   ││   ││   │ ││  0x00007f2f77199c31:   mov    $0x7,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                             │   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@80 (line 259)
                                             │   ││   ││   ││   │ ││  0x00007f2f77199c36:   mov    0x10(%rsp),%rbp
   0.00%                                     │   ││   ││   ││   │ ││  0x00007f2f77199c3b:   add    $0x18,%rsp
   0.26%                                     │   ││   ││   ││   │ ││  0x00007f2f77199c3f:   nop
   0.02%                                     │   ││   ││   ││   │ ││  0x00007f2f77199c40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                             │   ││   ││   ││   │ ││  0x00007f2f77199c47:   ja     0x00007f2f77199dba
   0.00%                                     │   ││   ││   ││   │ ││  0x00007f2f77199c4d:   vzeroupper 
   0.26%                                     │   ││   ││   ││   │ ││  0x00007f2f77199c50:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                             │   ││   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@87 (line 260)
                                             ↘   ↘│   ││   ││   │ ││  0x00007f2f77199c51:   mov    $0x8,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                  │   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@92 (line 261)
                                                  │   ││   ││   │ ││  0x00007f2f77199c56:   mov    0x10(%rsp),%rbp
                                                  │   ││   ││   │ ││  0x00007f2f77199c5b:   add    $0x18,%rsp
   0.30%                                          │   ││   ││   │ ││  0x00007f2f77199c5f:   nop
   0.00%                                          │   ││   ││   │ ││  0x00007f2f77199c60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                  │   ││   ││   │ ││  0x00007f2f77199c67:   ja     0x00007f2f77199dce
   0.00%                                          │   ││   ││   │ ││  0x00007f2f77199c6d:   vzeroupper 
   0.25%                                          │   ││   ││   │ ││  0x00007f2f77199c70:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                  │   ││   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@99 (line 262)
   0.00%                                          ↘   ↘│   ││   │ ││  0x00007f2f77199c71:   mov    $0x9,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                       │   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@104 (line 263)
                                                       │   ││   │ ││  0x00007f2f77199c76:   mov    0x10(%rsp),%rbp
                                                       │   ││   │ ││  0x00007f2f77199c7b:   add    $0x18,%rsp
   0.26%                                               │   ││   │ ││  0x00007f2f77199c7f:   nop
   0.00%                                               │   ││   │ ││  0x00007f2f77199c80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                       │   ││   │ ││  0x00007f2f77199c87:   ja     0x00007f2f77199de6
                                                       │   ││   │ ││  0x00007f2f77199c8d:   vzeroupper 
   0.26%                                               │   ││   │ ││  0x00007f2f77199c90:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                       │   ││   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@111 (line 264)
   0.24%                                               ↘   ↘│   │ ││  0x00007f2f77199c91:   mov    $0xa,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                            │   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@116 (line 265)
                                                            │   │ ││  0x00007f2f77199c96:   mov    0x10(%rsp),%rbp
                                                            │   │ ││  0x00007f2f77199c9b:   add    $0x18,%rsp
   0.00%                                                    │   │ ││  0x00007f2f77199c9f:   nop
   0.24%                                                    │   │ ││  0x00007f2f77199ca0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                            │   │ ││  0x00007f2f77199ca7:   ja     0x00007f2f77199dfa
                                                            │   │ ││  0x00007f2f77199cad:   vzeroupper 
   0.29%                                                    │   │ ││  0x00007f2f77199cb0:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                            │   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@123 (line 266)
   0.12%                                                    ↘   ↘ ││  0x00007f2f77199cb1:   mov    $0xb,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@128 (line 267)
                                                                  ││  0x00007f2f77199cb6:   mov    0x10(%rsp),%rbp
                                                                  ││  0x00007f2f77199cbb:   add    $0x18,%rsp
   0.11%                                                          ││  0x00007f2f77199cbf:   nop
   0.16%                                                          ││  0x00007f2f77199cc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                                                  ││  0x00007f2f77199cc7:   ja     0x00007f2f77199e0e
                                                                  ││  0x00007f2f77199ccd:   vzeroupper 
   0.26%                                                          ││  0x00007f2f77199cd0:   ret    
                                                                  ↘↘  0x00007f2f77199cd1:   movl   $0xffffffed,0x484(%r15)      ;* unwind (locked if synchronized)
                                                                                                                                ; - java.lang.String::equals@-3
                                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
                                                                      0x00007f2f77199cdc:   movq   $0x14,0x490(%r15)
                                                                      0x00007f2f77199ce7:   call   0x00007f2f76aff17a           ; ImmutableOopMap {r10=Oop }
                                                                                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@123 (line 266)
                                                                                                                                ;   {runtime_call DeoptimizationBlob}
                                                                      0x00007f2f77199cec:   nopl   0x0(%rax,%rax,1)
                                                                      0x00007f2f77199cf4:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  80.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1066 

                  0x00007f2f7719b2ae:   add    %r12,%r10
                  0x00007f2f7719b2b1:   xor    %r12,%r12
                  0x00007f2f7719b2b4:   cmp    %r10,%rax
                  0x00007f2f7719b2b7:   jne    0x00007f2f76af9080           ;   {runtime_call ic_miss_stub}
                  0x00007f2f7719b2bd:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007f2f7719b2c0:   mov    %eax,-0x14000(%rsp)
                  0x00007f2f7719b2c7:   sub    $0x38,%rsp
                  0x00007f2f7719b2cb:   nop
                  0x00007f2f7719b2cc:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f2f7719b2d4:   jne    0x00007f2f7719b3f8
                  0x00007f2f7719b2da:   mov    %rbp,0x30(%rsp)
                  0x00007f2f7719b2df:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
                  0x00007f2f7719b2e2:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f2f7719b41c
   0.01%          0x00007f2f7719b2ea:   test   %r10d,%r10d
          ╭       0x00007f2f7719b2ed:   je     0x00007f2f7719b3ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%  │       0x00007f2f7719b2f3:   mov    %rsi,0x10(%rsp)
          │       0x00007f2f7719b2f8:   mov    %r10d,0x24(%rsp)
          │       0x00007f2f7719b2fd:   mov    %r10d,%r11d
          │       0x00007f2f7719b300:   dec    %r11d
          │       0x00007f2f7719b303:   movslq %r11d,%r11
          │       0x00007f2f7719b306:   mov    %r10d,%r8d
   0.00%  │       0x00007f2f7719b309:   cmp    %r11,%r8
          │╭      0x00007f2f7719b30c:   ja     0x00007f2f7719b31c
          ││      0x00007f2f7719b312:   cmp    $0x2,%r10d
          ││╭     0x00007f2f7719b316:   jae    0x00007f2f7719b3d5
          │↘│     0x00007f2f7719b31c:   mov    0x10(,%rdx,8),%r11d
          │ │     0x00007f2f7719b324:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          │ │     0x00007f2f7719b328:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
   0.00%  │ │     0x00007f2f7719b32c:   mov    %rdx,0x8(%rsp)
          │ │     0x00007f2f7719b331:   mov    %rsi,%r8
          │ │     0x00007f2f7719b334:   mov    %r11,%rdx
          │ │     0x00007f2f7719b337:   call   0x00007f2f771994a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │                                                               ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │ │                                                               ;   {optimized virtual_call}
          │ │     0x00007f2f7719b33c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │ │     0x00007f2f7719b344:   mov    %eax,0x20(%rsp)
          │ │     0x00007f2f7719b348:   mov    $0x1,%r11d
          │ │╭    0x00007f2f7719b34e:   jmp    0x00007f2f7719b394           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │ ││    0x00007f2f7719b353:   nopw   0x0(%rax,%rax,1)
          │ ││    0x00007f2f7719b35c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.66%  │ ││↗   0x00007f2f7719b360:   mov    0x10(%rdx,%r11,4),%r9d
   1.90%  │ │││   0x00007f2f7719b365:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   0.98%  │ │││   0x00007f2f7719b369:   mov    %rsi,%rcx
   0.76%  │ │││   0x00007f2f7719b36c:   mov    %r9,%rdx                     ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.40%  │ │││   0x00007f2f7719b36f:   mov    %r11d,0x1c(%rsp)
   1.01%  │ │││   0x00007f2f7719b374:   data16 xchg %ax,%ax
   1.07%  │ │││   0x00007f2f7719b377:   call   0x00007f2f771994a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │││                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │ │││                                                             ;   {optimized virtual_call}
   1.06%  │ │││   0x00007f2f7719b37c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.95%  │ │││   0x00007f2f7719b384:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.83%  │ │││   0x00007f2f7719b388:   mov    0x1c(%rsp),%r11d
   0.38%  │ │││   0x00007f2f7719b38d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.88%  │ │││   0x00007f2f7719b390:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   0.60%  │ │↘│   0x00007f2f7719b394:   mov    0x8(%rsp),%rdx
   1.24%  │ │ │   0x00007f2f7719b399:   mov    0x24(%rsp),%r10d
   0.39%  │ │ │   0x00007f2f7719b39e:   mov    0x10(%rsp),%rsi
   0.93%  │ │ │   0x00007f2f7719b3a3:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f2f7719b3a6:   jg     0x00007f2f7719b360           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.02%  │ │     0x00007f2f7719b3a8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
   0.02%  │ │  ↗  0x00007f2f7719b3ac:   mov    0x30(%rsp),%rbp
          │ │  │  0x00007f2f7719b3b1:   add    $0x38,%rsp
          │ │  │  0x00007f2f7719b3b5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  0x00007f2f7719b3c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f2f7719b3c7:   ja     0x00007f2f7719b408
   0.01%  │ │  │  0x00007f2f7719b3cd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ↘ │  │  0x00007f2f7719b3ce:   mov    $0x0,%eax
            │  ╰  0x00007f2f7719b3d3:   jmp    0x00007f2f7719b3ac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
            ↘     0x00007f2f7719b3d5:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
                  0x00007f2f7719b3e0:   movq   $0x298,0x490(%r15)
                  0x00007f2f7719b3eb:   call   0x00007f2f76aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
....................................................................................................
  15.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.61%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1061 
  15.11%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1066 
   0.61%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.30%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  do_syscall_64 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%     [kernel.kallsyms]  _raw_spin_unlock_irqrestore 
   1.71%  <...other 329 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.61%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1061 
  15.11%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1066 
   0.61%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  native_read_msr 
   0.30%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  release_pages 
   0.16%                        <unknown> 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  do_syscall_64 
   0.04%     [kernel.kallsyms]  pipe_write 
   1.59%  <...other 262 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  95.75%        jvmci, level 4
   3.54%     [kernel.kallsyms]
   0.32%             libjvm.so
   0.16%             libc.so.6
   0.16%                      
   0.03%        hsdis-amd64.so
   0.01%           interpreter
   0.01%                [vdso]
   0.01%      Unknown, level 0
   0.00%           c1, level 3
   0.00%              r8152.ko
   0.00%         perf-6660.map
   0.00%  ld-linux-x86-64.so.2
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:20:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.014 ns/op
# Warmup Iteration   2: 43.449 ns/op
# Warmup Iteration   3: 41.604 ns/op
# Warmup Iteration   4: 42.299 ns/op
# Warmup Iteration   5: 41.799 ns/op
Iteration   1: 41.673 ns/op
Iteration   2: 41.880 ns/op
Iteration   3: 42.407 ns/op
Iteration   4: 42.244 ns/op
Iteration   5: 43.274 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  42.296 ±(99.9%) 2.384 ns/op [Average]
  (min, avg, max) = (41.673, 42.296, 43.274), stdev = 0.619
  CI (99.9%): [39.912, 44.680] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 219934 total address lines.
Perf output processed (skipped 79.194 seconds):
 Column 1: cycles (49469 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1026 

 <region is too big to display, has 1080 lines, but threshold is 1000>
....................................................................................................
  85.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1031 

                #           [sp+0x40]  (sp of caller)
                0x00007fa7eb1995a0:   mov    0x8(%rsi),%r10d
                0x00007fa7eb1995a4:   movabs $0x7fa767000000,%r12
                0x00007fa7eb1995ae:   add    %r12,%r10
                0x00007fa7eb1995b1:   xor    %r12,%r12
                0x00007fa7eb1995b4:   cmp    %r10,%rax
                0x00007fa7eb1995b7:   jne    0x00007fa7eaaf9080           ;   {runtime_call ic_miss_stub}
                0x00007fa7eb1995bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007fa7eb1995c0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007fa7eb1995c7:   sub    $0x38,%rsp
                0x00007fa7eb1995cb:   nop
                0x00007fa7eb1995cc:   cmpl   $0x1,0x20(%r15)
   0.00%        0x00007fa7eb1995d4:   jne    0x00007fa7eb1996f8
                0x00007fa7eb1995da:   mov    %rbp,0x30(%rsp)
                0x00007fa7eb1995df:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                          ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@0 (line 125)
                0x00007fa7eb1995e2:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007fa7eb19971c
                0x00007fa7eb1995ea:   test   %r10d,%r10d
          ╭     0x00007fa7eb1995ed:   je     0x00007fa7eb1996ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          │     0x00007fa7eb1995f3:   mov    %rsi,0x10(%rsp)
          │     0x00007fa7eb1995f8:   mov    %r10d,0x24(%rsp)
   0.00%  │     0x00007fa7eb1995fd:   mov    %r10d,%r11d
          │     0x00007fa7eb199600:   dec    %r11d
          │     0x00007fa7eb199603:   movslq %r11d,%r11
          │     0x00007fa7eb199606:   mov    %r10d,%r8d
   0.01%  │     0x00007fa7eb199609:   cmp    %r11,%r8
          │╭    0x00007fa7eb19960c:   ja     0x00007fa7eb19961c
          ││    0x00007fa7eb199612:   cmp    $0x2,%r10d
          ││    0x00007fa7eb199616:   jae    0x00007fa7eb1996d5
          │↘    0x00007fa7eb19961c:   mov    0x10(,%rdx,8),%r11d
          │     0x00007fa7eb199624:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          │     0x00007fa7eb199628:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          │     0x00007fa7eb19962c:   mov    %rdx,0x8(%rsp)
          │     0x00007fa7eb199631:   mov    %rsi,%r8
          │     0x00007fa7eb199634:   mov    %r11,%rdx
          │     0x00007fa7eb199637:   call   0x00007fa7eb196620           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │                                                               ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │                                                               ;   {optimized virtual_call}
   0.01%  │     0x00007fa7eb19963c:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │     0x00007fa7eb199644:   mov    %eax,0x20(%rsp)
          │     0x00007fa7eb199648:   mov    $0x1,%r11d
          │ ╭   0x00007fa7eb19964e:   jmp    0x00007fa7eb199694           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
          │ │   0x00007fa7eb199653:   nopw   0x0(%rax,%rax,1)
          │ │   0x00007fa7eb19965c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   1.06%  │ │↗  0x00007fa7eb199660:   mov    0x10(%rdx,%r11,4),%r9d
   1.48%  │ ││  0x00007fa7eb199665:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.13%  │ ││  0x00007fa7eb199669:   mov    %rsi,%rcx
   0.35%  │ ││  0x00007fa7eb19966c:   mov    %r9,%rdx                     ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.40%  │ ││  0x00007fa7eb19966f:   mov    %r11d,0x1c(%rsp)
   0.06%  │ ││  0x00007fa7eb199674:   data16 xchg %ax,%ax
   1.11%  │ ││  0x00007fa7eb199677:   call   0x00007fa7eb196620           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ ││                                                            ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │ ││                                                            ;   {optimized virtual_call}
   0.53%  │ ││  0x00007fa7eb19967c:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.42%  │ ││  0x00007fa7eb199684:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.08%  │ ││  0x00007fa7eb199688:   mov    0x1c(%rsp),%r11d
   0.32%  │ ││  0x00007fa7eb19968d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.45%  │ ││  0x00007fa7eb199690:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@13 (line 126)
   1.05%  │ ↘│  0x00007fa7eb199694:   mov    0x8(%rsp),%rdx
   0.05%  │  │  0x00007fa7eb199699:   mov    0x24(%rsp),%r10d
   0.36%  │  │  0x00007fa7eb19969e:   mov    0x10(%rsp),%rsi
   0.49%  │  │  0x00007fa7eb1996a3:   cmp    %r11d,%r10d
          │  ╰  0x00007fa7eb1996a6:   jg     0x00007fa7eb199660           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.02%  │     0x00007fa7eb1996a8:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
   0.02%  │     0x00007fa7eb1996ac:   mov    0x30(%rsp),%rbp
          │     0x00007fa7eb1996b1:   add    $0x38,%rsp
          │     0x00007fa7eb1996b5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007fa7eb1996c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │     0x00007fa7eb1996c7:   ja     0x00007fa7eb199708
          │     0x00007fa7eb1996cd:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ↘     0x00007fa7eb1996ce:   mov    $0x0,%eax
                0x00007fa7eb1996d3:   jmp    0x00007fa7eb1996ac           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@40 (line 129)
....................................................................................................
  10.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  85.41%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1026 
  10.37%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1031 
   0.65%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  native_read_msr 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  pipe_write 
   1.76%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.41%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 1026 
  10.37%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 1031 
   0.65%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.35%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  page_remove_rmap 
   0.14%                        <unknown> 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_zone_page_state 
   0.09%     [kernel.kallsyms]  native_read_msr 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   1.66%  <...other 259 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.81%        jvmci, level 4
   3.46%     [kernel.kallsyms]
   0.32%             libjvm.so
   0.17%             libc.so.6
   0.14%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%         perf-6756.map
   0.00%                [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:18:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.410 ns/op
# Warmup Iteration   2: 10.894 ns/op
# Warmup Iteration   3: 10.730 ns/op
# Warmup Iteration   4: 10.767 ns/op
# Warmup Iteration   5: 10.684 ns/op
Iteration   1: 10.755 ns/op
Iteration   2: 10.860 ns/op
Iteration   3: 10.597 ns/op
Iteration   4: 10.837 ns/op
Iteration   5: 10.934 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  10.796 ±(99.9%) 0.494 ns/op [Average]
  (min, avg, max) = (10.597, 10.796, 10.934), stdev = 0.128
  CI (99.9%): [10.302, 11.291] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 222781 total address lines.
Perf output processed (skipped 79.059 seconds):
 Column 1: cycles (50174 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1052 

                                      #           [sp+0x60]  (sp of caller)
                                      0x00007f2c0b198ec0:   mov    0x8(%rsi),%r10d
                                      0x00007f2c0b198ec4:   movabs $0x7f2b87000000,%r12
                                      0x00007f2c0b198ece:   add    %r12,%r10
                                      0x00007f2c0b198ed1:   xor    %r12,%r12
                                      0x00007f2c0b198ed4:   cmp    %r10,%rax
                                      0x00007f2c0b198ed7:   jne    0x00007f2c0aaf9080           ;   {runtime_call ic_miss_stub}
                                      0x00007f2c0b198edd:   data16 xchg %ax,%ax
                                    [Verified Entry Point]
                                      0x00007f2c0b198ee0:   mov    %eax,-0x14000(%rsp)
   0.01%                              0x00007f2c0b198ee7:   sub    $0x58,%rsp
                                      0x00007f2c0b198eeb:   nop
                                      0x00007f2c0b198eec:   cmpl   $0x0,0x20(%r15)
   0.00%                              0x00007f2c0b198ef4:   jne    0x00007f2c0b199540
                                      0x00007f2c0b198efa:   mov    %rbp,0x50(%rsp)
   0.00%                              0x00007f2c0b198eff:   mov    %rsi,%rbp
                                      0x00007f2c0b198f02:   mov    %rbp,0x30(%rsp)
   0.01%                              0x00007f2c0b198f07:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [48]=Oop }
                                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
                                      0x00007f2c0b198f0a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f2c0b199566
                                      0x00007f2c0b198f12:   mov    %r13d,0x44(%rsp)
   0.02%                              0x00007f2c0b198f17:   mov    %esi,%r14d
                                      0x00007f2c0b198f1a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                                      0x00007f2c0b198f1e:   mov    %r14,0x28(%rsp)
                                      0x00007f2c0b198f23:   movabs $0x7fea34ae0,%rdi            ;   {oop([B{0x00000007fea34ae0})}
   0.01%                              0x00007f2c0b198f2d:   movabs $0x7fea34ab0,%r10            ;   {oop([B{0x00000007fea34ab0})}
                                      0x00007f2c0b198f37:   mov    %r10,0x20(%rsp)
                                      0x00007f2c0b198f3c:   movabs $0x7fea34b10,%r11            ;   {oop([B{0x00000007fea34b10})}
                                      0x00007f2c0b198f46:   mov    %r11,0x18(%rsp)
   0.01%                              0x00007f2c0b198f4b:   mov    $0x0,%r9d
                                      0x00007f2c0b198f51:   movl   $0x0,0x40(%rsp)
          ╭                           0x00007f2c0b198f59:   jmp    0x00007f2c0b1991a2           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │                           0x00007f2c0b198f5e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   4.84%  │         ↗                 0x00007f2c0b198f60:   mov    0x10(%r14,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │         │                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.19%  │         │                 0x00007f2c0b198f65:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007f2c0b19958d
  22.99%  │         │                 0x00007f2c0b198f6c:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - java.lang.String::isLatin1@7 (line 4817)
          │         │                                                                           ; - java.lang.String::hashCode@17 (line 2365)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.44%  │         │                 0x00007f2c0b198f74:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - java.lang.String::hashCode@24 (line 2365)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.57%  │         │                 0x00007f2c0b198f7b:   mov    %edx,%esi
          │         │                 0x00007f2c0b198f7d:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
          │         │                                                                           ; - java.lang.String::equals@-3
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   6.19%  │         │                 0x00007f2c0b198f81:   mov    %ebx,%ebp
   1.28%  │         │                 0x00007f2c0b198f83:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.01%  │         │                 0x00007f2c0b198f87:   test   %ecx,%ecx
          │╭        │                 0x00007f2c0b198f89:   je     0x00007f2c0b1992d1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                                           ; - java.lang.String::hashCode@6 (line 2364)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││        │                 0x00007f2c0b198f8f:   mov    %rbp,0x10(%rsp)
   6.07%  ││        │                 0x00007f2c0b198f94:   mov    %rsi,0x8(%rsp)
   5.04%  ││        │                 0x00007f2c0b198f99:   mov    %edx,%ebp
   0.02%  ││        │                 0x00007f2c0b198f9b:   mov    %r9d,0x3c(%rsp)
          ││        │                 0x00007f2c0b198fa0:   mov    %eax,%r13d
   2.32%  ││        │                 0x00007f2c0b198fa3:   mov    %ebx,%r14d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                                           ; - java.lang.String::hashCode@58 (line 2373)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.00%  ││        │         ↗↗      0x00007f2c0b198fa6:   cmp    $0x462300d,%ecx
          ││╭       │         ││      0x00007f2c0b198fac:   je     0x00007f2c0b1990db
   0.01%  │││       │         ││      0x00007f2c0b198fb2:   cmp    $0x9ef434af,%ecx
          │││╭      │         ││      0x00007f2c0b198fb8:   je     0x00007f2c0b1991b0
          ││││      │         ││      0x00007f2c0b198fbe:   cmp    $0x23c6acdf,%ecx
          ││││╭     │         ││      0x00007f2c0b198fc4:   je     0x00007f2c0b199234
          │││││     │         ││      0x00007f2c0b198fca:   cmp    $0x90663ad4,%ecx
          │││││     │         ││      0x00007f2c0b198fd0:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b198fd6:   cmp    $0xa2a1be40,%ecx
          │││││     │         ││      0x00007f2c0b198fdc:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f2c0b198fe0:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b198fe6:   cmp    $0xaf2874e8,%ecx
          │││││     │         ││      0x00007f2c0b198fec:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b198ff2:   cmp    $0xba6eabe2,%ecx
          │││││     │         ││      0x00007f2c0b198ff8:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b198ffe:   cmp    $0xc517aa2b,%ecx
          │││││     │         ││      0x00007f2c0b199004:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b19900a:   cmp    $0xd91961ec,%ecx
          │││││     │         ││      0x00007f2c0b199010:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199016:   cmp    $0xeb2c8617,%ecx
          │││││     │         ││      0x00007f2c0b19901c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f2c0b199020:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199026:   cmp    $0xfce7bd80,%ecx
          │││││     │         ││      0x00007f2c0b19902c:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199032:   cmp    $0x10260,%ecx
          │││││     │         ││      0x00007f2c0b199038:   je     0x00007f2c0b199488           ;   {no_reloc}
          │││││     │         ││      0x00007f2c0b19903e:   cmp    $0x103b4,%ecx
          │││││     │         ││      0x00007f2c0b199044:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b19904a:   cmp    $0x14234,%ecx
          │││││     │         ││      0x00007f2c0b199050:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199056:   cmp    $0x14b03,%ecx
          │││││     │         ││      0x00007f2c0b19905c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f2c0b199060:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199066:   cmp    $0x1f3140,%ecx
          │││││     │         ││      0x00007f2c0b19906c:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199072:   cmp    $0x4c5f9e8,%ecx
          │││││     │         ││      0x00007f2c0b199078:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b19907e:   cmp    $0x4c6443f,%ecx
          │││││     │         ││      0x00007f2c0b199084:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b19908a:   cmp    $0x64b8f52,%ecx
          │││││     │         ││      0x00007f2c0b199090:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b199096:   cmp    $0xe6d87d7,%ecx
          │││││     │         ││      0x00007f2c0b19909c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f2c0b1990a0:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b1990a6:   cmp    $0x1b604cf5,%ecx
          │││││     │         ││      0x00007f2c0b1990ac:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b1990b2:   cmp    $0x2d2d772a,%ecx
          │││││     │         ││      0x00007f2c0b1990b8:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b1990be:   cmp    $0x33eb4d91,%ecx
          │││││     │         ││      0x00007f2c0b1990c4:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b1990ca:   cmp    $0x356e5289,%ecx
          │││││     │         ││      0x00007f2c0b1990d0:   je     0x00007f2c0b199488
          │││││     │         ││      0x00007f2c0b1990d6:   jmp    0x00007f2c0b199488           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││     │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │││││     │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.02%  ││↘││     │         ││      0x00007f2c0b1990db:   nopl   0x0(%rax,%rax,1)
   0.00%  ││ ││     │         ││      0x00007f2c0b1990e0:   cmp    $0xffd46953,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fea34a98})}
          ││ ││╭    │         ││      0x00007f2c0b1990e7:   je     0x00007f2c0b199367
          ││ │││    │         ││      0x00007f2c0b1990ed:   test   %r13b,%r13b
          ││ │││╭   │         ││      0x00007f2c0b1990f0:   jne    0x00007f2c0b1993d1           ;* unwind (locked if synchronized)
          ││ ││││   │         ││                                                                ; - java.lang.String::equals@-3
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ ││││   │         ││      0x00007f2c0b1990f6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdi=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││ ││││   │         ││                                                                ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ ││││   │         ││      0x00007f2c0b199100:   cmpl   $0x5,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f2c0b1995b0
          ││ ││││   │         ││      0x00007f2c0b199108:   jne    0x00007f2c0b19947c
          ││ ││││   │         ││      0x00007f2c0b19910e:   mov    %rdi,%r10
          ││ ││││   │         ││      0x00007f2c0b199111:   mov    0x20(%rsp),%rsi
          ││ ││││   │         ││      0x00007f2c0b199116:   mov    0x8(%rsp),%rdi
          ││ ││││   │         ││      0x00007f2c0b19911b:   mov    $0x5,%edx
          ││ ││││   │         ││      0x00007f2c0b199120:   mov    $0x10,%rax
          ││ ││││   │         ││      0x00007f2c0b199127:   mov    $0x10,%rcx
          ││ ││││   │         ││      0x00007f2c0b19912e:   add    %rax,%rsi
          ││ ││││   │         ││      0x00007f2c0b199131:   add    %rcx,%rdi
          ││ ││││   │         ││      0x00007f2c0b199134:   mov    $0x1,%r11d
          ││ ││││   │         ││      0x00007f2c0b19913a:   mov    (%rsi),%edx
          ││ ││││   │         ││      0x00007f2c0b19913c:   xor    (%rdi),%edx
          ││ ││││   │         ││      0x00007f2c0b19913e:   mov    0x1(%rsi),%esi
          ││ ││││   │         ││      0x00007f2c0b199141:   xor    0x1(%rdi),%esi
          ││ ││││   │         ││      0x00007f2c0b199144:   xor    %rdi,%rdi
          ││ ││││   │         ││      0x00007f2c0b199147:   or     %rsi,%rdx
          ││ ││││   │         ││      0x00007f2c0b19914a:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          ││ ││││   │         ││                                                                ; - java.lang.String::equals@-3
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ ││││   │         ││      0x00007f2c0b19914e:   test   %r11d,%r11d
          ││ ││││   │         ││      0x00007f2c0b199151:   je     0x00007f2c0b1994cb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ ││││   │         ││      0x00007f2c0b199157:   mov    $0x0,%r11d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   7.50%  ││ ││││   │  ↗ ↗    ││↗↗↗   0x00007f2c0b19915d:   cmp    $0x0,%r11d
          ││ ││││╭  │  │ │    │││││   0x00007f2c0b199161:   je     0x00007f2c0b199180
   0.01%  ││ │││││  │  │ │    │││││   0x00007f2c0b199167:   cmp    $0x1,%r11d
          ││ │││││╭ │  │ │    │││││   0x00007f2c0b19916b:   je     0x00007f2c0b1992bd
          ││ ││││││ │  │ │    │││││   0x00007f2c0b199171:   cmp    $0x2,%r11d
          ││ ││││││╭│  │ │    │││││   0x00007f2c0b199175:   je     0x00007f2c0b1992c7
          ││ ││││││││  │ │    │││││   0x00007f2c0b19917b:   jmp    0x00007f2c0b199511           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││  │ │    │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
          ││ ││││││││  │ │    │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.40%  ││ ││││↘│││  │ │    │││││   0x00007f2c0b199180:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││  │ │    │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
          ││ ││││ │││  │ │    │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   4.75%  ││ ││││ │││  │ │↗↗  │││││   0x00007f2c0b199185:   add    0x40(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││  │ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.08%  ││ ││││ │││  │ │││  │││││   0x00007f2c0b199189:   mov    0x3c(%rsp),%r9d
   0.00%  ││ ││││ │││  │ │││  │││││   0x00007f2c0b19918e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││  │ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   2.39%  ││ ││││ │││  │ │││  │││││   0x00007f2c0b199191:   mov    %eax,0x40(%rsp)
   4.86%  ││ ││││ │││  │ │││  │││││   0x00007f2c0b199195:   mov    %r10,%rdi
          ││ ││││ │││  │ │││  │││││   0x00007f2c0b199198:   mov    0x28(%rsp),%r14
          ││ ││││ │││  │ │││  │││││   0x00007f2c0b19919d:   mov    0x44(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││  │ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   2.53%  ↘│ ││││ │││  │ │││  │││││   0x00007f2c0b1991a2:   cmp    %r9d,%r13d
           │ ││││ ││╰  │ │││  │││││   0x00007f2c0b1991a5:   jg     0x00007f2c0b198f60
   0.00%   │ ││││ ││ ╭ │ │││  │││││   0x00007f2c0b1991ab:   jmp    0x00007f2c0b1993af           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││ │ │ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
           │ ↘│││ ││ │ │ │││  │││││   0x00007f2c0b1991b0:   mov    %rdi,%r10
   1.04%   │  │││ ││ │ │ │││  │││││   0x00007f2c0b1991b3:   cmp    $0xffd4695f,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fea34af8})}
           │  │││ ││ │╭│ │││  │││││   0x00007f2c0b1991ba:   je     0x00007f2c0b199380           ;* unwind (locked if synchronized)
           │  │││ ││ │││ │││  │││││                                                             ; - java.lang.String::equals@-3
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991c0:   test   %r13b,%r13b
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991c3:   jne    0x00007f2c0b1994bf           ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │││ ││ │││ │││  │││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │││ ││ │││ │││  │││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991c9:   cmpl   $0x10,0xc(,%rbp,8)           ; implicit exception: dispatches to 0x00007f2c0b1995d3
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991d1:   jne    0x00007f2c0b19941e
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991d7:   mov    0x18(%rsp),%rsi
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991dc:   mov    0x8(%rsp),%rdi
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991e1:   mov    $0x10,%edx
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991e6:   mov    $0x10,%rax
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991ed:   mov    $0x10,%rcx
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991f4:   add    %rax,%rsi
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991f7:   add    %rcx,%rdi
           │  │││ ││ │││ │││  │││││   0x00007f2c0b1991fa:   mov    $0x1,%r11d
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199200:   vmovdqu (%rsi),%xmm0
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199204:   vmovdqu (%rdi),%xmm1
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199208:   vpxor  %xmm1,%xmm0,%xmm0
           │  │││ ││ │││ │││  │││││   0x00007f2c0b19920c:   xor    %rsi,%rsi
           │  │││ ││ │││ │││  │││││   0x00007f2c0b19920f:   vptest %xmm0,%xmm0
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199214:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
           │  │││ ││ │││ │││  │││││                                                             ; - java.lang.String::equals@-3
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199218:   nopl   0x0(%rax,%rax,1)
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199220:   test   %r11d,%r11d
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199223:   je     0x00007f2c0b1994ee           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
           │  │││ ││ │││ │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││ ││ │││ │││  │││││   0x00007f2c0b199229:   mov    $0x2,%r11d
           │  │││ ││ ││╰ │││  │││││   0x00007f2c0b19922f:   jmp    0x00007f2c0b19915d           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │  │││ ││ ││  │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │  │││ ││ ││  │││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%   │  ↘││ ││ ││  │││  │││││   0x00007f2c0b199234:   mov    %rdi,%r10
   2.53%   │   ││ ││ ││  │││  │││││   0x00007f2c0b199237:   nopw   0x0(%rax,%rax,1)
           │   ││ ││ ││  │││  │││││   0x00007f2c0b199240:   cmp    $0xffd46959,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fea34ac8})}
           │   ││ ││ ││ ╭│││  │││││   0x00007f2c0b199247:   je     0x00007f2c0b199375
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19924d:   test   %r13b,%r13b
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199250:   jne    0x00007f2c0b199415           ;* unwind (locked if synchronized)
           │   ││ ││ ││ ││││  │││││                                                             ; - java.lang.String::equals@-3
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199256:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │   ││ ││ ││ ││││  │││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │   ││ ││ ││ ││││  │││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199260:   cmpl   $0x7,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f2c0b1995f6
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199268:   jne    0x00007f2c0b199470
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19926e:   mov    %r10,%rsi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199271:   mov    0x8(%rsp),%rdi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199276:   mov    $0x7,%edx
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19927b:   mov    $0x10,%rax
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199282:   mov    $0x10,%rcx
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199289:   add    %rax,%rsi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19928c:   add    %rcx,%rdi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19928f:   mov    $0x1,%r11d
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199295:   mov    (%rsi),%edx
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199297:   xor    (%rdi),%edx
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b199299:   mov    0x3(%rsi),%esi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19929c:   xor    0x3(%rdi),%esi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b19929f:   xor    %rdi,%rdi
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b1992a2:   or     %rsi,%rdx
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b1992a5:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
           │   ││ ││ ││ ││││  │││││                                                             ; - java.lang.String::equals@-3
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b1992a9:   test   %r11d,%r11d
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b1992ac:   je     0x00007f2c0b199427           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
           │   ││ ││ ││ ││││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││ ││ ││ ││││  │││││   0x00007f2c0b1992b2:   mov    $0x1,%r11d
           │   ││ ││ ││ │╰││  │││││   0x00007f2c0b1992b8:   jmp    0x00007f2c0b19915d           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │   ││ ││ ││ │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │   ││ ││ ││ │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.45%   │   ││ ↘│ ││ │ ││  │││││   0x00007f2c0b1992bd:   mov    $0x2,%eax
           │   ││  │ ││ │ ╰│  │││││   0x00007f2c0b1992c2:   jmp    0x00007f2c0b199185
   2.38%   │   ││  ↘ ││ │  │  │││││   0x00007f2c0b1992c7:   mov    $0x3,%eax
           │   ││    ││ │  ╰  │││││   0x00007f2c0b1992cc:   jmp    0x00007f2c0b199185           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │   ││    ││ │     │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
           │   ││    ││ │     │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           ↘   ││    ││ │     │││││   0x00007f2c0b1992d1:   cmpb   $0x0,0x11(,%rbx,8)
               ││    ││ │   ╭ │││││   0x00007f2c0b1992d9:   jne    0x00007f2c0b19934b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │   │ │││││                                                             ; - java.lang.String::hashCode@13 (line 2364)
               ││    ││ │   │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   │ │││││   0x00007f2c0b1992df:   nop
               ││    ││ │   │ │││││   0x00007f2c0b1992e0:   test   %al,%al
               ││    ││ │   │ │││││   0x00007f2c0b1992e2:   jne    0x00007f2c0b199494           ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rbp=Oop rsi=Oop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
               ││    ││ │   │ │││││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
               ││    ││ │   │ │││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
               ││    ││ │   │ │││││   0x00007f2c0b1992e8:   mov    0xc(,%rdx,8),%ecx            ; implicit exception: dispatches to 0x00007f2c0b199619
               ││    ││ │   │ │││││   0x00007f2c0b1992ef:   cmp    $0x1,%ecx
               ││    ││ │   │╭│││││   0x00007f2c0b1992f2:   je     0x00007f2c0b19938b
               ││    ││ │   │││││││   0x00007f2c0b1992f8:   cmp    $0x0,%ecx
               ││    ││ │   │││││││   0x00007f2c0b1992fb:   nopl   0x0(%rax,%rax,1)
               ││    ││ │   │││││││   0x00007f2c0b199300:   je     0x00007f2c0b199534           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │   │││││││                                                             ; - java.lang.StringLatin1::hashCode@2 (line 188)
               ││    ││ │   │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   │││││││   0x00007f2c0b199306:   mov    %rbp,0x10(%rsp)
               ││    ││ │   │││││││   0x00007f2c0b19930b:   mov    %r9d,0x3c(%rsp)
               ││    ││ │   │││││││   0x00007f2c0b199310:   mov    %rsi,%rbp
               ││    ││ │   │││││││   0x00007f2c0b199313:   lea    0x10(%rbp),%rbp
               ││    ││ │   │││││││   0x00007f2c0b199317:   mov    %rsi,0x8(%rsp)
               ││    ││ │   │││││││   0x00007f2c0b19931c:   mov    %rbp,%rsi
               ││    ││ │   │││││││   0x00007f2c0b19931f:   mov    %edx,%ebp
               ││    ││ │   │││││││   0x00007f2c0b199321:   mov    %ecx,%edx
               ││    ││ │   │││││││   0x00007f2c0b199323:   mov    $0x0,%ecx                    ;* unwind (locked if synchronized)
               ││    ││ │   │││││││                                                             ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
               ││    ││ │   │││││││                                                             ; - java.lang.StringLatin1::hashCode@48 (line 191)
               ││    ││ │   │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   │││││││   0x00007f2c0b199328:   mov    %eax,%r13d
               ││    ││ │   │││││││   0x00007f2c0b19932b:   mov    %ebx,%r14d
               ││    ││ │   │││││││   0x00007f2c0b19932e:   call   0x00007f2c0ad0a920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
               ││    ││ │   │││││││   0x00007f2c0b199333:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │   │││││││                                                             ; - java.lang.StringLatin1::hashCode@51 (line 188)
               ││    ││ │   │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   │││││││↗  0x00007f2c0b199334:   test   %eax,%eax
               ││    ││ │   ││││││││  0x00007f2c0b199336:   je     0x00007f2c0b19944d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │   ││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
               ││    ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   ││││││││  0x00007f2c0b19933c:   mov    %eax,0xc(,%r14,8)            ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │   ││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
               ││    ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
               ││    ││ │   ││││││││  0x00007f2c0b199344:   mov    %eax,%ecx
               ││    ││ │   ││╰│││││  0x00007f2c0b199346:   jmp    0x00007f2c0b198fa6
               ││    ││ │   ↘│ │││││  0x00007f2c0b19934b:   mov    %rbp,0x10(%rsp)
               ││    ││ │    │ │││││  0x00007f2c0b199350:   mov    %rsi,0x8(%rsp)
               ││    ││ │    │ │││││  0x00007f2c0b199355:   mov    %edx,%ebp
               ││    ││ │    │ │││││  0x00007f2c0b199357:   mov    %r9d,0x3c(%rsp)
               ││    ││ │    │ │││││  0x00007f2c0b19935c:   mov    %eax,%r13d
               ││    ││ │    │ │││││  0x00007f2c0b19935f:   mov    %ebx,%r14d
               ││    ││ │    │ ╰││││  0x00007f2c0b199362:   jmp    0x00007f2c0b198fa6           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││    ││ │    │  ││││                                                            ; - java.lang.String::hashCode@58 (line 2373)
               ││    ││ │    │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││    ││ │    │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.45%       ↘│    ││ │    │  ││││  0x00007f2c0b199367:   mov    $0x0,%r11d
                │    ││ │    │  ││││  0x00007f2c0b19936d:   mov    %rdi,%r10
                │    ││ │    │  ╰│││  0x00007f2c0b199370:   jmp    0x00007f2c0b19915d           ;* unwind (locked if synchronized)
                │    ││ │    │   │││                                                            ; - java.lang.String::equals@-3
                │    ││ │    │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                │    ││ │    │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                │    ││ ↘    │   │││  0x00007f2c0b199375:   mov    $0x1,%r11d
                │    ││      │   ╰││  0x00007f2c0b19937b:   jmp    0x00007f2c0b19915d           ;* unwind (locked if synchronized)
                │    ││      │    ││                                                            ; - java.lang.String::equals@-3
                │    ││      │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                │    ││      │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.46%        │    │↘      │    ││  0x00007f2c0b199380:   mov    $0x2,%r11d
                │    │       │    ╰│  0x00007f2c0b199386:   jmp    0x00007f2c0b19915d           ;* unwind (locked if synchronized)
                │    │       │     │                                                            ; - java.lang.String::equals@-3
                │    │       │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                │    │       │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                │    │       ↘     │  0x00007f2c0b19938b:   mov    %rbp,0x10(%rsp)
                │    │             │  0x00007f2c0b199390:   mov    %rsi,0x8(%rsp)
                │    │             │  0x00007f2c0b199395:   mov    %edx,%ebp
                │    │             │  0x00007f2c0b199397:   mov    %r9d,0x3c(%rsp)
                │    │             │  0x00007f2c0b19939c:   mov    %rdi,%r10
                │    │             │  0x00007f2c0b19939f:   mov    %eax,%r13d
                │    │             │  0x00007f2c0b1993a2:   mov    %ebx,%r14d
                │    │             │  0x00007f2c0b1993a5:   movzbl 0x10(,%rbp,8),%eax           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                │    │             │                                                            ; - java.lang.StringLatin1::hashCode@38 (line 190)
                │    │             │                                                            ; - java.lang.String::hashCode@27 (line 2365)
                │    │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │    │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                │    │             ╰  0x00007f2c0b1993ad:   jmp    0x00007f2c0b199334           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │    │                                                                          ; - java.lang.StringLatin1::hashCode@51 (line 188)
                │    │                                                                          ; - java.lang.String::hashCode@27 (line 2365)
                │    │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │    │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.05%        │    ↘                0x00007f2c0b1993af:   mov    0x40(%rsp),%eax              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@41 (line 118)
   0.04%        │                     0x00007f2c0b1993b3:   mov    0x50(%rsp),%rbp
   0.00%        │                     0x00007f2c0b1993b8:   add    $0x58,%rsp
                │                     0x00007f2c0b1993bc:   nopl   0x0(%rax)
                │                     0x00007f2c0b1993c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │                     0x00007f2c0b1993c7:   ja     0x00007f2c0b199550
   0.02%        │                     0x00007f2c0b1993cd:   vzeroupper 
   0.01%        │                     0x00007f2c0b1993d0:   ret    
                ↘                     0x00007f2c0b1993d1:   mov    $0x3494,%r10
                                      0x00007f2c0b1993d8:   mov    0x10(%rsp),%rbp
                                      0x00007f2c0b1993dd:   mov    0x3c(%rsp),%r9d
                                      0x00007f2c0b1993e2:   mov    0x40(%rsp),%r11d
                                      0x00007f2c0b1993e7:   mov    0x28(%rsp),%r14
                                      0x00007f2c0b1993ec:   mov    0x44(%rsp),%r13d
                                      0x00007f2c0b1993f1:   mov    0x30(%rsp),%r8
                                      0x00007f2c0b1993f6:   movl   $0xffffffed,0x484(%r15)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
....................................................................................................
  95.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1052 
   0.60%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  native_set_pte 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1075 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  mutex_lock 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   1.61%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1052 
   0.60%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.27%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  native_set_pte 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%                        <unknown> 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_lock 
   0.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1075 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  mutex_lock 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   1.52%  <...other 262 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.05%        jvmci, level 4
   3.36%     [kernel.kallsyms]
   0.24%             libjvm.so
   0.14%             libc.so.6
   0.13%                      
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:15:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.401 ns/op
# Warmup Iteration   2: 13.701 ns/op
# Warmup Iteration   3: 13.580 ns/op
# Warmup Iteration   4: 13.541 ns/op
# Warmup Iteration   5: 13.251 ns/op
Iteration   1: 13.320 ns/op
Iteration   2: 13.395 ns/op
Iteration   3: 13.316 ns/op
Iteration   4: 13.333 ns/op
Iteration   5: 13.401 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  13.353 ±(99.9%) 0.162 ns/op [Average]
  (min, avg, max) = (13.316, 13.353, 13.401), stdev = 0.042
  CI (99.9%): [13.191, 13.515] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 219670 total address lines.
Perf output processed (skipped 78.538 seconds):
 Column 1: cycles (49961 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1008 

                                                         #           [sp+0x70]  (sp of caller)
                                                         0x00007f6873191f60:   mov    0x8(%rsi),%r10d
                                                         0x00007f6873191f64:   movabs $0x7f67ef000000,%r12
                                                         0x00007f6873191f6e:   add    %r12,%r10
                                                         0x00007f6873191f71:   xor    %r12,%r12
                                                         0x00007f6873191f74:   cmp    %r10,%rax
                                                         0x00007f6873191f77:   jne    0x00007f6872af9080           ;   {runtime_call ic_miss_stub}
                                                         0x00007f6873191f7d:   data16 xchg %ax,%ax
                                                       [Verified Entry Point]
                                                         0x00007f6873191f80:   mov    %eax,-0x14000(%rsp)
   0.01%                                                 0x00007f6873191f87:   sub    $0x68,%rsp
                                                         0x00007f6873191f8b:   nop
                                                         0x00007f6873191f8c:   cmpl   $0x1,0x20(%r15)
                                                         0x00007f6873191f94:   jne    0x00007f6873192946
                                                         0x00007f6873191f9a:   mov    %rbp,0x60(%rsp)
                                                         0x00007f6873191f9f:   mov    %rsi,%rbp
                                                         0x00007f6873191fa2:   mov    %rbp,0x48(%rsp)
   0.01%                                                 0x00007f6873191fa7:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [72]=Oop }
                                                                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
   0.00%                                                 0x00007f6873191faa:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f687319296a
                                                         0x00007f6873191fb2:   mov    %r13d,0x54(%rsp)
   0.01%                                                 0x00007f6873191fb7:   mov    %esi,%r14d
                                                         0x00007f6873191fba:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                                                         0x00007f6873191fbe:   mov    %r14,0x40(%rsp)
                                                         0x00007f6873191fc3:   movabs $0x7fef350e0,%rdi            ;   {oop([B{0x00000007fef350e0})}
   0.00%                                                 0x00007f6873191fcd:   mov    %rdi,0x38(%rsp)
   0.00%                                                 0x00007f6873191fd2:   movabs $0x7fef35078,%r10            ;   {oop([B{0x00000007fef35078})}
                                                         0x00007f6873191fdc:   mov    %r10,0x30(%rsp)
                                                         0x00007f6873191fe1:   movabs $0x7fef35048,%r11            ;   {oop([B{0x00000007fef35048})}
   0.00%                                                 0x00007f6873191feb:   mov    %r11,0x28(%rsp)
   0.00%                                                 0x00007f6873191ff0:   movabs $0x7fef35148,%r8             ;   {oop([B{0x00000007fef35148})}
                                                         0x00007f6873191ffa:   mov    %r8,0x20(%rsp)
   0.00%                                                 0x00007f6873191fff:   movabs $0x7fef35118,%r9             ;   {oop([B{0x00000007fef35118})}
   0.00%                                                 0x00007f6873192009:   mov    %r9,0x18(%rsp)
   0.00%                                                 0x00007f687319200e:   movabs $0x7fef350a8,%rbx            ;   {oop([B{0x00000007fef350a8})}
                                                         0x00007f6873192018:   mov    %rbx,0x10(%rsp)
   0.00%                                                 0x00007f687319201d:   mov    $0x0,%ecx
   0.00%                                                 0x00007f6873192022:   mov    $0x0,%eax
   0.00%  ╭                                              0x00007f6873192027:   jmp    0x00007f68731922bd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │                                              0x00007f687319202c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                                              0x00007f6873192037:   data16 data16 xchg %ax,%ax
          │                                              0x00007f687319203b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   1.01%  │               ↗                              0x00007f6873192040:   mov    0x10(%r14,%rcx,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │               │                                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │               │                                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   9.47%  │               │                              0x00007f6873192045:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f687319298d
  24.55%  │               │                              0x00007f687319204c:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - java.lang.String::isLatin1@7 (line 4817)
          │               │                                                                                        ; - java.lang.String::hashCode@17 (line 2365)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.04%  │               │                              0x00007f6873192054:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - java.lang.String::hashCode@24 (line 2365)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   3.27%  │               │                              0x00007f687319205c:   mov    %r13d,%r14d
   0.01%  │               │                              0x00007f687319205f:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │               │                                                                                        ; - java.lang.String::equals@-3
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.94%  │               │                              0x00007f6873192063:   mov    %edx,%edi
   0.00%  │               │                              0x00007f6873192065:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.02%  │               │                              0x00007f6873192069:   test   %esi,%esi
          │╭              │                              0x00007f687319206b:   je     0x00007f68731925e8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                                                        ; - java.lang.String::hashCode@6 (line 2364)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%  ││              │                              0x00007f6873192071:   mov    %rdi,(%rsp)
   5.99%  ││              │                              0x00007f6873192075:   mov    %r14,0x8(%rsp)
   3.30%  ││              │                              0x00007f687319207a:   mov    %edx,%r14d
   0.02%  ││              │                              0x00007f687319207d:   mov    %ecx,0x50(%rsp)
   0.00%  ││              │                              0x00007f6873192081:   mov    %eax,%edi                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                                                        ; - java.lang.String::hashCode@58 (line 2373)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   2.39%  ││              │                   ↗↗         0x00007f6873192083:   cmp    $0x9ef434af,%esi
          ││╭             │                   ││         0x00007f6873192089:   je     0x00007f68731922ce
   3.07%  │││             │                   ││         0x00007f687319208f:   cmp    $0x23c6acdf,%esi
          │││╭            │                   ││         0x00007f6873192095:   je     0x00007f68731921b7
   0.01%  ││││            │                   ││         0x00007f687319209b:   cmp    $0x462300d,%esi
          ││││╭           │                   ││         0x00007f68731920a1:   je     0x00007f687319236f
   0.01%  │││││           │                   ││         0x00007f68731920a7:   cmp    $0x33eb4d91,%esi
          │││││╭          │                   ││         0x00007f68731920ad:   je     0x00007f687319240a
   0.47%  ││││││          │                   ││         0x00007f68731920b3:   cmp    $0x103b4,%esi
          ││││││╭         │                   ││         0x00007f68731920b9:   je     0x00007f68731924af
   0.75%  │││││││         │                   ││         0x00007f68731920bf:   cmp    $0x14234,%esi
          │││││││╭        │                   ││         0x00007f68731920c5:   je     0x00007f6873192546
          ││││││││        │                   ││         0x00007f68731920cb:   cmp    $0x90663ad4,%esi
          ││││││││        │                   ││         0x00007f68731920d1:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731920d7:   cmp    $0xa2a1be40,%esi
          ││││││││        │                   ││         0x00007f68731920dd:   data16 xchg %ax,%ax
          ││││││││        │                   ││         0x00007f68731920e0:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731920e6:   cmp    $0xaf2874e8,%esi
          ││││││││        │                   ││         0x00007f68731920ec:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731920f2:   cmp    $0xba6eabe2,%esi
          ││││││││        │                   ││         0x00007f68731920f8:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731920fe:   cmp    $0xc517aa2b,%esi
          ││││││││        │                   ││         0x00007f6873192104:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f687319210a:   cmp    $0xd91961ec,%esi             ;   {no_reloc}
          ││││││││        │                   ││         0x00007f6873192110:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192116:   cmp    $0xeb2c8617,%esi
          ││││││││        │                   ││         0x00007f687319211c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f6873192120:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192126:   cmp    $0xfce7bd80,%esi
          ││││││││        │                   ││         0x00007f687319212c:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192132:   cmp    $0x10260,%esi
          ││││││││        │                   ││         0x00007f6873192138:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f687319213e:   cmp    $0x14b03,%esi
          ││││││││        │                   ││         0x00007f6873192144:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f687319214a:   cmp    $0x1f3140,%esi
          ││││││││        │                   ││         0x00007f6873192150:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192156:   cmp    $0x4c5f9e8,%esi
          ││││││││        │                   ││         0x00007f687319215c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f6873192160:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192166:   cmp    $0x4c6443f,%esi
          ││││││││        │                   ││         0x00007f687319216c:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192172:   cmp    $0x64b8f52,%esi
          ││││││││        │                   ││         0x00007f6873192178:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f687319217e:   cmp    $0xe6d87d7,%esi
          ││││││││        │                   ││         0x00007f6873192184:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f687319218a:   cmp    $0x1b604cf5,%esi
          ││││││││        │                   ││         0x00007f6873192190:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f6873192196:   cmp    $0x2d2d772a,%esi
          ││││││││        │                   ││         0x00007f687319219c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f68731921a0:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731921a6:   cmp    $0x356e5289,%esi
          ││││││││        │                   ││         0x00007f68731921ac:   je     0x00007f687319287a
          ││││││││        │                   ││         0x00007f68731921b2:   jmp    0x00007f687319287a           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││        │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          ││││││││        │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │││↘││││        │                   ││         0x00007f68731921b7:   nopw   0x0(%rax,%rax,1)
   0.01%  │││ ││││        │                   ││         0x00007f68731921c0:   cmp    $0xffde6a0c,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fef35060})}
          │││ ││││╭       │                   ││         0x00007f68731921c7:   je     0x00007f6873192680
          │││ │││││       │                   ││         0x00007f68731921cd:   test   %bpl,%bpl
          │││ │││││       │                   ││         0x00007f68731921d0:   jne    0x00007f68731927f0           ;* unwind (locked if synchronized)
          │││ │││││       │                   ││                                                                   ; - java.lang.String::equals@-3
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │││ │││││       │                   ││         0x00007f68731921d6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │││ │││││       │                   ││                                                                   ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │││ │││││       │                   ││         0x00007f68731921e0:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f68731929b0
          │││ │││││       │                   ││         0x00007f68731921e9:   jne    0x00007f68731927b6
          │││ │││││       │                   ││         0x00007f68731921ef:   mov    (%rsp),%r8
          │││ │││││       │                   ││         0x00007f68731921f3:   mov    %edi,%r11d
          │││ │││││       │                   ││         0x00007f68731921f6:   mov    0x38(%rsp),%r10
          │││ │││││       │                   ││         0x00007f68731921fb:   mov    0x30(%rsp),%rsi
          │││ │││││       │                   ││         0x00007f6873192200:   mov    0x8(%rsp),%rdi
          │││ │││││       │                   ││         0x00007f6873192205:   mov    $0x7,%edx
          │││ │││││       │                   ││         0x00007f687319220a:   mov    $0x10,%rax
          │││ │││││       │                   ││         0x00007f6873192211:   mov    $0x10,%rcx
          │││ │││││       │                   ││         0x00007f6873192218:   add    %rax,%rsi
          │││ │││││       │                   ││         0x00007f687319221b:   add    %rcx,%rdi
          │││ │││││       │                   ││         0x00007f687319221e:   mov    $0x1,%r9d
          │││ │││││       │                   ││         0x00007f6873192224:   mov    (%rsi),%edx
          │││ │││││       │                   ││         0x00007f6873192226:   xor    (%rdi),%edx
          │││ │││││       │                   ││         0x00007f6873192228:   mov    0x3(%rsi),%esi
          │││ │││││       │                   ││         0x00007f687319222b:   xor    0x3(%rdi),%esi
          │││ │││││       │                   ││         0x00007f687319222e:   xor    %rdi,%rdi
          │││ │││││       │                   ││         0x00007f6873192231:   or     %rsi,%rdx
          │││ │││││       │                   ││         0x00007f6873192234:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││ │││││       │                   ││                                                                   ; - java.lang.String::equals@-3
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │││ │││││       │                   ││         0x00007f6873192238:   nopl   0x0(%rax,%rax,1)
          │││ │││││       │                   ││         0x00007f6873192240:   test   %r9d,%r9d
          │││ │││││       │                   ││         0x00007f6873192243:   je     0x00007f6873192787           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │││ │││││       │                   ││         0x00007f6873192249:   mov    $0x1,%r8d                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.40%  │││ │││││       │  ↗  ↗  ↗  ↗ ↗     ││↗↗↗↗↗↗   0x00007f687319224f:   cmp    $0x3,%r8d
          │││ │││││╭      │  │  │  │  │ │     ││││││││   0x00007f6873192253:   jge    0x00007f687319227f
   0.01%  │││ ││││││      │  │  │  │  │ │     ││││││││   0x00007f6873192259:   cmp    $0x2,%r8d
          │││ ││││││      │  │  │  │  │ │     ││││││││   0x00007f687319225d:   data16 xchg %ax,%ax
   0.69%  │││ ││││││╭     │  │  │  │  │ │     ││││││││   0x00007f6873192260:   jge    0x00007f68731922a5
   1.37%  │││ │││││││     │  │  │  │  │ │     ││││││││   0x00007f6873192266:   cmp    $0x0,%r8d
          │││ │││││││╭    │  │  │  │  │ │     ││││││││   0x00007f687319226a:   je     0x00007f68731924a5
          │││ ││││││││    │  │  │  │  │ │     ││││││││   0x00007f6873192270:   cmp    $0x1,%r8d
          │││ ││││││││╭   │  │  │  │  │ │     ││││││││   0x00007f6873192274:   je     0x00007f6873192365
          │││ │││││││││   │  │  │  │  │ │     ││││││││   0x00007f687319227a:   jmp    0x00007f6873192857
   3.03%  │││ │││││↘│││   │  │  │  │  │ │     ││││││││   0x00007f687319227f:   cmp    $0x5,%r8d
          │││ │││││ │││   │  │  │  │  │ │     ││││││││   0x00007f6873192283:   jg     0x00007f6873192857
   0.02%  │││ │││││ │││   │  │  │  │  │ │     ││││││││   0x00007f6873192289:   cmp    $0x5,%r8d
          │││ │││││ │││╭  │  │  │  │  │ │     ││││││││   0x00007f687319228d:   jge    0x00007f68731925de
   0.01%  │││ │││││ ││││  │  │  │  │  │ │     ││││││││   0x00007f6873192293:   cmp    $0x3,%r8d
          │││ │││││ ││││╭ │  │  │  │  │ │     ││││││││   0x00007f6873192297:   je     0x00007f6873192400
          │││ │││││ │││││ │  │  │  │  │ │     ││││││││   0x00007f687319229d:   data16 xchg %ax,%ax
   1.06%  │││ │││││ │││││╭│  │  │  │  │ │     ││││││││   0x00007f68731922a0:   jmp    0x00007f68731925d4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ │││││││  │  │  │  │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
          │││ │││││ │││││││  │  │  │  │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.98%  │││ │││││ ↘││││││  │  │  │  │ │     ││││││││   0x00007f68731922a5:   mov    $0x3,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││  ││││││  │  │  │  │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
          │││ │││││  ││││││  │  │  │  │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   5.11%  │││ │││││  ││││││  │↗ │↗ │↗ │ │↗↗   ││││││││   0x00007f68731922aa:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.02%  │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922ad:   mov    0x50(%rsp),%ecx
   0.07%  │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922b1:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.94%  │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922b3:   mov    0x40(%rsp),%r14
   4.91%  │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922b8:   mov    0x54(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   0.01%  ↘││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922bd:   data16 xchg %ax,%ax                 ;   {no_reloc}
   0.00%   ││ │││││  ││││││  ││ ││ ││ │ │││   ││││││││   0x00007f68731922c0:   cmp    %ecx,%r13d
           ││ │││││  │││││╰  ││ ││ ││ │ │││   ││││││││   0x00007f68731922c3:   jg     0x00007f6873192040
   0.05%   ││ │││││  │││││ ╭ ││ ││ ││ │ │││   ││││││││   0x00007f68731922c9:   jmp    0x00007f68731926eb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││ │││││  │││││ │ ││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.23%   │↘ │││││  │││││ │ ││ ││ ││ │ │││   ││││││││   0x00007f68731922ce:   mov    (%rsp),%r8
   0.01%   │  │││││  │││││ │ ││ ││ ││ │ │││   ││││││││   0x00007f68731922d2:   mov    %edi,%r11d
   0.00%   │  │││││  │││││ │ ││ ││ ││ │ │││   ││││││││   0x00007f68731922d5:   mov    0x38(%rsp),%r10
   0.73%   │  │││││  │││││ │ ││ ││ ││ │ │││   ││││││││   0x00007f68731922da:   nopw   0x0(%rax,%rax,1)
   0.24%   │  │││││  │││││ │ ││ ││ ││ │ │││   ││││││││   0x00007f68731922e0:   cmp    $0xffde6a12,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fef35090})}
           │  │││││  │││││ │╭││ ││ ││ │ │││   ││││││││   0x00007f68731922e7:   je     0x00007f6873192675
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f68731922ed:   test   %bpl,%bpl
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f68731922f0:   jne    0x00007f687319293a           ;* unwind (locked if synchronized)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f68731922f6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192300:   cmpl   $0x10,0xc(,%r13,8)           ; implicit exception: dispatches to 0x00007f68731929d3
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192309:   jne    0x00007f68731928bc
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319230f:   mov    0x10(%rsp),%rsi
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192314:   mov    0x8(%rsp),%rdi
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192319:   mov    $0x10,%edx
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319231e:   mov    $0x10,%rax
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192325:   mov    $0x10,%rcx
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319232c:   add    %rax,%rsi
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319232f:   add    %rcx,%rdi
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192332:   mov    $0x1,%r9d
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192338:   vmovdqu (%rsi),%xmm0
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319233c:   vmovdqu (%rdi),%xmm1
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192340:   vpxor  %xmm1,%xmm0,%xmm0
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192344:   xor    %rsi,%rsi
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192347:   vptest %xmm0,%xmm0
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319234c:   cmovne %esi,%r9d                    ;* unwind (locked if synchronized)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192350:   test   %r9d,%r9d
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192353:   je     0x00007f687319273e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f6873192359:   mov    $0x2,%r8d
           │  │││││  │││││ ││││ ││ ││ │ │││   ││││││││   0x00007f687319235f:   nop
           │  │││││  │││││ ││╰│ ││ ││ │ │││   ││││││││   0x00007f6873192360:   jmp    0x00007f687319224f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │  │││││  │││││ ││ │ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │  │││││  │││││ ││ │ ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │  │││││  │↘│││ ││ │ ││ ││ │ │││   ││││││││   0x00007f6873192365:   mov    $0x2,%eax
   0.00%   │  │││││  │ │││ ││ ╰ ││ ││ │ │││   ││││││││   0x00007f687319236a:   jmp    0x00007f68731922aa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │  │││││  │ │││ ││   ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
           │  │││││  │ │││ ││   ││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.02%   │  ↘││││  │ │││ ││   ││ ││ │ │││   ││││││││   0x00007f687319236f:   mov    (%rsp),%r8
   0.42%   │   ││││  │ │││ ││   ││ ││ │ │││   ││││││││   0x00007f6873192373:   mov    %edi,%r11d
   0.62%   │   ││││  │ │││ ││   ││ ││ │ │││   ││││││││   0x00007f6873192376:   mov    0x38(%rsp),%r10
           │   ││││  │ │││ ││   ││ ││ │ │││   ││││││││   0x00007f687319237b:   nopl   0x0(%rax,%rax,1)
   0.00%   │   ││││  │ │││ ││   ││ ││ │ │││   ││││││││   0x00007f6873192380:   cmp    $0xffde6a06,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fef35030})}
           │   ││││  │ │││ ││  ╭││ ││ │ │││   ││││││││   0x00007f6873192387:   je     0x00007f687319269e
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f687319238d:   test   %bpl,%bpl
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f6873192390:   jne    0x00007f68731928c8           ;* unwind (locked if synchronized)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f6873192396:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923a0:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f68731929f6
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923a9:   jne    0x00007f68731928e0
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923af:   mov    0x28(%rsp),%rsi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923b4:   mov    0x8(%rsp),%rdi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923b9:   mov    $0x5,%edx
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923be:   mov    $0x10,%rax
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923c5:   mov    $0x10,%rcx
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923cc:   add    %rax,%rsi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923cf:   add    %rcx,%rdi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923d2:   mov    $0x1,%r9d
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923d8:   mov    (%rsi),%edx
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923da:   xor    (%rdi),%edx
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923dc:   mov    0x1(%rsi),%esi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923df:   xor    0x1(%rdi),%esi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923e2:   xor    %rdi,%rdi
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923e5:   or     %rsi,%rdx
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923e8:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923ec:   test   %r9d,%r9d
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923ef:   je     0x00007f6873192899           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │   ││││  │ │││ ││  │││ ││ │ │││   ││││││││   0x00007f68731923f5:   mov    $0x0,%r8d
           │   ││││  │ │││ ││  │╰│ ││ │ │││   ││││││││   0x00007f68731923fb:   jmp    0x00007f687319224f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │   ││││  │ │││ ││  │ │ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │   ││││  │ │││ ││  │ │ ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.05%   │   ││││  │ │↘│ ││  │ │ ││ │ │││   ││││││││   0x00007f6873192400:   mov    $0x4,%eax
           │   ││││  │ │ │ ││  │ ╰ ││ │ │││   ││││││││   0x00007f6873192405:   jmp    0x00007f68731922aa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │   ││││  │ │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
           │   ││││  │ │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.56%   │   ↘│││  │ │ │ ││  │   ││ │ │││   ││││││││   0x00007f687319240a:   mov    (%rsp),%r8
   0.43%   │    │││  │ │ │ ││  │   ││ │ │││   ││││││││   0x00007f687319240e:   mov    %edi,%r11d
   0.01%   │    │││  │ │ │ ││  │   ││ │ │││   ││││││││   0x00007f6873192411:   mov    0x38(%rsp),%r10
   0.01%   │    │││  │ │ │ ││  │   ││ │ │││   ││││││││   0x00007f6873192416:   data16 nopw 0x0(%rax,%rax,1)
   0.58%   │    │││  │ │ │ ││  │   ││ │ │││   ││││││││   0x00007f6873192420:   cmp    $0xffde6a19,%r14d            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fef350c8})}
           │    │││  │ │ │ ││  │  ╭││ │ │││   ││││││││   0x00007f6873192427:   je     0x00007f6873192693
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319242d:   test   %bpl,%bpl
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192430:   jne    0x00007f687319292e           ;* unwind (locked if synchronized)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192436:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192440:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f6873192a19
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192449:   jne    0x00007f68731928ec
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319244f:   mov    %r10,%rsi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192452:   mov    0x8(%rsp),%rdi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192457:   mov    $0xa,%edx
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319245c:   mov    $0x10,%rax
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192463:   mov    $0x10,%rcx
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319246a:   add    %rax,%rsi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319246d:   add    %rcx,%rdi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192470:   mov    $0x1,%r9d
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192476:   mov    (%rsi),%rdx
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192479:   xor    (%rdi),%rdx
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319247c:   mov    0x2(%rsi),%rsi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192480:   xor    0x2(%rdi),%rsi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192484:   xor    %rdi,%rdi
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192487:   or     %rsi,%rdx
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319248a:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319248e:   test   %r9d,%r9d
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192491:   je     0x00007f68731928f8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f6873192497:   mov    $0x3,%r8d
           │    │││  │ │ │ ││  │  │││ │ │││   ││││││││   0x00007f687319249d:   data16 xchg %ax,%ax
           │    │││  │ │ │ ││  │  │╰│ │ │││   ││││││││   0x00007f68731924a0:   jmp    0x00007f687319224f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │    │││  │ │ │ ││  │  │ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │    │││  │ │ │ ││  │  │ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │    │││  ↘ │ │ ││  │  │ │ │ │││   ││││││││   0x00007f68731924a5:   mov    $0x1,%eax
           │    │││    │ │ ││  │  │ ╰ │ │││   ││││││││   0x00007f68731924aa:   jmp    0x00007f68731922aa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │    │││    │ │ ││  │  │   │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
           │    │││    │ │ ││  │  │   │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.71%   │    ↘││    │ │ ││  │  │   │ │││   ││││││││   0x00007f68731924af:   mov    (%rsp),%r8
   0.01%   │     ││    │ │ ││  │  │   │ │││   ││││││││   0x00007f68731924b3:   mov    %edi,%r11d
           │     ││    │ │ ││  │  │   │ │││   ││││││││   0x00007f68731924b6:   mov    0x38(%rsp),%r10
   0.28%   │     ││    │ │ ││  │  │   │ │││   ││││││││   0x00007f68731924bb:   nopl   0x0(%rax,%rax,1)
   0.79%   │     ││    │ │ ││  │  │   │ │││   ││││││││   0x00007f68731924c0:   cmp    $0xffde6a20,%r14d            ;   {oop(&quot;CAR&quot;{0x00000007fef35100})}
           │     ││    │ │ ││  │  │  ╭│ │││   ││││││││   0x00007f68731924c7:   je     0x00007f68731926a9
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924cd:   test   %bpl,%bpl
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924d0:   jne    0x00007f68731927ad           ;* unwind (locked if synchronized)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924d6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924e0:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f6873192a3c
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924e9:   jne    0x00007f6873192761
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924ef:   mov    0x18(%rsp),%rsi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924f4:   mov    0x8(%rsp),%rdi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924f9:   mov    $0x3,%edx
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f68731924fe:   mov    $0x10,%rax
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192505:   mov    $0x10,%rcx
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319250c:   add    %rax,%rsi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319250f:   add    %rcx,%rdi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192512:   mov    $0x1,%r9d
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192518:   movzwq (%rsi),%rdx
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319251c:   xor    (%rdi),%dx
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319251f:   movzwq 0x1(%rsi),%rsi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192524:   xor    0x1(%rdi),%si
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192528:   xor    %rdi,%rdi
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319252b:   or     %rsi,%rdx
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319252e:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192532:   test   %r9d,%r9d
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f6873192535:   je     0x00007f6873192811           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │     ││    │ │ ││  │  │  ││ │││   ││││││││   0x00007f687319253b:   mov    $0x4,%r8d
           │     ││    │ │ ││  │  │  │╰ │││   ││││││││   0x00007f6873192541:   jmp    0x00007f687319224f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │  │  │  │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │     ││    │ │ ││  │  │  │  │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.06%   │     ↘│    │ │ ││  │  │  │  │││   ││││││││   0x00007f6873192546:   mov    (%rsp),%r8
   0.01%   │      │    │ │ ││  │  │  │  │││   ││││││││   0x00007f687319254a:   mov    %edi,%r11d
   0.14%   │      │    │ │ ││  │  │  │  │││   ││││││││   0x00007f687319254d:   mov    0x38(%rsp),%r10
   0.69%   │      │    │ │ ││  │  │  │  │││   ││││││││   0x00007f6873192552:   cmp    $0xffde6a26,%r14d            ;   {oop(&quot;SUV&quot;{0x00000007fef35130})}
           │      │    │ │ ││  │  │  │ ╭│││   ││││││││   0x00007f6873192559:   je     0x00007f68731926b4           ;* unwind (locked if synchronized)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - java.lang.String::equals@-3
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f687319255f:   nop
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192560:   test   %bpl,%bpl
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192563:   jne    0x00007f68731928d4           ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192569:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f6873192a5f
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192572:   jne    0x00007f687319288d
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192578:   mov    0x20(%rsp),%rsi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f687319257d:   mov    0x8(%rsp),%rdi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192582:   mov    $0x3,%edx
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192587:   mov    $0x10,%rax
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f687319258e:   mov    $0x10,%rcx
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192595:   add    %rax,%rsi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f6873192598:   add    %rcx,%rdi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f687319259b:   mov    $0x1,%r9d
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925a1:   movzwq (%rsi),%rdx
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925a5:   xor    (%rdi),%dx
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925a8:   movzwq 0x1(%rsi),%rsi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925ad:   xor    0x1(%rdi),%si
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925b1:   xor    %rdi,%rdi
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925b4:   or     %rsi,%rdx
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925b7:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - java.lang.String::equals@-3
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925bb:   nopl   0x0(%rax,%rax,1)
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925c0:   test   %r9d,%r9d
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925c3:   je     0x00007f6873192834           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
           │      │    │ │ ││  │  │  │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │      │    │ │ ││  │  │  │ ││││   ││││││││   0x00007f68731925c9:   mov    $0x5,%r8d
           │      │    │ │ ││  │  │  │ │╰││   ││││││││   0x00007f68731925cf:   jmp    0x00007f687319224f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │      │    │ │ ││  │  │  │ │ ││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
           │      │    │ │ ││  │  │  │ │ ││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.00%   │      │    │ ↘ ││  │  │  │ │ ││   ││││││││   0x00007f68731925d4:   mov    $0x5,%eax
           │      │    │   ││  │  │  │ │ ╰│   ││││││││   0x00007f68731925d9:   jmp    0x00007f68731922aa
   0.88%   │      │    ↘   ││  │  │  │ │  │   ││││││││   0x00007f68731925de:   mov    $0x6,%eax
           │      │        ││  │  │  │ │  ╰   ││││││││   0x00007f68731925e3:   jmp    0x00007f68731922aa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │      │        ││  │  │  │ │      ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
           │      │        ││  │  │  │ │      ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           ↘      │        ││  │  │  │ │      ││││││││   0x00007f68731925e8:   cmpb   $0x0,0x11(,%rdx,8)
                  │        ││  │  │  │ │   ╭  ││││││││   0x00007f68731925f0:   jne    0x00007f687319265e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   │  ││││││││                                                             ; - java.lang.String::hashCode@13 (line 2364)
                  │        ││  │  │  │ │   │  ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   │  ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   │  ││││││││   0x00007f68731925f6:   test   %bpl,%bpl
                  │        ││  │  │  │ │   │  ││││││││   0x00007f68731925f9:   jne    0x00007f6873192805           ; ImmutableOopMap {rdx=NarrowOop rdi=Oop r13=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │        ││  │  │  │ │   │  ││││││││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   │  ││││││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
                  │        ││  │  │  │ │   │  ││││││││   0x00007f68731925ff:   mov    0xc(,%r13,8),%esi            ; implicit exception: dispatches to 0x00007f6873192a82
                  │        ││  │  │  │ │   │  ││││││││   0x00007f6873192607:   cmp    $0x1,%esi
                  │        ││  │  │  │ │   │╭ ││││││││   0x00007f687319260a:   je     0x00007f68731926bf
                  │        ││  │  │  │ │   ││ ││││││││   0x00007f6873192610:   cmp    $0x0,%esi
                  │        ││  │  │  │ │   ││╭││││││││   0x00007f6873192613:   je     0x00007f6873192711           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@2 (line 188)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192619:   mov    %rdi,(%rsp)
                  │        ││  │  │  │ │   │││││││││││   0x00007f687319261d:   mov    %edx,%r10d
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192620:   mov    %ecx,0x50(%rsp)
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192624:   mov    %eax,%ecx
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192626:   mov    %esi,%edx
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192628:   mov    %r14,%rdi
                  │        ││  │  │  │ │   │││││││││││   0x00007f687319262b:   lea    0x10(%rdi),%rdi
                  │        ││  │  │  │ │   │││││││││││   0x00007f687319262f:   mov    %rdi,%rsi
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192632:   mov    %ecx,%edi
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192634:   mov    $0x0,%ecx                    ;* unwind (locked if synchronized)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@48 (line 191)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192639:   mov    %r14,0x8(%rsp)
                  │        ││  │  │  │ │   │││││││││││   0x00007f687319263e:   mov    %r10d,%r14d
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192641:   call   0x00007f6872d0a920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
                  │        ││  │  │  │ │   │││││││││││   0x00007f6873192646:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@51 (line 188)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   │││││││││││↗  0x00007f6873192647:   test   %eax,%eax
                  │        ││  │  │  │ │   ││││││││││││  0x00007f6873192649:   je     0x00007f68731927c6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   ││││││││││││  0x00007f687319264f:   mov    %eax,0xc(,%r14,8)            ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                  │        ││  │  │  │ │   ││││││││││││  0x00007f6873192657:   mov    %eax,%esi
                  │        ││  │  │  │ │   │││╰││││││││  0x00007f6873192659:   jmp    0x00007f6873192083
                  │        ││  │  │  │ │   ↘││ ││││││││  0x00007f687319265e:   mov    %rdi,(%rsp)
                  │        ││  │  │  │ │    ││ ││││││││  0x00007f6873192662:   mov    %r14,0x8(%rsp)
                  │        ││  │  │  │ │    ││ ││││││││  0x00007f6873192667:   mov    %edx,%r14d
                  │        ││  │  │  │ │    ││ ││││││││  0x00007f687319266a:   mov    %ecx,0x50(%rsp)
                  │        ││  │  │  │ │    ││ ││││││││  0x00007f687319266e:   mov    %eax,%edi
                  │        ││  │  │  │ │    ││ ╰│││││││  0x00007f6873192670:   jmp    0x00007f6873192083           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │  │  │ │    ││  │││││││                                                            ; - java.lang.String::hashCode@58 (line 2373)
                  │        ││  │  │  │ │    ││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  │        ││  │  │  │ │    ││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.00%          │        │↘  │  │  │ │    ││  │││││││  0x00007f6873192675:   mov    $0x2,%r8d
   0.00%          │        │   │  │  │ │    ││  ╰││││││  0x00007f687319267b:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                  │        │   │  │  │ │    ││   ││││││                                                            ; - java.lang.String::equals@-3
                  │        │   │  │  │ │    ││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                  │        │   │  │  │ │    ││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   1.05%          ↘        │   │  │  │ │    ││   ││││││  0x00007f6873192680:   mov    $0x1,%r8d
   0.00%                   │   │  │  │ │    ││   ││││││  0x00007f6873192686:   mov    %edi,%r11d
                           │   │  │  │ │    ││   ││││││  0x00007f6873192689:   mov    0x38(%rsp),%r10
   0.01%                   │   │  │  │ │    ││   ╰│││││  0x00007f687319268e:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                           │   │  │  │ │    ││    │││││                                                            ; - java.lang.String::equals@-3
                           │   │  │  │ │    ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                           │   │  │  │ │    ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.41%                   │   │  ↘  │ │    ││    │││││  0x00007f6873192693:   mov    $0x3,%r8d
   0.02%                   │   │     │ │    ││    ╰││││  0x00007f6873192699:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                           │   │     │ │    ││     ││││                                                            ; - java.lang.String::equals@-3
                           │   │     │ │    ││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
                           │   │     │ │    ││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.40%                   │   ↘     │ │    ││     ││││  0x00007f687319269e:   mov    $0x0,%r8d
   0.60%                   │         │ │    ││     ╰│││  0x00007f68731926a4:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                           │         │ │    ││      │││                                                            ; - java.lang.String::equals@-3
                           │         │ │    ││      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                           │         │ │    ││      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.01%                   │         ↘ │    ││      │││  0x00007f68731926a9:   mov    $0x4,%r8d
                           │           │    ││      ╰││  0x00007f68731926af:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                           │           │    ││       ││                                                            ; - java.lang.String::equals@-3
                           │           │    ││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
                           │           │    ││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.06%                   │           ↘    ││       ││  0x00007f68731926b4:   mov    $0x5,%r8d
   0.01%                   │                ││       ╰│  0x00007f68731926ba:   jmp    0x00007f687319224f           ;* unwind (locked if synchronized)
                           │                ││        │                                                            ; - java.lang.String::equals@-3
                           │                ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
                           │                ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                           │                ↘│        │  0x00007f68731926bf:   mov    %rdi,%r8
                           │                 │        │  0x00007f68731926c2:   mov    %r14,0x8(%rsp)
                           │                 │        │  0x00007f68731926c7:   mov    %edx,%r14d
                           │                 │        │  0x00007f68731926ca:   mov    %ecx,0x50(%rsp)
                           │                 │        │  0x00007f68731926ce:   mov    %eax,%r11d
                           │                 │        │  0x00007f68731926d1:   mov    0x38(%rsp),%r10
                           │                 │        │  0x00007f68731926d6:   movzbl 0x10(,%r13,8),%eax           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                           │                 │        │                                                            ; - java.lang.StringLatin1::hashCode@38 (line 190)
                           │                 │        │                                                            ; - java.lang.String::hashCode@27 (line 2365)
                           │                 │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                           │                 │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                           │                 │        │  0x00007f68731926df:   mov    %r8,(%rsp)
                           │                 │        │  0x00007f68731926e3:   mov    %r11d,%edi
                           │                 │        ╰  0x00007f68731926e6:   jmp    0x00007f6873192647           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                           │                 │                                                                     ; - java.lang.StringLatin1::hashCode@51 (line 188)
                           │                 │                                                                     ; - java.lang.String::hashCode@27 (line 2365)
                           │                 │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                           │                 │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.03%                   ↘                 │           0x00007f68731926eb:   mov    %eax,%r11d
                                             │           0x00007f68731926ee:   mov    0x60(%rsp),%rbp
   0.03%                                     │           0x00007f68731926f3:   add    $0x68,%rsp
                                             │           0x00007f68731926f7:   nopw   0x0(%rax,%rax,1)
                                             │           0x00007f6873192700:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                             │           0x00007f6873192707:   ja     0x00007f6873192956
   0.01%                                     │           0x00007f687319270d:   vzeroupper 
   0.01%                                     │           0x00007f6873192710:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                             │                                                                     ; - java.lang.String::hashCode@58 (line 2373)
                                             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                                             ↘           0x00007f6873192711:   mov    $0x6694,%r10
                                                         0x00007f6873192718:   mov    %ecx,0x50(%rsp)
                                                         0x00007f687319271c:   mov    %eax,%r11d
                                                         0x00007f687319271f:   movl   $0xffffffed,0x484(%r15)      ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
                                                         0x00007f687319272a:   mov    %r10,0x490(%r15)
....................................................................................................
  95.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1008 
   0.70%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  exc_page_fault 
   0.19%     [kernel.kallsyms]  native_read_msr 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1035 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%     [kernel.kallsyms]  __raw_spin_lock_irqsave 
   2.10%  <...other 401 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1008 
   0.70%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  exc_page_fault 
   0.19%     [kernel.kallsyms]  native_read_msr 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1035 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%                        <unknown> 
   2.10%  <...other 393 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.26%        jvmci, level 4
   3.83%     [kernel.kallsyms]
   0.30%             libjvm.so
   0.30%   libjvmcicompiler.so
   0.18%             libc.so.6
   0.04%                      
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%           c1, level 3
   0.00%           c1, level 2
   0.00%                kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:13:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.445 ns/op
# Warmup Iteration   2: 21.061 ns/op
# Warmup Iteration   3: 20.766 ns/op
# Warmup Iteration   4: 20.857 ns/op
# Warmup Iteration   5: 20.716 ns/op
Iteration   1: 20.699 ns/op
Iteration   2: 21.040 ns/op
Iteration   3: 21.022 ns/op
Iteration   4: 21.044 ns/op
Iteration   5: 21.403 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  21.042 ±(99.9%) 0.959 ns/op [Average]
  (min, avg, max) = (20.699, 21.042, 21.403), stdev = 0.249
  CI (99.9%): [20.082, 22.001] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 222673 total address lines.
Perf output processed (skipped 78.859 seconds):
 Column 1: cycles (50271 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1049 

                                                                                                 # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                                                 #           [sp+0x20]  (sp of caller)
                                                                                                 0x00007f9f3f197080:   mov    0x8(%rsi),%r10d
                                                                                                 0x00007f9f3f197084:   movabs $0x7f9ebb000000,%r12
                                                                                                 0x00007f9f3f19708e:   add    %r12,%r10
                                                                                                 0x00007f9f3f197091:   xor    %r12,%r12
                                                                                                 0x00007f9f3f197094:   cmp    %r10,%rax
                                                                                                 0x00007f9f3f197097:   jne    0x00007f9f3eaf9080           ;   {runtime_call ic_miss_stub}
                                                                                                 0x00007f9f3f19709d:   data16 xchg %ax,%ax
                                                                                               [Verified Entry Point]
   0.01%                                                                                         0x00007f9f3f1970a0:   mov    %eax,-0x14000(%rsp)
   3.74%                                                                                         0x00007f9f3f1970a7:   sub    $0x18,%rsp
   0.00%                                                                                         0x00007f9f3f1970ab:   nop
                                                                                                 0x00007f9f3f1970ac:   cmpl   $0x0,0x20(%r15)
   0.32%                                                                                         0x00007f9f3f1970b4:   jne    0x00007f9f3f197f25
   3.51%                                                                                         0x00007f9f3f1970ba:   mov    %rbp,0x10(%rsp)
   0.01%                                                                                         0x00007f9f3f1970bf:   mov    %rdx,%rbp                    ; ImmutableOopMap {rbp=Oop }
                                                                                                                                                           ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@0 (line 214)
   0.00%                                                                                         0x00007f9f3f1970c2:   mov    0xc(%rbp),%r10d              ; implicit exception: dispatches to 0x00007f9f3f197f49
  10.13%                                                                                         0x00007f9f3f1970c6:   movsbl 0x10(%rbp),%edi              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.String::isLatin1@7 (line 4817)
                                                                                                                                                           ; - java.lang.String::hashCode@17 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.01%                                                                                         0x00007f9f3f1970ca:   mov    0x14(%rbp),%r13d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.String::hashCode@24 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   1.72%                                                                                         0x00007f9f3f1970ce:   mov    %r13d,%r14d
                                                                                                 0x00007f9f3f1970d1:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                                                                                                           ; - java.lang.String::equals@-3
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
   3.68%                                                                                         0x00007f9f3f1970d5:   test   %r10d,%r10d
          ╭                                                                                      0x00007f9f3f1970d8:   je     0x00007f9f3f197451           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                                                ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.01%  │                                    ↗ ↗                                               0x00007f9f3f1970de:   cmp    $0x4c5f9e8,%r10d
          │╭                                   │ │                                               0x00007f9f3f1970e5:   jge    0x00007f9f3f197238
   0.74%  ││                                   │ │                                               0x00007f9f3f1970eb:   cmp    $0x14234,%r10d
          ││╭                                  │ │                                               0x00007f9f3f1970f2:   jge    0x00007f9f3f1971eb
   0.57%  │││                                  │ │                                               0x00007f9f3f1970f8:   cmp    $0xfce7bd80,%r10d
   0.66%  │││                                  │ │                                               0x00007f9f3f1970ff:   nop
          │││╭                                 │ │                                               0x00007f9f3f197100:   jge    0x00007f9f3f1971b1
   0.22%  ││││                                 │ │                                               0x00007f9f3f197106:   cmp    $0xa2a1be40,%r10d
          ││││╭                                │ │                                               0x00007f9f3f19710d:   jge    0x00007f9f3f197132
   0.14%  │││││                                │ │                                               0x00007f9f3f197113:   cmp    $0x90663ad4,%r10d
          │││││                                │ │                                               0x00007f9f3f19711a:   je     0x00007f9f3f197d33
   0.08%  │││││                                │ │                                               0x00007f9f3f197120:   cmp    $0x9ef434af,%r10d
          │││││╭                               │ │                                               0x00007f9f3f197127:   je     0x00007f9f3f1974ab
          ││││││                               │ │                                               0x00007f9f3f19712d:   jmp    0x00007f9f3f197d33
   0.28%  ││││↘│                               │ │                                               0x00007f9f3f197132:   cmp    $0xeb2c8617,%r10d
          ││││ │                               │ │                                               0x00007f9f3f197139:   jg     0x00007f9f3f197d33
   0.30%  ││││ │                               │ │                                               0x00007f9f3f19713f:   cmp    $0xeb2c8617,%r10d
          ││││ │╭                              │ │                                               0x00007f9f3f197146:   jge    0x00007f9f3f1977e9
          ││││ ││                              │ │                                               0x00007f9f3f19714c:   cmp    $0xc517aa2b,%r10d
          ││││ ││╭                             │ │                                               0x00007f9f3f197153:   jge    0x00007f9f3f197192
          ││││ │││                             │ │                                               0x00007f9f3f197159:   cmp    $0xba6eabe2,%r10d
          ││││ │││                             │ │                                               0x00007f9f3f197160:   jg     0x00007f9f3f197d33
          ││││ │││                             │ │                                               0x00007f9f3f197166:   cmp    $0xba6eabe2,%r10d
          ││││ │││                             │ │                                               0x00007f9f3f19716d:   jge    0x00007f9f3f197d33
          ││││ │││                             │ │                                               0x00007f9f3f197173:   cmp    $0xa2a1be40,%r10d
          ││││ │││                             │ │                                               0x00007f9f3f19717a:   je     0x00007f9f3f197d33
          ││││ │││                             │ │                                               0x00007f9f3f197180:   cmp    $0xaf2874e8,%r10d
          ││││ │││                             │ │                                               0x00007f9f3f197187:   je     0x00007f9f3f197d33
          ││││ │││                             │ │                                               0x00007f9f3f19718d:   jmp    0x00007f9f3f197d33
          ││││ ││↘                             │ │                                               0x00007f9f3f197192:   cmp    $0xc517aa2b,%r10d            ;   {no_reloc}
          ││││ ││                              │ │                                               0x00007f9f3f197199:   je     0x00007f9f3f197d33
          ││││ ││                              │ │                                               0x00007f9f3f19719f:   cmp    $0xd91961ec,%r10d
          ││││ ││                              │ │                                               0x00007f9f3f1971a6:   je     0x00007f9f3f197d33
          ││││ ││                              │ │                                               0x00007f9f3f1971ac:   jmp    0x00007f9f3f197d33
   0.24%  │││↘ ││                              │ │                                               0x00007f9f3f1971b1:   cmp    $0x103b4,%r10d
          │││  ││                              │ │                                               0x00007f9f3f1971b8:   jg     0x00007f9f3f197d33
   0.16%  │││  ││                              │ │                                               0x00007f9f3f1971be:   cmp    $0x103b4,%r10d
          │││  ││ ╭                            │ │                                               0x00007f9f3f1971c5:   jge    0x00007f9f3f197909
   0.29%  │││  ││ │                            │ │                                               0x00007f9f3f1971cb:   cmp    $0xfce7bd80,%r10d
          │││  ││ │                            │ │                                               0x00007f9f3f1971d2:   je     0x00007f9f3f197d33
   0.01%  │││  ││ │                            │ │                                               0x00007f9f3f1971d8:   cmp    $0x10260,%r10d
   0.00%  │││  ││ │                            │ │                                               0x00007f9f3f1971df:   nop
   0.02%  │││  ││ │╭                           │ │                                               0x00007f9f3f1971e0:   je     0x00007f9f3f197aa5
          │││  ││ ││                           │ │                                               0x00007f9f3f1971e6:   jmp    0x00007f9f3f197d33
   0.29%  ││↘  ││ ││                           │ │                                               0x00007f9f3f1971eb:   cmp    $0x1f3140,%r10d
          ││   ││ ││╭                          │ │                                               0x00007f9f3f1971f2:   jge    0x00007f9f3f197218
   0.77%  ││   ││ │││                          │ │                                               0x00007f9f3f1971f8:   cmp    $0x14234,%r10d
   0.00%  ││   ││ │││                          │ │                                               0x00007f9f3f1971ff:   nop
          ││   ││ │││╭                         │ │                                               0x00007f9f3f197200:   je     0x00007f9f3f197874
   0.08%  ││   ││ ││││                         │ │                                               0x00007f9f3f197206:   cmp    $0x14b03,%r10d
          ││   ││ ││││╭                        │ │                                               0x00007f9f3f19720d:   je     0x00007f9f3f197759
          ││   ││ │││││                        │ │                                               0x00007f9f3f197213:   jmp    0x00007f9f3f197d33
   0.69%  ││   ││ ││↘││                        │ │                                               0x00007f9f3f197218:   cmp    $0x1f3140,%r10d
   0.00%  ││   ││ ││ ││                        │ │                                               0x00007f9f3f19721f:   nop
          ││   ││ ││ ││                        │ │                                               0x00007f9f3f197220:   je     0x00007f9f3f197d33
   0.00%  ││   ││ ││ ││                        │ │                                               0x00007f9f3f197226:   cmp    $0x462300d,%r10d
          ││   ││ ││ ││╭                       │ │                                               0x00007f9f3f19722d:   je     0x00007f9f3f1975c5
          ││   ││ ││ │││                       │ │                                               0x00007f9f3f197233:   jmp    0x00007f9f3f197d33
   0.72%  │↘   ││ ││ │││                       │ │                                               0x00007f9f3f197238:   cmp    $0x2d2d772a,%r10d
   0.00%  │    ││ ││ │││                       │ │                                               0x00007f9f3f19723f:   nop
   1.64%  │    ││ ││ │││╭                      │ │                                               0x00007f9f3f197240:   jge    0x00007f9f3f1972cb
   0.00%  │    ││ ││ ││││                      │ │                                               0x00007f9f3f197246:   cmp    $0x23c6acdf,%r10d
          │    ││ ││ ││││                      │ │                                               0x00007f9f3f19724d:   jg     0x00007f9f3f197d33
   0.49%  │    ││ ││ ││││                      │ │                                               0x00007f9f3f197253:   cmp    $0x23c6acdf,%r10d
          │    ││ ││ ││││╭                     │ │                                               0x00007f9f3f19725a:   jge    0x00007f9f3f197534
   0.01%  │    ││ ││ │││││                     │ │                                               0x00007f9f3f197260:   cmp    $0xe6d87d7,%r10d
          │    ││ ││ │││││╭                    │ │                                               0x00007f9f3f197267:   jge    0x00007f9f3f1972ab
   0.52%  │    ││ ││ ││││││                    │ │                                               0x00007f9f3f19726d:   cmp    $0x64b8f52,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007f9f3f197274:   jg     0x00007f9f3f197d33
          │    ││ ││ ││││││                    │ │                                               0x00007f9f3f19727a:   cmp    $0x64b8f52,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007f9f3f197281:   jge    0x00007f9f3f197d33
   0.09%  │    ││ ││ ││││││                    │ │                                               0x00007f9f3f197287:   cmp    $0x4c5f9e8,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007f9f3f19728e:   je     0x00007f9f3f197d33
          │    ││ ││ ││││││                    │ │                                               0x00007f9f3f197294:   cmp    $0x4c6443f,%r10d             ;   {no_reloc}
   0.18%  │    ││ ││ ││││││                    │ │                                               0x00007f9f3f19729b:   nopl   0x0(%rax,%rax,1)
          │    ││ ││ ││││││╭                   │ │                                               0x00007f9f3f1972a0:   je     0x00007f9f3f197a1c
          │    ││ ││ │││││││                   │ │                                               0x00007f9f3f1972a6:   jmp    0x00007f9f3f197d33
   0.28%  │    ││ ││ │││││↘│                   │ │                                               0x00007f9f3f1972ab:   cmp    $0xe6d87d7,%r10d
          │    ││ ││ │││││ │                   │ │                                               0x00007f9f3f1972b2:   je     0x00007f9f3f197d33
   0.00%  │    ││ ││ │││││ │                   │ │                                               0x00007f9f3f1972b8:   cmp    $0x1b604cf5,%r10d
          │    ││ ││ │││││ │                   │ │                                               0x00007f9f3f1972bf:   nop
          │    ││ ││ │││││ │╭                  │ │                                               0x00007f9f3f1972c0:   je     0x00007f9f3f197994
          │    ││ ││ │││││ ││                  │ │                                               0x00007f9f3f1972c6:   jmp    0x00007f9f3f197d33
   0.30%  │    ││ ││ │││↘│ ││                  │ │                                               0x00007f9f3f1972cb:   cmp    $0x356e5289,%r10d
          │    ││ ││ │││ │ ││                  │ │                                               0x00007f9f3f1972d2:   jg     0x00007f9f3f197d33
          │    ││ ││ │││ │ ││                  │ │                                               0x00007f9f3f1972d8:   cmp    $0x356e5289,%r10d
          │    ││ ││ │││ │ ││                  │ │                                               0x00007f9f3f1972df:   nop
   0.43%  │    ││ ││ │││ │ ││╭                 │ │                                               0x00007f9f3f1972e0:   jge    0x00007f9f3f197690
   0.15%  │    ││ ││ │││ │ │││                 │ │                                               0x00007f9f3f1972e6:   cmp    $0x2d2d772a,%r10d
          │    ││ ││ │││ │ │││                 │ │                                               0x00007f9f3f1972ed:   je     0x00007f9f3f197d33
          │    ││ ││ │││ │ │││                 │ │                                               0x00007f9f3f1972f3:   cmp    $0x33eb4d91,%r10d
          │    ││ ││ │││ │ │││╭                │ │                                               0x00007f9f3f1972fa:   je     0x00007f9f3f197305
          │    ││ ││ │││ │ ││││                │ │                                               0x00007f9f3f197300:   jmp    0x00007f9f3f197d33
          │    ││ ││ │││ │ │││↘                │ │                                               0x00007f9f3f197305:   movabs $0x7fed350c8,%rsi            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
   0.14%  │    ││ ││ │││ │ │││                 │ │                                               0x00007f9f3f19730f:   cmp    %rbp,%rsi
          │    ││ ││ │││ │ │││ ╭               │ │                                               0x00007f9f3f197312:   je     0x00007f9f3f197b34           ;* unwind (locked if synchronized)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - java.lang.String::equals@-3
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197318:   nopl   0x0(%rax,%rax,1)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197320:   test   %dil,%dil
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197323:   jne    0x00007f9f3f197ce0           ; ImmutableOopMap {rbp=Oop r14=Oop }
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197329:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f197f6d
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197332:   jne    0x00007f9f3f197cec
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197338:   movabs $0x7fed350e0,%rsi            ;   {oop([B{0x00000007fed350e0})}
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197342:   mov    %r14,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197345:   mov    $0xa,%edx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19734a:   mov    $0x10,%rax
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197351:   mov    $0x10,%rcx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197358:   add    %rax,%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19735b:   add    %rcx,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19735e:   mov    $0x1,%r10d
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197364:   mov    (%rsi),%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197367:   xor    (%rdi),%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19736a:   mov    0x2(%rsi),%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19736e:   xor    0x2(%rdi),%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197372:   xor    %rdi,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197375:   or     %rsi,%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197378:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - java.lang.String::equals@-3
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f19737c:   nopl   0x0(%rax)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197380:   test   %r10d,%r10d
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197383:   je     0x00007f9f3f197dcc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007f9f3f197389:   mov    $0x3,%r10d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
   3.62%  │    ││ ││ │││ │ │││ │               │ │ ↗ ↗ ↗       ↗      ↗ ↗ ↗ ↗ ↗ ↗ ↗↗↗↗↗↗↗↗↗↗↗↗↗  0x00007f9f3f19738f:   cmp    $0x6,%r10d
          │    ││ ││ │││ │ │││ │╭              │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197393:   jge    0x00007f9f3f1973e5
   0.00%  │    ││ ││ │││ │ │││ ││              │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197399:   cmp    $0x3,%r10d
   0.00%  │    ││ ││ │││ │ │││ ││              │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19739d:   data16 xchg %ax,%ax
          │    ││ ││ │││ │ │││ ││╭             │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973a0:   jge    0x00007f9f3f1973cb
   0.97%  │    ││ ││ │││ │ │││ │││             │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973a6:   cmp    $0x2,%r10d
          │    ││ ││ │││ │ │││ │││╭            │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973aa:   jge    0x00007f9f3f197654
   0.00%  │    ││ ││ │││ │ │││ ││││            │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973b0:   cmp    $0x0,%r10d
          │    ││ ││ │││ │ │││ ││││╭           │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973b4:   je     0x00007f9f3f19765e
   0.00%  │    ││ ││ │││ │ │││ │││││           │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973ba:   cmp    $0x1,%r10d
   0.00%  │    ││ ││ │││ │ │││ │││││           │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973be:   xchg   %ax,%ax
   0.29%  │    ││ ││ │││ │ │││ │││││╭          │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973c0:   je     0x00007f9f3f197668
          │    ││ ││ │││ │ │││ ││││││          │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973c6:   jmp    0x00007f9f3f197e9f
   0.88%  │    ││ ││ │││ │ │││ ││↘│││          │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973cb:   cmp    $0x5,%r10d
          │    ││ ││ │││ │ │││ ││ │││╭         │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973cf:   jge    0x00007f9f3f19773b
   0.00%  │    ││ ││ │││ │ │││ ││ ││││         │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973d5:   cmp    $0x3,%r10d
          │    ││ ││ │││ │ │││ ││ ││││╭        │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973d9:   je     0x00007f9f3f19742e
          │    ││ ││ │││ │ │││ ││ │││││        │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973df:   nop
          │    ││ ││ │││ │ │││ ││ │││││╭       │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973e0:   jmp    0x00007f9f3f19774f
   1.89%  │    ││ ││ │││ │ │││ │↘ ││││││       │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973e5:   cmp    $0x9,%r10d
          │    ││ ││ │││ │ │││ │  ││││││╭      │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973e9:   jge    0x00007f9f3f19740b
          │    ││ ││ │││ │ │││ │  │││││││      │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973ef:   cmp    $0x8,%r10d
          │    ││ ││ │││ │ │││ │  │││││││╭     │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973f3:   jge    0x00007f9f3f19767c
          │    ││ ││ │││ │ │││ │  ││││││││     │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973f9:   cmp    $0x6,%r10d
          │    ││ ││ │││ │ │││ │  ││││││││     │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1973fd:   data16 xchg %ax,%ax
   0.59%  │    ││ ││ │││ │ │││ │  ││││││││╭    │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197400:   je     0x00007f9f3f197745
          │    ││ ││ │││ │ │││ │  │││││││││╭   │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197406:   jmp    0x00007f9f3f197672
   0.99%  │    ││ ││ │││ │ │││ │  ││││││↘│││   │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19740b:   cmp    $0xb,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ │││   │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19740f:   jg     0x00007f9f3f197e9f
          │    ││ ││ │││ │ │││ │  ││││││ │││   │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197415:   cmp    $0xb,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ │││╭  │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197419:   jge    0x00007f9f3f197727
   0.00%  │    ││ ││ │││ │ │││ │  ││││││ ││││  │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19741f:   cmp    $0x9,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ ││││╭ │ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197423:   je     0x00007f9f3f197686
          │    ││ ││ │││ │ │││ │  ││││││ │││││╭│ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197429:   jmp    0x00007f9f3f197731           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││││ │││││││ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
   0.29%  │    ││ ││ │││ │ │││ │  ││││↘│ │││││││ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19742e:   mov    $0x4,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │       │      │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   3.49%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │↗↗↗↗↗↗ │↗↗↗↗↗ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197433:   mov    0x10(%rsp),%rbp              ;   {no_reloc}
   0.34%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197438:   add    $0x18,%rsp
   0.00%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19743c:   nopl   0x0(%rax)
   0.35%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197440:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197447:   ja     0x00007f9f3f197f35
   4.40%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19744d:   vzeroupper 
   3.73%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197450:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@6 (line 2364)
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ↘    ││ ││ │││ │ │││ │  ││││ │ │││││││ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197451:   cmpb   $0x0,0x11(%rbp)
               ││ ││ │││ │ │││ │  ││││ │ ││││││╰ │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197455:   jne    0x00007f9f3f1970de           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@13 (line 2364)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19745b:   nopl   0x0(%rax,%rax,1)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197460:   test   %dil,%dil
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197463:   jne    0x00007f9f3f197e1e           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@0 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197469:   mov    0xc(,%r13,8),%edx            ; implicit exception: dispatches to 0x00007f9f3f197f90
               ││ ││ │││ │ │││ │  ││││ │ ││││││  │ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197471:   cmp    $0x1,%edx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ╭│ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197474:   je     0x00007f9f3f197bbc
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19747a:   cmp    $0x0,%edx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19747d:   data16 xchg %ax,%ax
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197480:   je     0x00007f9f3f197bcd           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@2 (line 188)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197486:   mov    %r14,%rsi
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197489:   lea    0x10(%rsi),%rsi              ;* unwind (locked if synchronized)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@48 (line 191)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19748d:   mov    $0x0,%ecx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197492:   call   0x00007f9f3ed0a920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197497:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@51 (line 188)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197498:   test   %eax,%eax
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19749a:   je     0x00007f9f3f197d62           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974a0:   mov    %eax,0xc(%rbp)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ││ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974a3:   mov    %eax,%r10d
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │╰ │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974a6:   jmp    0x00007f9f3f1970de
   0.15%       ↘│ ││ │││ │ │││ │  ││││ │ ││││││ │  │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974ab:   movabs $0x7fed35090,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
   0.09%        │ ││ │││ │ │││ │  ││││ │ ││││││ │  │ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974b5:   cmp    %rbp,%rsi
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ╭│ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974b8:   je     0x00007f9f3f197b55           ;* unwind (locked if synchronized)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974be:   xchg   %ax,%ax
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974c0:   test   %dil,%dil
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974c3:   jne    0x00007f9f3f197ee5           ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974c9:   cmpl   $0x10,0xc(,%r13,8)           ; implicit exception: dispatches to 0x00007f9f3f197fb3
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974d2:   jne    0x00007f9f3f197c3c
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974d8:   movabs $0x7fed350a8,%rsi            ;   {oop([B{0x00000007fed350a8})}
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974e2:   mov    %r14,%rdi
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974e5:   mov    $0x10,%edx
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974ea:   mov    $0x10,%rax
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974f1:   mov    $0x10,%rcx
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974f8:   add    %rax,%rsi
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974fb:   add    %rcx,%rdi
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1974fe:   mov    $0x1,%r10d
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197504:   vmovdqu (%rsi),%xmm0
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197508:   vmovdqu (%rdi),%xmm1
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19750c:   vpxor  %xmm1,%xmm0,%xmm0
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197510:   xor    %rsi,%rsi
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197513:   vptest %xmm0,%xmm0
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197518:   cmovne %esi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19751c:   nopl   0x0(%rax)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197520:   test   %r10d,%r10d
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197523:   je     0x00007f9f3f197d91           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ ││ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197529:   mov    $0x2,%r10d
                │ ││ │││ │ │││ │  ││││ │ ││││││ │ │╰ │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19752f:   jmp    0x00007f9f3f19738f
   0.01%        │ ││ │││ ↘ │││ │  ││││ │ ││││││ │ │  │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197534:   movabs $0x7fed35060,%rsi            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
   0.27%        │ ││ │││   │││ │  ││││ │ ││││││ │ │  │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19753e:   xchg   %ax,%ax
                │ ││ │││   │││ │  ││││ │ ││││││ │ │  │ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197540:   cmp    %rbp,%rsi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ╭│ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197543:   je     0x00007f9f3f197b4a
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197549:   test   %dil,%dil
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19754c:   jne    0x00007f9f3f197d1b           ;* unwind (locked if synchronized)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197552:   data16 nopw 0x0(%rax,%rax,1)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19755c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197560:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f197fd6
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197569:   jne    0x00007f9f3f197c95
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19756f:   movabs $0x7fed35078,%rsi            ;   {oop([B{0x00000007fed35078})}
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197579:   mov    %r14,%rdi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19757c:   mov    $0x7,%edx
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197581:   mov    $0x10,%rax
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197588:   mov    $0x10,%rcx
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19758f:   add    %rax,%rsi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197592:   add    %rcx,%rdi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197595:   mov    $0x1,%r10d
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19759b:   mov    (%rsi),%edx
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19759d:   xor    (%rdi),%edx
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19759f:   mov    0x3(%rsi),%esi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975a2:   xor    0x3(%rdi),%esi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975a5:   xor    %rdi,%rdi
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975a8:   or     %rsi,%rdx
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975ab:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975af:   test   %r10d,%r10d
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975b2:   je     0x00007f9f3f197e70           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975b8:   mov    $0x1,%r10d
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ ││ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975be:   xchg   %ax,%ax
                │ ││ │││   │││ │  ││││ │ ││││││ │ │ │╰ │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975c0:   jmp    0x00007f9f3f19738f
   0.32%        │ ││ ││↘   │││ │  ││││ │ ││││││ │ │ │  │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975c5:   movabs $0x7fed35030,%rsi            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │  │││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975cf:   cmp    %rbp,%rsi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ╭│││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975d2:   je     0x00007f9f3f197b3f           ;* unwind (locked if synchronized)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975d8:   nopl   0x0(%rax,%rax,1)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975e0:   test   %dil,%dil
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975e3:   jne    0x00007f9f3f197f15           ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975e9:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f197ff9
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975f2:   jne    0x00007f9f3f197c7a
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1975f8:   movabs $0x7fed35048,%rsi            ;   {oop([B{0x00000007fed35048})}
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197602:   mov    %r14,%rdi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197605:   mov    $0x5,%edx
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19760a:   mov    $0x10,%rax
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197611:   mov    $0x10,%rcx
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197618:   add    %rax,%rsi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19761b:   add    %rcx,%rdi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19761e:   mov    $0x1,%r10d
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197624:   mov    (%rsi),%edx
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197626:   xor    (%rdi),%edx
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197628:   mov    0x1(%rsi),%esi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19762b:   xor    0x1(%rdi),%esi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19762e:   xor    %rdi,%rdi
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197631:   or     %rsi,%rdx
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197634:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197638:   nopl   0x0(%rax,%rax,1)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197640:   test   %r10d,%r10d
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197643:   je     0x00007f9f3f197d3f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ ││││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197649:   mov    $0x0,%r10d
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ │╰││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19764f:   jmp    0x00007f9f3f19738f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    │││ │  ││││ │ ││││││ │ │ │ │ ││││││ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
                │ ││ ││    │││ │  ↘│││ │ ││││││ │ │ │ │ ││││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197654:   mov    $0x3,%eax
   0.00%        │ ││ ││    │││ │   │││ │ ││││││ │ │ │ │ ╰│││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197659:   jmp    0x00007f9f3f197433
   0.00%        │ ││ ││    │││ │   ↘││ │ ││││││ │ │ │ │  │││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19765e:   mov    $0x1,%eax
                │ ││ ││    │││ │    ││ │ ││││││ │ │ │ │  ╰││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197663:   jmp    0x00007f9f3f197433
                │ ││ ││    │││ │    ↘│ │ ││││││ │ │ │ │   ││││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197668:   mov    $0x2,%eax
                │ ││ ││    │││ │     │ │ ││││││ │ │ │ │   ╰│││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19766d:   jmp    0x00007f9f3f197433
                │ ││ ││    │││ │     │ │ ││↘│││ │ │ │ │    │││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197672:   mov    $0x8,%eax
                │ ││ ││    │││ │     │ │ ││ │││ │ │ │ │    ╰││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197677:   jmp    0x00007f9f3f197433
   0.38%        │ ││ ││    │││ │     │ │ ↘│ │││ │ │ │ │     ││ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19767c:   mov    $0x9,%eax
                │ ││ ││    │││ │     │ │  │ │││ │ │ │ │     ╰│ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197681:   jmp    0x00007f9f3f197433           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    │││ │     │ │  │ │││ │ │ │ │      │ ││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   0.59%        │ ││ ││    │││ │     │ │  │ │↘│ │ │ │ │      │ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197686:   mov    $0xa,%eax
                │ ││ ││    │││ │     │ │  │ │ │ │ │ │ │      ╰ ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19768b:   jmp    0x00007f9f3f197433
   0.16%        │ ││ ││    ││↘ │     │ │  │ │ │ │ │ │ │        ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197690:   movabs $0x7fed35190,%rsi            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fed35190})}
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │        ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19769a:   nopw   0x0(%rax,%rax,1)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │        ││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976a0:   cmp    %rbp,%rsi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       ╭││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976a3:   je     0x00007f9f3f197b60
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976a9:   test   %dil,%dil
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976ac:   jne    0x00007f9f3f197f09           ;* unwind (locked if synchronized)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976b2:   data16 nopw 0x0(%rax,%rax,1)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976c0:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f19801c
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976c9:   jne    0x00007f9f3f197dc0
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976cf:   movabs $0x7fed351a8,%rsi            ;   {oop([B{0x00000007fed351a8})}
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976d9:   mov    %r14,%rdi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976dc:   mov    $0xa,%edx
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976e1:   mov    $0x10,%rax
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976e8:   mov    $0x10,%rcx
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976ef:   add    %rax,%rsi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976f2:   add    %rcx,%rdi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976f5:   mov    $0x1,%r10d
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976fb:   mov    (%rsi),%rdx
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f1976fe:   xor    (%rdi),%rdx
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197701:   mov    0x2(%rsi),%rsi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197705:   xor    0x2(%rdi),%rsi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197709:   xor    %rdi,%rdi
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19770c:   or     %rsi,%rdx
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19770f:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197713:   test   %r10d,%r10d
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197716:   je     0x00007f9f3f197cf8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@317 (line 214)
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │││││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19771c:   mov    $0x7,%r10d
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │╰│││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197722:   jmp    0x00007f9f3f19738f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │  │ │ │ │ │ │ │       │ │││││ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
   0.34%        │ ││ ││    ││  │     │ │  │ ↘ │ │ │ │ │       │ │││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197727:   mov    $0xc,%eax
                │ ││ ││    ││  │     │ │  │   │ │ │ │ │       │ ╰││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19772c:   jmp    0x00007f9f3f197433
   0.64%        │ ││ ││    ││  │     │ │  │   ↘ │ │ │ │       │  ││││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197731:   mov    $0xb,%eax
                │ ││ ││    ││  │     │ │  │     │ │ │ │       │  ╰│││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197736:   jmp    0x00007f9f3f197433
   0.30%        │ ││ ││    ││  │     ↘ │  │     │ │ │ │       │   │││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19773b:   mov    $0x6,%eax
                │ ││ ││    ││  │       │  │     │ │ │ │       │   ╰││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197740:   jmp    0x00007f9f3f197433
                │ ││ ││    ││  │       │  ↘     │ │ │ │       │    ││ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197745:   mov    $0x7,%eax
                │ ││ ││    ││  │       │        │ │ │ │       │    ╰│ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19774a:   jmp    0x00007f9f3f197433           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │       │        │ │ │ │       │     │ │ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@792 (line 214)
   0.29%        │ ││ ││    ││  │       ↘        │ │ │ │       │     │ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f19774f:   mov    $0x5,%eax
                │ ││ ││    ││  │                │ │ │ │       │     ╰ │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197754:   jmp    0x00007f9f3f197433
   0.25%        │ ││ │↘    ││  │                │ │ │ │       │       │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197759:   movabs $0x7fed35160,%rsi            ;   {oop(&quot;VAN&quot;{0x00000007fed35160})}
                │ ││ │     ││  │                │ │ │ │       │       │ │ │ │ │ │ │││││││││││││  0x00007f9f3f197763:   cmp    %rbp,%rsi
                │ ││ │     ││  │                │ │ │ │       │      ╭│ │ │ │ │ │ │││││││││││││  0x00007f9f3f197766:   je     0x00007f9f3f197bb1
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f19776c:   test   %dil,%dil
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f19776f:   jne    0x00007f9f3f197cb1           ;* unwind (locked if synchronized)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f197775:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f197780:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f19803f
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f197789:   jne    0x00007f9f3f197ef1
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f19778f:   movabs $0x7fed35178,%rsi            ;   {oop([B{0x00000007fed35178})}
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f197799:   mov    %r14,%rdi
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f19779c:   mov    $0x3,%edx
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977a1:   mov    $0x10,%rax
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977a8:   mov    $0x10,%rcx
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977af:   add    %rax,%rsi
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977b2:   add    %rcx,%rdi
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977b5:   mov    $0x1,%r10d
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977bb:   movzwq (%rsi),%rdx
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977bf:   xor    (%rdi),%dx
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977c2:   movzwq 0x1(%rsi),%rsi
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977c7:   xor    0x1(%rdi),%si
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977cb:   xor    %rdi,%rdi
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977ce:   or     %rsi,%rdx
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977d1:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977d5:   test   %r10d,%r10d
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977d8:   je     0x00007f9f3f197bf3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@302 (line 214)
                │ ││ │     ││  │                │ │ │ │       │      ││ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977de:   mov    $0x6,%r10d
                │ ││ │     ││  │                │ │ │ │       │      │╰ │ │ │ │ │ │││││││││││││  0x00007f9f3f1977e4:   jmp    0x00007f9f3f19738f
   0.26%        ↘ ││ │     ││  │                │ │ │ │       │      │  │ │ │ │ │ │││││││││││││  0x00007f9f3f1977e9:   movabs $0x7fed35228,%rsi            ;   {oop(&quot;TRACTOR&quot;{0x00000007fed35228})}
                  ││ │     ││  │                │ │ │ │       │      │  │ │ │ │ │ │││││││││││││  0x00007f9f3f1977f3:   cmp    %rbp,%rsi
                  ││ │     ││  │                │ │ │ │       │      │ ╭│ │ │ │ │ │││││││││││││  0x00007f9f3f1977f6:   je     0x00007f9f3f197ba6           ;* unwind (locked if synchronized)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f1977fc:   nopl   0x0(%rax)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197800:   test   %dil,%dil
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197803:   jne    0x00007f9f3f197def           ; ImmutableOopMap {rbp=Oop r14=Oop }
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197809:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f198062
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197812:   jne    0x00007f9f3f197c83
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197818:   movabs $0x7fed35240,%rsi            ;   {oop([B{0x00000007fed35240})}
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197822:   mov    %r14,%rdi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197825:   mov    $0x7,%edx
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f19782a:   mov    $0x10,%rax
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197831:   mov    $0x10,%rcx
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197838:   add    %rax,%rsi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f19783b:   add    %rcx,%rdi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f19783e:   mov    $0x1,%r10d
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197844:   mov    (%rsi),%edx
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197846:   xor    (%rdi),%edx
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197848:   mov    0x3(%rsi),%esi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f19784b:   xor    0x3(%rdi),%esi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f19784e:   xor    %rdi,%rdi
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197851:   or     %rsi,%rdx
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197854:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197858:   nopl   0x0(%rax,%rax,1)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197860:   test   %r10d,%r10d
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197863:   je     0x00007f9f3f197c45           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@362 (line 214)
                  ││ │     ││  │                │ │ │ │       │      │ ││ │ │ │ │ │││││││││││││  0x00007f9f3f197869:   mov    $0xa,%r10d
                  ││ │     ││  │                │ │ │ │       │      │ │╰ │ │ │ │ │││││││││││││  0x00007f9f3f19786f:   jmp    0x00007f9f3f19738f
   0.01%          ││ ↘     ││  │                │ │ │ │       │      │ │  │ │ │ │ │││││││││││││  0x00007f9f3f197874:   movabs $0x7fed35130,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
   0.29%          ││       ││  │                │ │ │ │       │      │ │  │ │ │ │ │││││││││││││  0x00007f9f3f19787e:   xchg   %ax,%ax
                  ││       ││  │                │ │ │ │       │      │ │  │ │ │ │ │││││││││││││  0x00007f9f3f197880:   cmp    %rbp,%rsi
                  ││       ││  │                │ │ │ │       │      │ │ ╭│ │ │ │ │││││││││││││  0x00007f9f3f197883:   je     0x00007f9f3f197b9b
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f197889:   test   %dil,%dil
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f19788c:   jne    0x00007f9f3f197c71           ;* unwind (locked if synchronized)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f197892:   data16 nopw 0x0(%rax,%rax,1)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f19789c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978a0:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f198085
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978a9:   jne    0x00007f9f3f197c68
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978af:   movabs $0x7fed35148,%rsi            ;   {oop([B{0x00000007fed35148})}
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978b9:   mov    %r14,%rdi
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978bc:   mov    $0x3,%edx
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978c1:   mov    $0x10,%rax
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978c8:   mov    $0x10,%rcx
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978cf:   add    %rax,%rsi
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978d2:   add    %rcx,%rdi
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978d5:   mov    $0x1,%r10d
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978db:   movzwq (%rsi),%rdx
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978df:   xor    (%rdi),%dx
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978e2:   movzwq 0x1(%rsi),%rsi
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978e7:   xor    0x1(%rdi),%si
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978eb:   xor    %rdi,%rdi
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978ee:   or     %rsi,%rdx
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978f1:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978f5:   test   %r10d,%r10d
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978f8:   je     0x00007f9f3f197dfb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
                  ││       ││  │                │ │ │ │       │      │ │ ││ │ │ │ │││││││││││││  0x00007f9f3f1978fe:   mov    $0x5,%r10d
                  ││       ││  │                │ │ │ │       │      │ │ │╰ │ │ │ │││││││││││││  0x00007f9f3f197904:   jmp    0x00007f9f3f19738f
   0.26%          ↘│       ││  │                │ │ │ │       │      │ │ │  │ │ │ │││││││││││││  0x00007f9f3f197909:   movabs $0x7fed35100,%rsi            ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
                   │       ││  │                │ │ │ │       │      │ │ │  │ │ │ │││││││││││││  0x00007f9f3f197913:   cmp    %rbp,%rsi
                   │       ││  │                │ │ │ │       │      │ │ │ ╭│ │ │ │││││││││││││  0x00007f9f3f197916:   je     0x00007f9f3f197b90           ;* unwind (locked if synchronized)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19791c:   nopl   0x0(%rax)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197920:   test   %dil,%dil
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197923:   jne    0x00007f9f3f197db4           ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197929:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f1980a8
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197932:   jne    0x00007f9f3f197d85
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197938:   movabs $0x7fed35118,%rsi            ;   {oop([B{0x00000007fed35118})}
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197942:   mov    %r14,%rdi
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197945:   mov    $0x3,%edx
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19794a:   mov    $0x10,%rax
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197951:   mov    $0x10,%rcx
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197958:   add    %rax,%rsi
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19795b:   add    %rcx,%rdi
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19795e:   mov    $0x1,%r10d
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197964:   movzwq (%rsi),%rdx
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197968:   xor    (%rdi),%dx
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19796b:   movzwq 0x1(%rsi),%rsi
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197970:   xor    0x1(%rdi),%si
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197974:   xor    %rdi,%rdi
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197977:   or     %rsi,%rdx
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19797a:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f19797e:   xchg   %ax,%ax
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197980:   test   %r10d,%r10d
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197983:   je     0x00007f9f3f197ec2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
                   │       ││  │                │ │ │ │       │      │ │ │ ││ │ │ │││││││││││││  0x00007f9f3f197989:   mov    $0x4,%r10d
                   │       ││  │                │ │ │ │       │      │ │ │ │╰ │ │ │││││││││││││  0x00007f9f3f19798f:   jmp    0x00007f9f3f19738f
   0.56%           │       │↘  │                │ │ │ │       │      │ │ │ │  │ │ │││││││││││││  0x00007f9f3f197994:   movabs $0x7fed35258,%rsi            ;   {oop(&quot;MONORAIL&quot;{0x00000007fed35258})}
                   │       │   │                │ │ │ │       │      │ │ │ │  │ │ │││││││││││││  0x00007f9f3f19799e:   xchg   %ax,%ax
   0.00%           │       │   │                │ │ │ │       │      │ │ │ │  │ │ │││││││││││││  0x00007f9f3f1979a0:   cmp    %rbp,%rsi
                   │       │   │                │ │ │ │       │      │ │ │ │ ╭│ │ │││││││││││││  0x00007f9f3f1979a3:   je     0x00007f9f3f197b85
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979a9:   test   %dil,%dil
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979ac:   jne    0x00007f9f3f197ca5           ;* unwind (locked if synchronized)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979b2:   data16 nopw 0x0(%rax,%rax,1)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979c0:   cmpl   $0x8,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f1980cd
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979c9:   jne    0x00007f9f3f197efd
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979cf:   movabs $0x7fed35270,%rsi            ;   {oop([B{0x00000007fed35270})}
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979d9:   mov    %r14,%rdi
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979dc:   mov    $0x8,%edx
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979e1:   mov    $0x10,%rax
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979e8:   mov    $0x10,%rcx
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979ef:   add    %rax,%rsi
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979f2:   add    %rcx,%rdi
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979f5:   mov    $0x1,%r10d
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979fb:   mov    (%rsi),%rdx
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f1979fe:   xor    %rsi,%rsi
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f197a01:   xor    (%rdi),%rdx
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f197a04:   cmovne %esi,%r10d                   ;* unwind (locked if synchronized)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f197a08:   test   %r10d,%r10d
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f197a0b:   je     0x00007f9f3f197e2a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@377 (line 214)
                   │       │   │                │ │ │ │       │      │ │ │ │ ││ │ │││││││││││││  0x00007f9f3f197a11:   mov    $0xb,%r10d
                   │       │   │                │ │ │ │       │      │ │ │ │ │╰ │ │││││││││││││  0x00007f9f3f197a17:   jmp    0x00007f9f3f19738f
   0.10%           │       ↘   │                │ │ │ │       │      │ │ │ │ │  │ │││││││││││││  0x00007f9f3f197a1c:   movabs $0x7fed351c8,%rsi            ;   {oop(&quot;TRUCK&quot;{0x00000007fed351c8})}
                   │           │                │ │ │ │       │      │ │ │ │ │  │ │││││││││││││  0x00007f9f3f197a26:   cmp    %rbp,%rsi
                   │           │                │ │ │ │       │      │ │ │ │ │ ╭│ │││││││││││││  0x00007f9f3f197a29:   je     0x00007f9f3f197b6b
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a2f:   test   %dil,%dil
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a32:   jne    0x00007f9f3f197c16           ;* unwind (locked if synchronized)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a38:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a40:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f1980f0
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a49:   jne    0x00007f9f3f197d27
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a4f:   movabs $0x7fed351e0,%rsi            ;   {oop([B{0x00000007fed351e0})}
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a59:   mov    %r14,%rdi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a5c:   mov    $0x5,%edx
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a61:   mov    $0x10,%rax
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a68:   mov    $0x10,%rcx
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a6f:   add    %rax,%rsi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a72:   add    %rcx,%rdi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a75:   mov    $0x1,%r10d
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a7b:   mov    (%rsi),%edx
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a7d:   xor    (%rdi),%edx
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a7f:   mov    0x1(%rsi),%esi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a82:   xor    0x1(%rdi),%esi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a85:   xor    %rdi,%rdi
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a88:   or     %rsi,%rdx
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a8b:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - java.lang.String::equals@-3
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a8f:   test   %r10d,%r10d
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a92:   je     0x00007f9f3f197e4d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@332 (line 214)
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a98:   mov    $0x8,%r10d
                   │           │                │ │ │ │       │      │ │ │ │ │ ││ │││││││││││││  0x00007f9f3f197a9e:   xchg   %ax,%ax
                   │           │                │ │ │ │       │      │ │ │ │ │ │╰ │││││││││││││  0x00007f9f3f197aa0:   jmp    0x00007f9f3f19738f
   0.27%           ↘           │                │ │ │ │       │      │ │ │ │ │ │  │││││││││││││  0x00007f9f3f197aa5:   movabs $0x7fed351f8,%rsi            ;   {oop(&quot;BUS&quot;{0x00000007fed351f8})}
   0.01%                       │                │ │ │ │       │      │ │ │ │ │ │  │││││││││││││  0x00007f9f3f197aaf:   cmp    %rbp,%rsi
                               │                │ │ │ │       │      │ │ │ │ │ │ ╭│││││││││││││  0x00007f9f3f197ab2:   je     0x00007f9f3f197b76           ;* unwind (locked if synchronized)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - java.lang.String::equals@-3
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ab8:   nopl   0x0(%rax,%rax,1)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ac0:   test   %dil,%dil
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ac3:   jne    0x00007f9f3f197e93           ; ImmutableOopMap {rbp=Oop r14=Oop }
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ac9:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f9f3f198113
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ad2:   jne    0x00007f9f3f197c8c
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ad8:   movabs $0x7fed35210,%rsi            ;   {oop([B{0x00000007fed35210})}
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ae2:   mov    %r14,%rdi
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197ae5:   mov    $0x3,%edx
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197aea:   mov    $0x10,%rax
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197af1:   mov    $0x10,%rcx
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197af8:   add    %rax,%rsi
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197afb:   add    %rcx,%rdi
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197afe:   mov    $0x1,%r10d
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b04:   movzwq (%rsi),%rdx
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b08:   xor    (%rdi),%dx
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b0b:   movzwq 0x1(%rsi),%rsi
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b10:   xor    0x1(%rdi),%si
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b14:   xor    %rdi,%rdi
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b17:   or     %rsi,%rdx
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b1a:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - java.lang.String::equals@-3
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b1e:   xchg   %ax,%ax
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b20:   test   %r10d,%r10d
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b23:   je     0x00007f9f3f197cbd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@347 (line 214)
                               │                │ │ │ │       │      │ │ │ │ │ │ ││││││││││││││  0x00007f9f3f197b29:   mov    $0x9,%r10d
                               │                │ │ │ │       │      │ │ │ │ │ │ │╰││││││││││││  0x00007f9f3f197b2f:   jmp    0x00007f9f3f19738f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                               │                │ │ │ │       │      │ │ │ │ │ │ │ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@563 (line 214)
   0.17%                       ↘                │ │ │ │       │      │ │ │ │ │ │ │ ││││││││││││  0x00007f9f3f197b34:   mov    $0x3,%r10d
                                                │ │ │ │       │      │ │ │ │ │ │ │ ╰│││││││││││  0x00007f9f3f197b3a:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │ │ │ │       │      │ │ │ │ │ │ │  │││││││││││                                                            ; - java.lang.String::equals@-3
                                                │ │ │ │       │      │ │ │ │ │ │ │  │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
   0.27%                                        │ │ │ ↘       │      │ │ │ │ │ │ │  │││││││││││  0x00007f9f3f197b3f:   mov    $0x0,%r10d
                                                │ │ │         │      │ │ │ │ │ │ │  ╰││││││││││  0x00007f9f3f197b45:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │ │ │         │      │ │ │ │ │ │ │   ││││││││││                                                            ; - java.lang.String::equals@-3
                                                │ │ │         │      │ │ │ │ │ │ │   ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
   0.02%                                        │ │ ↘         │      │ │ │ │ │ │ │   ││││││││││  0x00007f9f3f197b4a:   mov    $0x1,%r10d
                                                │ │           │      │ │ │ │ │ │ │   ╰│││││││││  0x00007f9f3f197b50:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │ │           │      │ │ │ │ │ │ │    │││││││││                                                            ; - java.lang.String::equals@-3
                                                │ │           │      │ │ │ │ │ │ │    │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
   0.26%                                        │ ↘           │      │ │ │ │ │ │ │    │││││││││  0x00007f9f3f197b55:   mov    $0x2,%r10d
                                                │             │      │ │ │ │ │ │ │    ╰││││││││  0x00007f9f3f197b5b:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │             │      │ │ │ │ │ │ │     ││││││││                                                            ; - java.lang.String::equals@-3
                                                │             │      │ │ │ │ │ │ │     ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
   0.33%                                        │             ↘      │ │ │ │ │ │ │     ││││││││  0x00007f9f3f197b60:   mov    $0x7,%r10d
                                                │                    │ │ │ │ │ │ │     ╰│││││││  0x00007f9f3f197b66:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │ │ │ │ │ │      │││││││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │ │ │ │ │ │      │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
   0.93%                                        │                    │ │ │ │ │ ↘ │      │││││││  0x00007f9f3f197b6b:   mov    $0x8,%r10d
                                                │                    │ │ │ │ │   │      ╰││││││  0x00007f9f3f197b71:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │ │ │ │   │       ││││││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │ │ │ │   │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
   0.36%                                        │                    │ │ │ │ │   ↘       ││││││  0x00007f9f3f197b76:   mov    $0x9,%r10d
                                                │                    │ │ │ │ │           ││││││  0x00007f9f3f197b7c:   nopl   0x0(%rax)
                                                │                    │ │ │ │ │           ╰│││││  0x00007f9f3f197b80:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │ │ │ │            │││││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │ │ │ │            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
   0.60%                                        │                    │ │ │ │ ↘            │││││  0x00007f9f3f197b85:   mov    $0xb,%r10d
                                                │                    │ │ │ │              ╰││││  0x00007f9f3f197b8b:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │ │ │               ││││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │ │ │               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
   0.32%                                        │                    │ │ │ ↘               ││││  0x00007f9f3f197b90:   mov    $0x4,%r10d
                                                │                    │ │ │                 ╰│││  0x00007f9f3f197b96:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │ │                  │││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │ │                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
   0.02%                                        │                    │ │ ↘                  │││  0x00007f9f3f197b9b:   mov    $0x5,%r10d
                                                │                    │ │                    ╰││  0x00007f9f3f197ba1:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │ │                     ││                                                            ; - java.lang.String::equals@-3
                                                │                    │ │                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
   0.31%                                        │                    │ ↘                     ││  0x00007f9f3f197ba6:   mov    $0xa,%r10d
                                                │                    │                       ╰│  0x00007f9f3f197bac:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                    │                        │                                                            ; - java.lang.String::equals@-3
                                                │                    │                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
   0.29%                                        │                    ↘                        │  0x00007f9f3f197bb1:   mov    $0x6,%r10d
                                                │                                             ╰  0x00007f9f3f197bb7:   jmp    0x00007f9f3f19738f           ;* unwind (locked if synchronized)
                                                │                                                                                                          ; - java.lang.String::equals@-3
                                                │                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
                                                ↘                                                0x00007f9f3f197bbc:   movzbl 0x10(,%r13,8),%r10d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.StringLatin1::hashCode@38 (line 190)
                                                                                                                                                           ; - java.lang.String::hashCode@27 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                                 0x00007f9f3f197bc5:   mov    %r10d,%eax
....................................................................................................
  64.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1055 

                  #           [sp+0x40]  (sp of caller)
                  0x00007f9f3f199d20:   mov    0x8(%rsi),%r10d
                  0x00007f9f3f199d24:   movabs $0x7f9ebb000000,%r12
                  0x00007f9f3f199d2e:   add    %r12,%r10
                  0x00007f9f3f199d31:   xor    %r12,%r12
                  0x00007f9f3f199d34:   cmp    %r10,%rax
                  0x00007f9f3f199d37:   jne    0x00007f9f3eaf9080           ;   {runtime_call ic_miss_stub}
                  0x00007f9f3f199d3d:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007f9f3f199d40:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007f9f3f199d47:   sub    $0x38,%rsp
                  0x00007f9f3f199d4b:   nop
                  0x00007f9f3f199d4c:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f9f3f199d54:   jne    0x00007f9f3f199e78
                  0x00007f9f3f199d5a:   mov    %rbp,0x30(%rsp)
                  0x00007f9f3f199d5f:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
                  0x00007f9f3f199d62:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f9f3f199e9c
   0.00%          0x00007f9f3f199d6a:   test   %r10d,%r10d
          ╭       0x00007f9f3f199d6d:   je     0x00007f9f3f199e4e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          │       0x00007f9f3f199d73:   mov    %rsi,0x10(%rsp)
          │       0x00007f9f3f199d78:   mov    %r10d,0x24(%rsp)
          │       0x00007f9f3f199d7d:   mov    %r10d,%r11d
          │       0x00007f9f3f199d80:   dec    %r11d
          │       0x00007f9f3f199d83:   movslq %r11d,%r11
          │       0x00007f9f3f199d86:   mov    %r10d,%r8d
   0.01%  │       0x00007f9f3f199d89:   cmp    %r11,%r8
          │╭      0x00007f9f3f199d8c:   ja     0x00007f9f3f199d9c
          ││      0x00007f9f3f199d92:   cmp    $0x2,%r10d
          ││╭     0x00007f9f3f199d96:   jae    0x00007f9f3f199e55
          │↘│     0x00007f9f3f199d9c:   mov    0x10(,%rdx,8),%r11d
          │ │     0x00007f9f3f199da4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
          │ │     0x00007f9f3f199da8:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
   0.00%  │ │     0x00007f9f3f199dac:   mov    %rdx,0x8(%rsp)
          │ │     0x00007f9f3f199db1:   mov    %rsi,%r8
          │ │     0x00007f9f3f199db4:   mov    %r11,%rdx
          │ │     0x00007f9f3f199db7:   call   0x00007f9f3f1970a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │                                                               ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │                                                               ;   {optimized virtual_call}
   0.01%  │ │     0x00007f9f3f199dbc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │ │     0x00007f9f3f199dc4:   mov    %eax,0x20(%rsp)
          │ │     0x00007f9f3f199dc8:   mov    $0x1,%r11d
   0.00%  │ │╭    0x00007f9f3f199dce:   jmp    0x00007f9f3f199e14           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │ ││    0x00007f9f3f199dd3:   nopw   0x0(%rax,%rax,1)
          │ ││    0x00007f9f3f199ddc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   2.55%  │ ││↗   0x00007f9f3f199de0:   mov    0x10(%rdx,%r11,4),%r9d
   6.09%  │ │││   0x00007f9f3f199de5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   3.48%  │ │││   0x00007f9f3f199de9:   mov    %rsi,%rcx
   0.00%  │ │││   0x00007f9f3f199dec:   mov    %r9,%rdx                     ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
   0.00%  │ │││   0x00007f9f3f199def:   mov    %r11d,0x1c(%rsp)
   0.33%  │ │││   0x00007f9f3f199df4:   data16 xchg %ax,%ax
   3.48%  │ │││   0x00007f9f3f199df7:   call   0x00007f9f3f1970a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │││                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │││                                                             ;   {optimized virtual_call}
   3.21%  │ │││   0x00007f9f3f199dfc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
          │ │││   0x00007f9f3f199e04:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   4.15%  │ │││   0x00007f9f3f199e08:   mov    0x1c(%rsp),%r11d
   0.84%  │ │││   0x00007f9f3f199e0d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.58%  │ │││   0x00007f9f3f199e10:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   4.49%  │ │↘│   0x00007f9f3f199e14:   mov    0x8(%rsp),%rdx
   0.56%  │ │ │   0x00007f9f3f199e19:   mov    0x24(%rsp),%r10d
   0.83%  │ │ │   0x00007f9f3f199e1e:   mov    0x10(%rsp),%rsi
   0.01%  │ │ │   0x00007f9f3f199e23:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f9f3f199e26:   jg     0x00007f9f3f199de0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.03%  │ │     0x00007f9f3f199e28:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
   0.04%  │ │  ↗  0x00007f9f3f199e2c:   mov    0x30(%rsp),%rbp
          │ │  │  0x00007f9f3f199e31:   add    $0x38,%rsp
          │ │  │  0x00007f9f3f199e35:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  0x00007f9f3f199e40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f9f3f199e47:   ja     0x00007f9f3f199e88
   0.01%  │ │  │  0x00007f9f3f199e4d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          ↘ │  │  0x00007f9f3f199e4e:   mov    $0x0,%eax
            │  ╰  0x00007f9f3f199e53:   jmp    0x00007f9f3f199e2c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
            ↘     0x00007f9f3f199e55:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
                  0x00007f9f3f199e60:   movq   $0x4118,0x490(%r15)
                  0x00007f9f3f199e6b:   call   0x00007f9f3eaff17a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
....................................................................................................
  30.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.90%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1049 
  30.71%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1055 
   0.56%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  native_read_msr 
   0.31%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.16%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  mutex_lock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 1077 
   1.80%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.90%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1049 
  30.71%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1055 
   0.56%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.31%     [kernel.kallsyms]  native_read_msr 
   0.31%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.22%     [kernel.kallsyms]  __free_one_page 
   0.17%     [kernel.kallsyms]  __mod_lruvec_state 
   0.16%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.12%                        <unknown> 
   0.11%     [kernel.kallsyms]  page_remove_rmap 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  mutex_lock 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.73%  <...other 272 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.66%        jvmci, level 4
   3.71%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.16%             libc.so.6
   0.12%                      
   0.03%           interpreter
   0.01%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%                kvm.ko
   0.00%           c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20.337 ns/op
# Warmup Iteration   2: 20.371 ns/op
# Warmup Iteration   3: 19.395 ns/op
# Warmup Iteration   4: 19.723 ns/op
# Warmup Iteration   5: 19.681 ns/op
Iteration   1: 19.451 ns/op
Iteration   2: 19.680 ns/op
Iteration   3: 19.563 ns/op
Iteration   4: 19.975 ns/op
Iteration   5: 19.796 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  19.693 ±(99.9%) 0.783 ns/op [Average]
  (min, avg, max) = (19.451, 19.693, 19.975), stdev = 0.203
  CI (99.9%): [18.910, 20.476] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 215950 total address lines.
Perf output processed (skipped 78.358 seconds):
 Column 1: cycles (50512 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1060 

 <region is too big to display, has 1255 lines, but threshold is 1000>
....................................................................................................
  60.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1066 

                  #           [sp+0x40]  (sp of caller)
                  0x00007f71bf193b20:   mov    0x8(%rsi),%r10d
                  0x00007f71bf193b24:   movabs $0x7f713b000000,%r12
                  0x00007f71bf193b2e:   add    %r12,%r10
                  0x00007f71bf193b31:   xor    %r12,%r12
                  0x00007f71bf193b34:   cmp    %r10,%rax
                  0x00007f71bf193b37:   jne    0x00007f71beaf9080           ;   {runtime_call ic_miss_stub}
                  0x00007f71bf193b3d:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007f71bf193b40:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007f71bf193b47:   sub    $0x38,%rsp
                  0x00007f71bf193b4b:   nop
                  0x00007f71bf193b4c:   cmpl   $0x1,0x20(%r15)
   0.01%          0x00007f71bf193b54:   jne    0x00007f71bf193c78
                  0x00007f71bf193b5a:   mov    %rbp,0x30(%rsp)
                  0x00007f71bf193b5f:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
                  0x00007f71bf193b62:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f71bf193c9c
   0.01%          0x00007f71bf193b6a:   test   %r10d,%r10d
          ╭       0x00007f71bf193b6d:   je     0x00007f71bf193c4e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  │       0x00007f71bf193b73:   mov    %rsi,0x10(%rsp)
          │       0x00007f71bf193b78:   mov    %r10d,0x24(%rsp)
   0.00%  │       0x00007f71bf193b7d:   mov    %r10d,%r11d
          │       0x00007f71bf193b80:   dec    %r11d
          │       0x00007f71bf193b83:   movslq %r11d,%r11
          │       0x00007f71bf193b86:   mov    %r10d,%r8d
          │       0x00007f71bf193b89:   cmp    %r11,%r8
          │╭      0x00007f71bf193b8c:   ja     0x00007f71bf193b9c
          ││      0x00007f71bf193b92:   cmp    $0x2,%r10d
          ││╭     0x00007f71bf193b96:   jae    0x00007f71bf193c55
          │↘│     0x00007f71bf193b9c:   mov    0x10(,%rdx,8),%r11d
          │ │     0x00007f71bf193ba4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
          │ │     0x00007f71bf193ba8:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
   0.00%  │ │     0x00007f71bf193bac:   mov    %rdx,0x8(%rsp)
          │ │     0x00007f71bf193bb1:   mov    %rsi,%r8
          │ │     0x00007f71bf193bb4:   mov    %r11,%rdx
          │ │     0x00007f71bf193bb7:   call   0x00007f71bf18fe80           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │                                                               ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │                                                               ;   {optimized virtual_call}
   0.00%  │ │     0x00007f71bf193bbc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │ │     0x00007f71bf193bc4:   mov    %eax,0x20(%rsp)
   0.00%  │ │     0x00007f71bf193bc8:   mov    $0x1,%r11d
   0.00%  │ │╭    0x00007f71bf193bce:   jmp    0x00007f71bf193c14           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
          │ ││    0x00007f71bf193bd3:   nopw   0x0(%rax,%rax,1)
          │ ││    0x00007f71bf193bdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   2.29%  │ ││↗   0x00007f71bf193be0:   mov    0x10(%rdx,%r11,4),%r9d
   7.78%  │ │││   0x00007f71bf193be5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   3.90%  │ │││   0x00007f71bf193be9:   mov    %rsi,%rcx
          │ │││   0x00007f71bf193bec:   mov    %r9,%rdx                     ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │││   0x00007f71bf193bef:   mov    %r11d,0x1c(%rsp)
   0.16%  │ │││   0x00007f71bf193bf4:   data16 xchg %ax,%ax
   3.77%  │ │││   0x00007f71bf193bf7:   call   0x00007f71bf18fe80           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │││                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │││                                                             ;   {optimized virtual_call}
   8.25%  │ │││   0x00007f71bf193bfc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.00%  │ │││   0x00007f71bf193c04:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.52%  │ │││   0x00007f71bf193c08:   mov    0x1c(%rsp),%r11d
   3.38%  │ │││   0x00007f71bf193c0d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.07%  │ │││   0x00007f71bf193c10:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@13 (line 115)
   2.43%  │ │↘│   0x00007f71bf193c14:   mov    0x8(%rsp),%rdx
   0.20%  │ │ │   0x00007f71bf193c19:   mov    0x24(%rsp),%r10d
   1.60%  │ │ │   0x00007f71bf193c1e:   mov    0x10(%rsp),%rsi
   0.00%  │ │ │   0x00007f71bf193c23:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f71bf193c26:   jg     0x00007f71bf193be0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.03%  │ │     0x00007f71bf193c28:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
   0.05%  │ │  ↗  0x00007f71bf193c2c:   mov    0x30(%rsp),%rbp
          │ │  │  0x00007f71bf193c31:   add    $0x38,%rsp
          │ │  │  0x00007f71bf193c35:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  0x00007f71bf193c40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f71bf193c47:   ja     0x00007f71bf193c88
   0.01%  │ │  │  0x00007f71bf193c4d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          ↘ │  │  0x00007f71bf193c4e:   mov    $0x0,%eax
            │  ╰  0x00007f71bf193c53:   jmp    0x00007f71bf193c2c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@40 (line 118)
            ↘     0x00007f71bf193c55:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
                  0x00007f71bf193c60:   movq   $0x518,0x490(%r15)
                  0x00007f71bf193c6b:   call   0x00007f71beaff17a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@0 (line 114)
....................................................................................................
  34.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1060 
  34.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1066 
   0.68%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%             libc.so.6  _IO_fwrite 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_pcp_prepare 
   2.23%  <...other 354 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.79%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 1060 
  34.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 1066 
   0.68%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.18%                        <unknown> 
   0.16%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  asm_exc_page_fault 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%             libc.so.6  _IO_fwrite 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   2.10%  <...other 281 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.30%        jvmci, level 4
   3.64%     [kernel.kallsyms]
   0.39%             libjvm.so
   0.37%             libc.so.6
   0.18%                      
   0.06%        hsdis-amd64.so
   0.04%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                [vdso]
   0.00%       nf_conntrack.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.198 ns/op
# Warmup Iteration   2: 11.329 ns/op
# Warmup Iteration   3: 11.492 ns/op
# Warmup Iteration   4: 11.491 ns/op
# Warmup Iteration   5: 11.631 ns/op
Iteration   1: 11.681 ns/op
Iteration   2: 11.574 ns/op
Iteration   3: 11.738 ns/op
Iteration   4: 11.703 ns/op
Iteration   5: 11.877 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  11.714 ±(99.9%) 0.422 ns/op [Average]
  (min, avg, max) = (11.574, 11.714, 11.877), stdev = 0.109
  CI (99.9%): [11.293, 12.136] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 220911 total address lines.
Perf output processed (skipped 78.513 seconds):
 Column 1: cycles (50227 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1043 

                                      # {method} {0x00007f46e847b6c0} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                                      #           [sp+0x60]  (sp of caller)
                                      0x00007f47771984c0:   mov    0x8(%rsi),%r10d
                                      0x00007f47771984c4:   movabs $0x7f46f3000000,%r12
                                      0x00007f47771984ce:   add    %r12,%r10
                                      0x00007f47771984d1:   xor    %r12,%r12
                                      0x00007f47771984d4:   cmp    %r10,%rax
                                      0x00007f47771984d7:   jne    0x00007f4776af9080           ;   {runtime_call ic_miss_stub}
                                      0x00007f47771984dd:   data16 xchg %ax,%ax
                                    [Verified Entry Point]
   0.00%                              0x00007f47771984e0:   mov    %eax,-0x14000(%rsp)
   0.00%                              0x00007f47771984e7:   sub    $0x58,%rsp
   0.00%                              0x00007f47771984eb:   nop
                                      0x00007f47771984ec:   cmpl   $0x0,0x20(%r15)
   0.00%                              0x00007f47771984f4:   jne    0x00007f4777198b2e
   0.00%                              0x00007f47771984fa:   mov    %rbp,0x50(%rsp)
   0.00%                              0x00007f47771984ff:   mov    %rsi,%rbp
                                      0x00007f4777198502:   mov    %rbp,0x30(%rsp)
   0.00%                              0x00007f4777198507:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [48]=Oop }
                                                                                                ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
                                      0x00007f477719850a:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f4777198b52
   0.00%                              0x00007f4777198512:   mov    %r13d,0x44(%rsp)
   0.01%                              0x00007f4777198517:   mov    %esi,%r14d
                                      0x00007f477719851a:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                                      0x00007f477719851e:   mov    %r14,0x28(%rsp)
                                      0x00007f4777198523:   movabs $0x7fed35078,%rdi            ;   {oop([B{0x00000007fed35078})}
   0.00%                              0x00007f477719852d:   movabs $0x7fed35048,%r10            ;   {oop([B{0x00000007fed35048})}
                                      0x00007f4777198537:   mov    %r10,0x20(%rsp)
                                      0x00007f477719853c:   movabs $0x7fed350a8,%r11            ;   {oop([B{0x00000007fed350a8})}
                                      0x00007f4777198546:   mov    %r11,0x18(%rsp)
   0.01%                              0x00007f477719854b:   mov    $0x0,%r9d
                                      0x00007f4777198551:   movl   $0x0,0x40(%rsp)
          ╭                           0x00007f4777198559:   jmp    0x00007f47771987a2           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
          │                           0x00007f477719855e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   4.60%  │         ↗                 0x00007f4777198560:   mov    0x10(%r14,%r9,4),%ebx        ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │         │                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   1.75%  │         │                 0x00007f4777198565:   mov    0xc(,%rbx,8),%ecx            ; implicit exception: dispatches to 0x00007f4777198b75
  25.81%  │         │                 0x00007f477719856c:   movsbl 0x10(,%rbx,8),%eax           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - java.lang.String::isLatin1@7 (line 4817)
          │         │                                                                           ; - java.lang.String::hashCode@17 (line 2365)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.02%  │         │                 0x00007f4777198574:   mov    0x14(,%rbx,8),%edx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - java.lang.String::hashCode@24 (line 2365)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.18%  │         │                 0x00007f477719857b:   mov    %edx,%esi
          │         │                 0x00007f477719857d:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
          │         │                                                                           ; - java.lang.String::equals@-3
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   7.05%  │         │                 0x00007f4777198581:   mov    %ebx,%ebp
   0.01%  │         │                 0x00007f4777198583:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.01%  │         │                 0x00007f4777198587:   test   %ecx,%ecx
          │╭        │                 0x00007f4777198589:   je     0x00007f47771988bd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                                           ; - java.lang.String::hashCode@6 (line 2364)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││        │                 0x00007f477719858f:   mov    %rbp,0x10(%rsp)
   6.80%  ││        │                 0x00007f4777198594:   mov    %rsi,0x8(%rsp)
   4.29%  ││        │                 0x00007f4777198599:   mov    %edx,%ebp
   0.01%  ││        │                 0x00007f477719859b:   mov    %r9d,0x3c(%rsp)
          ││        │                 0x00007f47771985a0:   mov    %eax,%r13d
   2.54%  ││        │                 0x00007f47771985a3:   mov    %ebx,%r14d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                                           ; - java.lang.String::hashCode@58 (line 2373)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││        │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.18%  ││        │         ↗↗      0x00007f47771985a6:   cmp    $0x462300d,%ecx
          ││╭       │         ││      0x00007f47771985ac:   je     0x00007f47771986db
   0.01%  │││       │         ││      0x00007f47771985b2:   cmp    $0x9ef434af,%ecx
          │││╭      │         ││      0x00007f47771985b8:   je     0x00007f47771987be
          ││││      │         ││      0x00007f47771985be:   cmp    $0x23c6acdf,%ecx
          ││││╭     │         ││      0x00007f47771985c4:   je     0x00007f4777198845
          │││││     │         ││      0x00007f47771985ca:   cmp    $0x90663ad4,%ecx
          │││││     │         ││      0x00007f47771985d0:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771985d6:   cmp    $0xa2a1be40,%ecx
          │││││     │         ││      0x00007f47771985dc:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f47771985e0:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771985e6:   cmp    $0xaf2874e8,%ecx
          │││││     │         ││      0x00007f47771985ec:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771985f2:   cmp    $0xba6eabe2,%ecx
          │││││     │         ││      0x00007f47771985f8:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771985fe:   cmp    $0xc517aa2b,%ecx
          │││││     │         ││      0x00007f4777198604:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f477719860a:   cmp    $0xd91961ec,%ecx
          │││││     │         ││      0x00007f4777198610:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198616:   cmp    $0xeb2c8617,%ecx
          │││││     │         ││      0x00007f477719861c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f4777198620:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198626:   cmp    $0xfce7bd80,%ecx
          │││││     │         ││      0x00007f477719862c:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198632:   cmp    $0x10260,%ecx
          │││││     │         ││      0x00007f4777198638:   je     0x00007f4777198a8e           ;   {no_reloc}
          │││││     │         ││      0x00007f477719863e:   cmp    $0x103b4,%ecx
          │││││     │         ││      0x00007f4777198644:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f477719864a:   cmp    $0x14234,%ecx
          │││││     │         ││      0x00007f4777198650:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198656:   cmp    $0x14b03,%ecx
          │││││     │         ││      0x00007f477719865c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f4777198660:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198666:   cmp    $0x1f3140,%ecx
          │││││     │         ││      0x00007f477719866c:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198672:   cmp    $0x4c5f9e8,%ecx
          │││││     │         ││      0x00007f4777198678:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f477719867e:   cmp    $0x4c6443f,%ecx
          │││││     │         ││      0x00007f4777198684:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f477719868a:   cmp    $0x64b8f52,%ecx
          │││││     │         ││      0x00007f4777198690:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f4777198696:   cmp    $0xe6d87d7,%ecx
          │││││     │         ││      0x00007f477719869c:   nopl   0x0(%rax)
          │││││     │         ││      0x00007f47771986a0:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771986a6:   cmp    $0x1b604cf5,%ecx
          │││││     │         ││      0x00007f47771986ac:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771986b2:   cmp    $0x2d2d772a,%ecx
          │││││     │         ││      0x00007f47771986b8:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771986be:   cmp    $0x33eb4d91,%ecx
          │││││     │         ││      0x00007f47771986c4:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771986ca:   cmp    $0x356e5289,%ecx
          │││││     │         ││      0x00007f47771986d0:   je     0x00007f4777198a8e
          │││││     │         ││      0x00007f47771986d6:   jmp    0x00007f4777198a8e           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││     │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │││││     │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.00%  ││↘││     │         ││      0x00007f47771986db:   nopl   0x0(%rax,%rax,1)
          ││ ││     │         ││      0x00007f47771986e0:   cmp    $0xffda6a06,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
          ││ ││╭    │         ││      0x00007f47771986e7:   je     0x00007f4777198953
          ││ │││    │         ││      0x00007f47771986ed:   test   %r13b,%r13b
          ││ │││╭   │         ││      0x00007f47771986f0:   jne    0x00007f47771989c3           ;* unwind (locked if synchronized)
          ││ ││││   │         ││                                                                ; - java.lang.String::equals@-3
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ ││││   │         ││      0x00007f47771986f6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rdi=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││ ││││   │         ││                                                                ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ ││││   │         ││      0x00007f4777198700:   cmpl   $0x5,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f4777198b98
          ││ ││││   │         ││      0x00007f4777198708:   jne    0x00007f4777198a82
          ││ ││││   │         ││      0x00007f477719870e:   mov    %rdi,%r10
          ││ ││││   │         ││      0x00007f4777198711:   mov    0x20(%rsp),%rsi
          ││ ││││   │         ││      0x00007f4777198716:   mov    0x8(%rsp),%rdi
          ││ ││││   │         ││      0x00007f477719871b:   mov    $0x5,%edx
          ││ ││││   │         ││      0x00007f4777198720:   mov    $0x10,%rax
          ││ ││││   │         ││      0x00007f4777198727:   mov    $0x10,%rcx
          ││ ││││   │         ││      0x00007f477719872e:   add    %rax,%rsi
          ││ ││││   │         ││      0x00007f4777198731:   add    %rcx,%rdi
          ││ ││││   │         ││      0x00007f4777198734:   mov    $0x1,%r11d
          ││ ││││   │         ││      0x00007f477719873a:   mov    (%rsi),%edx
          ││ ││││   │         ││      0x00007f477719873c:   xor    (%rdi),%edx
          ││ ││││   │         ││      0x00007f477719873e:   mov    0x1(%rsi),%esi
          ││ ││││   │         ││      0x00007f4777198741:   xor    0x1(%rdi),%esi
          ││ ││││   │         ││      0x00007f4777198744:   xor    %rdi,%rdi
          ││ ││││   │         ││      0x00007f4777198747:   or     %rsi,%rdx
          ││ ││││   │         ││      0x00007f477719874a:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
          ││ ││││   │         ││                                                                ; - java.lang.String::equals@-3
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ ││││   │         ││      0x00007f477719874e:   test   %r11d,%r11d
          ││ ││││   │         ││      0x00007f4777198751:   je     0x00007f4777198ac9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ ││││   │         ││      0x00007f4777198757:   mov    $0x0,%r11d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
          ││ ││││   │         ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   6.88%  ││ ││││   │    ↗ ↗  ││↗↗↗   0x00007f477719875d:   cmp    $0x0,%r11d
          ││ ││││╭  │    │ │  │││││   0x00007f4777198761:   je     0x00007f4777198780
          ││ │││││  │    │ │  │││││   0x00007f4777198767:   cmp    $0x1,%r11d
          ││ │││││╭ │    │ │  │││││   0x00007f477719876b:   je     0x00007f47771987b0
          ││ ││││││ │    │ │  │││││   0x00007f4777198771:   cmp    $0x2,%r11d
          ││ ││││││╭│    │ │  │││││   0x00007f4777198775:   je     0x00007f47771987b7
          ││ ││││││││    │ │  │││││   0x00007f477719877b:   jmp    0x00007f4777198a9a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││││││    │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
          ││ ││││││││    │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   2.34%  ││ ││││↘│││    │ │  │││││   0x00007f4777198780:   mov    $0x1,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││    │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
          ││ ││││ │││    │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   4.40%  ││ ││││ │││ ↗↗ │ │  │││││   0x00007f4777198785:   add    0x40(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││ ││ │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.02%  ││ ││││ │││ ││ │ │  │││││   0x00007f4777198789:   mov    0x3c(%rsp),%r9d
          ││ ││││ │││ ││ │ │  │││││   0x00007f477719878e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││ ││ │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   2.24%  ││ ││││ │││ ││ │ │  │││││   0x00007f4777198791:   mov    %eax,0x40(%rsp)
   4.62%  ││ ││││ │││ ││ │ │  │││││   0x00007f4777198795:   mov    %r10,%rdi
   0.00%  ││ ││││ │││ ││ │ │  │││││   0x00007f4777198798:   mov    0x28(%rsp),%r14
          ││ ││││ │││ ││ │ │  │││││   0x00007f477719879d:   mov    0x44(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││ │││ ││ │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.35%  ↘│ ││││ │││ ││ │ │  │││││   0x00007f47771987a2:   cmp    %r9d,%r13d
           │ ││││ ││╰ ││ │ │  │││││   0x00007f47771987a5:   jg     0x00007f4777198560
   0.04%   │ ││││ ││ ╭││ │ │  │││││   0x00007f47771987ab:   jmp    0x00007f47771989a5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││ │││ │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   2.29%   │ ││││ ↘│ │││ │ │  │││││   0x00007f47771987b0:   mov    $0x2,%eax
   0.00%   │ ││││  │ │╰│ │ │  │││││   0x00007f47771987b5:   jmp    0x00007f4777198785
   2.24%   │ ││││  ↘ │ │ │ │  │││││   0x00007f47771987b7:   mov    $0x3,%eax
   0.00%   │ ││││    │ ╰ │ │  │││││   0x00007f47771987bc:   jmp    0x00007f4777198785           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ ││││    │   │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
           │ ││││    │   │ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │ ↘│││    │   │ │  │││││   0x00007f47771987be:   mov    %rdi,%r10
   1.59%   │  │││    │   │ │  │││││   0x00007f47771987c1:   cmp    $0xffda6a12,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
           │  │││    │  ╭│ │  │││││   0x00007f47771987c8:   je     0x00007f4777198970
           │  │││    │  ││ │  │││││   0x00007f47771987ce:   test   %r13b,%r13b
           │  │││    │  ││ │  │││││   0x00007f47771987d1:   jne    0x00007f4777198b18           ;* unwind (locked if synchronized)
           │  │││    │  ││ │  │││││                                                             ; - java.lang.String::equals@-3
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││    │  ││ │  │││││   0x00007f47771987d7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │  │││    │  ││ │  │││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │││    │  ││ │  │││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││    │  ││ │  │││││   0x00007f47771987e0:   cmpl   $0x10,0xc(,%rbp,8)           ; implicit exception: dispatches to 0x00007f4777198bbb
           │  │││    │  ││ │  │││││   0x00007f47771987e8:   jne    0x00007f4777198abd
           │  │││    │  ││ │  │││││   0x00007f47771987ee:   mov    0x18(%rsp),%rsi
           │  │││    │  ││ │  │││││   0x00007f47771987f3:   mov    0x8(%rsp),%rdi
           │  │││    │  ││ │  │││││   0x00007f47771987f8:   mov    $0x10,%edx
           │  │││    │  ││ │  │││││   0x00007f47771987fd:   mov    $0x10,%rax
           │  │││    │  ││ │  │││││   0x00007f4777198804:   mov    $0x10,%rcx
           │  │││    │  ││ │  │││││   0x00007f477719880b:   add    %rax,%rsi
           │  │││    │  ││ │  │││││   0x00007f477719880e:   add    %rcx,%rdi
           │  │││    │  ││ │  │││││   0x00007f4777198811:   mov    $0x1,%r11d
           │  │││    │  ││ │  │││││   0x00007f4777198817:   vmovdqu (%rsi),%xmm0
           │  │││    │  ││ │  │││││   0x00007f477719881b:   vmovdqu (%rdi),%xmm1
           │  │││    │  ││ │  │││││   0x00007f477719881f:   vpxor  %xmm1,%xmm0,%xmm0
           │  │││    │  ││ │  │││││   0x00007f4777198823:   xor    %rsi,%rsi
           │  │││    │  ││ │  │││││   0x00007f4777198826:   vptest %xmm0,%xmm0
           │  │││    │  ││ │  │││││   0x00007f477719882b:   cmovne %esi,%r11d                   ;* unwind (locked if synchronized)
           │  │││    │  ││ │  │││││                                                             ; - java.lang.String::equals@-3
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││    │  ││ │  │││││   0x00007f477719882f:   test   %r11d,%r11d
           │  │││    │  ││ │  │││││   0x00007f4777198832:   je     0x00007f4777198a5f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
           │  │││    │  ││ │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││    │  ││ │  │││││   0x00007f4777198838:   mov    $0x2,%r11d
           │  │││    │  ││ │  │││││   0x00007f477719883e:   xchg   %ax,%ax
           │  │││    │  │╰ │  │││││   0x00007f4777198840:   jmp    0x00007f477719875d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  │││    │  │  │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │  │││    │  │  │  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.06%   │  ↘││    │  │  │  │││││   0x00007f4777198845:   mov    %rdi,%r10
   2.31%   │   ││    │  │  │  │││││   0x00007f4777198848:   cmp    $0xffda6a0c,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
           │   ││    │  │ ╭│  │││││   0x00007f477719884f:   je     0x00007f4777198965
           │   ││    │  │ ││  │││││   0x00007f4777198855:   test   %r13b,%r13b
           │   ││    │  │ ││  │││││   0x00007f4777198858:   jne    0x00007f4777198a10           ;* unwind (locked if synchronized)
           │   ││    │  │ ││  │││││                                                             ; - java.lang.String::equals@-3
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │   ││    │  │ ││  │││││   0x00007f477719885e:   xchg   %ax,%ax                      ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
           │   ││    │  │ ││  │││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │   ││    │  │ ││  │││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │   ││    │  │ ││  │││││   0x00007f4777198860:   cmpl   $0x7,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f4777198bde
           │   ││    │  │ ││  │││││   0x00007f4777198868:   jne    0x00007f4777198a07
           │   ││    │  │ ││  │││││   0x00007f477719886e:   mov    %r10,%rsi
           │   ││    │  │ ││  │││││   0x00007f4777198871:   mov    0x8(%rsp),%rdi
           │   ││    │  │ ││  │││││   0x00007f4777198876:   mov    $0x7,%edx
           │   ││    │  │ ││  │││││   0x00007f477719887b:   mov    $0x10,%rax
           │   ││    │  │ ││  │││││   0x00007f4777198882:   mov    $0x10,%rcx
           │   ││    │  │ ││  │││││   0x00007f4777198889:   add    %rax,%rsi
           │   ││    │  │ ││  │││││   0x00007f477719888c:   add    %rcx,%rdi
           │   ││    │  │ ││  │││││   0x00007f477719888f:   mov    $0x1,%r11d
           │   ││    │  │ ││  │││││   0x00007f4777198895:   mov    (%rsi),%edx
           │   ││    │  │ ││  │││││   0x00007f4777198897:   xor    (%rdi),%edx
           │   ││    │  │ ││  │││││   0x00007f4777198899:   mov    0x3(%rsi),%esi
           │   ││    │  │ ││  │││││   0x00007f477719889c:   xor    0x3(%rdi),%esi
           │   ││    │  │ ││  │││││   0x00007f477719889f:   xor    %rdi,%rdi
           │   ││    │  │ ││  │││││   0x00007f47771988a2:   or     %rsi,%rdx
           │   ││    │  │ ││  │││││   0x00007f47771988a5:   cmovne %edi,%r11d                   ;* unwind (locked if synchronized)
           │   ││    │  │ ││  │││││                                                             ; - java.lang.String::equals@-3
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │   ││    │  │ ││  │││││   0x00007f47771988a9:   test   %r11d,%r11d
           │   ││    │  │ ││  │││││   0x00007f47771988ac:   je     0x00007f4777198a3c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
           │   ││    │  │ ││  │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │   ││    │  │ ││  │││││   0x00007f47771988b2:   mov    $0x1,%r11d
           │   ││    │  │ │╰  │││││   0x00007f47771988b8:   jmp    0x00007f477719875d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │   ││    │  │ │   │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │   ││    │  │ │   │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           ↘   ││    │  │ │   │││││   0x00007f47771988bd:   data16 xchg %ax,%ax
               ││    │  │ │   │││││   0x00007f47771988c0:   cmpb   $0x0,0x11(,%rbx,8)
               ││    │  │ │ ╭ │││││   0x00007f47771988c8:   jne    0x00007f4777198937           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │ │ │││││                                                             ; - java.lang.String::hashCode@13 (line 2364)
               ││    │  │ │ │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ │ │││││   0x00007f47771988ce:   test   %al,%al
               ││    │  │ │ │ │││││   0x00007f47771988d0:   jne    0x00007f4777198aed           ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rbp=Oop rsi=Oop rdi=Oop r14=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
               ││    │  │ │ │ │││││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
               ││    │  │ │ │ │││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
               ││    │  │ │ │ │││││   0x00007f47771988d6:   mov    0xc(,%rdx,8),%ecx            ; implicit exception: dispatches to 0x00007f4777198c01
               ││    │  │ │ │ │││││   0x00007f47771988dd:   cmp    $0x1,%ecx
               ││    │  │ │ │╭│││││   0x00007f47771988e0:   je     0x00007f477719897b
               ││    │  │ │ │││││││   0x00007f47771988e6:   cmp    $0x0,%ecx
               ││    │  │ │ │││││││   0x00007f47771988e9:   je     0x00007f4777198b25           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │ │││││││                                                             ; - java.lang.StringLatin1::hashCode@2 (line 188)
               ││    │  │ │ │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ │││││││   0x00007f47771988ef:   mov    %rbp,0x10(%rsp)
               ││    │  │ │ │││││││   0x00007f47771988f4:   mov    %r9d,0x3c(%rsp)
               ││    │  │ │ │││││││   0x00007f47771988f9:   mov    %rsi,%rbp
               ││    │  │ │ │││││││   0x00007f47771988fc:   lea    0x10(%rbp),%rbp
               ││    │  │ │ │││││││   0x00007f4777198900:   mov    %rsi,0x8(%rsp)
               ││    │  │ │ │││││││   0x00007f4777198905:   mov    %rbp,%rsi
               ││    │  │ │ │││││││   0x00007f4777198908:   mov    %edx,%ebp
               ││    │  │ │ │││││││   0x00007f477719890a:   mov    %ecx,%edx
               ││    │  │ │ │││││││   0x00007f477719890c:   mov    $0x0,%ecx                    ;* unwind (locked if synchronized)
               ││    │  │ │ │││││││                                                             ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
               ││    │  │ │ │││││││                                                             ; - java.lang.StringLatin1::hashCode@48 (line 191)
               ││    │  │ │ │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ │││││││   0x00007f4777198911:   mov    %eax,%r13d
               ││    │  │ │ │││││││   0x00007f4777198914:   mov    %ebx,%r14d
               ││    │  │ │ │││││││   0x00007f4777198917:   call   0x00007f4776d0b320           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
               ││    │  │ │ │││││││   0x00007f477719891c:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │ │││││││                                                             ; - java.lang.StringLatin1::hashCode@51 (line 188)
               ││    │  │ │ │││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ │││││││↗  0x00007f477719891d:   data16 xchg %ax,%ax
               ││    │  │ │ ││││││││  0x00007f4777198920:   test   %eax,%eax
               ││    │  │ │ ││││││││  0x00007f4777198922:   je     0x00007f4777198a19           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │ ││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
               ││    │  │ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ ││││││││  0x00007f4777198928:   mov    %eax,0xc(,%r14,8)            ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │ ││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
               ││    │  │ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │ ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
               ││    │  │ │ ││││││││  0x00007f4777198930:   mov    %eax,%ecx
               ││    │  │ │ ││╰│││││  0x00007f4777198932:   jmp    0x00007f47771985a6
               ││    │  │ │ ↘│ │││││  0x00007f4777198937:   mov    %rbp,0x10(%rsp)
               ││    │  │ │  │ │││││  0x00007f477719893c:   mov    %rsi,0x8(%rsp)
               ││    │  │ │  │ │││││  0x00007f4777198941:   mov    %edx,%ebp
               ││    │  │ │  │ │││││  0x00007f4777198943:   mov    %r9d,0x3c(%rsp)
               ││    │  │ │  │ │││││  0x00007f4777198948:   mov    %eax,%r13d
               ││    │  │ │  │ │││││  0x00007f477719894b:   mov    %ebx,%r14d
               ││    │  │ │  │ ╰││││  0x00007f477719894e:   jmp    0x00007f47771985a6           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││    │  │ │  │  ││││                                                            ; - java.lang.String::hashCode@58 (line 2373)
               ││    │  │ │  │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││    │  │ │  │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   2.33%       ↘│    │  │ │  │  ││││  0x00007f4777198953:   mov    $0x0,%r11d
                │    │  │ │  │  ││││  0x00007f4777198959:   mov    %rdi,%r10
                │    │  │ │  │  ││││  0x00007f477719895c:   nopl   0x0(%rax)
                │    │  │ │  │  ╰│││  0x00007f4777198960:   jmp    0x00007f477719875d           ;* unwind (locked if synchronized)
                │    │  │ │  │   │││                                                            ; - java.lang.String::equals@-3
                │    │  │ │  │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                │    │  │ │  │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.09%        │    │  │ ↘  │   │││  0x00007f4777198965:   mov    $0x1,%r11d
                │    │  │    │   ╰││  0x00007f477719896b:   jmp    0x00007f477719875d           ;* unwind (locked if synchronized)
                │    │  │    │    ││                                                            ; - java.lang.String::equals@-3
                │    │  │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
                │    │  │    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.70%        │    │  ↘    │    ││  0x00007f4777198970:   mov    $0x2,%r11d
   0.00%        │    │       │    ╰│  0x00007f4777198976:   jmp    0x00007f477719875d           ;* unwind (locked if synchronized)
                │    │       │     │                                                            ; - java.lang.String::equals@-3
                │    │       │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                │    │       │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                │    │       ↘     │  0x00007f477719897b:   mov    %rbp,0x10(%rsp)
                │    │             │  0x00007f4777198980:   mov    %rsi,0x8(%rsp)
                │    │             │  0x00007f4777198985:   mov    %edx,%ebp
                │    │             │  0x00007f4777198987:   mov    %r9d,0x3c(%rsp)
                │    │             │  0x00007f477719898c:   mov    %rdi,%r10
                │    │             │  0x00007f477719898f:   mov    %eax,%r13d
                │    │             │  0x00007f4777198992:   mov    %ebx,%r14d
                │    │             │  0x00007f4777198995:   movzbl 0x10(,%rbp,8),%eax           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                │    │             │                                                            ; - java.lang.StringLatin1::hashCode@38 (line 190)
                │    │             │                                                            ; - java.lang.String::hashCode@27 (line 2365)
                │    │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │    │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                │    │             │  0x00007f477719899d:   data16 xchg %ax,%ax
                │    │             ╰  0x00007f47771989a0:   jmp    0x00007f477719891d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │    │                                                                          ; - java.lang.StringLatin1::hashCode@51 (line 188)
                │    │                                                                          ; - java.lang.String::hashCode@27 (line 2365)
                │    │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │    │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.05%        │    ↘                0x00007f47771989a5:   mov    0x40(%rsp),%eax              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@41 (line 107)
   0.04%        │                     0x00007f47771989a9:   mov    0x50(%rsp),%rbp
                │                     0x00007f47771989ae:   add    $0x58,%rsp
                │                     0x00007f47771989b2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │                     0x00007f47771989b9:   ja     0x00007f4777198b3e
   0.01%        │                     0x00007f47771989bf:   vzeroupper 
   0.00%        │                     0x00007f47771989c2:   ret    
                ↘                     0x00007f47771989c3:   mov    $0x3494,%r10
                                      0x00007f47771989ca:   mov    0x10(%rsp),%rbp
                                      0x00007f47771989cf:   mov    0x3c(%rsp),%r9d
                                      0x00007f47771989d4:   mov    0x40(%rsp),%r11d
                                      0x00007f47771989d9:   mov    0x28(%rsp),%r14
                                      0x00007f47771989de:   mov    0x44(%rsp),%r13d
                                      0x00007f47771989e3:   mov    0x30(%rsp),%r8
                                      0x00007f47771989e8:   movl   $0xffffffed,0x484(%r15)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
....................................................................................................
  95.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1043 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1065 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.05%     [kernel.kallsyms]  free_swap_cache 
   1.67%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1043 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.10%                        <unknown> 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1065 
   0.06%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   1.61%  <...other 262 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.95%        jvmci, level 4
   3.37%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.22%             libc.so.6
   0.10%                      
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%           c1, level 3
   0.00%       nf_conntrack.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:06:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.872 ns/op
# Warmup Iteration   2: 13.069 ns/op
# Warmup Iteration   3: 13.092 ns/op
# Warmup Iteration   4: 12.795 ns/op
# Warmup Iteration   5: 13.003 ns/op
Iteration   1: 12.987 ns/op
Iteration   2: 13.068 ns/op
Iteration   3: 13.024 ns/op
Iteration   4: 13.065 ns/op
Iteration   5: 13.134 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  13.055 ±(99.9%) 0.212 ns/op [Average]
  (min, avg, max) = (12.987, 13.055, 13.134), stdev = 0.055
  CI (99.9%): [12.843, 13.267] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 219612 total address lines.
Perf output processed (skipped 78.338 seconds):
 Column 1: cycles (50361 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1021 

                                                         # {method} {0x00007f061f47b688} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                                                         #           [sp+0x70]  (sp of caller)
                                                         0x00007f06a7194b60:   mov    0x8(%rsi),%r10d
                                                         0x00007f06a7194b64:   movabs $0x7f0623000000,%r12
                                                         0x00007f06a7194b6e:   add    %r12,%r10
                                                         0x00007f06a7194b71:   xor    %r12,%r12
                                                         0x00007f06a7194b74:   cmp    %r10,%rax
                                                         0x00007f06a7194b77:   jne    0x00007f06a6af9080           ;   {runtime_call ic_miss_stub}
                                                         0x00007f06a7194b7d:   data16 xchg %ax,%ax
                                                       [Verified Entry Point]
   0.01%                                                 0x00007f06a7194b80:   mov    %eax,-0x14000(%rsp)
                                                         0x00007f06a7194b87:   sub    $0x68,%rsp
   0.01%                                                 0x00007f06a7194b8b:   nop
                                                         0x00007f06a7194b8c:   cmpl   $0x1,0x20(%r15)
                                                         0x00007f06a7194b94:   jne    0x00007f06a7195538
                                                         0x00007f06a7194b9a:   mov    %rbp,0x60(%rsp)
   0.01%                                                 0x00007f06a7194b9f:   mov    %rsi,%rbp
                                                         0x00007f06a7194ba2:   mov    %rbp,0x48(%rsp)
                                                         0x00007f06a7194ba7:   mov    0x18(%rbp),%esi              ; ImmutableOopMap {rbp=Oop rsi=NarrowOop [72]=Oop }
                                                                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
                                                         0x00007f06a7194baa:   mov    0xc(,%rsi,8),%r13d           ; implicit exception: dispatches to 0x00007f06a719555c
                                                         0x00007f06a7194bb2:   mov    %r13d,0x54(%rsp)
   0.00%                                                 0x00007f06a7194bb7:   mov    %esi,%r14d
                                                         0x00007f06a7194bba:   shl    $0x3,%r14                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                                                         0x00007f06a7194bbe:   mov    %r14,0x40(%rsp)
                                                         0x00007f06a7194bc3:   movabs $0x7fed350e0,%rdi            ;   {oop([B{0x00000007fed350e0})}
   0.01%                                                 0x00007f06a7194bcd:   mov    %rdi,0x38(%rsp)
                                                         0x00007f06a7194bd2:   movabs $0x7fed35078,%r10            ;   {oop([B{0x00000007fed35078})}
                                                         0x00007f06a7194bdc:   mov    %r10,0x30(%rsp)
   0.00%                                                 0x00007f06a7194be1:   movabs $0x7fed35048,%r11            ;   {oop([B{0x00000007fed35048})}
                                                         0x00007f06a7194beb:   mov    %r11,0x28(%rsp)
                                                         0x00007f06a7194bf0:   movabs $0x7fed35148,%r8             ;   {oop([B{0x00000007fed35148})}
                                                         0x00007f06a7194bfa:   mov    %r8,0x20(%rsp)
   0.00%                                                 0x00007f06a7194bff:   movabs $0x7fed35118,%r9             ;   {oop([B{0x00000007fed35118})}
                                                         0x00007f06a7194c09:   mov    %r9,0x18(%rsp)
                                                         0x00007f06a7194c0e:   movabs $0x7fed350a8,%rbx            ;   {oop([B{0x00000007fed350a8})}
                                                         0x00007f06a7194c18:   mov    %rbx,0x10(%rsp)
   0.01%                                                 0x00007f06a7194c1d:   mov    $0x0,%ecx
                                                         0x00007f06a7194c22:   mov    $0x0,%eax
          ╭                                              0x00007f06a7194c27:   jmp    0x00007f06a7194ebd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
          │                                              0x00007f06a7194c2c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                                              0x00007f06a7194c37:   data16 data16 xchg %ax,%ax
          │                                              0x00007f06a7194c3b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.02%  │               ↗                              0x00007f06a7194c40:   mov    0x10(%r14,%rcx,4),%edx       ; ImmutableOopMap {rdx=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │               │                                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │               │                                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
  10.95%  │               │                              0x00007f06a7194c45:   mov    0xc(,%rdx,8),%esi            ; implicit exception: dispatches to 0x00007f06a719557f
  22.83%  │               │                              0x00007f06a7194c4c:   movsbl 0x10(,%rdx,8),%ebp           ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - java.lang.String::isLatin1@7 (line 4817)
          │               │                                                                                        ; - java.lang.String::hashCode@17 (line 2365)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.44%  │               │                              0x00007f06a7194c54:   mov    0x14(,%rdx,8),%r13d          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - java.lang.String::hashCode@24 (line 2365)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   2.91%  │               │                              0x00007f06a7194c5c:   mov    %r13d,%r14d
   0.07%  │               │                              0x00007f06a7194c5f:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │               │                                                                                        ; - java.lang.String::equals@-3
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.74%  │               │                              0x00007f06a7194c63:   mov    %edx,%edi
          │               │                              0x00007f06a7194c65:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │               │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
          │               │                              0x00007f06a7194c69:   test   %esi,%esi
          │╭              │                              0x00007f06a7194c6b:   je     0x00007f06a71951da           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                                                        ; - java.lang.String::hashCode@6 (line 2364)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.06%  ││              │                              0x00007f06a7194c71:   mov    %rdi,(%rsp)
   5.96%  ││              │                              0x00007f06a7194c75:   mov    %r14,0x8(%rsp)
   3.60%  ││              │                              0x00007f06a7194c7a:   mov    %edx,%r14d
          ││              │                              0x00007f06a7194c7d:   mov    %ecx,0x50(%rsp)
   0.02%  ││              │                              0x00007f06a7194c81:   mov    %eax,%edi                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                                                        ; - java.lang.String::hashCode@58 (line 2373)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││              │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   2.43%  ││              │                   ↗↗         0x00007f06a7194c83:   cmp    $0x462300d,%esi
          ││╭             │                   ││         0x00007f06a7194c89:   je     0x00007f06a7194ece
   2.93%  │││             │                   ││         0x00007f06a7194c8f:   cmp    $0x23c6acdf,%esi
          │││╭            │                   ││         0x00007f06a7194c95:   je     0x00007f06a7194db7
          ││││            │                   ││         0x00007f06a7194c9b:   cmp    $0x9ef434af,%esi
          ││││╭           │                   ││         0x00007f06a7194ca1:   je     0x00007f06a7195019
   0.01%  │││││           │                   ││         0x00007f06a7194ca7:   cmp    $0x33eb4d91,%esi
          │││││╭          │                   ││         0x00007f06a7194cad:   je     0x00007f06a7194f6a
   0.58%  ││││││          │                   ││         0x00007f06a7194cb3:   cmp    $0x103b4,%esi
          ││││││╭         │                   ││         0x00007f06a7194cb9:   je     0x00007f06a71950a5
   0.69%  │││││││         │                   ││         0x00007f06a7194cbf:   cmp    $0x14234,%esi
          │││││││╭        │                   ││         0x00007f06a7194cc5:   je     0x00007f06a7195134
          ││││││││        │                   ││         0x00007f06a7194ccb:   cmp    $0x90663ad4,%esi
          ││││││││        │                   ││         0x00007f06a7194cd1:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194cd7:   cmp    $0xa2a1be40,%esi
          ││││││││        │                   ││         0x00007f06a7194cdd:   data16 xchg %ax,%ax
          ││││││││        │                   ││         0x00007f06a7194ce0:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194ce6:   cmp    $0xaf2874e8,%esi
          ││││││││        │                   ││         0x00007f06a7194cec:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194cf2:   cmp    $0xba6eabe2,%esi
          ││││││││        │                   ││         0x00007f06a7194cf8:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194cfe:   cmp    $0xc517aa2b,%esi
          ││││││││        │                   ││         0x00007f06a7194d04:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d0a:   cmp    $0xd91961ec,%esi             ;   {no_reloc}
          ││││││││        │                   ││         0x00007f06a7194d10:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d16:   cmp    $0xeb2c8617,%esi
          ││││││││        │                   ││         0x00007f06a7194d1c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f06a7194d20:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d26:   cmp    $0xfce7bd80,%esi
          ││││││││        │                   ││         0x00007f06a7194d2c:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d32:   cmp    $0x10260,%esi
          ││││││││        │                   ││         0x00007f06a7194d38:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d3e:   cmp    $0x14b03,%esi
          ││││││││        │                   ││         0x00007f06a7194d44:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d4a:   cmp    $0x1f3140,%esi
          ││││││││        │                   ││         0x00007f06a7194d50:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d56:   cmp    $0x4c5f9e8,%esi
          ││││││││        │                   ││         0x00007f06a7194d5c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f06a7194d60:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d66:   cmp    $0x4c6443f,%esi
          ││││││││        │                   ││         0x00007f06a7194d6c:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d72:   cmp    $0x64b8f52,%esi
          ││││││││        │                   ││         0x00007f06a7194d78:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d7e:   cmp    $0xe6d87d7,%esi
          ││││││││        │                   ││         0x00007f06a7194d84:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d8a:   cmp    $0x1b604cf5,%esi
          ││││││││        │                   ││         0x00007f06a7194d90:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194d96:   cmp    $0x2d2d772a,%esi
          ││││││││        │                   ││         0x00007f06a7194d9c:   nopl   0x0(%rax)
          ││││││││        │                   ││         0x00007f06a7194da0:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194da6:   cmp    $0x356e5289,%esi
          ││││││││        │                   ││         0x00007f06a7194dac:   je     0x00007f06a719545a
          ││││││││        │                   ││         0x00007f06a7194db2:   jmp    0x00007f06a719545a           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││        │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          ││││││││        │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││↘││││        │                   ││         0x00007f06a7194db7:   nopw   0x0(%rax,%rax,1)
   0.01%  │││ ││││        │                   ││         0x00007f06a7194dc0:   cmp    $0xffda6a0c,%r14d            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
          │││ ││││╭       │                   ││         0x00007f06a7194dc7:   je     0x00007f06a7195279
          │││ │││││       │                   ││         0x00007f06a7194dcd:   test   %bpl,%bpl
          │││ │││││       │                   ││         0x00007f06a7194dd0:   jne    0x00007f06a71954bb           ;* unwind (locked if synchronized)
          │││ │││││       │                   ││                                                                   ; - java.lang.String::equals@-3
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││ │││││       │                   ││         0x00007f06a7194dd6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │││ │││││       │                   ││                                                                   ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││ │││││       │                   ││         0x00007f06a7194de0:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f06a71955a2
          │││ │││││       │                   ││         0x00007f06a7194de9:   jne    0x00007f06a7195519
          │││ │││││       │                   ││         0x00007f06a7194def:   mov    (%rsp),%r8
          │││ │││││       │                   ││         0x00007f06a7194df3:   mov    %edi,%r11d
          │││ │││││       │                   ││         0x00007f06a7194df6:   mov    0x38(%rsp),%r10
          │││ │││││       │                   ││         0x00007f06a7194dfb:   mov    0x30(%rsp),%rsi
          │││ │││││       │                   ││         0x00007f06a7194e00:   mov    0x8(%rsp),%rdi
          │││ │││││       │                   ││         0x00007f06a7194e05:   mov    $0x7,%edx
          │││ │││││       │                   ││         0x00007f06a7194e0a:   mov    $0x10,%rax
          │││ │││││       │                   ││         0x00007f06a7194e11:   mov    $0x10,%rcx
          │││ │││││       │                   ││         0x00007f06a7194e18:   add    %rax,%rsi
          │││ │││││       │                   ││         0x00007f06a7194e1b:   add    %rcx,%rdi
          │││ │││││       │                   ││         0x00007f06a7194e1e:   mov    $0x1,%r9d
          │││ │││││       │                   ││         0x00007f06a7194e24:   mov    (%rsi),%edx
          │││ │││││       │                   ││         0x00007f06a7194e26:   xor    (%rdi),%edx
          │││ │││││       │                   ││         0x00007f06a7194e28:   mov    0x3(%rsi),%esi
          │││ │││││       │                   ││         0x00007f06a7194e2b:   xor    0x3(%rdi),%esi
          │││ │││││       │                   ││         0x00007f06a7194e2e:   xor    %rdi,%rdi
          │││ │││││       │                   ││         0x00007f06a7194e31:   or     %rsi,%rdx
          │││ │││││       │                   ││         0x00007f06a7194e34:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
          │││ │││││       │                   ││                                                                   ; - java.lang.String::equals@-3
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││ │││││       │                   ││         0x00007f06a7194e38:   nopl   0x0(%rax,%rax,1)
          │││ │││││       │                   ││         0x00007f06a7194e40:   test   %r9d,%r9d
          │││ │││││       │                   ││         0x00007f06a7194e43:   je     0x00007f06a719537a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││ │││││       │                   ││         0x00007f06a7194e49:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
          │││ │││││       │                   ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.01%  │││ │││││       │  ↗  ↗   ↗ ↗ ↗     ││↗↗↗↗↗↗   0x00007f06a7194e4f:   cmp    $0x3,%r8d
          │││ │││││╭      │  │  │   │ │ │     ││││││││   0x00007f06a7194e53:   jge    0x00007f06a7194e7f
   0.00%  │││ ││││││      │  │  │   │ │ │     ││││││││   0x00007f06a7194e59:   cmp    $0x2,%r8d
   0.45%  │││ ││││││      │  │  │   │ │ │     ││││││││   0x00007f06a7194e5d:   data16 xchg %ax,%ax
   0.65%  │││ ││││││╭     │  │  │   │ │ │     ││││││││   0x00007f06a7194e60:   jge    0x00007f06a719500f
   2.04%  │││ │││││││     │  │  │   │ │ │     ││││││││   0x00007f06a7194e66:   cmp    $0x0,%r8d
          │││ │││││││╭    │  │  │   │ │ │     ││││││││   0x00007f06a7194e6a:   je     0x00007f06a7194f60
   0.00%  │││ ││││││││    │  │  │   │ │ │     ││││││││   0x00007f06a7194e70:   cmp    $0x1,%r8d
          │││ ││││││││╭   │  │  │   │ │ │     ││││││││   0x00007f06a7194e74:   je     0x00007f06a7194ea5
          │││ │││││││││   │  │  │   │ │ │     ││││││││   0x00007f06a7194e7a:   jmp    0x00007f06a7195437
   2.99%  │││ │││││↘│││   │  │  │   │ │ │     ││││││││   0x00007f06a7194e7f:   cmp    $0x5,%r8d
          │││ │││││ │││   │  │  │   │ │ │     ││││││││   0x00007f06a7194e83:   jg     0x00007f06a7195437
   0.01%  │││ │││││ │││   │  │  │   │ │ │     ││││││││   0x00007f06a7194e89:   cmp    $0x5,%r8d
          │││ │││││ │││╭  │  │  │   │ │ │     ││││││││   0x00007f06a7194e8d:   jge    0x00007f06a71951d0
   0.00%  │││ │││││ ││││  │  │  │   │ │ │     ││││││││   0x00007f06a7194e93:   cmp    $0x3,%r8d
          │││ │││││ ││││╭ │  │  │   │ │ │     ││││││││   0x00007f06a7194e97:   je     0x00007f06a7195005
   0.00%  │││ │││││ │││││ │  │  │   │ │ │     ││││││││   0x00007f06a7194e9d:   data16 xchg %ax,%ax
   0.90%  │││ │││││ │││││╭│  │  │   │ │ │     ││││││││   0x00007f06a7194ea0:   jmp    0x00007f06a71951c6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ │││││││  │  │   │ │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
          │││ │││││ │││││││  │  │   │ │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │││ │││││ ││↘││││  │  │   │ │ │     ││││││││   0x00007f06a7194ea5:   mov    $0x2,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ ││││  │  │   │ │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
          │││ │││││ ││ ││││  │  │   │ │ │     ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   5.46%  │││ │││││ ││ ││││  │↗ │↗↗ │ │ │↗↗   ││││││││   0x00007f06a7194eaa:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.99%  │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194ead:   mov    0x50(%rsp),%ecx
   0.01%  │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194eb1:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.00%  │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194eb3:   mov    0x40(%rsp),%r14
   5.02%  │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194eb8:   mov    0x54(%rsp),%r13d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   1.02%  ↘││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194ebd:   data16 xchg %ax,%ax                 ;   {no_reloc}
   0.01%   ││ │││││ ││ ││││  ││ │││ │ │ │││   ││││││││   0x00007f06a7194ec0:   cmp    %ecx,%r13d
           ││ │││││ ││ │││╰  ││ │││ │ │ │││   ││││││││   0x00007f06a7194ec3:   jg     0x00007f06a7194c40
   0.07%   ││ │││││ ││ │││ ╭ ││ │││ │ │ │││   ││││││││   0x00007f06a7194ec9:   jmp    0x00007f06a71952e7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││ │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.62%   │↘ │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││   0x00007f06a7194ece:   mov    (%rsp),%r8
           │  │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││   0x00007f06a7194ed2:   mov    %edi,%r11d
           │  │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││   0x00007f06a7194ed5:   mov    0x38(%rsp),%r10
   0.42%   │  │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││   0x00007f06a7194eda:   nopw   0x0(%rax,%rax,1)
   0.58%   │  │││││ ││ │││ │ ││ │││ │ │ │││   ││││││││   0x00007f06a7194ee0:   cmp    $0xffda6a06,%r14d            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
           │  │││││ ││ │││ │╭││ │││ │ │ │││   ││││││││   0x00007f06a7194ee7:   je     0x00007f06a719526e
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194eed:   test   %bpl,%bpl
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194ef0:   jne    0x00007f06a719552c           ;* unwind (locked if synchronized)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194ef6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f00:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f06a71955c5
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f09:   jne    0x00007f06a71954af
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f0f:   mov    0x28(%rsp),%rsi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f14:   mov    0x8(%rsp),%rdi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f19:   mov    $0x5,%edx
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f1e:   mov    $0x10,%rax
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f25:   mov    $0x10,%rcx
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f2c:   add    %rax,%rsi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f2f:   add    %rcx,%rdi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f32:   mov    $0x1,%r9d
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f38:   mov    (%rsi),%edx
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f3a:   xor    (%rdi),%edx
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f3c:   mov    0x1(%rsi),%esi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f3f:   xor    0x1(%rdi),%esi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f42:   xor    %rdi,%rdi
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f45:   or     %rsi,%rdx
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f48:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f4c:   test   %r9d,%r9d
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f4f:   je     0x00007f06a7195331           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││││ ││ │││ ││││ │││ │ │ │││   ││││││││   0x00007f06a7194f55:   mov    $0x0,%r8d
           │  │││││ ││ │││ ││╰│ │││ │ │ │││   ││││││││   0x00007f06a7194f5b:   jmp    0x00007f06a7194e4f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  │││││ ││ │││ ││ │ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │  │││││ ││ │││ ││ │ │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │││││ │↘ │││ ││ │ │││ │ │ │││   ││││││││   0x00007f06a7194f60:   mov    $0x1,%eax
           │  │││││ │  │││ ││ ╰ │││ │ │ │││   ││││││││   0x00007f06a7194f65:   jmp    0x00007f06a7194eaa           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │││││ │  │││ ││   │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
           │  │││││ │  │││ ││   │││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.49%   │  │↘│││ │  │││ ││   │││ │ │ │││   ││││││││   0x00007f06a7194f6a:   mov    (%rsp),%r8
   0.52%   │  │ │││ │  │││ ││   │││ │ │ │││   ││││││││   0x00007f06a7194f6e:   mov    %edi,%r11d
           │  │ │││ │  │││ ││   │││ │ │ │││   ││││││││   0x00007f06a7194f71:   mov    0x38(%rsp),%r10
   0.00%   │  │ │││ │  │││ ││   │││ │ │ │││   ││││││││   0x00007f06a7194f76:   data16 nopw 0x0(%rax,%rax,1)
   0.47%   │  │ │││ │  │││ ││   │││ │ │ │││   ││││││││   0x00007f06a7194f80:   cmp    $0xffda6a19,%r14d            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
           │  │ │││ │  │││ ││  ╭│││ │ │ │││   ││││││││   0x00007f06a7194f87:   je     0x00007f06a719528c
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194f8d:   test   %bpl,%bpl
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194f90:   jne    0x00007f06a71953d9           ;* unwind (locked if synchronized)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194f96:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fa0:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f06a71955e8
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fa9:   jne    0x00007f06a71954da
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194faf:   mov    %r10,%rsi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fb2:   mov    0x8(%rsp),%rdi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fb7:   mov    $0xa,%edx
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fbc:   mov    $0x10,%rax
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fc3:   mov    $0x10,%rcx
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fca:   add    %rax,%rsi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fcd:   add    %rcx,%rdi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fd0:   mov    $0x1,%r9d
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fd6:   mov    (%rsi),%rdx
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fd9:   xor    (%rdi),%rdx
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fdc:   mov    0x2(%rsi),%rsi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fe0:   xor    0x2(%rdi),%rsi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fe4:   xor    %rdi,%rdi
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fe7:   or     %rsi,%rdx
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fea:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194fee:   test   %r9d,%r9d
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194ff1:   je     0x00007f06a7195479           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194ff7:   mov    $0x3,%r8d
           │  │ │││ │  │││ ││  ││││ │ │ │││   ││││││││   0x00007f06a7194ffd:   data16 xchg %ax,%ax
           │  │ │││ │  │││ ││  │╰││ │ │ │││   ││││││││   0x00007f06a7195000:   jmp    0x00007f06a7194e4f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │  │ │││ │  │││ ││  │ ││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │  │ │││ │  │││ ││  │ ││ │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.94%   │  │ │││ │  │↘│ ││  │ ││ │ │ │││   ││││││││   0x00007f06a7195005:   mov    $0x4,%eax
   0.00%   │  │ │││ │  │ │ ││  │ ╰│ │ │ │││   ││││││││   0x00007f06a719500a:   jmp    0x00007f06a7194eaa
   0.00%   │  │ │││ ↘  │ │ ││  │  │ │ │ │││   ││││││││   0x00007f06a719500f:   mov    $0x3,%eax
           │  │ │││    │ │ ││  │  ╰ │ │ │││   ││││││││   0x00007f06a7195014:   jmp    0x00007f06a7194eaa           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ │││    │ │ ││  │    │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
           │  │ │││    │ │ ││  │    │ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.01%   │  ↘ │││    │ │ ││  │    │ │ │││   ││││││││   0x00007f06a7195019:   mov    (%rsp),%r8
   0.46%   │    │││    │ │ ││  │    │ │ │││   ││││││││   0x00007f06a719501d:   mov    %edi,%r11d
   0.60%   │    │││    │ │ ││  │    │ │ │││   ││││││││   0x00007f06a7195020:   mov    0x38(%rsp),%r10
           │    │││    │ │ ││  │    │ │ │││   ││││││││   0x00007f06a7195025:   cmp    $0xffda6a12,%r14d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
           │    │││    │ │ ││  │   ╭│ │ │││   ││││││││   0x00007f06a719502c:   je     0x00007f06a7195297
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195032:   test   %bpl,%bpl
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195035:   jne    0x00007f06a71953a6           ;* unwind (locked if synchronized)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719503b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195040:   cmpl   $0x10,0xc(,%r13,8)           ; implicit exception: dispatches to 0x00007f06a719560d
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195049:   jne    0x00007f06a719550d
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719504f:   mov    0x10(%rsp),%rsi
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195054:   mov    0x8(%rsp),%rdi
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195059:   mov    $0x10,%edx
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719505e:   mov    $0x10,%rax
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195065:   mov    $0x10,%rcx
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719506c:   add    %rax,%rsi
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719506f:   add    %rcx,%rdi
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195072:   mov    $0x1,%r9d
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195078:   vmovdqu (%rsi),%xmm0
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719507c:   vmovdqu (%rdi),%xmm1
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195080:   vpxor  %xmm1,%xmm0,%xmm0
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195084:   xor    %rsi,%rsi
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195087:   vptest %xmm0,%xmm0
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719508c:   cmovne %esi,%r9d                    ;* unwind (locked if synchronized)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195090:   test   %r9d,%r9d
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195093:   je     0x00007f06a71954e6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a7195099:   mov    $0x2,%r8d
           │    │││    │ │ ││  │   ││ │ │││   ││││││││   0x00007f06a719509f:   nop
           │    │││    │ │ ││  │   │╰ │ │││   ││││││││   0x00007f06a71950a0:   jmp    0x00007f06a7194e4f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │    │││    │ │ ││  │   │  │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │    │││    │ │ ││  │   │  │ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.65%   │    ↘││    │ │ ││  │   │  │ │││   ││││││││   0x00007f06a71950a5:   mov    (%rsp),%r8
   0.01%   │     ││    │ │ ││  │   │  │ │││   ││││││││   0x00007f06a71950a9:   mov    %edi,%r11d
           │     ││    │ │ ││  │   │  │ │││   ││││││││   0x00007f06a71950ac:   mov    0x38(%rsp),%r10
   0.32%   │     ││    │ │ ││  │   │  │ │││   ││││││││   0x00007f06a71950b1:   cmp    $0xffda6a20,%r14d            ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
           │     ││    │ │ ││  │   │ ╭│ │││   ││││││││   0x00007f06a71950b8:   je     0x00007f06a71952a5           ;* unwind (locked if synchronized)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950be:   xchg   %ax,%ax
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950c0:   test   %bpl,%bpl
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950c3:   jne    0x00007f06a719539d           ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950c9:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f06a7195630
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950d2:   jne    0x00007f06a7195354
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950d8:   mov    0x18(%rsp),%rsi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950dd:   mov    0x8(%rsp),%rdi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950e2:   mov    $0x3,%edx
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950e7:   mov    $0x10,%rax
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950ee:   mov    $0x10,%rcx
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950f5:   add    %rax,%rsi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950f8:   add    %rcx,%rdi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a71950fb:   mov    $0x1,%r9d
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195101:   movzwq (%rsi),%rdx
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195105:   xor    (%rdi),%dx
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195108:   movzwq 0x1(%rsi),%rsi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a719510d:   xor    0x1(%rdi),%si
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195111:   xor    %rdi,%rdi
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195114:   or     %rsi,%rdx
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195117:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - java.lang.String::equals@-3
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a719511b:   nopl   0x0(%rax,%rax,1)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195120:   test   %r9d,%r9d
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195123:   je     0x00007f06a71953f1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │     ││    │ │ ││  │   │ ││ │││   ││││││││   0x00007f06a7195129:   mov    $0x4,%r8d
           │     ││    │ │ ││  │   │ │╰ │││   ││││││││   0x00007f06a719512f:   jmp    0x00007f06a7194e4f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │     ││    │ │ ││  │   │ │  │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │     ││    │ │ ││  │   │ │  │││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.29%   │     ↘│    │ │ ││  │   │ │  │││   ││││││││   0x00007f06a7195134:   mov    (%rsp),%r8
           │      │    │ │ ││  │   │ │  │││   ││││││││   0x00007f06a7195138:   mov    %edi,%r11d
   0.04%   │      │    │ │ ││  │   │ │  │││   ││││││││   0x00007f06a719513b:   mov    0x38(%rsp),%r10
   0.66%   │      │    │ │ ││  │   │ │  │││   ││││││││   0x00007f06a7195140:   cmp    $0xffda6a26,%r14d            ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
           │      │    │ │ ││  │   │ │ ╭│││   ││││││││   0x00007f06a7195147:   je     0x00007f06a71952b0
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719514d:   test   %bpl,%bpl
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195150:   jne    0x00007f06a71954ce           ;* unwind (locked if synchronized)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - java.lang.String::equals@-3
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195156:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {r8=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195160:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007f06a7195653
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195169:   jne    0x00007f06a719546d
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719516f:   mov    0x20(%rsp),%rsi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195174:   mov    0x8(%rsp),%rdi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195179:   mov    $0x3,%edx
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719517e:   mov    $0x10,%rax
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195185:   mov    $0x10,%rcx
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719518c:   add    %rax,%rsi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719518f:   add    %rcx,%rdi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195192:   mov    $0x1,%r9d
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a7195198:   movzwq (%rsi),%rdx
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719519c:   xor    (%rdi),%dx
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a719519f:   movzwq 0x1(%rsi),%rsi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951a4:   xor    0x1(%rdi),%si
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951a8:   xor    %rdi,%rdi
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951ab:   or     %rsi,%rdx
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951ae:   cmovne %edi,%r9d                    ;* unwind (locked if synchronized)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - java.lang.String::equals@-3
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951b2:   test   %r9d,%r9d
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951b5:   je     0x00007f06a7195414           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
           │      │    │ │ ││  │   │ │ ││││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │      │    │ │ ││  │   │ │ ││││   ││││││││   0x00007f06a71951bb:   mov    $0x5,%r8d
           │      │    │ │ ││  │   │ │ │╰││   ││││││││   0x00007f06a71951c1:   jmp    0x00007f06a7194e4f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │      │    │ │ ││  │   │ │ │ ││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
           │      │    │ │ ││  │   │ │ │ ││   ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │      │    │ ↘ ││  │   │ │ │ ││   ││││││││   0x00007f06a71951c6:   mov    $0x5,%eax
   0.00%   │      │    │   ││  │   │ │ │ ╰│   ││││││││   0x00007f06a71951cb:   jmp    0x00007f06a7194eaa
   1.05%   │      │    ↘   ││  │   │ │ │  │   ││││││││   0x00007f06a71951d0:   mov    $0x6,%eax
           │      │        ││  │   │ │ │  ╰   ││││││││   0x00007f06a71951d5:   jmp    0x00007f06a7194eaa           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │      │        ││  │   │ │ │      ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
           │      │        ││  │   │ │ │      ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           ↘      │        ││  │   │ │ │      ││││││││   0x00007f06a71951da:   nopw   0x0(%rax,%rax,1)
                  │        ││  │   │ │ │      ││││││││   0x00007f06a71951e0:   cmpb   $0x0,0x11(,%rdx,8)
                  │        ││  │   │ │ │   ╭  ││││││││   0x00007f06a71951e8:   jne    0x00007f06a7195257           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   │  ││││││││                                                             ; - java.lang.String::hashCode@13 (line 2364)
                  │        ││  │   │ │ │   │  ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   │  ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   │  ││││││││   0x00007f06a71951ee:   test   %bpl,%bpl
                  │        ││  │   │ │ │   │  ││││││││   0x00007f06a71951f1:   jne    0x00007f06a71953e5           ; ImmutableOopMap {rdx=NarrowOop rdi=Oop r13=NarrowOop r14=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │        ││  │   │ │ │   │  ││││││││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   │  ││││││││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
                  │        ││  │   │ │ │   │  ││││││││   0x00007f06a71951f7:   mov    0xc(,%r13,8),%esi            ; implicit exception: dispatches to 0x00007f06a7195676
                  │        ││  │   │ │ │   │  ││││││││   0x00007f06a71951ff:   cmp    $0x1,%esi
                  │        ││  │   │ │ │   │╭ ││││││││   0x00007f06a7195202:   je     0x00007f06a71952bb
                  │        ││  │   │ │ │   ││ ││││││││   0x00007f06a7195208:   cmp    $0x0,%esi
                  │        ││  │   │ │ │   ││╭││││││││   0x00007f06a719520b:   je     0x00007f06a7195304           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@2 (line 188)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195211:   mov    %rdi,(%rsp)
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195215:   mov    %edx,%r10d
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195218:   mov    %ecx,0x50(%rsp)
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a719521c:   mov    %eax,%ecx
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a719521e:   mov    %esi,%edx
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195220:   mov    %r14,%rdi
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195223:   lea    0x10(%rdi),%rdi
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195227:   mov    %rdi,%rsi
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a719522a:   mov    %ecx,%edi
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a719522c:   mov    $0x0,%ecx                    ;* unwind (locked if synchronized)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@48 (line 191)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195231:   mov    %r14,0x8(%rsp)
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195236:   mov    %r10d,%r14d
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a7195239:   call   0x00007f06a6d0a920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
                  │        ││  │   │ │ │   │││││││││││   0x00007f06a719523e:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.StringLatin1::hashCode@51 (line 188)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - java.lang.String::hashCode@27 (line 2365)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   │││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   │││││││││││↗  0x00007f06a719523f:   nop
                  │        ││  │   │ │ │   ││││││││││││  0x00007f06a7195240:   test   %eax,%eax
                  │        ││  │   │ │ │   ││││││││││││  0x00007f06a7195242:   je     0x00007f06a71953af           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   ││││││││││││  0x00007f06a7195248:   mov    %eax,0xc(,%r14,8)            ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        ││  │   │ │ │   ││││││││││││  0x00007f06a7195250:   mov    %eax,%esi
                  │        ││  │   │ │ │   │││╰││││││││  0x00007f06a7195252:   jmp    0x00007f06a7194c83
                  │        ││  │   │ │ │   ↘││ ││││││││  0x00007f06a7195257:   mov    %rdi,(%rsp)
                  │        ││  │   │ │ │    ││ ││││││││  0x00007f06a719525b:   mov    %r14,0x8(%rsp)
                  │        ││  │   │ │ │    ││ ││││││││  0x00007f06a7195260:   mov    %edx,%r14d
                  │        ││  │   │ │ │    ││ ││││││││  0x00007f06a7195263:   mov    %ecx,0x50(%rsp)
                  │        ││  │   │ │ │    ││ ││││││││  0x00007f06a7195267:   mov    %eax,%edi
                  │        ││  │   │ │ │    ││ ╰│││││││  0x00007f06a7195269:   jmp    0x00007f06a7194c83           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                  │        ││  │   │ │ │    ││  │││││││                                                            ; - java.lang.String::hashCode@58 (line 2373)
                  │        ││  │   │ │ │    ││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  │        ││  │   │ │ │    ││  │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                  │        │↘  │   │ │ │    ││  │││││││  0x00007f06a719526e:   mov    $0x0,%r8d
   0.00%          │        │   │   │ │ │    ││  ╰││││││  0x00007f06a7195274:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                  │        │   │   │ │ │    ││   ││││││                                                            ; - java.lang.String::equals@-3
                  │        │   │   │ │ │    ││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                  │        │   │   │ │ │    ││   ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   1.00%          ↘        │   │   │ │ │    ││   ││││││  0x00007f06a7195279:   mov    $0x1,%r8d
                           │   │   │ │ │    ││   ││││││  0x00007f06a719527f:   mov    %edi,%r11d
                           │   │   │ │ │    ││   ││││││  0x00007f06a7195282:   mov    0x38(%rsp),%r10
   0.00%                   │   │   │ │ │    ││   ╰│││││  0x00007f06a7195287:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                           │   │   │ │ │    ││    │││││                                                            ; - java.lang.String::equals@-3
                           │   │   │ │ │    ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
                           │   │   │ │ │    ││    │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.48%                   │   ↘   │ │ │    ││    │││││  0x00007f06a719528c:   mov    $0x3,%r8d
                           │       │ │ │    ││    ╰││││  0x00007f06a7195292:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                           │       │ │ │    ││     ││││                                                            ; - java.lang.String::equals@-3
                           │       │ │ │    ││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
                           │       │ │ │    ││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.00%                   │       ↘ │ │    ││     ││││  0x00007f06a7195297:   mov    $0x2,%r8d
   0.42%                   │         │ │    ││     ││││  0x00007f06a719529d:   data16 xchg %ax,%ax
   0.56%                   │         │ │    ││     ╰│││  0x00007f06a71952a0:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                           │         │ │    ││      │││                                                            ; - java.lang.String::equals@-3
                           │         │ │    ││      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                           │         │ │    ││      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.72%                   │         ↘ │    ││      │││  0x00007f06a71952a5:   mov    $0x4,%r8d
                           │           │    ││      ╰││  0x00007f06a71952ab:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                           │           │    ││       ││                                                            ; - java.lang.String::equals@-3
                           │           │    ││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
                           │           │    ││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.24%                   │           ↘    ││       ││  0x00007f06a71952b0:   mov    $0x5,%r8d
                           │                ││       ╰│  0x00007f06a71952b6:   jmp    0x00007f06a7194e4f           ;* unwind (locked if synchronized)
                           │                ││        │                                                            ; - java.lang.String::equals@-3
                           │                ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
                           │                ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                           │                ↘│        │  0x00007f06a71952bb:   mov    %rdi,%r8
                           │                 │        │  0x00007f06a71952be:   mov    %r14,0x8(%rsp)
                           │                 │        │  0x00007f06a71952c3:   mov    %edx,%r14d
                           │                 │        │  0x00007f06a71952c6:   mov    %ecx,0x50(%rsp)
                           │                 │        │  0x00007f06a71952ca:   mov    %eax,%r11d
                           │                 │        │  0x00007f06a71952cd:   mov    0x38(%rsp),%r10
                           │                 │        │  0x00007f06a71952d2:   movzbl 0x10(,%r13,8),%eax           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                           │                 │        │                                                            ; - java.lang.StringLatin1::hashCode@38 (line 190)
                           │                 │        │                                                            ; - java.lang.String::hashCode@27 (line 2365)
                           │                 │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                           │                 │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                           │                 │        │  0x00007f06a71952db:   mov    %r8,(%rsp)
                           │                 │        │  0x00007f06a71952df:   mov    %r11d,%edi
                           │                 │        ╰  0x00007f06a71952e2:   jmp    0x00007f06a719523f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                           │                 │                                                                     ; - java.lang.StringLatin1::hashCode@51 (line 188)
                           │                 │                                                                     ; - java.lang.String::hashCode@27 (line 2365)
                           │                 │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                           │                 │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.03%                   ↘                 │           0x00007f06a71952e7:   mov    %eax,%r11d
   0.02%                                     │           0x00007f06a71952ea:   mov    0x60(%rsp),%rbp
   0.06%                                     │           0x00007f06a71952ef:   add    $0x68,%rsp
                                             │           0x00007f06a71952f3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                             │           0x00007f06a71952fa:   ja     0x00007f06a7195548
   0.02%                                     │           0x00007f06a7195300:   vzeroupper 
   0.01%                                     │           0x00007f06a7195303:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                             │                                                                     ; - java.lang.String::hashCode@58 (line 2373)
                                             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                             │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                                             ↘           0x00007f06a7195304:   mov    $0x6694,%r10
                                                         0x00007f06a719530b:   mov    %ecx,0x50(%rsp)
                                                         0x00007f06a719530f:   mov    %eax,%r11d
                                                         0x00007f06a7195312:   movl   $0xffffffed,0x484(%r15)      ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
                                                         0x00007f06a719531d:   mov    %r10,0x490(%r15)
....................................................................................................
  95.64%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.64%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1021 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  __free_one_page 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.10%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.04%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1047 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%             libjvm.so  xmlStream::write_text 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.88%  <...other 373 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.64%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1021 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  __free_one_page 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.10%     [kernel.kallsyms]  __mod_node_page_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  asm_exc_page_fault 
   0.04%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1047 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%             libjvm.so  xmlStream::write_text 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.88%  <...other 368 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.69%        jvmci, level 4
   3.42%     [kernel.kallsyms]
   0.30%             libjvm.so
   0.29%   libjvmcicompiler.so
   0.21%             libc.so.6
   0.05%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%                [vdso]
   0.00%           c1, level 1
   0.00%                kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:04:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 21.931 ns/op
# Warmup Iteration   2: 21.587 ns/op
# Warmup Iteration   3: 21.345 ns/op
# Warmup Iteration   4: 20.970 ns/op
# Warmup Iteration   5: 21.362 ns/op
Iteration   1: 21.323 ns/op
Iteration   2: 21.410 ns/op
Iteration   3: 21.292 ns/op
Iteration   4: 21.422 ns/op
Iteration   5: 21.728 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  21.435 ±(99.9%) 0.665 ns/op [Average]
  (min, avg, max) = (21.292, 21.435, 21.728), stdev = 0.173
  CI (99.9%): [20.770, 22.101] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 215306 total address lines.
Perf output processed (skipped 77.676 seconds):
 Column 1: cycles (50070 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1036 

                                                                                                 # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                                                 #           [sp+0x20]  (sp of caller)
                                                                                                 0x00007ff12b190c00:   mov    0x8(%rsi),%r10d
                                                                                                 0x00007ff12b190c04:   movabs $0x7ff0a7000000,%r12
                                                                                                 0x00007ff12b190c0e:   add    %r12,%r10
                                                                                                 0x00007ff12b190c11:   xor    %r12,%r12
                                                                                                 0x00007ff12b190c14:   cmp    %r10,%rax
                                                                                                 0x00007ff12b190c17:   jne    0x00007ff12aaf9080           ;   {runtime_call ic_miss_stub}
                                                                                                 0x00007ff12b190c1d:   data16 xchg %ax,%ax
                                                                                               [Verified Entry Point]
   0.17%                                                                                         0x00007ff12b190c20:   mov    %eax,-0x14000(%rsp)
   3.68%                                                                                         0x00007ff12b190c27:   sub    $0x18,%rsp
   0.01%                                                                                         0x00007ff12b190c2b:   nop
   0.13%                                                                                         0x00007ff12b190c2c:   cmpl   $0x0,0x20(%r15)
   0.47%                                                                                         0x00007ff12b190c34:   jne    0x00007ff12b191aa3
   3.16%                                                                                         0x00007ff12b190c3a:   mov    %rbp,0x10(%rsp)
   0.00%                                                                                         0x00007ff12b190c3f:   mov    %rdx,%rbp                    ; ImmutableOopMap {rbp=Oop }
                                                                                                                                                           ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@0 (line 133)
   0.16%                                                                                         0x00007ff12b190c42:   mov    0xc(%rbp),%r10d              ; implicit exception: dispatches to 0x00007ff12b191ac7
  10.41%                                                                                         0x00007ff12b190c46:   movsbl 0x10(%rbp),%edi              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.String::isLatin1@7 (line 4817)
                                                                                                                                                           ; - java.lang.String::hashCode@17 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.02%                                                                                         0x00007ff12b190c4a:   mov    0x14(%rbp),%r13d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.String::hashCode@24 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   1.92%                                                                                         0x00007ff12b190c4e:   mov    %r13d,%r14d
                                                                                                 0x00007ff12b190c51:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
                                                                                                                                                           ; - java.lang.String::equals@-3
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
   3.66%                                                                                         0x00007ff12b190c55:   test   %r10d,%r10d
          ╭                                                                                      0x00007ff12b190c58:   je     0x00007ff12b190fd1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                                                ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.13%  │                                    ↗ ↗                                               0x00007ff12b190c5e:   cmp    $0x4c5f9e8,%r10d
          │╭                                   │ │                                               0x00007ff12b190c65:   jge    0x00007ff12b190db8
   0.23%  ││                                   │ │                                               0x00007ff12b190c6b:   cmp    $0x14234,%r10d
          ││╭                                  │ │                                               0x00007ff12b190c72:   jge    0x00007ff12b190d6b
   0.99%  │││                                  │ │                                               0x00007ff12b190c78:   cmp    $0xfce7bd80,%r10d
   0.51%  │││                                  │ │                                               0x00007ff12b190c7f:   nop
          │││╭                                 │ │                                               0x00007ff12b190c80:   jge    0x00007ff12b190d31
   0.17%  ││││                                 │ │                                               0x00007ff12b190c86:   cmp    $0xa2a1be40,%r10d
          ││││╭                                │ │                                               0x00007ff12b190c8d:   jge    0x00007ff12b190cb2
   0.03%  │││││                                │ │                                               0x00007ff12b190c93:   cmp    $0x90663ad4,%r10d
          │││││                                │ │                                               0x00007ff12b190c9a:   je     0x00007ff12b1918dc
   0.23%  │││││                                │ │                                               0x00007ff12b190ca0:   cmp    $0x9ef434af,%r10d
          │││││╭                               │ │                                               0x00007ff12b190ca7:   je     0x00007ff12b1910d4
          ││││││                               │ │                                               0x00007ff12b190cad:   jmp    0x00007ff12b1918dc
   0.27%  ││││↘│                               │ │                                               0x00007ff12b190cb2:   cmp    $0xeb2c8617,%r10d
          ││││ │                               │ │                                               0x00007ff12b190cb9:   jg     0x00007ff12b1918dc
   0.21%  ││││ │                               │ │                                               0x00007ff12b190cbf:   cmp    $0xeb2c8617,%r10d
          ││││ │╭                              │ │                                               0x00007ff12b190cc6:   jge    0x00007ff12b191329
          ││││ ││                              │ │                                               0x00007ff12b190ccc:   cmp    $0xc517aa2b,%r10d
          ││││ ││╭                             │ │                                               0x00007ff12b190cd3:   jge    0x00007ff12b190d12
          ││││ │││                             │ │                                               0x00007ff12b190cd9:   cmp    $0xba6eabe2,%r10d
          ││││ │││                             │ │                                               0x00007ff12b190ce0:   jg     0x00007ff12b1918dc
          ││││ │││                             │ │                                               0x00007ff12b190ce6:   cmp    $0xba6eabe2,%r10d
          ││││ │││                             │ │                                               0x00007ff12b190ced:   jge    0x00007ff12b1918dc
          ││││ │││                             │ │                                               0x00007ff12b190cf3:   cmp    $0xa2a1be40,%r10d
          ││││ │││                             │ │                                               0x00007ff12b190cfa:   je     0x00007ff12b1918dc
          ││││ │││                             │ │                                               0x00007ff12b190d00:   cmp    $0xaf2874e8,%r10d
          ││││ │││                             │ │                                               0x00007ff12b190d07:   je     0x00007ff12b1918dc
          ││││ │││                             │ │                                               0x00007ff12b190d0d:   jmp    0x00007ff12b1918dc
          ││││ ││↘                             │ │                                               0x00007ff12b190d12:   cmp    $0xc517aa2b,%r10d            ;   {no_reloc}
          ││││ ││                              │ │                                               0x00007ff12b190d19:   je     0x00007ff12b1918dc
          ││││ ││                              │ │                                               0x00007ff12b190d1f:   cmp    $0xd91961ec,%r10d
          ││││ ││                              │ │                                               0x00007ff12b190d26:   je     0x00007ff12b1918dc
          ││││ ││                              │ │                                               0x00007ff12b190d2c:   jmp    0x00007ff12b1918dc
   0.01%  │││↘ ││                              │ │                                               0x00007ff12b190d31:   cmp    $0x103b4,%r10d
          │││  ││                              │ │                                               0x00007ff12b190d38:   jg     0x00007ff12b1918dc
   0.54%  │││  ││                              │ │                                               0x00007ff12b190d3e:   cmp    $0x103b4,%r10d
          │││  ││ ╭                            │ │                                               0x00007ff12b190d45:   jge    0x00007ff12b191449
   0.08%  │││  ││ │                            │ │                                               0x00007ff12b190d4b:   cmp    $0xfce7bd80,%r10d
          │││  ││ │                            │ │                                               0x00007ff12b190d52:   je     0x00007ff12b1918dc
   0.03%  │││  ││ │                            │ │                                               0x00007ff12b190d58:   cmp    $0x10260,%r10d
   0.00%  │││  ││ │                            │ │                                               0x00007ff12b190d5f:   nop
   0.22%  │││  ││ │╭                           │ │                                               0x00007ff12b190d60:   je     0x00007ff12b1915e5
          │││  ││ ││                           │ │                                               0x00007ff12b190d66:   jmp    0x00007ff12b1918dc
   0.37%  ││↘  ││ ││                           │ │                                               0x00007ff12b190d6b:   cmp    $0x1f3140,%r10d
          ││   ││ ││╭                          │ │                                               0x00007ff12b190d72:   jge    0x00007ff12b190d98
   0.52%  ││   ││ │││                          │ │                                               0x00007ff12b190d78:   cmp    $0x14234,%r10d
          ││   ││ │││                          │ │                                               0x00007ff12b190d7f:   nop
   0.01%  ││   ││ │││╭                         │ │                                               0x00007ff12b190d80:   je     0x00007ff12b1913b4
   0.18%  ││   ││ ││││                         │ │                                               0x00007ff12b190d86:   cmp    $0x14b03,%r10d
          ││   ││ ││││╭                        │ │                                               0x00007ff12b190d8d:   je     0x00007ff12b19129b
          ││   ││ │││││                        │ │                                               0x00007ff12b190d93:   jmp    0x00007ff12b1918dc
   0.67%  ││   ││ ││↘││                        │ │                                               0x00007ff12b190d98:   cmp    $0x1f3140,%r10d
          ││   ││ ││ ││                        │ │                                               0x00007ff12b190d9f:   nop
          ││   ││ ││ ││                        │ │                                               0x00007ff12b190da0:   je     0x00007ff12b1918dc
          ││   ││ ││ ││                        │ │                                               0x00007ff12b190da6:   cmp    $0x462300d,%r10d
          ││   ││ ││ ││╭                       │ │                                               0x00007ff12b190dad:   je     0x00007ff12b191167
          ││   ││ ││ │││                       │ │                                               0x00007ff12b190db3:   jmp    0x00007ff12b1918dc
   0.79%  │↘   ││ ││ │││                       │ │                                               0x00007ff12b190db8:   cmp    $0x2d2d772a,%r10d
          │    ││ ││ │││                       │ │                                               0x00007ff12b190dbf:   nop
   1.18%  │    ││ ││ │││╭                      │ │                                               0x00007ff12b190dc0:   jge    0x00007ff12b190e4b
          │    ││ ││ ││││                      │ │                                               0x00007ff12b190dc6:   cmp    $0x23c6acdf,%r10d
          │    ││ ││ ││││                      │ │                                               0x00007ff12b190dcd:   jg     0x00007ff12b1918dc
   0.34%  │    ││ ││ ││││                      │ │                                               0x00007ff12b190dd3:   cmp    $0x23c6acdf,%r10d
          │    ││ ││ ││││╭                     │ │                                               0x00007ff12b190dda:   jge    0x00007ff12b191046
   0.03%  │    ││ ││ │││││                     │ │                                               0x00007ff12b190de0:   cmp    $0xe6d87d7,%r10d
          │    ││ ││ │││││╭                    │ │                                               0x00007ff12b190de7:   jge    0x00007ff12b190e2b
   0.71%  │    ││ ││ ││││││                    │ │                                               0x00007ff12b190ded:   cmp    $0x64b8f52,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007ff12b190df4:   jg     0x00007ff12b1918dc
          │    ││ ││ ││││││                    │ │                                               0x00007ff12b190dfa:   cmp    $0x64b8f52,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007ff12b190e01:   jge    0x00007ff12b1918dc
   0.01%  │    ││ ││ ││││││                    │ │                                               0x00007ff12b190e07:   cmp    $0x4c5f9e8,%r10d
          │    ││ ││ ││││││                    │ │                                               0x00007ff12b190e0e:   je     0x00007ff12b1918dc
   0.01%  │    ││ ││ ││││││                    │ │                                               0x00007ff12b190e14:   cmp    $0x4c6443f,%r10d             ;   {no_reloc}
   0.31%  │    ││ ││ ││││││                    │ │                                               0x00007ff12b190e1b:   nopl   0x0(%rax,%rax,1)
          │    ││ ││ ││││││╭                   │ │                                               0x00007ff12b190e20:   je     0x00007ff12b19155c
          │    ││ ││ │││││││                   │ │                                               0x00007ff12b190e26:   jmp    0x00007ff12b1918dc
   0.32%  │    ││ ││ │││││↘│                   │ │                                               0x00007ff12b190e2b:   cmp    $0xe6d87d7,%r10d
          │    ││ ││ │││││ │                   │ │                                               0x00007ff12b190e32:   je     0x00007ff12b1918dc
          │    ││ ││ │││││ │                   │ │                                               0x00007ff12b190e38:   cmp    $0x1b604cf5,%r10d
   0.00%  │    ││ ││ │││││ │                   │ │                                               0x00007ff12b190e3f:   nop
          │    ││ ││ │││││ │╭                  │ │                                               0x00007ff12b190e40:   je     0x00007ff12b1914d4
          │    ││ ││ │││││ ││                  │ │                                               0x00007ff12b190e46:   jmp    0x00007ff12b1918dc
   0.24%  │    ││ ││ │││↘│ ││                  │ │                                               0x00007ff12b190e4b:   cmp    $0x356e5289,%r10d
          │    ││ ││ │││ │ ││                  │ │                                               0x00007ff12b190e52:   jg     0x00007ff12b1918dc
   0.00%  │    ││ ││ │││ │ ││                  │ │                                               0x00007ff12b190e58:   cmp    $0x356e5289,%r10d
          │    ││ ││ │││ │ ││                  │ │                                               0x00007ff12b190e5f:   nop
   0.76%  │    ││ ││ │││ │ ││╭                 │ │                                               0x00007ff12b190e60:   jge    0x00007ff12b1911f4
          │    ││ ││ │││ │ │││                 │ │                                               0x00007ff12b190e66:   cmp    $0x2d2d772a,%r10d
          │    ││ ││ │││ │ │││                 │ │                                               0x00007ff12b190e6d:   je     0x00007ff12b1918dc
          │    ││ ││ │││ │ │││                 │ │                                               0x00007ff12b190e73:   cmp    $0x33eb4d91,%r10d
          │    ││ ││ │││ │ │││╭                │ │                                               0x00007ff12b190e7a:   je     0x00007ff12b190e85
          │    ││ ││ │││ │ ││││                │ │                                               0x00007ff12b190e80:   jmp    0x00007ff12b1918dc
          │    ││ ││ │││ │ │││↘                │ │                                               0x00007ff12b190e85:   movabs $0x7fed350c8,%rsi            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007fed350c8})}
   0.37%  │    ││ ││ │││ │ │││                 │ │                                               0x00007ff12b190e8f:   cmp    %rbp,%rsi
          │    ││ ││ │││ │ │││ ╭               │ │                                               0x00007ff12b190e92:   je     0x00007ff12b1916bb           ;* unwind (locked if synchronized)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - java.lang.String::equals@-3
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190e98:   nopl   0x0(%rax,%rax,1)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ea0:   test   %dil,%dil
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ea3:   jne    0x00007ff12b191985           ; ImmutableOopMap {rbp=Oop r14=Oop }
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ea9:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191aed
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190eb2:   jne    0x00007ff12b191867
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190eb8:   movabs $0x7fed350e0,%rsi            ;   {oop([B{0x00000007fed350e0})}
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ec2:   mov    %r14,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ec5:   mov    $0xa,%edx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190eca:   mov    $0x10,%rax
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ed1:   mov    $0x10,%rcx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ed8:   add    %rax,%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190edb:   add    %rcx,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ede:   mov    $0x1,%r10d
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ee4:   mov    (%rsi),%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ee7:   xor    (%rdi),%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190eea:   mov    0x2(%rsi),%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190eee:   xor    0x2(%rdi),%rsi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ef2:   xor    %rdi,%rdi
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ef5:   or     %rsi,%rdx
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190ef8:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - java.lang.String::equals@-3
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190efc:   nopl   0x0(%rax)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190f00:   test   %r10d,%r10d
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190f03:   je     0x00007ff12b191a45           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
          │    ││ ││ │││ │ │││ │               │ │                                               0x00007ff12b190f09:   mov    $0x3,%r10d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │               │ │                                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
   3.82%  │    ││ ││ │││ │ │││ │               │ │    ↗ ↗ ↗ ↗   ↗ ↗ ↗ ↗ ↗ ↗ ↗      ↗↗↗↗↗↗↗↗↗↗↗↗  0x00007ff12b190f0f:   cmp    $0x6,%r10d
          │    ││ ││ │││ │ │││ │╭              │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f13:   jge    0x00007ff12b190f65
          │    ││ ││ │││ │ │││ ││              │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f19:   cmp    $0x3,%r10d
   0.00%  │    ││ ││ │││ │ │││ ││              │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f1d:   data16 xchg %ax,%ax
   0.00%  │    ││ ││ │││ │ │││ ││╭             │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f20:   jge    0x00007ff12b190f4b
   0.91%  │    ││ ││ │││ │ │││ │││             │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f26:   cmp    $0x2,%r10d
          │    ││ ││ │││ │ │││ │││╭            │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f2a:   jge    0x00007ff12b191032
          │    ││ ││ │││ │ │││ ││││            │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f30:   cmp    $0x0,%r10d
          │    ││ ││ │││ │ │││ ││││╭           │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f34:   je     0x00007ff12b19102b
   0.00%  │    ││ ││ │││ │ │││ │││││           │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f3a:   cmp    $0x1,%r10d
          │    ││ ││ │││ │ │││ │││││           │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f3e:   xchg   %ax,%ax
   0.30%  │    ││ ││ │││ │ │││ │││││╭          │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f40:   je     0x00007ff12b19103c
          │    ││ ││ │││ │ │││ ││││││          │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f46:   jmp    0x00007ff12b191952
   0.98%  │    ││ ││ │││ │ │││ ││↘│││          │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f4b:   cmp    $0x5,%r10d
          │    ││ ││ │││ │ │││ ││ │││╭         │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f4f:   jge    0x00007ff12b19169c
          │    ││ ││ │││ │ │││ ││ ││││         │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f55:   cmp    $0x3,%r10d
          │    ││ ││ │││ │ │││ ││ ││││╭        │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f59:   je     0x00007ff12b190fae
          │    ││ ││ │││ │ │││ ││ │││││        │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f5f:   nop
          │    ││ ││ │││ │ │││ ││ │││││╭       │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f60:   jmp    0x00007ff12b1916a6
   1.85%  │    ││ ││ │││ │ │││ │↘ ││││││       │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f65:   cmp    $0x9,%r10d
          │    ││ ││ │││ │ │││ │  ││││││╭      │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f69:   jge    0x00007ff12b190f8b
          │    ││ ││ │││ │ │││ │  │││││││      │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f6f:   cmp    $0x8,%r10d
          │    ││ ││ │││ │ │││ │  │││││││╭     │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f73:   jge    0x00007ff12b191291
          │    ││ ││ │││ │ │││ │  ││││││││     │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f79:   cmp    $0x6,%r10d
          │    ││ ││ │││ │ │││ │  ││││││││     │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f7d:   data16 xchg %ax,%ax
   0.62%  │    ││ ││ │││ │ │││ │  ││││││││╭    │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f80:   je     0x00007ff12b191692
          │    ││ ││ │││ │ │││ │  │││││││││╭   │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f86:   jmp    0x00007ff12b191287
   0.93%  │    ││ ││ │││ │ │││ │  ││││││↘│││   │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f8b:   cmp    $0xb,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ │││   │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f8f:   jg     0x00007ff12b191952
   0.00%  │    ││ ││ │││ │ │││ │  ││││││ │││   │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f95:   cmp    $0xb,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ │││╭  │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f99:   jge    0x00007ff12b191674
          │    ││ ││ │││ │ │││ │  ││││││ ││││  │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190f9f:   cmp    $0x9,%r10d
          │    ││ ││ │││ │ │││ │  ││││││ ││││╭ │ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190fa3:   je     0x00007ff12b19167e
          │    ││ ││ │││ │ │││ │  ││││││ │││││╭│ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190fa9:   jmp    0x00007ff12b191688           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││││ │││││││ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
   0.35%  │    ││ ││ │││ │ │││ │  ││││↘│ │││││││ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││  0x00007ff12b190fae:   mov    $0x4,%eax                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │    │ │ │ │   │ │ │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   3.51%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ │↗↗↗ │ │ │ │↗↗ │ │ │ │ │ │ │↗↗↗↗↗↗││││││││││││  0x00007ff12b190fb3:   mov    0x10(%rsp),%rbp              ;   {no_reloc}
   0.36%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fb8:   add    $0x18,%rsp
   0.00%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fbc:   nopl   0x0(%rax)
   0.37%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fc7:   ja     0x00007ff12b191ab3
   4.02%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fcd:   vzeroupper 
   3.78%  │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fd0:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@6 (line 2364)
          │    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ↘    ││ ││ │││ │ │││ │  ││││ │ │││││││ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fd1:   cmpb   $0x0,0x11(%rbp)
               ││ ││ │││ │ │││ │  ││││ │ ││││││╰ ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fd5:   jne    0x00007ff12b190c5e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@13 (line 2364)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fdb:   nopl   0x0(%rax,%rax,1)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fe0:   test   %dil,%dil
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fe3:   jne    0x00007ff12b1917e2           ; ImmutableOopMap {rbp=Oop r13=NarrowOop r14=Oop }
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@0 (line 133)
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190fe9:   mov    0xc(,%r13,8),%edx            ; implicit exception: dispatches to 0x00007ff12b191b10
               ││ ││ │││ │ │││ │  ││││ │ ││││││  ││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190ff1:   cmp    $0x1,%edx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ ╭││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190ff4:   je     0x00007ff12b191734
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190ffa:   cmp    $0x0,%edx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b190ffd:   data16 xchg %ax,%ax
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191000:   je     0x00007ff12b191a74           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@2 (line 188)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191006:   mov    %r14,%rsi
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191009:   lea    0x10(%rsi),%rsi              ;* unwind (locked if synchronized)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - jdk.internal.util.ArraysSupport::vectorizedHashCode@-3
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@48 (line 191)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19100d:   mov    $0x0,%ecx
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191012:   call   0x00007ff12ad0a920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.vectorizedHashCodeBoolean&gt;}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191017:   nop                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.StringLatin1::hashCode@51 (line 188)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@27 (line 2365)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191018:   test   %eax,%eax
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19101a:   je     0x00007ff12b191a80           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@42 (line 2367)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191020:   mov    %eax,0xc(%rbp)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@55 (line 2370)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │││││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191023:   mov    %eax,%r10d
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │╰│││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191026:   jmp    0x00007ff12b190c5e           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │ │││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::hashCode@58 (line 2373)
               ││ ││ │││ │ │││ │  ││││ │ ││││││ │ │││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││ │ │││ │  │↘││ │ ││││││ │ │││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19102b:   mov    $0x1,%eax
               ││ ││ │││ │ │││ │  │ ││ │ ││││││ │ ╰││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191030:   jmp    0x00007ff12b190fb3
   0.00%       ││ ││ │││ │ │││ │  ↘ ││ │ ││││││ │  ││ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191032:   mov    $0x3,%eax
               ││ ││ │││ │ │││ │    ││ │ ││││││ │  ╰│ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191037:   jmp    0x00007ff12b190fb3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││ │ │││ │    ││ │ ││││││ │   │ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
               ││ ││ │││ │ │││ │    ↘│ │ ││││││ │   │ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19103c:   mov    $0x2,%eax
               ││ ││ │││ │ │││ │     │ │ ││││││ │   ╰ │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191041:   jmp    0x00007ff12b190fb3
   0.23%       ││ ││ │││ ↘ │││ │     │ │ ││││││ │     │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191046:   movabs $0x7fed35060,%rsi            ;   {oop(&quot;BICYCLE&quot;{0x00000007fed35060})}
   0.10%       ││ ││ │││   │││ │     │ │ ││││││ │     │ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191050:   cmp    %rbp,%rsi
               ││ ││ │││   │││ │     │ │ ││││││ │    ╭│ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191053:   je     0x00007ff12b1916b0           ;* unwind (locked if synchronized)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191059:   nopl   0x0(%rax)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191060:   test   %dil,%dil
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191063:   jne    0x00007ff12b19185b           ; ImmutableOopMap {rbp=Oop r14=Oop }
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191069:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191b33
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191072:   jne    0x00007ff12b191745
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191078:   movabs $0x7fed35078,%rsi            ;   {oop([B{0x00000007fed35078})}
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191082:   mov    %r14,%rdi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191085:   mov    $0x7,%edx
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19108a:   mov    $0x10,%rax
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191091:   mov    $0x10,%rcx
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191098:   add    %rax,%rsi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19109b:   add    %rcx,%rdi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19109e:   mov    $0x1,%r10d
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910a4:   mov    (%rsi),%edx
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910a6:   xor    (%rdi),%edx
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910a8:   mov    0x3(%rsi),%esi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910ab:   xor    0x3(%rdi),%esi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910ae:   xor    %rdi,%rdi
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910b1:   or     %rsi,%rdx
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910b4:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910b8:   nopl   0x0(%rax,%rax,1)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910c0:   test   %r10d,%r10d
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910c3:   je     0x00007ff12b191788           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
               ││ ││ │││   │││ │     │ │ ││││││ │    ││ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910c9:   mov    $0x1,%r10d
               ││ ││ │││   │││ │     │ │ ││││││ │    │╰ │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910cf:   jmp    0x00007ff12b190f0f
   0.06%       ↘│ ││ │││   │││ │     │ │ ││││││ │    │  │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910d4:   movabs $0x7fed35090,%rsi            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007fed35090})}
   0.08%        │ ││ │││   │││ │     │ │ ││││││ │    │  │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910de:   xchg   %ax,%ax
   0.02%        │ ││ │││   │││ │     │ │ ││││││ │    │  │ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910e0:   cmp    %rbp,%rsi
                │ ││ │││   │││ │     │ │ ││││││ │    │ ╭│ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910e3:   je     0x00007ff12b1916d1
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910e9:   test   %dil,%dil
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910ec:   jne    0x00007ff12b1919d7           ;* unwind (locked if synchronized)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910f2:   data16 nopw 0x0(%rax,%rax,1)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1910fc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191100:   cmpl   $0x10,0xc(,%r13,8)           ; implicit exception: dispatches to 0x00007ff12b191b56
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191109:   jne    0x00007ff12b19182c
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19110f:   movabs $0x7fed350a8,%rsi            ;   {oop([B{0x00000007fed350a8})}
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191119:   mov    %r14,%rdi
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19111c:   mov    $0x10,%edx
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191121:   mov    $0x10,%rax
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191128:   mov    $0x10,%rcx
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19112f:   add    %rax,%rsi
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191132:   add    %rcx,%rdi
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191135:   mov    $0x1,%r10d
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19113b:   vmovdqu (%rsi),%xmm0
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19113f:   vmovdqu (%rdi),%xmm1
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191143:   vpxor  %xmm1,%xmm0,%xmm0
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191147:   xor    %rsi,%rsi
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19114a:   vptest %xmm0,%xmm0
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19114f:   cmovne %esi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191153:   test   %r10d,%r10d
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191156:   je     0x00007ff12b1918f4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
                │ ││ │││   │││ │     │ │ ││││││ │    │ ││ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19115c:   mov    $0x2,%r10d
                │ ││ │││   │││ │     │ │ ││││││ │    │ │╰ │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191162:   jmp    0x00007ff12b190f0f
   0.27%        │ ││ ││↘   │││ │     │ │ ││││││ │    │ │  │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191167:   movabs $0x7fed35030,%rsi            ;   {oop(&quot;MOPED&quot;{0x00000007fed35030})}
                │ ││ ││    │││ │     │ │ ││││││ │    │ │  │ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191171:   cmp    %rbp,%rsi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ╭│ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191174:   je     0x00007ff12b1916c6           ;* unwind (locked if synchronized)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19117a:   nopw   0x0(%rax,%rax,1)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191180:   test   %dil,%dil
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191183:   jne    0x00007ff12b191814           ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191189:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191b79
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191192:   jne    0x00007ff12b191808
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191198:   movabs $0x7fed35048,%rsi            ;   {oop([B{0x00000007fed35048})}
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911a2:   mov    %r14,%rdi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911a5:   mov    $0x5,%edx
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911aa:   mov    $0x10,%rax
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911b1:   mov    $0x10,%rcx
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911b8:   add    %rax,%rsi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911bb:   add    %rcx,%rdi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911be:   mov    $0x1,%r10d
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911c4:   mov    (%rsi),%edx
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911c6:   xor    (%rdi),%edx
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911c8:   mov    0x1(%rsi),%esi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911cb:   xor    0x1(%rdi),%esi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911ce:   xor    %rdi,%rdi
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911d1:   or     %rsi,%rdx
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911d4:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911d8:   nopl   0x0(%rax,%rax,1)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911e0:   test   %r10d,%r10d
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911e3:   je     0x00007ff12b1918b9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ ││ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911e9:   mov    $0x0,%r10d
                │ ││ ││    │││ │     │ │ ││││││ │    │ │ │╰ │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911ef:   jmp    0x00007ff12b190f0f
   0.22%        │ ││ ││    ││↘ │     │ │ ││││││ │    │ │ │  │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911f4:   movabs $0x7fed35190,%rsi            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007fed35190})}
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │  │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1911fe:   xchg   %ax,%ax
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │  │││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191200:   cmp    %rbp,%rsi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ╭│││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191203:   je     0x00007ff12b1916dc
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191209:   test   %dil,%dil
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19120c:   jne    0x00007ff12b19176d           ;* unwind (locked if synchronized)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191212:   data16 nopw 0x0(%rax,%rax,1)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19121c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191220:   cmpl   $0xa,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191b9c
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191229:   jne    0x00007ff12b19177f
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19122f:   movabs $0x7fed351a8,%rsi            ;   {oop([B{0x00000007fed351a8})}
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191239:   mov    %r14,%rdi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19123c:   mov    $0xa,%edx
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191241:   mov    $0x10,%rax
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191248:   mov    $0x10,%rcx
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19124f:   add    %rax,%rsi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191252:   add    %rcx,%rdi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191255:   mov    $0x1,%r10d
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19125b:   mov    (%rsi),%rdx
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19125e:   xor    (%rdi),%rdx
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191261:   mov    0x2(%rsi),%rsi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191265:   xor    0x2(%rdi),%rsi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191269:   xor    %rdi,%rdi
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19126c:   or     %rsi,%rdx
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19126f:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191273:   test   %r10d,%r10d
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191276:   je     0x00007ff12b1919b4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@324 (line 135)
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ ││││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19127c:   mov    $0x7,%r10d
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ │╰││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191282:   jmp    0x00007ff12b190f0f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │ ││││││ │    │ │ │ │ ││ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
                │ ││ ││    ││  │     │ │ ││↘│││ │    │ │ │ │ ││ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191287:   mov    $0x8,%eax
                │ ││ ││    ││  │     │ │ ││ │││ │    │ │ │ │ ╰│ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19128c:   jmp    0x00007ff12b190fb3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                │ ││ ││    ││  │     │ │ ││ │││ │    │ │ │ │  │ │ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   0.50%        │ ││ ││    ││  │     │ │ ↘│ │││ │    │ │ │ │  │ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191291:   mov    $0x9,%eax
                │ ││ ││    ││  │     │ │  │ │││ │    │ │ │ │  ╰ │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191296:   jmp    0x00007ff12b190fb3
   0.14%        │ ││ │↘    ││  │     │ │  │ │││ │    │ │ │ │    │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19129b:   movabs $0x7fed35160,%rsi            ;   {oop(&quot;VAN&quot;{0x00000007fed35160})}
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │    │ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912a5:   cmp    %rbp,%rsi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ╭│ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912a8:   je     0x00007ff12b191729
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912ae:   test   %dil,%dil
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912b1:   jne    0x00007ff12b1917b6           ;* unwind (locked if synchronized)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912b7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbp=Oop r14=Oop }
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912c0:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191bbf
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912c9:   jne    0x00007ff12b1917ad
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912cf:   movabs $0x7fed35178,%rsi            ;   {oop([B{0x00000007fed35178})}
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912d9:   mov    %r14,%rdi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912dc:   mov    $0x3,%edx
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912e1:   mov    $0x10,%rax
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912e8:   mov    $0x10,%rcx
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912ef:   add    %rax,%rsi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912f2:   add    %rcx,%rdi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912f5:   mov    $0x1,%r10d
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912fb:   movzwq (%rsi),%rdx
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b1912ff:   xor    (%rdi),%dx
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191302:   movzwq 0x1(%rsi),%rsi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191307:   xor    0x1(%rdi),%si
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19130b:   xor    %rdi,%rdi
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19130e:   or     %rsi,%rdx
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191311:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191315:   test   %r10d,%r10d
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191318:   je     0x00007ff12b191896           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@308 (line 135)
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   ││ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b19131e:   mov    $0x6,%r10d
                │ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │╰ │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191324:   jmp    0x00007ff12b190f0f
   0.31%        ↘ ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │  │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191329:   movabs $0x7fed35228,%rsi            ;   {oop(&quot;TRACTOR&quot;{0x00000007fed35228})}
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │  │ │ │ │ │ │││││││││││││││││││  0x00007ff12b191333:   cmp    %rbp,%rsi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ╭│ │ │ │ │ │││││││││││││││││││  0x00007ff12b191336:   je     0x00007ff12b19171e           ;* unwind (locked if synchronized)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19133c:   nopl   0x0(%rax)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191340:   test   %dil,%dil
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191343:   jne    0x00007ff12b191a20           ; ImmutableOopMap {rbp=Oop r14=Oop }
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191349:   cmpl   $0x7,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191be2
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191352:   jne    0x00007ff12b19193a
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191358:   movabs $0x7fed35240,%rsi            ;   {oop([B{0x00000007fed35240})}
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191362:   mov    %r14,%rdi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191365:   mov    $0x7,%edx
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19136a:   mov    $0x10,%rax
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191371:   mov    $0x10,%rcx
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191378:   add    %rax,%rsi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19137b:   add    %rcx,%rdi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19137e:   mov    $0x1,%r10d
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191384:   mov    (%rsi),%edx
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191386:   xor    (%rdi),%edx
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191388:   mov    0x3(%rsi),%esi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19138b:   xor    0x3(%rdi),%esi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b19138e:   xor    %rdi,%rdi
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191391:   or     %rsi,%rdx
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191394:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b191398:   nopl   0x0(%rax,%rax,1)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b1913a0:   test   %r10d,%r10d
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b1913a3:   je     0x00007ff12b191917           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@372 (line 135)
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ ││ │ │ │ │ │││││││││││││││││││  0x00007ff12b1913a9:   mov    $0xa,%r10d
                  ││ │     ││  │     │ │  │ │││ │    │ │ │ │   │ │╰ │ │ │ │ │││││││││││││││││││  0x00007ff12b1913af:   jmp    0x00007ff12b190f0f
                  ││ ↘     ││  │     │ │  │ │││ │    │ │ │ │   │ │  │ │ │ │ │││││││││││││││││││  0x00007ff12b1913b4:   movabs $0x7fed35130,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007fed35130})}
   0.27%          ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │  │ │ │ │ │││││││││││││││││││  0x00007ff12b1913be:   xchg   %ax,%ax
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │  │ │ │ │ │││││││││││││││││││  0x00007ff12b1913c0:   cmp    %rbp,%rsi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ╭│ │ │ │ │││││││││││││││││││  0x00007ff12b1913c3:   je     0x00007ff12b191713
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913c9:   test   %dil,%dil
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913cc:   jne    0x00007ff12b191a14           ;* unwind (locked if synchronized)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913d2:   data16 nopw 0x0(%rax,%rax,1)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913e0:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191c05
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913e9:   jne    0x00007ff12b191a68
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913ef:   movabs $0x7fed35148,%rsi            ;   {oop([B{0x00000007fed35148})}
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913f9:   mov    %r14,%rdi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b1913fc:   mov    $0x3,%edx
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191401:   mov    $0x10,%rax
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191408:   mov    $0x10,%rcx
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19140f:   add    %rax,%rsi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191412:   add    %rcx,%rdi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191415:   mov    $0x1,%r10d
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19141b:   movzwq (%rsi),%rdx
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19141f:   xor    (%rdi),%dx
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191422:   movzwq 0x1(%rsi),%rsi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191427:   xor    0x1(%rdi),%si
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19142b:   xor    %rdi,%rdi
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19142e:   or     %rsi,%rdx
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191431:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191435:   test   %r10d,%r10d
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b191438:   je     0x00007ff12b191991           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ ││ │ │ │ │││││││││││││││││││  0x00007ff12b19143e:   mov    $0x5,%r10d
                  ││       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │╰ │ │ │ │││││││││││││││││││  0x00007ff12b191444:   jmp    0x00007ff12b190f0f
   0.28%          ↘│       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │  │ │ │ │││││││││││││││││││  0x00007ff12b191449:   movabs $0x7fed35100,%rsi            ;   {oop(&quot;CAR&quot;{0x00000007fed35100})}
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │  │ │ │ │││││││││││││││││││  0x00007ff12b191453:   cmp    %rbp,%rsi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ╭│ │ │ │││││││││││││││││││  0x00007ff12b191456:   je     0x00007ff12b1916fd           ;* unwind (locked if synchronized)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b19145c:   nopl   0x0(%rax)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191460:   test   %dil,%dil
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191463:   jne    0x00007ff12b1918e8           ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191469:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191c28
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191472:   jne    0x00007ff12b191a08
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191478:   movabs $0x7fed35118,%rsi            ;   {oop([B{0x00000007fed35118})}
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191482:   mov    %r14,%rdi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191485:   mov    $0x3,%edx
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b19148a:   mov    $0x10,%rax
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191491:   mov    $0x10,%rcx
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b191498:   add    %rax,%rsi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b19149b:   add    %rcx,%rdi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b19149e:   mov    $0x1,%r10d
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914a4:   movzwq (%rsi),%rdx
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914a8:   xor    (%rdi),%dx
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914ab:   movzwq 0x1(%rsi),%rsi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914b0:   xor    0x1(%rdi),%si
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914b4:   xor    %rdi,%rdi
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914b7:   or     %rsi,%rdx
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914ba:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914be:   xchg   %ax,%ax
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914c0:   test   %r10d,%r10d
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914c3:   je     0x00007ff12b191838           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ ││ │ │ │││││││││││││││││││  0x00007ff12b1914c9:   mov    $0x4,%r10d
                   │       ││  │     │ │  │ │││ │    │ │ │ │   │ │ │ │╰ │ │ │││││││││││││││││││  0x00007ff12b1914cf:   jmp    0x00007ff12b190f0f
   0.46%           │       │↘  │     │ │  │ │││ │    │ │ │ │   │ │ │ │  │ │ │││││││││││││││││││  0x00007ff12b1914d4:   movabs $0x7fed35258,%rsi            ;   {oop(&quot;MONORAIL&quot;{0x00000007fed35258})}
   0.00%           │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │  │ │ │││││││││││││││││││  0x00007ff12b1914de:   xchg   %ax,%ax
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │  │ │ │││││││││││││││││││  0x00007ff12b1914e0:   cmp    %rbp,%rsi
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ╭│ │ │││││││││││││││││││  0x00007ff12b1914e3:   je     0x00007ff12b191708
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b1914e9:   test   %dil,%dil
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b1914ec:   jne    0x00007ff12b191975           ;* unwind (locked if synchronized)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b1914f2:   data16 nopw 0x0(%rax,%rax,1)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b1914fc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191500:   cmpl   $0x8,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191c4d
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191509:   jne    0x00007ff12b191a2c
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19150f:   movabs $0x7fed35270,%rsi            ;   {oop([B{0x00000007fed35270})}
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191519:   mov    %r14,%rdi
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19151c:   mov    $0x8,%edx
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191521:   mov    $0x10,%rax
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191528:   mov    $0x10,%rcx
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19152f:   add    %rax,%rsi
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191532:   add    %rcx,%rdi
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191535:   mov    $0x1,%r10d
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19153b:   mov    (%rsi),%rdx
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19153e:   xor    %rsi,%rsi
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191541:   xor    (%rdi),%rdx
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191544:   cmovne %esi,%r10d                   ;* unwind (locked if synchronized)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191548:   test   %r10d,%r10d
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b19154b:   je     0x00007ff12b1917bf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@388 (line 135)
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ ││ │ │││││││││││││││││││  0x00007ff12b191551:   mov    $0xb,%r10d
                   │       │   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │╰ │ │││││││││││││││││││  0x00007ff12b191557:   jmp    0x00007ff12b190f0f
   0.00%           │       ↘   │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │  │ │││││││││││││││││││  0x00007ff12b19155c:   movabs $0x7fed351c8,%rsi            ;   {oop(&quot;TRUCK&quot;{0x00000007fed351c8})}
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │  │ │││││││││││││││││││  0x00007ff12b191566:   cmp    %rbp,%rsi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ╭│ │││││││││││││││││││  0x00007ff12b191569:   je     0x00007ff12b1916f2
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b19156f:   test   %dil,%dil
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b191572:   jne    0x00007ff12b191a38           ;* unwind (locked if synchronized)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b191578:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbp=Oop r14=Oop }
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b191580:   cmpl   $0x5,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191c70
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b191589:   jne    0x00007ff12b191820
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b19158f:   movabs $0x7fed351e0,%rsi            ;   {oop([B{0x00000007fed351e0})}
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b191599:   mov    %r14,%rdi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b19159c:   mov    $0x5,%edx
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915a1:   mov    $0x10,%rax
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915a8:   mov    $0x10,%rcx
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915af:   add    %rax,%rsi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915b2:   add    %rcx,%rdi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915b5:   mov    $0x1,%r10d
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915bb:   mov    (%rsi),%edx
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915bd:   xor    (%rdi),%edx
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915bf:   mov    0x1(%rsi),%esi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915c2:   xor    0x1(%rdi),%esi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915c5:   xor    %rdi,%rdi
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915c8:   or     %rsi,%rdx
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915cb:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915cf:   test   %r10d,%r10d
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915d2:   je     0x00007ff12b1919e5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@340 (line 135)
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915d8:   mov    $0x8,%r10d
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ ││ │││││││││││││││││││  0x00007ff12b1915de:   xchg   %ax,%ax
                   │           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │╰ │││││││││││││││││││  0x00007ff12b1915e0:   jmp    0x00007ff12b190f0f
   0.09%           ↘           │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │  │││││││││││││││││││  0x00007ff12b1915e5:   movabs $0x7fed351f8,%rsi            ;   {oop(&quot;BUS&quot;{0x00000007fed351f8})}
   0.01%                       │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │  │││││││││││││││││││  0x00007ff12b1915ef:   cmp    %rbp,%rsi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ╭│││││││││││││││││││  0x00007ff12b1915f2:   je     0x00007ff12b1916e7           ;* unwind (locked if synchronized)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b1915f8:   nopl   0x0(%rax,%rax,1)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191600:   test   %dil,%dil
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191603:   jne    0x00007ff12b191946           ; ImmutableOopMap {rbp=Oop r14=Oop }
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - (reexecute) java.lang.String::hashCode@58 (line 2373)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191609:   cmpl   $0x3,0xc(,%r13,8)            ; implicit exception: dispatches to 0x00007ff12b191c93
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191612:   jne    0x00007ff12b191776
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191618:   movabs $0x7fed35210,%rsi            ;   {oop([B{0x00000007fed35210})}
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191622:   mov    %r14,%rdi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191625:   mov    $0x3,%edx
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19162a:   mov    $0x10,%rax
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191631:   mov    $0x10,%rcx
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191638:   add    %rax,%rsi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19163b:   add    %rcx,%rdi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19163e:   mov    $0x1,%r10d
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191644:   movzwq (%rsi),%rdx
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191648:   xor    (%rdi),%dx
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19164b:   movzwq 0x1(%rsi),%rsi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191650:   xor    0x1(%rdi),%si
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191654:   xor    %rdi,%rdi
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191657:   or     %rsi,%rdx
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19165a:   cmovne %edi,%r10d                   ;* unwind (locked if synchronized)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - java.lang.String::equals@-3
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b19165e:   xchg   %ax,%ax
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191660:   test   %r10d,%r10d
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191663:   je     0x00007ff12b191873           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@356 (line 135)
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ ││││││││││││││││││││  0x00007ff12b191669:   mov    $0x9,%r10d
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ │╰││││││││││││││││││  0x00007ff12b19166f:   jmp    0x00007ff12b190f0f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                               │     │ │  │ │││ │    │ │ │ │   │ │ │ │ │ │ │ ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@587 (line 135)
   0.30%                       │     │ │  │ ↘││ │    │ │ │ │   │ │ │ │ │ │ │ ││││││││││││││││││  0x00007ff12b191674:   mov    $0xc,%eax
                               │     │ │  │  ││ │    │ │ │ │   │ │ │ │ │ │ │ ╰│││││││││││││││││  0x00007ff12b191679:   jmp    0x00007ff12b190fb3
   0.68%                       │     │ │  │  ↘│ │    │ │ │ │   │ │ │ │ │ │ │  │││││││││││││││││  0x00007ff12b19167e:   mov    $0xa,%eax
                               │     │ │  │   │ │    │ │ │ │   │ │ │ │ │ │ │  ╰││││││││││││││││  0x00007ff12b191683:   jmp    0x00007ff12b190fb3
   0.61%                       │     │ │  │   ↘ │    │ │ │ │   │ │ │ │ │ │ │   ││││││││││││││││  0x00007ff12b191688:   mov    $0xb,%eax
                               │     │ │  │     │    │ │ │ │   │ │ │ │ │ │ │   ╰│││││││││││││││  0x00007ff12b19168d:   jmp    0x00007ff12b190fb3
                               │     │ │  ↘     │    │ │ │ │   │ │ │ │ │ │ │    │││││││││││││││  0x00007ff12b191692:   mov    $0x7,%eax
                               │     │ │        │    │ │ │ │   │ │ │ │ │ │ │    ╰││││││││││││││  0x00007ff12b191697:   jmp    0x00007ff12b190fb3
   0.30%                       │     ↘ │        │    │ │ │ │   │ │ │ │ │ │ │     ││││││││││││││  0x00007ff12b19169c:   mov    $0x6,%eax
                               │       │        │    │ │ │ │   │ │ │ │ │ │ │     ╰│││││││││││││  0x00007ff12b1916a1:   jmp    0x00007ff12b190fb3
   0.32%                       │       ↘        │    │ │ │ │   │ │ │ │ │ │ │      │││││││││││││  0x00007ff12b1916a6:   mov    $0x5,%eax
                               │                │    │ │ │ │   │ │ │ │ │ │ │      ╰││││││││││││  0x00007ff12b1916ab:   jmp    0x00007ff12b190fb3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                               │                │    │ │ │ │   │ │ │ │ │ │ │       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@836 (line 210)
   0.18%                       │                │    ↘ │ │ │   │ │ │ │ │ │ │       ││││││││││││  0x00007ff12b1916b0:   mov    $0x1,%r10d
                               │                │      │ │ │   │ │ │ │ │ │ │       ╰│││││││││││  0x00007ff12b1916b6:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                               │                │      │ │ │   │ │ │ │ │ │ │        │││││││││││                                                            ; - java.lang.String::equals@-3
                               │                │      │ │ │   │ │ │ │ │ │ │        │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   0.00%                       ↘                │      │ │ │   │ │ │ │ │ │ │        │││││││││││  0x00007ff12b1916bb:   mov    $0x3,%r10d
                                                │      │ │ │   │ │ │ │ │ │ │        ╰││││││││││  0x00007ff12b1916c1:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │      │ │ │   │ │ │ │ │ │ │         ││││││││││                                                            ; - java.lang.String::equals@-3
                                                │      │ │ │   │ │ │ │ │ │ │         ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
   0.32%                                        │      │ ↘ │   │ │ │ │ │ │ │         ││││││││││  0x00007ff12b1916c6:   mov    $0x0,%r10d
                                                │      │   │   │ │ │ │ │ │ │         ╰│││││││││  0x00007ff12b1916cc:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │      │   │   │ │ │ │ │ │ │          │││││││││                                                            ; - java.lang.String::equals@-3
                                                │      │   │   │ │ │ │ │ │ │          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
   0.25%                                        │      ↘   │   │ │ │ │ │ │ │          │││││││││  0x00007ff12b1916d1:   mov    $0x2,%r10d
                                                │          │   │ │ │ │ │ │ │          ╰││││││││  0x00007ff12b1916d7:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │          │   │ │ │ │ │ │ │           ││││││││                                                            ; - java.lang.String::equals@-3
                                                │          │   │ │ │ │ │ │ │           ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
   0.37%                                        │          ↘   │ │ │ │ │ │ │           ││││││││  0x00007ff12b1916dc:   mov    $0x7,%r10d
                                                │              │ │ │ │ │ │ │           ╰│││││││  0x00007ff12b1916e2:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │ │ │ │ │ │            │││││││                                                            ; - java.lang.String::equals@-3
                                                │              │ │ │ │ │ │ │            │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
   0.40%                                        │              │ │ │ │ │ │ ↘            │││││││  0x00007ff12b1916e7:   mov    $0x9,%r10d
                                                │              │ │ │ │ │ │              ╰││││││  0x00007ff12b1916ed:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │ │ │ │ │               ││││││                                                            ; - java.lang.String::equals@-3
                                                │              │ │ │ │ │ │               ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
   1.00%                                        │              │ │ │ │ │ ↘               ││││││  0x00007ff12b1916f2:   mov    $0x8,%r10d
                                                │              │ │ │ │ │                 ╰│││││  0x00007ff12b1916f8:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │ │ │ │                  │││││                                                            ; - java.lang.String::equals@-3
                                                │              │ │ │ │ │                  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
   0.33%                                        │              │ │ │ ↘ │                  │││││  0x00007ff12b1916fd:   mov    $0x4,%r10d
                                                │              │ │ │   │                  ╰││││  0x00007ff12b191703:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │ │   │                   ││││                                                            ; - java.lang.String::equals@-3
                                                │              │ │ │   │                   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
   0.68%                                        │              │ │ │   ↘                   ││││  0x00007ff12b191708:   mov    $0xb,%r10d
                                                │              │ │ │                       ╰│││  0x00007ff12b19170e:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │ │                        │││                                                            ; - java.lang.String::equals@-3
                                                │              │ │ │                        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
   0.00%                                        │              │ │ ↘                        │││  0x00007ff12b191713:   mov    $0x5,%r10d                   ;   {no_reloc}
                                                │              │ │                          ╰││  0x00007ff12b191719:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │ │                           ││                                                            ; - java.lang.String::equals@-3
                                                │              │ │                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
   0.30%                                        │              │ ↘                           ││  0x00007ff12b19171e:   mov    $0xa,%r10d
                                                │              │                             ╰│  0x00007ff12b191724:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │              │                              │                                                            ; - java.lang.String::equals@-3
                                                │              │                              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
   0.34%                                        │              ↘                              │  0x00007ff12b191729:   mov    $0x6,%r10d
                                                │                                             ╰  0x00007ff12b19172f:   jmp    0x00007ff12b190f0f           ;* unwind (locked if synchronized)
                                                │                                                                                                          ; - java.lang.String::equals@-3
                                                │                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
                                                ↘                                                0x00007ff12b191734:   movzbl 0x10(,%r13,8),%r10d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                           ; - java.lang.StringLatin1::hashCode@38 (line 190)
                                                                                                                                                           ; - java.lang.String::hashCode@27 (line 2365)
                                                                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                                 0x00007ff12b19173d:   mov    %r10d,%eax
....................................................................................................
  65.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1042 

                  #           [sp+0x40]  (sp of caller)
                  0x00007ff12b193920:   mov    0x8(%rsi),%r10d
                  0x00007ff12b193924:   movabs $0x7ff0a7000000,%r12
                  0x00007ff12b19392e:   add    %r12,%r10
                  0x00007ff12b193931:   xor    %r12,%r12
                  0x00007ff12b193934:   cmp    %r10,%rax
                  0x00007ff12b193937:   jne    0x00007ff12aaf9080           ;   {runtime_call ic_miss_stub}
                  0x00007ff12b19393d:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007ff12b193940:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007ff12b193947:   sub    $0x38,%rsp
                  0x00007ff12b19394b:   nop
                  0x00007ff12b19394c:   cmpl   $0x1,0x20(%r15)
   0.01%          0x00007ff12b193954:   jne    0x00007ff12b193a78
                  0x00007ff12b19395a:   mov    %rbp,0x30(%rsp)
                  0x00007ff12b19395f:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
                  0x00007ff12b193962:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007ff12b193a9c
   0.00%          0x00007ff12b19396a:   test   %r10d,%r10d
          ╭       0x00007ff12b19396d:   je     0x00007ff12b193a4e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          │       0x00007ff12b193973:   mov    %rsi,0x10(%rsp)
          │       0x00007ff12b193978:   mov    %r10d,0x24(%rsp)
          │       0x00007ff12b19397d:   mov    %r10d,%r11d
          │       0x00007ff12b193980:   dec    %r11d
          │       0x00007ff12b193983:   movslq %r11d,%r11
          │       0x00007ff12b193986:   mov    %r10d,%r8d
   0.01%  │       0x00007ff12b193989:   cmp    %r11,%r8
          │╭      0x00007ff12b19398c:   ja     0x00007ff12b19399c
          ││      0x00007ff12b193992:   cmp    $0x2,%r10d
          ││╭     0x00007ff12b193996:   jae    0x00007ff12b193a55
   0.00%  │↘│     0x00007ff12b19399c:   mov    0x10(,%rdx,8),%r11d
          │ │     0x00007ff12b1939a4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
          │ │     0x00007ff12b1939a8:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
   0.01%  │ │     0x00007ff12b1939ac:   mov    %rdx,0x8(%rsp)
          │ │     0x00007ff12b1939b1:   mov    %rsi,%r8
          │ │     0x00007ff12b1939b4:   mov    %r11,%rdx
          │ │     0x00007ff12b1939b7:   call   0x00007ff12b190c20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │                                                               ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │                                                               ;   {optimized virtual_call}
   0.02%  │ │     0x00007ff12b1939bc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │ │     0x00007ff12b1939c4:   mov    %eax,0x20(%rsp)
   0.00%  │ │     0x00007ff12b1939c8:   mov    $0x1,%r11d
          │ │╭    0x00007ff12b1939ce:   jmp    0x00007ff12b193a14           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
          │ ││    0x00007ff12b1939d3:   nopw   0x0(%rax,%rax,1)
          │ ││    0x00007ff12b1939dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   2.22%  │ ││↗   0x00007ff12b1939e0:   mov    0x10(%rdx,%r11,4),%r9d
   6.95%  │ │││   0x00007ff12b1939e5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   3.08%  │ │││   0x00007ff12b1939e9:   mov    %rsi,%rcx
   0.01%  │ │││   0x00007ff12b1939ec:   mov    %r9,%rdx                     ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.14%  │ │││   0x00007ff12b1939ef:   mov    %r11d,0x1c(%rsp)
   0.48%  │ │││   0x00007ff12b1939f4:   data16 xchg %ax,%ax
   3.19%  │ │││   0x00007ff12b1939f7:   call   0x00007ff12b190c20           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │││                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │││                                                             ;   {optimized virtual_call}
   2.40%  │ │││   0x00007ff12b1939fc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
          │ │││   0x00007ff12b193a04:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   4.82%  │ │││   0x00007ff12b193a08:   mov    0x1c(%rsp),%r11d
   0.57%  │ │││   0x00007ff12b193a0d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   1.50%  │ │││   0x00007ff12b193a10:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   3.70%  │ │↘│   0x00007ff12b193a14:   mov    0x8(%rsp),%rdx
   0.89%  │ │ │   0x00007ff12b193a19:   mov    0x24(%rsp),%r10d
   0.58%  │ │ │   0x00007ff12b193a1e:   mov    0x10(%rsp),%rsi
   0.00%  │ │ │   0x00007ff12b193a23:   cmp    %r11d,%r10d
          │ │ ╰   0x00007ff12b193a26:   jg     0x00007ff12b1939e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.02%  │ │     0x00007ff12b193a28:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
   0.04%  │ │  ↗  0x00007ff12b193a2c:   mov    0x30(%rsp),%rbp
          │ │  │  0x00007ff12b193a31:   add    $0x38,%rsp
          │ │  │  0x00007ff12b193a35:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  0x00007ff12b193a40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007ff12b193a47:   ja     0x00007ff12b193a88
   0.00%  │ │  │  0x00007ff12b193a4d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          ↘ │  │  0x00007ff12b193a4e:   mov    $0x0,%eax
            │  ╰  0x00007ff12b193a53:   jmp    0x00007ff12b193a2c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
            ↘     0x00007ff12b193a55:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
                  0x00007ff12b193a60:   movq   $0x4118,0x490(%r15)
                  0x00007ff12b193a6b:   call   0x00007ff12aaff17a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
....................................................................................................
  30.66%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.46%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1036 
  30.66%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1042 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  page_add_file_rmap 
   0.11%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.04%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  __tlb_remove_page_size 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.50%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.46%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1036 
  30.66%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1042 
   0.62%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  zap_pte_range 
   0.13%     [kernel.kallsyms]  native_read_msr 
   0.12%     [kernel.kallsyms]  page_add_file_rmap 
   0.11%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.04%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%     [kernel.kallsyms]  __tlb_remove_page_size 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.50%  <...other 266 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.15%        jvmci, level 4
   3.32%     [kernel.kallsyms]
   0.28%             libjvm.so
   0.10%             libc.so.6
   0.09%   libjvmcicompiler.so
   0.02%        hsdis-amd64.so
   0.01%           interpreter
   0.01%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%                      
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:02:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 21.230 ns/op
# Warmup Iteration   2: 20.086 ns/op
# Warmup Iteration   3: 20.215 ns/op
# Warmup Iteration   4: 20.325 ns/op
# Warmup Iteration   5: 20.280 ns/op
Iteration   1: 20.106 ns/op
Iteration   2: 20.361 ns/op
Iteration   3: 20.436 ns/op
Iteration   4: 19.860 ns/op
Iteration   5: 19.855 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  20.123 ±(99.9%) 1.047 ns/op [Average]
  (min, avg, max) = (19.855, 20.123, 20.436), stdev = 0.272
  CI (99.9%): [19.077, 21.170] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 217996 total address lines.
Perf output processed (skipped 77.931 seconds):
 Column 1: cycles (50436 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1008 

 <region is too big to display, has 1245 lines, but threshold is 1000>
....................................................................................................
  61.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1014 

                  #           [sp+0x40]  (sp of caller)
                  0x00007f07b319d020:   mov    0x8(%rsi),%r10d
                  0x00007f07b319d024:   movabs $0x7f072f000000,%r12
                  0x00007f07b319d02e:   add    %r12,%r10
                  0x00007f07b319d031:   xor    %r12,%r12
                  0x00007f07b319d034:   cmp    %r10,%rax
                  0x00007f07b319d037:   jne    0x00007f07b2af9080           ;   {runtime_call ic_miss_stub}
                  0x00007f07b319d03d:   data16 xchg %ax,%ax
                [Verified Entry Point]
                  0x00007f07b319d040:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007f07b319d047:   sub    $0x38,%rsp
                  0x00007f07b319d04b:   nop
                  0x00007f07b319d04c:   cmpl   $0x0,0x20(%r15)
   0.00%          0x00007f07b319d054:   jne    0x00007f07b319d178
                  0x00007f07b319d05a:   mov    %rbp,0x30(%rsp)
                  0x00007f07b319d05f:   mov    0x18(%rsi),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
                  0x00007f07b319d062:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f07b319d19c
   0.00%          0x00007f07b319d06a:   test   %r10d,%r10d
          ╭       0x00007f07b319d06d:   je     0x00007f07b319d14e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.01%  │       0x00007f07b319d073:   mov    %rsi,0x10(%rsp)
          │       0x00007f07b319d078:   mov    %r10d,0x24(%rsp)
   0.00%  │       0x00007f07b319d07d:   mov    %r10d,%r11d
          │       0x00007f07b319d080:   dec    %r11d
          │       0x00007f07b319d083:   movslq %r11d,%r11
          │       0x00007f07b319d086:   mov    %r10d,%r8d
   0.00%  │       0x00007f07b319d089:   cmp    %r11,%r8
          │╭      0x00007f07b319d08c:   ja     0x00007f07b319d09c
          ││      0x00007f07b319d092:   cmp    $0x2,%r10d
          ││╭     0x00007f07b319d096:   jae    0x00007f07b319d155
          │↘│     0x00007f07b319d09c:   mov    0x10(,%rdx,8),%r11d
          │ │     0x00007f07b319d0a4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
          │ │     0x00007f07b319d0a8:   shl    $0x3,%rdx                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
   0.00%  │ │     0x00007f07b319d0ac:   mov    %rdx,0x8(%rsp)
   0.00%  │ │     0x00007f07b319d0b1:   mov    %rsi,%r8
          │ │     0x00007f07b319d0b4:   mov    %r11,%rdx
          │ │     0x00007f07b319d0b7:   call   0x00007f07b2af9380           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │                                                               ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │                                                               ;   {optimized virtual_call}
   0.00%  │ │     0x00007f07b319d0bc:   nopl   0x100022c(%rax,%rax,1)       ;   {other}
          │ │     0x00007f07b319d0c4:   mov    %eax,0x20(%rsp)
          │ │     0x00007f07b319d0c8:   mov    $0x1,%r11d
   0.00%  │ │╭    0x00007f07b319d0ce:   jmp    0x00007f07b319d114           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
          │ ││    0x00007f07b319d0d3:   nopw   0x0(%rax,%rax,1)
          │ ││    0x00007f07b319d0dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   2.28%  │ ││↗   0x00007f07b319d0e0:   mov    0x10(%rdx,%r11,4),%r9d
   7.70%  │ │││   0x00007f07b319d0e5:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   3.72%  │ │││   0x00007f07b319d0e9:   mov    %rsi,%rcx
   0.01%  │ │││   0x00007f07b319d0ec:   mov    %r9,%rdx                     ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
   0.00%  │ │││   0x00007f07b319d0ef:   mov    %r11d,0x1c(%rsp)
   0.15%  │ │││   0x00007f07b319d0f4:   data16 xchg %ax,%ax
   3.69%  │ │││   0x00007f07b319d0f7:   call   0x00007f07b2af9380           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │││                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │││                                                             ;   {optimized virtual_call}
   8.12%  │ │││   0x00007f07b319d0fc:   nopl   0x200026c(%rax,%rax,1)       ;   {other}
   0.09%  │ │││   0x00007f07b319d104:   add    0x20(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.56%  │ │││   0x00007f07b319d108:   mov    0x1c(%rsp),%r11d
   3.38%  │ │││   0x00007f07b319d10d:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.16%  │ │││   0x00007f07b319d110:   mov    %eax,0x20(%rsp)              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@13 (line 104)
   2.44%  │ │↘│   0x00007f07b319d114:   mov    0x8(%rsp),%rdx
   0.14%  │ │ │   0x00007f07b319d119:   mov    0x24(%rsp),%r10d
   1.40%  │ │ │   0x00007f07b319d11e:   mov    0x10(%rsp),%rsi
   0.01%  │ │ │   0x00007f07b319d123:   cmp    %r11d,%r10d
          │ │ ╰   0x00007f07b319d126:   jg     0x00007f07b319d0e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.04%  │ │     0x00007f07b319d128:   mov    0x20(%rsp),%eax              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
   0.03%  │ │  ↗  0x00007f07b319d12c:   mov    0x30(%rsp),%rbp
          │ │  │  0x00007f07b319d131:   add    $0x38,%rsp
          │ │  │  0x00007f07b319d135:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  0x00007f07b319d140:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │  │  0x00007f07b319d147:   ja     0x00007f07b319d188
   0.01%  │ │  │  0x00007f07b319d14d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          ↘ │  │  0x00007f07b319d14e:   mov    $0x0,%eax
            │  ╰  0x00007f07b319d153:   jmp    0x00007f07b319d12c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@40 (line 107)
            ↘     0x00007f07b319d155:   movl   $0xffffffe5,0x484(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
                  0x00007f07b319d160:   movq   $0x518,0x490(%r15)
                  0x00007f07b319d16b:   call   0x00007f07b2aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@0 (line 103)
....................................................................................................
  33.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1008 
  33.95%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1014 
   0.59%     [kernel.kallsyms]  native_read_msr 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  __mod_node_page_state 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.09%     [kernel.kallsyms]  page_remove_rmap 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  asm_exc_page_fault 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  pipe_write 
   0.04%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1038 
   0.04%     [kernel.kallsyms]  tlb_batch_pages_flush 
   1.75%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 1008 
  33.95%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 1014 
   0.59%     [kernel.kallsyms]  native_read_msr 
   0.59%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.33%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  __mod_node_page_state 
   0.12%     [kernel.kallsyms]  refill_obj_stock 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%                        <unknown> 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  obj_cgroup_uncharge_pages 
   0.09%     [kernel.kallsyms]  page_remove_rmap 
   0.06%     [kernel.kallsyms]  asm_exc_page_fault 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 1038 
   1.67%  <...other 247 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.47%        jvmci, level 4
   3.83%     [kernel.kallsyms]
   0.27%             libjvm.so
   0.24%             libc.so.6
   0.10%                      
   0.04%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                kvm.ko
   0.00%         perf-7297.map
   0.00%      Unknown, level 0
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:27:13

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

Benchmark                                     (branches)  Mode  Cnt   Score   Error  Units
StringSwitchBenchmark.chained_ifs                      3  avgt    5   6.366 ± 0.246  ns/op
StringSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                      6  avgt    5  12.175 ± 0.388  ns/op
StringSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     12  avgt    5  25.227 ± 1.532  ns/op
StringSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     24  avgt    5  42.296 ± 2.384  ns/op
StringSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               3  avgt    5  10.796 ± 0.494  ns/op
StringSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               6  avgt    5  13.353 ± 0.162  ns/op
StringSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              12  avgt    5  21.042 ± 0.959  ns/op
StringSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              24  avgt    5  19.693 ± 0.783  ns/op
StringSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                3  avgt    5  11.714 ± 0.422  ns/op
StringSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                6  avgt    5  13.055 ± 0.212  ns/op
StringSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               12  avgt    5  21.435 ± 0.665  ns/op
StringSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               24  avgt    5  20.123 ± 1.047  ns/op
StringSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
