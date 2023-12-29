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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.390 ns/op
# Warmup Iteration   2: 5.079 ns/op
# Warmup Iteration   3: 5.019 ns/op
# Warmup Iteration   4: 5.113 ns/op
# Warmup Iteration   5: 5.099 ns/op
Iteration   1: 5.131 ns/op
Iteration   2: 5.086 ns/op
Iteration   3: 5.048 ns/op
Iteration   4: 5.021 ns/op
Iteration   5: 5.072 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  5.072 ±(99.9%) 0.160 ns/op [Average]
  (min, avg, max) = (5.021, 5.072, 5.131), stdev = 0.042
  CI (99.9%): [4.912, 5.231] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 130274 total address lines.
Perf output processed (skipped 68.659 seconds):
 Column 1: cycles (48935 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 670 

                                                                       # {method} {0x00007fbdd8479568} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                                                                       #           [sp+0x40]  (sp of caller)
                                                                       0x00007fbe644f9ec0:   mov    0x8(%rsi),%r10d
                                                                       0x00007fbe644f9ec4:   movabs $0x7fbde3000000,%r11
                                                                       0x00007fbe644f9ece:   add    %r11,%r10
                                                                       0x00007fbe644f9ed1:   cmp    %r10,%rax
                                                                       0x00007fbe644f9ed4:   jne    0x00007fbe63f85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007fbe644f9eda:   xchg   %ax,%ax
                                                                       0x00007fbe644f9edc:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   0.02%                                                               0x00007fbe644f9ee0:   mov    %eax,-0x14000(%rsp)
   0.00%                                                               0x00007fbe644f9ee7:   push   %rbp
                                                                       0x00007fbe644f9ee8:   sub    $0x30,%rsp
   0.01%                                                               0x00007fbe644f9eec:   cmpl   $0x1,0x20(%r15)
                                                                       0x00007fbe644f9ef4:   jne    0x00007fbe644fa41a           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@-1 (line 125)
                                                                       0x00007fbe644f9efa:   mov    %rsi,%r11
   0.02%                                                               0x00007fbe644f9efd:   mov    0x18(%rsi),%ebp              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                                                                       0x00007fbe644f9f00:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007fbe644fa3ec
                                                                                                                                 ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
   0.03%                                                               0x00007fbe644f9f05:   xor    %r8d,%r8d
                                                                       0x00007fbe644f9f08:   test   %r10d,%r10d
                                                                       0x00007fbe644f9f0b:   jbe    0x00007fbe644fa394           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%                                                               0x00007fbe644f9f11:   mov    %r10d,%r9d
                                                                       0x00007fbe644f9f14:   dec    %r9d
   0.00%                                                               0x00007fbe644f9f17:   cmp    %r10d,%r9d
   0.01%                                                               0x00007fbe644f9f1a:   nopw   0x0(%rax,%rax,1)
   0.00%                                                               0x00007fbe644f9f20:   jae    0x00007fbe644fa39b
   0.01%                                                               0x00007fbe644f9f26:   vmovq  %rsi,%xmm0
                                                                       0x00007fbe644f9f2b:   lea    (%r12,%rbp,8),%r14           ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                                                                       0x00007fbe644f9f2f:   movabs $0x7ff035298,%r11            ;   {oop([B{0x00000007ff035298})}
                                                                       0x00007fbe644f9f39:   movabs $0x7ff035298,%r9             ;   {oop([B{0x00000007ff035298})}
   0.01%                                                               0x00007fbe644f9f43:   add    $0x10,%r11
                                                                       0x00007fbe644f9f47:   vmovq  %r11,%xmm1
                                                                       0x00007fbe644f9f4c:   movabs $0x7ff035268,%r11            ;   {oop([B{0x00000007ff035268})}
                                                                       0x00007fbe644f9f56:   movabs $0x7ff035268,%r9             ;   {oop([B{0x00000007ff035268})}
   0.01%                                                               0x00007fbe644f9f60:   add    $0x10,%r11
   0.00%                                                               0x00007fbe644f9f64:   vmovq  %r11,%xmm2
                                                                       0x00007fbe644f9f69:   movabs $0x7ff035238,%r11            ;   {oop([B{0x00000007ff035238})}
                                                                       0x00007fbe644f9f73:   movabs $0x7ff035238,%r9             ;   {oop([B{0x00000007ff035238})}
   0.01%                                                               0x00007fbe644f9f7d:   add    $0x10,%r11
                                                                       0x00007fbe644f9f81:   vmovq  %r11,%xmm3                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@37 (line 126)
                                                                       0x00007fbe644f9f86:   mov    $0x3e8,%r11d
                                                                       0x00007fbe644f9f8c:   xor    %edx,%edx
   0.01%                                                               0x00007fbe644f9f8e:   xor    %r9d,%r9d
                                                                       0x00007fbe644f9f91:   vmovd  %r9d,%xmm6
          ╭                                                            0x00007fbe644f9f96:   jmp    0x00007fbe644f9fc9
   0.05%  │  ↗                                                         0x00007fbe644f9f98:   mov    0x458(%r15),%r9
   0.16%  │  │                                                         0x00007fbe644f9f9f:   movabs $0x7ff035298,%rcx            ;   {oop([B{0x00000007ff035298})}
          │  │                                                         0x00007fbe644f9fa9:   movabs $0x7ff035268,%rbx            ;   {oop([B{0x00000007ff035268})}
          │  │                                                         0x00007fbe644f9fb3:   movabs $0x7ff035238,%rdi            ; ImmutableOopMap {rcx=Oop xmm1=Derived_oop_rcx rbx=Oop xmm2=Derived_oop_rbx rdi=Oop xmm3=Derived_oop_rdi rbp=NarrowOop r14=Oop xmm0=Oop }
          │  │                                                                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@37 (line 126)
          │  │                                                                                                                   ;   {oop([B{0x00000007ff035238})}
          │  │                                                         0x00007fbe644f9fbd:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@37 (line 126)
          │  │                                                                                                                   ;   {poll}
   0.07%  │  │                                                         0x00007fbe644f9fc0:   cmp    %r10d,%edx
          │╭ │                                                         0x00007fbe644f9fc3:   jge    0x00007fbe644fa30a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   0.00%  ↘│ │                                                         0x00007fbe644f9fc9:   mov    %r10d,%r9d
   0.01%   │ │                                                         0x00007fbe644f9fcc:   sub    %edx,%r9d
           │ │                                                         0x00007fbe644f9fcf:   cmp    %edx,%r10d
   0.01%   │ │                                                         0x00007fbe644f9fd2:   cmovl  %r8d,%r9d
   0.00%   │ │                                                         0x00007fbe644f9fd6:   cmp    $0x3e8,%r9d
   0.01%   │ │                                                         0x00007fbe644f9fdd:   cmova  %r11d,%r9d
   0.02%   │ │                                                         0x00007fbe644f9fe1:   add    %edx,%r9d
           │╭│                                                         0x00007fbe644f9fe4:   jmp    0x00007fbe644fa005
           │││                  ↗                                      0x00007fbe644f9fe6:   vmovd  %xmm5,%ebp
   5.17%   │││↗                 │                                      0x00007fbe644f9fea:   mov    $0x1,%ecx                    ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
           ││││                 │                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
  10.49%   ││││                 │                                  ↗↗  0x00007fbe644f9fef:   vmovd  %xmm6,%r13d
   0.00%   ││││                 │                                  ││  0x00007fbe644f9ff4:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││                 │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   0.00%   ││││                 │                                  ││  0x00007fbe644f9ff7:   vmovd  %r13d,%xmm6
   5.42%   ││││                 │                                  ││  0x00007fbe644f9ffc:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                 │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
  10.69%   ││││                 │                                  ││  0x00007fbe644f9ffe:   xchg   %ax,%ax
           ││││                 │                                  ││  0x00007fbe644fa000:   cmp    %r9d,%edx
           ││╰│                 │                                  ││  0x00007fbe644fa003:   jge    0x00007fbe644f9f98           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││ │                 │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   0.01%   │↘ │                 │                                  ││  0x00007fbe644fa005:   mov    0x10(%r14,%rdx,4),%r13d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │  │                 │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   5.82%   │  │                 │                                  ││  0x00007fbe644fa00a:   cmp    $0xffe06a44,%r13d            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
           │  ╰                 │                                  ││  0x00007fbe644fa011:   je     0x00007fbe644f9fea           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │                    │                                  ││                                                            ; - java.lang.String::equals@2 (line 1858)
           │                    │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │                    │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.27%   │                    │                                  ││  0x00007fbe644fa013:   movsbl 0x10(%r12,%r13,8),%ebx       ; implicit exception: dispatches to 0x00007fbe644fa3bc
           │                    │                                  ││                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                    │                                  ││                                                            ; - java.lang.String::equals@30 (line 1861)
           │                    │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │                    │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.45%   │                    │                                  ││  0x00007fbe644fa019:   test   %ebx,%ebx
   0.54%   │                    │                                  ││  0x00007fbe644fa01b:   nopl   0x0(%rax,%rax,1)
   4.75%   │   ╭                │                                  ││  0x00007fbe644fa020:   jne    0x00007fbe644fa323           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │   │                │                                  ││                                                            ; - java.lang.String::equals@33 (line 1861)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   6.18%   │   │                │                                  ││  0x00007fbe644fa026:   vmovd  %ebp,%xmm5
   0.00%   │   │                │                                  ││  0x00007fbe644fa02a:   mov    0x14(%r12,%r13,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │   │                │                                  ││                                                            ; - java.lang.String::equals@41 (line 1861)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%   │   │                │                                  ││  0x00007fbe644fa02f:   mov    0xc(%r12,%rbx,8),%ebp        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │   │                │                                  ││                                                            ; - java.lang.String::equals@44 (line 1863)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
  12.94%   │   │                │                                  ││  0x00007fbe644fa034:   lea    (%r12,%rbx,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │   │                │                                  ││                                                            ; - java.lang.String::equals@41 (line 1861)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │   │                │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.53%   │   │                │                                  ││  0x00007fbe644fa038:   lea    0x10(%r12,%rbx,8),%rcx
   0.00%   │   │                │                                  ││  0x00007fbe644fa03d:   vmovq  %rcx,%xmm4
   7.08%   │   │                │                                  ││  0x00007fbe644fa042:   cmp    $0x5,%ebp
           │   │╭               │                                  ││  0x00007fbe644fa045:   jne    0x00007fbe644fa119
           │   ││               │                                  ││  0x00007fbe644fa04b:   vmovq  %xmm3,%rdi
           │   ││               │                                  ││  0x00007fbe644fa050:   mov    %rcx,%rsi
           │   ││               │                                  ││  0x00007fbe644fa053:   mov    $0x5,%ecx
           │   ││               │                                  ││  0x00007fbe644fa058:   test   %ecx,%ecx
           │   ││╭              │                                  ││  0x00007fbe644fa05a:   je     0x00007fbe644fa0ff
           │   │││              │                                  ││  0x00007fbe644fa060:   mov    %ecx,%eax
           │   │││              │                                  ││  0x00007fbe644fa062:   and    $0x1f,%eax
           │   │││              │                                  ││  0x00007fbe644fa065:   and    $0xffffffe0,%ecx
           │   │││╭             │                                  ││  0x00007fbe644fa068:   je     0x00007fbe644fa0bb
           │   ││││             │                                  ││  0x00007fbe644fa06e:   lea    (%rdi,%rcx,1),%rdi
           │   ││││             │                                  ││  0x00007fbe644fa072:   lea    (%rsi,%rcx,1),%rsi
           │   ││││             │                                  ││  0x00007fbe644fa076:   neg    %rcx
           │   ││││ ↗           │                                  ││  0x00007fbe644fa079:   vmovdqu (%rdi,%rcx,1),%ymm7
           │   ││││ │           │                                  ││  0x00007fbe644fa07e:   vmovdqu (%rsi,%rcx,1),%ymm8
           │   ││││ │           │                                  ││  0x00007fbe644fa083:   vpxor  %ymm8,%ymm7,%ymm7
           │   ││││ │           │                                  ││  0x00007fbe644fa088:   vptest %ymm7,%ymm7
           │   ││││╭│           │                                  ││  0x00007fbe644fa08d:   jne    0x00007fbe644fa106
           │   ││││││           │                                  ││  0x00007fbe644fa093:   add    $0x20,%rcx
           │   │││││╰           │                                  ││  0x00007fbe644fa097:   jne    0x00007fbe644fa079
           │   │││││            │                                  ││  0x00007fbe644fa099:   test   %eax,%eax
           │   │││││ ╭          │                                  ││  0x00007fbe644fa09b:   je     0x00007fbe644fa0ff
           │   │││││ │          │                                  ││  0x00007fbe644fa0a1:   vmovdqu -0x20(%rdi,%rax,1),%ymm7
           │   │││││ │          │                                  ││  0x00007fbe644fa0a7:   vmovdqu -0x20(%rsi,%rax,1),%ymm8
           │   │││││ │          │                                  ││  0x00007fbe644fa0ad:   vpxor  %ymm8,%ymm7,%ymm7
           │   │││││ │          │                                  ││  0x00007fbe644fa0b2:   vptest %ymm7,%ymm7
           │   │││││ │╭         │                                  ││  0x00007fbe644fa0b7:   jne    0x00007fbe644fa106
           │   │││││ ││╭        │                                  ││  0x00007fbe644fa0b9:   jmp    0x00007fbe644fa0ff
           │   │││↘│ │││        │                                  ││  0x00007fbe644fa0bb:   mov    %eax,%ecx
           │   │││ │ │││        │                                  ││  0x00007fbe644fa0bd:   and    $0xfffffffc,%ecx
           │   │││ │ │││╭       │                                  ││  0x00007fbe644fa0c0:   je     0x00007fbe644fa0db
           │   │││ │ ││││       │                                  ││  0x00007fbe644fa0c2:   lea    (%rdi,%rcx,1),%rdi
           │   │││ │ ││││       │                                  ││  0x00007fbe644fa0c6:   lea    (%rsi,%rcx,1),%rsi
           │   │││ │ ││││       │                                  ││  0x00007fbe644fa0ca:   neg    %rcx
           │   │││ │ ││││ ↗     │                                  ││  0x00007fbe644fa0cd:   mov    (%rdi,%rcx,1),%ebx
           │   │││ │ ││││ │     │                                  ││  0x00007fbe644fa0d0:   cmp    (%rsi,%rcx,1),%ebx
           │   │││ │ ││││╭│     │                                  ││  0x00007fbe644fa0d3:   jne    0x00007fbe644fa106
           │   │││ │ ││││││     │                                  ││  0x00007fbe644fa0d5:   add    $0x4,%rcx
           │   │││ │ │││││╰     │                                  ││  0x00007fbe644fa0d9:   jne    0x00007fbe644fa0cd
           │   │││ │ │││↘│      │                                  ││  0x00007fbe644fa0db:   test   $0x2,%al
           │   │││ │ │││ │ ╭    │                                  ││  0x00007fbe644fa0dd:   je     0x00007fbe644fa0f1
           │   │││ │ │││ │ │    │                                  ││  0x00007fbe644fa0df:   movzwl (%rdi),%ebx
           │   │││ │ │││ │ │    │                                  ││  0x00007fbe644fa0e2:   movzwl (%rsi),%ecx
           │   │││ │ │││ │ │    │                                  ││  0x00007fbe644fa0e5:   cmp    %ecx,%ebx
           │   │││ │ │││ │ │╭   │                                  ││  0x00007fbe644fa0e7:   jne    0x00007fbe644fa106
           │   │││ │ │││ │ ││   │                                  ││  0x00007fbe644fa0e9:   lea    0x2(%rdi),%rdi
           │   │││ │ │││ │ ││   │                                  ││  0x00007fbe644fa0ed:   lea    0x2(%rsi),%rsi
           │   │││ │ │││ │ ↘│   │                                  ││  0x00007fbe644fa0f1:   test   $0x1,%al
           │   │││ │ │││ │  │╭  │                                  ││  0x00007fbe644fa0f3:   je     0x00007fbe644fa0ff
           │   │││ │ │││ │  ││  │                                  ││  0x00007fbe644fa0f5:   movzbl (%rdi),%ebx
           │   │││ │ │││ │  ││  │                                  ││  0x00007fbe644fa0f8:   movzbl (%rsi),%ecx
           │   │││ │ │││ │  ││  │                                  ││  0x00007fbe644fa0fb:   cmp    %ecx,%ebx
           │   │││ │ │││ │  ││╭ │                                  ││  0x00007fbe644fa0fd:   jne    0x00007fbe644fa106
           │   ││↘ │ ↘│↘ │  │↘│ │                                  ││  0x00007fbe644fa0ff:   mov    $0x1,%eax
           │   ││  │  │  │  │ │╭│                                  ││  0x00007fbe644fa104:   jmp    0x00007fbe644fa108
           │   ││  ↘  ↘  ↘  ↘ ↘││                                  ││  0x00007fbe644fa106:   xor    %eax,%eax
           │   ││              ↘│                                  ││  0x00007fbe644fa108:   vpxor  %ymm7,%ymm7,%ymm7            ;   {no_reloc}
           │   ││               │                                  ││  0x00007fbe644fa10c:   vpxor  %ymm8,%ymm8,%ymm8            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │   ││               │                                  ││                                                            ; - java.lang.String::equals@44 (line 1863)
           │   ││               │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
           │   ││               │                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
           │   ││               │                                  ││  0x00007fbe644fa111:   test   %eax,%eax
           │   ││               ╰                                  ││  0x00007fbe644fa113:   jne    0x00007fbe644f9fe6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
           │   ││                                                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.02%   │   │↘                                                  ││  0x00007fbe644fa119:   nopl   0x0(%rax)
   2.04%   │   │                                                   ││  0x00007fbe644fa120:   cmp    $0xffe06a4a,%r13d            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
           │   │                 ╭                                 ││  0x00007fbe644fa127:   je     0x00007fbe644fa2fc           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │   │                 │                                 ││                                                            ; - java.lang.String::equals@2 (line 1858)
           │   │                 │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
           │   │                 │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.00%   │   │                 │                                 ││  0x00007fbe644fa12d:   cmp    $0x7,%ebp
           │   │                 │╭                                ││  0x00007fbe644fa130:   jne    0x00007fbe644fa208
           │   │                 ││                                ││  0x00007fbe644fa136:   vmovq  %xmm2,%rdi
           │   │                 ││                                ││  0x00007fbe644fa13b:   vmovq  %xmm4,%rsi
           │   │                 ││                                ││  0x00007fbe644fa140:   mov    $0x7,%ecx
           │   │                 ││                                ││  0x00007fbe644fa145:   test   %ecx,%ecx
           │   │                 ││╭                               ││  0x00007fbe644fa147:   je     0x00007fbe644fa1ea
           │   │                 │││                               ││  0x00007fbe644fa14d:   mov    %ecx,%eax
           │   │                 │││                               ││  0x00007fbe644fa14f:   and    $0x1f,%eax
           │   │                 │││                               ││  0x00007fbe644fa152:   and    $0xffffffe0,%ecx
           │   │                 │││╭                              ││  0x00007fbe644fa155:   je     0x00007fbe644fa1a6
           │   │                 ││││                              ││  0x00007fbe644fa15b:   lea    (%rdi,%rcx,1),%rdi
           │   │                 ││││                              ││  0x00007fbe644fa15f:   lea    (%rsi,%rcx,1),%rsi
           │   │                 ││││                              ││  0x00007fbe644fa163:   neg    %rcx
           │   │                 ││││ ↗                            ││  0x00007fbe644fa166:   vmovdqu (%rdi,%rcx,1),%ymm8
           │   │                 ││││ │                            ││  0x00007fbe644fa16b:   vmovdqu (%rsi,%rcx,1),%ymm7
           │   │                 ││││ │                            ││  0x00007fbe644fa170:   vpxor  %ymm7,%ymm8,%ymm8
           │   │                 ││││ │                            ││  0x00007fbe644fa174:   vptest %ymm8,%ymm8
           │   │                 ││││╭│                            ││  0x00007fbe644fa179:   jne    0x00007fbe644fa1f1
           │   │                 ││││││                            ││  0x00007fbe644fa17f:   add    $0x20,%rcx
           │   │                 │││││╰                            ││  0x00007fbe644fa183:   jne    0x00007fbe644fa166
           │   │                 │││││                             ││  0x00007fbe644fa185:   test   %eax,%eax
           │   │                 │││││ ╭                           ││  0x00007fbe644fa187:   je     0x00007fbe644fa1ea
           │   │                 │││││ │                           ││  0x00007fbe644fa18d:   vmovdqu -0x20(%rdi,%rax,1),%ymm8
           │   │                 │││││ │                           ││  0x00007fbe644fa193:   vmovdqu -0x20(%rsi,%rax,1),%ymm7
           │   │                 │││││ │                           ││  0x00007fbe644fa199:   vpxor  %ymm7,%ymm8,%ymm8
           │   │                 │││││ │                           ││  0x00007fbe644fa19d:   vptest %ymm8,%ymm8
           │   │                 │││││ │╭                          ││  0x00007fbe644fa1a2:   jne    0x00007fbe644fa1f1
           │   │                 │││││ ││╭                         ││  0x00007fbe644fa1a4:   jmp    0x00007fbe644fa1ea
           │   │                 │││↘│ │││                         ││  0x00007fbe644fa1a6:   mov    %eax,%ecx
           │   │                 │││ │ │││                         ││  0x00007fbe644fa1a8:   and    $0xfffffffc,%ecx
           │   │                 │││ │ │││╭                        ││  0x00007fbe644fa1ab:   je     0x00007fbe644fa1c6
           │   │                 │││ │ ││││                        ││  0x00007fbe644fa1ad:   lea    (%rdi,%rcx,1),%rdi
           │   │                 │││ │ ││││                        ││  0x00007fbe644fa1b1:   lea    (%rsi,%rcx,1),%rsi
           │   │                 │││ │ ││││                        ││  0x00007fbe644fa1b5:   neg    %rcx
           │   │                 │││ │ ││││ ↗                      ││  0x00007fbe644fa1b8:   mov    (%rdi,%rcx,1),%ebx
           │   │                 │││ │ ││││ │                      ││  0x00007fbe644fa1bb:   cmp    (%rsi,%rcx,1),%ebx
           │   │                 │││ │ ││││╭│                      ││  0x00007fbe644fa1be:   jne    0x00007fbe644fa1f1
           │   │                 │││ │ ││││││                      ││  0x00007fbe644fa1c0:   add    $0x4,%rcx
           │   │                 │││ │ │││││╰                      ││  0x00007fbe644fa1c4:   jne    0x00007fbe644fa1b8
           │   │                 │││ │ │││↘│                       ││  0x00007fbe644fa1c6:   test   $0x2,%al
           │   │                 │││ │ │││ │ ╭                     ││  0x00007fbe644fa1c8:   je     0x00007fbe644fa1dc
           │   │                 │││ │ │││ │ │                     ││  0x00007fbe644fa1ca:   movzwl (%rdi),%ebx
           │   │                 │││ │ │││ │ │                     ││  0x00007fbe644fa1cd:   movzwl (%rsi),%ecx
           │   │                 │││ │ │││ │ │                     ││  0x00007fbe644fa1d0:   cmp    %ecx,%ebx
           │   │                 │││ │ │││ │ │╭                    ││  0x00007fbe644fa1d2:   jne    0x00007fbe644fa1f1
           │   │                 │││ │ │││ │ ││                    ││  0x00007fbe644fa1d4:   lea    0x2(%rdi),%rdi
           │   │                 │││ │ │││ │ ││                    ││  0x00007fbe644fa1d8:   lea    0x2(%rsi),%rsi
           │   │                 │││ │ │││ │ ↘│                    ││  0x00007fbe644fa1dc:   test   $0x1,%al
           │   │                 │││ │ │││ │  │╭                   ││  0x00007fbe644fa1de:   je     0x00007fbe644fa1ea
           │   │                 │││ │ │││ │  ││                   ││  0x00007fbe644fa1e0:   movzbl (%rdi),%ebx
           │   │                 │││ │ │││ │  ││                   ││  0x00007fbe644fa1e3:   movzbl (%rsi),%ecx
           │   │                 │││ │ │││ │  ││                   ││  0x00007fbe644fa1e6:   cmp    %ecx,%ebx
           │   │                 │││ │ │││ │  ││╭                  ││  0x00007fbe644fa1e8:   jne    0x00007fbe644fa1f1
           │   │                 ││↘ │ ↘│↘ │  │↘│                  ││  0x00007fbe644fa1ea:   mov    $0x1,%eax
           │   │                 ││  │  │  │  │ │╭                 ││  0x00007fbe644fa1ef:   jmp    0x00007fbe644fa1f3
           │   │                 ││  ↘  ↘  ↘  ↘ ↘│                 ││  0x00007fbe644fa1f1:   xor    %eax,%eax
           │   │                 ││              ↘                 ││  0x00007fbe644fa1f3:   vpxor  %ymm8,%ymm8,%ymm8
           │   │                 ││                                ││  0x00007fbe644fa1f8:   vpxor  %ymm7,%ymm7,%ymm7            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │   │                 ││                                ││                                                            ; - java.lang.String::equals@44 (line 1863)
           │   │                 ││                                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
           │   │                 ││                                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
           │   │                 ││                                ││  0x00007fbe644fa1fc:   nopl   0x0(%rax)
           │   │                 ││                                ││  0x00007fbe644fa200:   test   %eax,%eax
           │   │                 ││               ╭                ││  0x00007fbe644fa202:   jne    0x00007fbe644fa2fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   │                 ││               │                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
           │   │                 ││               │                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.10%   │   │                 │↘               │                ││  0x00007fbe644fa208:   cmp    $0xffe06a50,%r13d            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
           │   │                 │                │╭               ││  0x00007fbe644fa20f:   je     0x00007fbe644fa2ee           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │   │                 │                ││               ││                                                            ; - java.lang.String::equals@2 (line 1858)
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
           │   │                 │                ││               ││  0x00007fbe644fa215:   cmp    $0x10,%ebp
           │   │                 │                ││               ││  0x00007fbe644fa218:   jne    0x00007fbe644fa35b
           │   │                 │                ││               ││  0x00007fbe644fa21e:   vmovq  %xmm1,%rdi
           │   │                 │                ││               ││  0x00007fbe644fa223:   vmovq  %xmm4,%rsi
           │   │                 │                ││               ││  0x00007fbe644fa228:   mov    $0x10,%ecx
           │   │                 │                ││               ││  0x00007fbe644fa22d:   test   %ecx,%ecx
           │   │                 │                ││╭              ││  0x00007fbe644fa22f:   je     0x00007fbe644fa2d4
           │   │                 │                │││              ││  0x00007fbe644fa235:   mov    %ecx,%eax
           │   │                 │                │││              ││  0x00007fbe644fa237:   and    $0x1f,%eax
           │   │                 │                │││              ││  0x00007fbe644fa23a:   and    $0xffffffe0,%ecx
           │   │                 │                │││╭             ││  0x00007fbe644fa23d:   je     0x00007fbe644fa290
           │   │                 │                ││││             ││  0x00007fbe644fa243:   lea    (%rdi,%rcx,1),%rdi
           │   │                 │                ││││             ││  0x00007fbe644fa247:   lea    (%rsi,%rcx,1),%rsi
           │   │                 │                ││││             ││  0x00007fbe644fa24b:   neg    %rcx
           │   │                 │                ││││ ↗           ││  0x00007fbe644fa24e:   vmovdqu (%rdi,%rcx,1),%ymm7
           │   │                 │                ││││ │           ││  0x00007fbe644fa253:   vmovdqu (%rsi,%rcx,1),%ymm8
           │   │                 │                ││││ │           ││  0x00007fbe644fa258:   vpxor  %ymm8,%ymm7,%ymm7
           │   │                 │                ││││ │           ││  0x00007fbe644fa25d:   vptest %ymm7,%ymm7
           │   │                 │                ││││╭│           ││  0x00007fbe644fa262:   jne    0x00007fbe644fa2db
           │   │                 │                ││││││           ││  0x00007fbe644fa268:   add    $0x20,%rcx
           │   │                 │                │││││╰           ││  0x00007fbe644fa26c:   jne    0x00007fbe644fa24e
           │   │                 │                │││││            ││  0x00007fbe644fa26e:   test   %eax,%eax
           │   │                 │                │││││ ╭          ││  0x00007fbe644fa270:   je     0x00007fbe644fa2d4
           │   │                 │                │││││ │          ││  0x00007fbe644fa276:   vmovdqu -0x20(%rdi,%rax,1),%ymm7
           │   │                 │                │││││ │          ││  0x00007fbe644fa27c:   vmovdqu -0x20(%rsi,%rax,1),%ymm8
           │   │                 │                │││││ │          ││  0x00007fbe644fa282:   vpxor  %ymm8,%ymm7,%ymm7
           │   │                 │                │││││ │          ││  0x00007fbe644fa287:   vptest %ymm7,%ymm7
           │   │                 │                │││││ │╭         ││  0x00007fbe644fa28c:   jne    0x00007fbe644fa2db
           │   │                 │                │││││ ││╭        ││  0x00007fbe644fa28e:   jmp    0x00007fbe644fa2d4
           │   │                 │                │││↘│ │││        ││  0x00007fbe644fa290:   mov    %eax,%ecx
           │   │                 │                │││ │ │││        ││  0x00007fbe644fa292:   and    $0xfffffffc,%ecx
           │   │                 │                │││ │ │││╭       ││  0x00007fbe644fa295:   je     0x00007fbe644fa2b0
           │   │                 │                │││ │ ││││       ││  0x00007fbe644fa297:   lea    (%rdi,%rcx,1),%rdi
           │   │                 │                │││ │ ││││       ││  0x00007fbe644fa29b:   lea    (%rsi,%rcx,1),%rsi
           │   │                 │                │││ │ ││││       ││  0x00007fbe644fa29f:   neg    %rcx
           │   │                 │                │││ │ ││││ ↗     ││  0x00007fbe644fa2a2:   mov    (%rdi,%rcx,1),%ebx
           │   │                 │                │││ │ ││││ │     ││  0x00007fbe644fa2a5:   cmp    (%rsi,%rcx,1),%ebx
           │   │                 │                │││ │ ││││╭│     ││  0x00007fbe644fa2a8:   jne    0x00007fbe644fa2db
           │   │                 │                │││ │ ││││││     ││  0x00007fbe644fa2aa:   add    $0x4,%rcx
           │   │                 │                │││ │ │││││╰     ││  0x00007fbe644fa2ae:   jne    0x00007fbe644fa2a2
           │   │                 │                │││ │ │││↘│      ││  0x00007fbe644fa2b0:   test   $0x2,%al
           │   │                 │                │││ │ │││ │ ╭    ││  0x00007fbe644fa2b2:   je     0x00007fbe644fa2c6
           │   │                 │                │││ │ │││ │ │    ││  0x00007fbe644fa2b4:   movzwl (%rdi),%ebx
           │   │                 │                │││ │ │││ │ │    ││  0x00007fbe644fa2b7:   movzwl (%rsi),%ecx
           │   │                 │                │││ │ │││ │ │    ││  0x00007fbe644fa2ba:   cmp    %ecx,%ebx
           │   │                 │                │││ │ │││ │ │╭   ││  0x00007fbe644fa2bc:   jne    0x00007fbe644fa2db
           │   │                 │                │││ │ │││ │ ││   ││  0x00007fbe644fa2be:   lea    0x2(%rdi),%rdi
           │   │                 │                │││ │ │││ │ ││   ││  0x00007fbe644fa2c2:   lea    0x2(%rsi),%rsi
           │   │                 │                │││ │ │││ │ ↘│   ││  0x00007fbe644fa2c6:   test   $0x1,%al
           │   │                 │                │││ │ │││ │  │╭  ││  0x00007fbe644fa2c8:   je     0x00007fbe644fa2d4
           │   │                 │                │││ │ │││ │  ││  ││  0x00007fbe644fa2ca:   movzbl (%rdi),%ebx
           │   │                 │                │││ │ │││ │  ││  ││  0x00007fbe644fa2cd:   movzbl (%rsi),%ecx
           │   │                 │                │││ │ │││ │  ││  ││  0x00007fbe644fa2d0:   cmp    %ecx,%ebx
           │   │                 │                │││ │ │││ │  ││╭ ││  0x00007fbe644fa2d2:   jne    0x00007fbe644fa2db
           │   │                 │                ││↘ │ ↘│↘ │  │↘│ ││  0x00007fbe644fa2d4:   mov    $0x1,%eax
           │   │                 │                ││  │  │  │  │ │╭││  0x00007fbe644fa2d9:   jmp    0x00007fbe644fa2dd
           │   │                 │                ││  ↘  ↘  ↘  ↘ ↘│││  0x00007fbe644fa2db:   xor    %eax,%eax
           │   │                 │                ││              ↘││  0x00007fbe644fa2dd:   vpxor  %ymm7,%ymm7,%ymm7
           │   │                 │                ││               ││  0x00007fbe644fa2e1:   vpxor  %ymm8,%ymm8,%ymm8            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │   │                 │                ││               ││                                                            ; - java.lang.String::equals@44 (line 1863)
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
           │   │                 │                ││               ││  0x00007fbe644fa2e6:   test   %eax,%eax
           │   │                 │                ││               ││  0x00007fbe644fa2e8:   je     0x00007fbe644fa358           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
           │   │                 │                ││               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.35%   │   │                 │                │↘               ││  0x00007fbe644fa2ee:   mov    $0x3,%ecx
           │   │                 │                │                ││  0x00007fbe644fa2f3:   vmovd  %xmm5,%ebp
   0.00%   │   │                 │                │                ╰│  0x00007fbe644fa2f7:   jmp    0x00007fbe644f9fef
   5.44%   │   │                 ↘                ↘                 │  0x00007fbe644fa2fc:   mov    $0x2,%ecx
   0.00%   │   │                                                    │  0x00007fbe644fa301:   vmovd  %xmm5,%ebp
   0.00%   │   │                                                    ╰  0x00007fbe644fa305:   jmp    0x00007fbe644f9fef           ;   {no_reloc}
           ↘   │                                                       0x00007fbe644fa30a:   mov    %r13d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
               │                                                       0x00007fbe644fa30d:   vzeroupper 
   0.03%       │                                                       0x00007fbe644fa310:   add    $0x30,%rsp
               │                                                       0x00007fbe644fa314:   pop    %rbp
   0.02%       │                                                       0x00007fbe644fa315:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               │                                                       0x00007fbe644fa31c:   ja     0x00007fbe644fa404
   0.00%       │                                                       0x00007fbe644fa322:   ret    
               ↘                                                       0x00007fbe644fa323:   mov    $0xffffff45,%esi
                                                                       0x00007fbe644fa328:   vmovsd %xmm0,(%rsp)
                                                                       0x00007fbe644fa32d:   mov    %r10d,0x8(%rsp)
                                                                       0x00007fbe644fa332:   mov    %edx,0xc(%rsp)
                                                                       0x00007fbe644fa336:   vmovss %xmm6,0x10(%rsp)
                                                                       0x00007fbe644fa33c:   mov    %r13d,0x14(%rsp)
                                                                       0x00007fbe644fa341:   mov    %ebx,0x18(%rsp)
                                                                       0x00007fbe644fa345:   data16 xchg %ax,%ax
                                                                       0x00007fbe644fa348:   vzeroupper 
                                                                       0x00007fbe644fa34b:   call   0x00007fbe63f8af00           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [20]=NarrowOop }
....................................................................................................
  96.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.89%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 670 
   0.27%     [kernel.kallsyms]  native_read_msr 
   0.27%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.11%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 701 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  __mod_node_page_state 
   0.04%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%     [kernel.kallsyms]  free_swap_cache 
   1.03%  <...other 214 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.89%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 670 
   0.27%     [kernel.kallsyms]  native_read_msr 
   0.27%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.11%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 701 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  __mod_node_page_state 
   0.04%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%     [kernel.kallsyms]  free_swap_cache 
   1.03%  <...other 209 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.99%           c2, level 4
   2.67%     [kernel.kallsyms]
   0.18%             libjvm.so
   0.09%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%            libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:23:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.455 ns/op
# Warmup Iteration   2: 10.089 ns/op
# Warmup Iteration   3: 10.006 ns/op
# Warmup Iteration   4: 10.142 ns/op
# Warmup Iteration   5: 10.032 ns/op
Iteration   1: 10.289 ns/op
Iteration   2: 10.131 ns/op
Iteration   3: 10.109 ns/op
Iteration   4: 10.078 ns/op
Iteration   5: 10.153 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  10.152 ±(99.9%) 0.314 ns/op [Average]
  (min, avg, max) = (10.078, 10.152, 10.289), stdev = 0.081
  CI (99.9%): [9.838, 10.466] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 124312 total address lines.
Perf output processed (skipped 67.276 seconds):
 Column 1: cycles (49703 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 649 

                                                                                                                # {method} {0x00007f7624479568} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                                                                                                                #           [sp+0x90]  (sp of caller)
                                                                                                                0x00007f76b04fa0e0:   mov    0x8(%rsi),%r10d
                                                                                                                0x00007f76b04fa0e4:   movabs $0x7f762f000000,%r11
                                                                                                                0x00007f76b04fa0ee:   add    %r11,%r10
                                                                                                                0x00007f76b04fa0f1:   cmp    %r10,%rax
                                                                                                                0x00007f76b04fa0f4:   jne    0x00007f76aff85080           ;   {runtime_call ic_miss_stub}
                                                                                                                0x00007f76b04fa0fa:   xchg   %ax,%ax
                                                                                                                0x00007f76b04fa0fc:   nopl   0x0(%rax)
                                                                                                              [Verified Entry Point]
   0.01%                                                                                                        0x00007f76b04fa100:   mov    %eax,-0x14000(%rsp)
                                                                                                                0x00007f76b04fa107:   push   %rbp
                                                                                                                0x00007f76b04fa108:   sub    $0x80,%rsp
   0.01%                                                                                                        0x00007f76b04fa10f:   nop
                                                                                                                0x00007f76b04fa110:   cmpl   $0x1,0x20(%r15)
                                                                                                                0x00007f76b04fa118:   jne    0x00007f76b04fa886           ;*synchronization entry
                                                                                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@-1 (line 125)
   0.01%                                                                                                        0x00007f76b04fa11e:   mov    %rsi,%r10
                                                                                                                0x00007f76b04fa121:   mov    0x18(%rsi),%ebp              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                                                                                                                0x00007f76b04fa124:   mov    0xc(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007f76b04fa85b
                                                                                                                                                                          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
   0.02%                                                                                                        0x00007f76b04fa129:   test   %r9d,%r9d
          ╭                                                                                                     0x00007f76b04fa12c:   jbe    0x00007f76b04fa7b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%  │                                                                                                     0x00007f76b04fa132:   mov    %r9d,%r11d
          │                                                                                                     0x00007f76b04fa135:   dec    %r11d
          │                                                                                                     0x00007f76b04fa138:   cmp    %r9d,%r11d
   0.01%  │                                                                                                     0x00007f76b04fa13b:   nopl   0x0(%rax,%rax,1)
          │                                                                                                     0x00007f76b04fa140:   jae    0x00007f76b04fa80c
   0.01%  │                                                                                                     0x00007f76b04fa146:   mov    %r9d,(%rsp)
          │                                                                                                     0x00007f76b04fa14a:   mov    %rsi,0x10(%rsp)
          │                                                                                                     0x00007f76b04fa14f:   lea    (%r12,%rbp,8),%r10           ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          │                                                                                                     0x00007f76b04fa153:   mov    %r10,0x8(%rsp)
   0.01%  │                                                                                                     0x00007f76b04fa158:   mov    %ebp,0x18(%rsp)
          │                                                                                                     0x00007f76b04fa15c:   movabs $0x7ff035308,%r10            ;   {oop([B{0x00000007ff035308})}
          │                                                                                                     0x00007f76b04fa166:   movabs $0x7ff035308,%r11            ;   {oop([B{0x00000007ff035308})}
          │                                                                                                     0x00007f76b04fa170:   add    $0x10,%r11
   0.01%  │                                                                                                     0x00007f76b04fa174:   mov    %r11,0x20(%rsp)
          │                                                                                                     0x00007f76b04fa179:   movabs $0x7ff0352d0,%r10            ;   {oop([B{0x00000007ff0352d0})}
          │                                                                                                     0x00007f76b04fa183:   movabs $0x7ff0352d0,%r11            ;   {oop([B{0x00000007ff0352d0})}
          │                                                                                                     0x00007f76b04fa18d:   add    $0x10,%r11
   0.01%  │                                                                                                     0x00007f76b04fa191:   mov    %r11,0x28(%rsp)
          │                                                                                                     0x00007f76b04fa196:   movabs $0x7ff035298,%r10            ;   {oop([B{0x00000007ff035298})}
          │                                                                                                     0x00007f76b04fa1a0:   movabs $0x7ff035298,%r11            ;   {oop([B{0x00000007ff035298})}
          │                                                                                                     0x00007f76b04fa1aa:   add    $0x10,%r11
   0.01%  │                                                                                                     0x00007f76b04fa1ae:   mov    %r11,0x30(%rsp)
          │                                                                                                     0x00007f76b04fa1b3:   movabs $0x7ff035268,%r10            ;   {oop([B{0x00000007ff035268})}
          │                                                                                                     0x00007f76b04fa1bd:   movabs $0x7ff035268,%r11            ;   {oop([B{0x00000007ff035268})}
          │                                                                                                     0x00007f76b04fa1c7:   add    $0x10,%r11
   0.00%  │                                                                                                     0x00007f76b04fa1cb:   mov    %r11,0x38(%rsp)
          │                                                                                                     0x00007f76b04fa1d0:   movabs $0x7ff035238,%r10            ;   {oop([B{0x00000007ff035238})}
          │                                                                                                     0x00007f76b04fa1da:   movabs $0x7ff035238,%r11            ;   {oop([B{0x00000007ff035238})}
          │                                                                                                     0x00007f76b04fa1e4:   add    $0x10,%r11
   0.00%  │                                                                                                     0x00007f76b04fa1e8:   mov    %r11,0x40(%rsp)
   0.00%  │                                                                                                     0x00007f76b04fa1ed:   xor    %r10d,%r10d
          │                                                                                                     0x00007f76b04fa1f0:   xor    %ebp,%ebp
          │                                                                                                     0x00007f76b04fa1f2:   mov    %ebp,0x1c(%rsp)
   0.01%  │╭                                                                                                    0x00007f76b04fa1f6:   jmp    0x00007f76b04fa22d
   0.01%  ││  ↗                 ↗                                                                               0x00007f76b04fa1f8:   mov    $0x1,%r8d
   0.95%  ││  │                 │                                                                               0x00007f76b04fa1fe:   mov    %r10d,0x4(%rsp)
   0.02%  ││╭ │                 │                                                                               0x00007f76b04fa203:   jmp    0x00007f76b04fa210
   1.46%  │││ │                 │↗                ↗                                                             0x00007f76b04fa205:   mov    $0x2,%r8d
   0.00%  │││ │                 ││                │                                                             0x00007f76b04fa20b:   mov    %r10d,0x4(%rsp)              ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │││ │                 ││                │                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.53%  ││↘ │                 ││                │ ↗                  ↗                                   ↗↗   0x00007f76b04fa210:   mov    0x1c(%rsp),%ebp
   0.95%  ││  │                 ││                │ │                  │                                   ││   0x00007f76b04fa214:   add    %r8d,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │                 ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   2.32%  ││  │                 ││                │ │                  │                                   ││   0x00007f76b04fa217:   mov    %ebp,0x1c(%rsp)
   1.69%  ││  │                 ││                │ │                  │                                   ││   0x00007f76b04fa21b:   mov    0x4(%rsp),%ebp
   3.17%  ││  │                 ││                │ │                  │                                   ││   0x00007f76b04fa21f:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │                 ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.95%  ││  │                 ││                │ │                  │                                   ││   0x00007f76b04fa221:   cmp    (%rsp),%ebp
          ││ ╭│                 ││                │ │                  │                                   ││   0x00007f76b04fa224:   jge    0x00007f76b04fa797           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                 ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   2.27%  ││ ││                 ││                │ │                  │                                   ││   0x00007f76b04fa22a:   mov    %ebp,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                 ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   1.79%  │↘ ││                 ││                │ │                  │                                   ││   0x00007f76b04fa22d:   mov    0x8(%rsp),%r11
   3.12%  │  ││                 ││                │ │                  │                                   ││   0x00007f76b04fa232:   mov    0x10(%r11,%r10,4),%ebp       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                 ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.18%  │  ││                 ││                │ │                  │                                   ││   0x00007f76b04fa237:   mov    %ebp,0x48(%rsp)
   2.48%  │  ││                 ││                │ │                  │                                   ││   0x00007f76b04fa23b:   nopl   0x0(%rax,%rax,1)
   1.75%  │  ││                 ││                │ │                  │                                   ││   0x00007f76b04fa240:   cmp    $0xffe06a44,%ebp             ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
          │  │╰                 ││                │ │                  │                                   ││   0x00007f76b04fa246:   je     0x00007f76b04fa1f8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@2 (line 1858)
          │  │                  ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │                  ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.21%  │  │                  ││                │ │                  │                                   ││   0x00007f76b04fa248:   movsbl 0x10(%r12,%rbp,8),%r11d      ; implicit exception: dispatches to 0x00007f76b04fa82c
          │  │                  ││                │ │                  │                                   ││                                                             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │  │                  ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@30 (line 1861)
          │  │                  ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │                  ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.21%  │  │                  ││                │ │                  │                                   ││   0x00007f76b04fa24e:   test   %r11d,%r11d
          │  │ ╭                ││                │ │                  │                                   ││   0x00007f76b04fa251:   jne    0x00007f76b04fa7b8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@33 (line 1861)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.41%  │  │ │                ││                │ │                  │                                   ││   0x00007f76b04fa257:   mov    0x14(%r12,%rbp,8),%r11d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@41 (line 1861)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.26%  │  │ │                ││                │ │                  │                                   ││   0x00007f76b04fa25c:   mov    0xc(%r12,%r11,8),%r8d        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   9.94%  │  │ │                ││                │ │                  │                                   ││   0x00007f76b04fa261:   lea    (%r12,%r11,8),%r9            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@41 (line 1861)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │ │                ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.01%  │  │ │                ││                │ │                  │                                   ││   0x00007f76b04fa265:   lea    0x10(%r12,%r11,8),%r11
   0.88%  │  │ │                ││                │ │                  │                                   ││   0x00007f76b04fa26a:   cmp    $0x5,%r8d
          │  │ │╭               ││                │ │                  │                                   ││   0x00007f76b04fa26e:   jne    0x00007f76b04fa33f
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa274:   mov    0x40(%rsp),%rdi
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa279:   mov    %r11,%rsi
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa27c:   mov    $0x5,%ecx
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa281:   test   %ecx,%ecx
          │  │ ││╭              ││                │ │                  │                                   ││   0x00007f76b04fa283:   je     0x00007f76b04fa326
          │  │ │││              ││                │ │                  │                                   ││   0x00007f76b04fa289:   mov    %ecx,%eax
          │  │ │││              ││                │ │                  │                                   ││   0x00007f76b04fa28b:   and    $0x1f,%eax
          │  │ │││              ││                │ │                  │                                   ││   0x00007f76b04fa28e:   and    $0xffffffe0,%ecx
          │  │ │││╭             ││                │ │                  │                                   ││   0x00007f76b04fa291:   je     0x00007f76b04fa2e2
          │  │ ││││             ││                │ │                  │                                   ││   0x00007f76b04fa297:   lea    (%rdi,%rcx,1),%rdi
          │  │ ││││             ││                │ │                  │                                   ││   0x00007f76b04fa29b:   lea    (%rsi,%rcx,1),%rsi
          │  │ ││││             ││                │ │                  │                                   ││   0x00007f76b04fa29f:   neg    %rcx
          │  │ ││││ ↗           ││                │ │                  │                                   ││   0x00007f76b04fa2a2:   vmovdqu (%rdi,%rcx,1),%ymm1
          │  │ ││││ │           ││                │ │                  │                                   ││   0x00007f76b04fa2a7:   vmovdqu (%rsi,%rcx,1),%ymm0
          │  │ ││││ │           ││                │ │                  │                                   ││   0x00007f76b04fa2ac:   vpxor  %ymm0,%ymm1,%ymm1
          │  │ ││││ │           ││                │ │                  │                                   ││   0x00007f76b04fa2b0:   vptest %ymm1,%ymm1
          │  │ ││││╭│           ││                │ │                  │                                   ││   0x00007f76b04fa2b5:   jne    0x00007f76b04fa32d
          │  │ ││││││           ││                │ │                  │                                   ││   0x00007f76b04fa2bb:   add    $0x20,%rcx
          │  │ │││││╰           ││                │ │                  │                                   ││   0x00007f76b04fa2bf:   jne    0x00007f76b04fa2a2
          │  │ │││││            ││                │ │                  │                                   ││   0x00007f76b04fa2c1:   test   %eax,%eax
          │  │ │││││ ╭          ││                │ │                  │                                   ││   0x00007f76b04fa2c3:   je     0x00007f76b04fa326
          │  │ │││││ │          ││                │ │                  │                                   ││   0x00007f76b04fa2c9:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          │  │ │││││ │          ││                │ │                  │                                   ││   0x00007f76b04fa2cf:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          │  │ │││││ │          ││                │ │                  │                                   ││   0x00007f76b04fa2d5:   vpxor  %ymm0,%ymm1,%ymm1
          │  │ │││││ │          ││                │ │                  │                                   ││   0x00007f76b04fa2d9:   vptest %ymm1,%ymm1
          │  │ │││││ │╭         ││                │ │                  │                                   ││   0x00007f76b04fa2de:   jne    0x00007f76b04fa32d
          │  │ │││││ ││╭        ││                │ │                  │                                   ││   0x00007f76b04fa2e0:   jmp    0x00007f76b04fa326
          │  │ │││↘│ │││        ││                │ │                  │                                   ││   0x00007f76b04fa2e2:   mov    %eax,%ecx
          │  │ │││ │ │││        ││                │ │                  │                                   ││   0x00007f76b04fa2e4:   and    $0xfffffffc,%ecx
          │  │ │││ │ │││╭       ││                │ │                  │                                   ││   0x00007f76b04fa2e7:   je     0x00007f76b04fa302
          │  │ │││ │ ││││       ││                │ │                  │                                   ││   0x00007f76b04fa2e9:   lea    (%rdi,%rcx,1),%rdi
          │  │ │││ │ ││││       ││                │ │                  │                                   ││   0x00007f76b04fa2ed:   lea    (%rsi,%rcx,1),%rsi
          │  │ │││ │ ││││       ││                │ │                  │                                   ││   0x00007f76b04fa2f1:   neg    %rcx
          │  │ │││ │ ││││ ↗     ││                │ │                  │                                   ││   0x00007f76b04fa2f4:   mov    (%rdi,%rcx,1),%ebx
          │  │ │││ │ ││││ │     ││                │ │                  │                                   ││   0x00007f76b04fa2f7:   cmp    (%rsi,%rcx,1),%ebx
          │  │ │││ │ ││││╭│     ││                │ │                  │                                   ││   0x00007f76b04fa2fa:   jne    0x00007f76b04fa32d
          │  │ │││ │ ││││││     ││                │ │                  │                                   ││   0x00007f76b04fa2fc:   add    $0x4,%rcx
          │  │ │││ │ │││││╰     ││                │ │                  │                                   ││   0x00007f76b04fa300:   jne    0x00007f76b04fa2f4
          │  │ │││ │ │││↘│      ││                │ │                  │                                   ││   0x00007f76b04fa302:   test   $0x2,%al
          │  │ │││ │ │││ │ ╭    ││                │ │                  │                                   ││   0x00007f76b04fa304:   je     0x00007f76b04fa318
          │  │ │││ │ │││ │ │    ││                │ │                  │                                   ││   0x00007f76b04fa306:   movzwl (%rdi),%ebx
          │  │ │││ │ │││ │ │    ││                │ │                  │                                   ││   0x00007f76b04fa309:   movzwl (%rsi),%ecx
          │  │ │││ │ │││ │ │    ││                │ │                  │                                   ││   0x00007f76b04fa30c:   cmp    %ecx,%ebx
          │  │ │││ │ │││ │ │╭   ││                │ │                  │                                   ││   0x00007f76b04fa30e:   jne    0x00007f76b04fa32d
          │  │ │││ │ │││ │ ││   ││                │ │                  │                                   ││   0x00007f76b04fa310:   lea    0x2(%rdi),%rdi
          │  │ │││ │ │││ │ ││   ││                │ │                  │                                   ││   0x00007f76b04fa314:   lea    0x2(%rsi),%rsi
          │  │ │││ │ │││ │ ↘│   ││                │ │                  │                                   ││   0x00007f76b04fa318:   test   $0x1,%al
          │  │ │││ │ │││ │  │╭  ││                │ │                  │                                   ││   0x00007f76b04fa31a:   je     0x00007f76b04fa326
          │  │ │││ │ │││ │  ││  ││                │ │                  │                                   ││   0x00007f76b04fa31c:   movzbl (%rdi),%ebx
          │  │ │││ │ │││ │  ││  ││                │ │                  │                                   ││   0x00007f76b04fa31f:   movzbl (%rsi),%ecx
          │  │ │││ │ │││ │  ││  ││                │ │                  │                                   ││   0x00007f76b04fa322:   cmp    %ecx,%ebx
          │  │ │││ │ │││ │  ││╭ ││                │ │                  │                                   ││   0x00007f76b04fa324:   jne    0x00007f76b04fa32d
          │  │ ││↘ │ ↘│↘ │  │↘│ ││                │ │                  │                                   ││   0x00007f76b04fa326:   mov    $0x1,%eax
          │  │ ││  │  │  │  │ │╭││                │ │                  │                                   ││   0x00007f76b04fa32b:   jmp    0x00007f76b04fa32f
          │  │ ││  ↘  ↘  ↘  ↘ ↘│││                │ │                  │                                   ││   0x00007f76b04fa32d:   xor    %eax,%eax
          │  │ ││              ↘││                │ │                  │                                   ││   0x00007f76b04fa32f:   vpxor  %ymm1,%ymm1,%ymm1
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa333:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││               ││                │ │                  │                                   ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ ││               ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
          │  │ ││               ││                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ ││               ││                │ │                  │                                   ││   0x00007f76b04fa337:   test   %eax,%eax
          │  │ ││               ╰│                │ │                  │                                   ││   0x00007f76b04fa339:   jne    0x00007f76b04fa1f8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                │                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
          │  │ ││                │                │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.34%  │  │ │↘                │                │ │                  │                                   ││   0x00007f76b04fa33f:   nop                                 ;   {no_reloc}
   1.57%  │  │ │                 │                │ │                  │                                   ││   0x00007f76b04fa340:   cmp    $0xffe06a4a,%ebp             ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
          │  │ │                 ╰                │ │                  │                                   ││   0x00007f76b04fa346:   je     0x00007f76b04fa205           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                  │ │                  │                                   ││                                                             ; - java.lang.String::equals@2 (line 1858)
          │  │ │                                  │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │  │ │                                  │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                  │ │                  │                                   ││   0x00007f76b04fa34c:   cmp    $0x7,%r8d
          │  │ │                  ╭               │ │                  │                                   ││   0x00007f76b04fa350:   jne    0x00007f76b04fa426
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa356:   mov    0x38(%rsp),%rdi
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa35b:   mov    %r11,%rsi
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa35e:   mov    $0x7,%ecx
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa363:   test   %ecx,%ecx
          │  │ │                  │╭              │ │                  │                                   ││   0x00007f76b04fa365:   je     0x00007f76b04fa408
          │  │ │                  ││              │ │                  │                                   ││   0x00007f76b04fa36b:   mov    %ecx,%eax
          │  │ │                  ││              │ │                  │                                   ││   0x00007f76b04fa36d:   and    $0x1f,%eax
          │  │ │                  ││              │ │                  │                                   ││   0x00007f76b04fa370:   and    $0xffffffe0,%ecx
          │  │ │                  ││╭             │ │                  │                                   ││   0x00007f76b04fa373:   je     0x00007f76b04fa3c4
          │  │ │                  │││             │ │                  │                                   ││   0x00007f76b04fa379:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                  │││             │ │                  │                                   ││   0x00007f76b04fa37d:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                  │││             │ │                  │                                   ││   0x00007f76b04fa381:   neg    %rcx
          │  │ │                  │││ ↗           │ │                  │                                   ││   0x00007f76b04fa384:   vmovdqu (%rdi,%rcx,1),%ymm0
          │  │ │                  │││ │           │ │                  │                                   ││   0x00007f76b04fa389:   vmovdqu (%rsi,%rcx,1),%ymm1
          │  │ │                  │││ │           │ │                  │                                   ││   0x00007f76b04fa38e:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                  │││ │           │ │                  │                                   ││   0x00007f76b04fa392:   vptest %ymm0,%ymm0
          │  │ │                  │││╭│           │ │                  │                                   ││   0x00007f76b04fa397:   jne    0x00007f76b04fa40f
          │  │ │                  │││││           │ │                  │                                   ││   0x00007f76b04fa39d:   add    $0x20,%rcx
          │  │ │                  ││││╰           │ │                  │                                   ││   0x00007f76b04fa3a1:   jne    0x00007f76b04fa384
          │  │ │                  ││││            │ │                  │                                   ││   0x00007f76b04fa3a3:   test   %eax,%eax
          │  │ │                  ││││ ╭          │ │                  │                                   ││   0x00007f76b04fa3a5:   je     0x00007f76b04fa408
          │  │ │                  ││││ │          │ │                  │                                   ││   0x00007f76b04fa3ab:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          │  │ │                  ││││ │          │ │                  │                                   ││   0x00007f76b04fa3b1:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          │  │ │                  ││││ │          │ │                  │                                   ││   0x00007f76b04fa3b7:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                  ││││ │          │ │                  │                                   ││   0x00007f76b04fa3bb:   vptest %ymm0,%ymm0
          │  │ │                  ││││ │╭         │ │                  │                                   ││   0x00007f76b04fa3c0:   jne    0x00007f76b04fa40f
          │  │ │                  ││││ ││╭        │ │                  │                                   ││   0x00007f76b04fa3c2:   jmp    0x00007f76b04fa408
          │  │ │                  ││↘│ │││        │ │                  │                                   ││   0x00007f76b04fa3c4:   mov    %eax,%ecx
          │  │ │                  ││ │ │││        │ │                  │                                   ││   0x00007f76b04fa3c6:   and    $0xfffffffc,%ecx
          │  │ │                  ││ │ │││╭       │ │                  │                                   ││   0x00007f76b04fa3c9:   je     0x00007f76b04fa3e4
          │  │ │                  ││ │ ││││       │ │                  │                                   ││   0x00007f76b04fa3cb:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                  ││ │ ││││       │ │                  │                                   ││   0x00007f76b04fa3cf:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                  ││ │ ││││       │ │                  │                                   ││   0x00007f76b04fa3d3:   neg    %rcx
          │  │ │                  ││ │ ││││ ↗     │ │                  │                                   ││   0x00007f76b04fa3d6:   mov    (%rdi,%rcx,1),%ebx
          │  │ │                  ││ │ ││││ │     │ │                  │                                   ││   0x00007f76b04fa3d9:   cmp    (%rsi,%rcx,1),%ebx
          │  │ │                  ││ │ ││││╭│     │ │                  │                                   ││   0x00007f76b04fa3dc:   jne    0x00007f76b04fa40f
          │  │ │                  ││ │ ││││││     │ │                  │                                   ││   0x00007f76b04fa3de:   add    $0x4,%rcx
          │  │ │                  ││ │ │││││╰     │ │                  │                                   ││   0x00007f76b04fa3e2:   jne    0x00007f76b04fa3d6
          │  │ │                  ││ │ │││↘│      │ │                  │                                   ││   0x00007f76b04fa3e4:   test   $0x2,%al
          │  │ │                  ││ │ │││ │ ╭    │ │                  │                                   ││   0x00007f76b04fa3e6:   je     0x00007f76b04fa3fa
          │  │ │                  ││ │ │││ │ │    │ │                  │                                   ││   0x00007f76b04fa3e8:   movzwl (%rdi),%ebx
          │  │ │                  ││ │ │││ │ │    │ │                  │                                   ││   0x00007f76b04fa3eb:   movzwl (%rsi),%ecx
          │  │ │                  ││ │ │││ │ │    │ │                  │                                   ││   0x00007f76b04fa3ee:   cmp    %ecx,%ebx
          │  │ │                  ││ │ │││ │ │╭   │ │                  │                                   ││   0x00007f76b04fa3f0:   jne    0x00007f76b04fa40f
          │  │ │                  ││ │ │││ │ ││   │ │                  │                                   ││   0x00007f76b04fa3f2:   lea    0x2(%rdi),%rdi
          │  │ │                  ││ │ │││ │ ││   │ │                  │                                   ││   0x00007f76b04fa3f6:   lea    0x2(%rsi),%rsi
          │  │ │                  ││ │ │││ │ ↘│   │ │                  │                                   ││   0x00007f76b04fa3fa:   test   $0x1,%al
          │  │ │                  ││ │ │││ │  │╭  │ │                  │                                   ││   0x00007f76b04fa3fc:   je     0x00007f76b04fa408
          │  │ │                  ││ │ │││ │  ││  │ │                  │                                   ││   0x00007f76b04fa3fe:   movzbl (%rdi),%ebx
          │  │ │                  ││ │ │││ │  ││  │ │                  │                                   ││   0x00007f76b04fa401:   movzbl (%rsi),%ecx
          │  │ │                  ││ │ │││ │  ││  │ │                  │                                   ││   0x00007f76b04fa404:   cmp    %ecx,%ebx
          │  │ │                  ││ │ │││ │  ││╭ │ │                  │                                   ││   0x00007f76b04fa406:   jne    0x00007f76b04fa40f
          │  │ │                  │↘ │ ↘│↘ │  │↘│ │ │                  │                                   ││   0x00007f76b04fa408:   mov    $0x1,%eax
          │  │ │                  │  │  │  │  │ │╭│ │                  │                                   ││   0x00007f76b04fa40d:   jmp    0x00007f76b04fa411
          │  │ │                  │  ↘  ↘  ↘  ↘ ↘││ │                  │                                   ││   0x00007f76b04fa40f:   xor    %eax,%eax
          │  │ │                  │              ↘│ │                  │                                   ││   0x00007f76b04fa411:   vpxor  %ymm0,%ymm0,%ymm0
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa415:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                  │               │ │                  │                                   ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ │                  │               │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
          │  │ │                  │               │ │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa419:   test   %eax,%eax
          │  │ │                  │               │ │                  │                                   ││   0x00007f76b04fa41b:   nopl   0x0(%rax,%rax,1)
          │  │ │                  │               ╰ │                  │                                   ││   0x00007f76b04fa420:   jne    0x00007f76b04fa205           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                  │                 │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
          │  │ │                  │                 │                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.50%  │  │ │                  ↘                 │                  │                                   ││   0x00007f76b04fa426:   cmp    $0xffe06a50,%ebp             ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
          │  │ │                                   ╭│                  │                                   ││   0x00007f76b04fa42c:   jne    0x00007f76b04fa43e           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                   ││                  │                                   ││                                                             ; - java.lang.String::equals@2 (line 1858)
          │  │ │                                   ││                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │  │ │                                   ││                  │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                   ││                ↗ │                                   ││   0x00007f76b04fa42e:   mov    $0x3,%r8d
          │  │ │                                   ││                │ │                                   ││   0x00007f76b04fa434:   mov    %r10d,0x4(%rsp)
   0.00%  │  │ │                                   │╰                │ │                                   ││   0x00007f76b04fa439:   jmp    0x00007f76b04fa210
   4.19%  │  │ │                                   ↘                 │ │                                   ││   0x00007f76b04fa43e:   xchg   %ax,%ax
          │  │ │                                                     │ │                                   ││   0x00007f76b04fa440:   cmp    $0x10,%r8d
          │  │ │                                     ╭               │ │                                   ││   0x00007f76b04fa444:   jne    0x00007f76b04fa515
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa44a:   mov    0x30(%rsp),%rdi
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa44f:   mov    %r11,%rsi
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa452:   mov    $0x10,%ecx
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa457:   test   %ecx,%ecx
          │  │ │                                     │╭              │ │                                   ││   0x00007f76b04fa459:   je     0x00007f76b04fa4fc
          │  │ │                                     ││              │ │                                   ││   0x00007f76b04fa45f:   mov    %ecx,%eax
          │  │ │                                     ││              │ │                                   ││   0x00007f76b04fa461:   and    $0x1f,%eax
          │  │ │                                     ││              │ │                                   ││   0x00007f76b04fa464:   and    $0xffffffe0,%ecx
          │  │ │                                     ││╭             │ │                                   ││   0x00007f76b04fa467:   je     0x00007f76b04fa4b8
          │  │ │                                     │││             │ │                                   ││   0x00007f76b04fa46d:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                     │││             │ │                                   ││   0x00007f76b04fa471:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                     │││             │ │                                   ││   0x00007f76b04fa475:   neg    %rcx
          │  │ │                                     │││ ↗           │ │                                   ││   0x00007f76b04fa478:   vmovdqu (%rdi,%rcx,1),%ymm0
          │  │ │                                     │││ │           │ │                                   ││   0x00007f76b04fa47d:   vmovdqu (%rsi,%rcx,1),%ymm1
          │  │ │                                     │││ │           │ │                                   ││   0x00007f76b04fa482:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                     │││ │           │ │                                   ││   0x00007f76b04fa486:   vptest %ymm0,%ymm0
          │  │ │                                     │││╭│           │ │                                   ││   0x00007f76b04fa48b:   jne    0x00007f76b04fa503
          │  │ │                                     │││││           │ │                                   ││   0x00007f76b04fa491:   add    $0x20,%rcx
          │  │ │                                     ││││╰           │ │                                   ││   0x00007f76b04fa495:   jne    0x00007f76b04fa478
          │  │ │                                     ││││            │ │                                   ││   0x00007f76b04fa497:   test   %eax,%eax
          │  │ │                                     ││││ ╭          │ │                                   ││   0x00007f76b04fa499:   je     0x00007f76b04fa4fc
          │  │ │                                     ││││ │          │ │                                   ││   0x00007f76b04fa49f:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          │  │ │                                     ││││ │          │ │                                   ││   0x00007f76b04fa4a5:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          │  │ │                                     ││││ │          │ │                                   ││   0x00007f76b04fa4ab:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                     ││││ │          │ │                                   ││   0x00007f76b04fa4af:   vptest %ymm0,%ymm0
          │  │ │                                     ││││ │╭         │ │                                   ││   0x00007f76b04fa4b4:   jne    0x00007f76b04fa503
          │  │ │                                     ││││ ││╭        │ │                                   ││   0x00007f76b04fa4b6:   jmp    0x00007f76b04fa4fc
          │  │ │                                     ││↘│ │││        │ │                                   ││   0x00007f76b04fa4b8:   mov    %eax,%ecx
          │  │ │                                     ││ │ │││        │ │                                   ││   0x00007f76b04fa4ba:   and    $0xfffffffc,%ecx
          │  │ │                                     ││ │ │││╭       │ │                                   ││   0x00007f76b04fa4bd:   je     0x00007f76b04fa4d8
          │  │ │                                     ││ │ ││││       │ │                                   ││   0x00007f76b04fa4bf:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                     ││ │ ││││       │ │                                   ││   0x00007f76b04fa4c3:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                     ││ │ ││││       │ │                                   ││   0x00007f76b04fa4c7:   neg    %rcx
          │  │ │                                     ││ │ ││││ ↗     │ │                                   ││   0x00007f76b04fa4ca:   mov    (%rdi,%rcx,1),%ebx
          │  │ │                                     ││ │ ││││ │     │ │                                   ││   0x00007f76b04fa4cd:   cmp    (%rsi,%rcx,1),%ebx
          │  │ │                                     ││ │ ││││╭│     │ │                                   ││   0x00007f76b04fa4d0:   jne    0x00007f76b04fa503
          │  │ │                                     ││ │ ││││││     │ │                                   ││   0x00007f76b04fa4d2:   add    $0x4,%rcx
          │  │ │                                     ││ │ │││││╰     │ │                                   ││   0x00007f76b04fa4d6:   jne    0x00007f76b04fa4ca
          │  │ │                                     ││ │ │││↘│      │ │                                   ││   0x00007f76b04fa4d8:   test   $0x2,%al
          │  │ │                                     ││ │ │││ │ ╭    │ │                                   ││   0x00007f76b04fa4da:   je     0x00007f76b04fa4ee
          │  │ │                                     ││ │ │││ │ │    │ │                                   ││   0x00007f76b04fa4dc:   movzwl (%rdi),%ebx
          │  │ │                                     ││ │ │││ │ │    │ │                                   ││   0x00007f76b04fa4df:   movzwl (%rsi),%ecx
          │  │ │                                     ││ │ │││ │ │    │ │                                   ││   0x00007f76b04fa4e2:   cmp    %ecx,%ebx
          │  │ │                                     ││ │ │││ │ │╭   │ │                                   ││   0x00007f76b04fa4e4:   jne    0x00007f76b04fa503
          │  │ │                                     ││ │ │││ │ ││   │ │                                   ││   0x00007f76b04fa4e6:   lea    0x2(%rdi),%rdi
          │  │ │                                     ││ │ │││ │ ││   │ │                                   ││   0x00007f76b04fa4ea:   lea    0x2(%rsi),%rsi
          │  │ │                                     ││ │ │││ │ ↘│   │ │                                   ││   0x00007f76b04fa4ee:   test   $0x1,%al
          │  │ │                                     ││ │ │││ │  │╭  │ │                                   ││   0x00007f76b04fa4f0:   je     0x00007f76b04fa4fc
          │  │ │                                     ││ │ │││ │  ││  │ │                                   ││   0x00007f76b04fa4f2:   movzbl (%rdi),%ebx
          │  │ │                                     ││ │ │││ │  ││  │ │                                   ││   0x00007f76b04fa4f5:   movzbl (%rsi),%ecx
          │  │ │                                     ││ │ │││ │  ││  │ │                                   ││   0x00007f76b04fa4f8:   cmp    %ecx,%ebx
          │  │ │                                     ││ │ │││ │  ││╭ │ │                                   ││   0x00007f76b04fa4fa:   jne    0x00007f76b04fa503
          │  │ │                                     │↘ │ ↘│↘ │  │↘│ │ │                                   ││   0x00007f76b04fa4fc:   mov    $0x1,%eax
          │  │ │                                     │  │  │  │  │ │╭│ │                                   ││   0x00007f76b04fa501:   jmp    0x00007f76b04fa505
          │  │ │                                     │  ↘  ↘  ↘  ↘ ↘││ │                                   ││   0x00007f76b04fa503:   xor    %eax,%eax
          │  │ │                                     │              ↘│ │                                   ││   0x00007f76b04fa505:   vpxor  %ymm0,%ymm0,%ymm0
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa509:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                     │               │ │                                   ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ │                                     │               │ │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
          │  │ │                                     │               │ │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                     │               │ │                                   ││   0x00007f76b04fa50d:   test   %eax,%eax
          │  │ │                                     │               ╰ │                                   ││   0x00007f76b04fa50f:   jne    0x00007f76b04fa42e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                     │                 │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
          │  │ │                                     │                 │                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   4.01%  │  │ │                                     ↘                 │                                   ││   0x00007f76b04fa515:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │ │                                                       │                                   ││   0x00007f76b04fa520:   cmp    $0xffe06a57,%ebp             ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff0352b8})}
          │  │ │                                                      ╭│                                   ││   0x00007f76b04fa526:   jne    0x00007f76b04fa538           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                      ││                                   ││                                                             ; - java.lang.String::equals@2 (line 1858)
          │  │ │                                                      ││                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │  │ │                                                      ││                                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                      ││                ↗                  ││   0x00007f76b04fa528:   mov    $0x4,%r8d
   0.00%  │  │ │                                                      ││                │                  ││   0x00007f76b04fa52e:   mov    %r10d,0x4(%rsp)
   1.46%  │  │ │                                                      │╰                │                  ││   0x00007f76b04fa533:   jmp    0x00007f76b04fa210
   2.74%  │  │ │                                                      ↘                 │                  ││   0x00007f76b04fa538:   nopl   0x0(%rax,%rax,1)
   0.00%  │  │ │                                                                        │                  ││   0x00007f76b04fa540:   cmp    $0xa,%r8d
          │  │ │                                                        ╭               │                  ││   0x00007f76b04fa544:   jne    0x00007f76b04fa615
          │  │ │                                                        │               │                  ││   0x00007f76b04fa54a:   mov    0x28(%rsp),%rdi
          │  │ │                                                        │               │                  ││   0x00007f76b04fa54f:   mov    %r11,%rsi
          │  │ │                                                        │               │                  ││   0x00007f76b04fa552:   mov    $0xa,%ecx
          │  │ │                                                        │               │                  ││   0x00007f76b04fa557:   test   %ecx,%ecx
          │  │ │                                                        │╭              │                  ││   0x00007f76b04fa559:   je     0x00007f76b04fa5fc
          │  │ │                                                        ││              │                  ││   0x00007f76b04fa55f:   mov    %ecx,%eax
          │  │ │                                                        ││              │                  ││   0x00007f76b04fa561:   and    $0x1f,%eax
          │  │ │                                                        ││              │                  ││   0x00007f76b04fa564:   and    $0xffffffe0,%ecx
          │  │ │                                                        ││╭             │                  ││   0x00007f76b04fa567:   je     0x00007f76b04fa5b8
          │  │ │                                                        │││             │                  ││   0x00007f76b04fa56d:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                                        │││             │                  ││   0x00007f76b04fa571:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                                        │││             │                  ││   0x00007f76b04fa575:   neg    %rcx
          │  │ │                                                        │││ ↗           │                  ││   0x00007f76b04fa578:   vmovdqu (%rdi,%rcx,1),%ymm0
          │  │ │                                                        │││ │           │                  ││   0x00007f76b04fa57d:   vmovdqu (%rsi,%rcx,1),%ymm1
          │  │ │                                                        │││ │           │                  ││   0x00007f76b04fa582:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                                        │││ │           │                  ││   0x00007f76b04fa586:   vptest %ymm0,%ymm0
          │  │ │                                                        │││╭│           │                  ││   0x00007f76b04fa58b:   jne    0x00007f76b04fa603
          │  │ │                                                        │││││           │                  ││   0x00007f76b04fa591:   add    $0x20,%rcx
          │  │ │                                                        ││││╰           │                  ││   0x00007f76b04fa595:   jne    0x00007f76b04fa578
          │  │ │                                                        ││││            │                  ││   0x00007f76b04fa597:   test   %eax,%eax
          │  │ │                                                        ││││ ╭          │                  ││   0x00007f76b04fa599:   je     0x00007f76b04fa5fc
          │  │ │                                                        ││││ │          │                  ││   0x00007f76b04fa59f:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          │  │ │                                                        ││││ │          │                  ││   0x00007f76b04fa5a5:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          │  │ │                                                        ││││ │          │                  ││   0x00007f76b04fa5ab:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                                        ││││ │          │                  ││   0x00007f76b04fa5af:   vptest %ymm0,%ymm0
          │  │ │                                                        ││││ │╭         │                  ││   0x00007f76b04fa5b4:   jne    0x00007f76b04fa603
          │  │ │                                                        ││││ ││╭        │                  ││   0x00007f76b04fa5b6:   jmp    0x00007f76b04fa5fc
          │  │ │                                                        ││↘│ │││        │                  ││   0x00007f76b04fa5b8:   mov    %eax,%ecx
          │  │ │                                                        ││ │ │││        │                  ││   0x00007f76b04fa5ba:   and    $0xfffffffc,%ecx
          │  │ │                                                        ││ │ │││╭       │                  ││   0x00007f76b04fa5bd:   je     0x00007f76b04fa5d8
          │  │ │                                                        ││ │ ││││       │                  ││   0x00007f76b04fa5bf:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                                        ││ │ ││││       │                  ││   0x00007f76b04fa5c3:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                                        ││ │ ││││       │                  ││   0x00007f76b04fa5c7:   neg    %rcx
          │  │ │                                                        ││ │ ││││ ↗     │                  ││   0x00007f76b04fa5ca:   mov    (%rdi,%rcx,1),%ebx
          │  │ │                                                        ││ │ ││││ │     │                  ││   0x00007f76b04fa5cd:   cmp    (%rsi,%rcx,1),%ebx
          │  │ │                                                        ││ │ ││││╭│     │                  ││   0x00007f76b04fa5d0:   jne    0x00007f76b04fa603
          │  │ │                                                        ││ │ ││││││     │                  ││   0x00007f76b04fa5d2:   add    $0x4,%rcx
          │  │ │                                                        ││ │ │││││╰     │                  ││   0x00007f76b04fa5d6:   jne    0x00007f76b04fa5ca
          │  │ │                                                        ││ │ │││↘│      │                  ││   0x00007f76b04fa5d8:   test   $0x2,%al
          │  │ │                                                        ││ │ │││ │ ╭    │                  ││   0x00007f76b04fa5da:   je     0x00007f76b04fa5ee
          │  │ │                                                        ││ │ │││ │ │    │                  ││   0x00007f76b04fa5dc:   movzwl (%rdi),%ebx
          │  │ │                                                        ││ │ │││ │ │    │                  ││   0x00007f76b04fa5df:   movzwl (%rsi),%ecx
          │  │ │                                                        ││ │ │││ │ │    │                  ││   0x00007f76b04fa5e2:   cmp    %ecx,%ebx
          │  │ │                                                        ││ │ │││ │ │╭   │                  ││   0x00007f76b04fa5e4:   jne    0x00007f76b04fa603
          │  │ │                                                        ││ │ │││ │ ││   │                  ││   0x00007f76b04fa5e6:   lea    0x2(%rdi),%rdi
          │  │ │                                                        ││ │ │││ │ ││   │                  ││   0x00007f76b04fa5ea:   lea    0x2(%rsi),%rsi
          │  │ │                                                        ││ │ │││ │ ↘│   │                  ││   0x00007f76b04fa5ee:   test   $0x1,%al
          │  │ │                                                        ││ │ │││ │  │╭  │                  ││   0x00007f76b04fa5f0:   je     0x00007f76b04fa5fc
          │  │ │                                                        ││ │ │││ │  ││  │                  ││   0x00007f76b04fa5f2:   movzbl (%rdi),%ebx
          │  │ │                                                        ││ │ │││ │  ││  │                  ││   0x00007f76b04fa5f5:   movzbl (%rsi),%ecx
          │  │ │                                                        ││ │ │││ │  ││  │                  ││   0x00007f76b04fa5f8:   cmp    %ecx,%ebx
          │  │ │                                                        ││ │ │││ │  ││╭ │                  ││   0x00007f76b04fa5fa:   jne    0x00007f76b04fa603
          │  │ │                                                        │↘ │ ↘│↘ │  │↘│ │                  ││   0x00007f76b04fa5fc:   mov    $0x1,%eax
          │  │ │                                                        │  │  │  │  │ │╭│                  ││   0x00007f76b04fa601:   jmp    0x00007f76b04fa605
          │  │ │                                                        │  ↘  ↘  ↘  ↘ ↘││                  ││   0x00007f76b04fa603:   xor    %eax,%eax
          │  │ │                                                        │              ↘│                  ││   0x00007f76b04fa605:   vpxor  %ymm0,%ymm0,%ymm0
          │  │ │                                                        │               │                  ││   0x00007f76b04fa609:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                        │               │                  ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ │                                                        │               │                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
          │  │ │                                                        │               │                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                        │               │                  ││   0x00007f76b04fa60d:   test   %eax,%eax
          │  │ │                                                        │               ╰                  ││   0x00007f76b04fa60f:   jne    0x00007f76b04fa528           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                        │                                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
          │  │ │                                                        │                                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.70%  │  │ │                                                        ↘                                  ││   0x00007f76b04fa615:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
          │  │ │                                                                                           ││   0x00007f76b04fa620:   cmp    $0xffe06a5e,%ebp             ;   {oop(&quot;CAR&quot;{0x00000007ff0352f0})}
          │  │ │                                                                         ╭                 ││   0x00007f76b04fa626:   je     0x00007f76b04fa787           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         │                 ││                                                             ; - java.lang.String::equals@2 (line 1858)
          │  │ │                                                                         │                 ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │  │ │                                                                         │                 ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                                         │                 ││   0x00007f76b04fa62c:   cmp    $0x3,%r8d
          │  │ │                                                                         │╭                ││   0x00007f76b04fa630:   jne    0x00007f76b04fa706
          │  │ │                                                                         ││                ││   0x00007f76b04fa636:   mov    0x20(%rsp),%rdi
   1.37%  │  │ │                                                                         ││                ││   0x00007f76b04fa63b:   mov    %r11,%rsi
          │  │ │                                                                         ││                ││   0x00007f76b04fa63e:   mov    $0x3,%ecx
          │  │ │                                                                         ││                ││   0x00007f76b04fa643:   test   %ecx,%ecx
          │  │ │                                                                         ││╭               ││   0x00007f76b04fa645:   je     0x00007f76b04fa6e8
          │  │ │                                                                         │││               ││   0x00007f76b04fa64b:   mov    %ecx,%eax
   1.39%  │  │ │                                                                         │││               ││   0x00007f76b04fa64d:   and    $0x1f,%eax
          │  │ │                                                                         │││               ││   0x00007f76b04fa650:   and    $0xffffffe0,%ecx
          │  │ │                                                                         │││╭              ││   0x00007f76b04fa653:   je     0x00007f76b04fa6a4
          │  │ │                                                                         ││││              ││   0x00007f76b04fa659:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                                                         ││││              ││   0x00007f76b04fa65d:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                                                         ││││              ││   0x00007f76b04fa661:   neg    %rcx
          │  │ │                                                                         ││││ ↗            ││   0x00007f76b04fa664:   vmovdqu (%rdi,%rcx,1),%ymm0
          │  │ │                                                                         ││││ │            ││   0x00007f76b04fa669:   vmovdqu (%rsi,%rcx,1),%ymm1
          │  │ │                                                                         ││││ │            ││   0x00007f76b04fa66e:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                                                         ││││ │            ││   0x00007f76b04fa672:   vptest %ymm0,%ymm0
          │  │ │                                                                         ││││╭│            ││   0x00007f76b04fa677:   jne    0x00007f76b04fa6ef
          │  │ │                                                                         ││││││            ││   0x00007f76b04fa67d:   add    $0x20,%rcx
          │  │ │                                                                         │││││╰            ││   0x00007f76b04fa681:   jne    0x00007f76b04fa664
          │  │ │                                                                         │││││             ││   0x00007f76b04fa683:   test   %eax,%eax
          │  │ │                                                                         │││││ ╭           ││   0x00007f76b04fa685:   je     0x00007f76b04fa6e8
          │  │ │                                                                         │││││ │           ││   0x00007f76b04fa68b:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          │  │ │                                                                         │││││ │           ││   0x00007f76b04fa691:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          │  │ │                                                                         │││││ │           ││   0x00007f76b04fa697:   vpxor  %ymm1,%ymm0,%ymm0
          │  │ │                                                                         │││││ │           ││   0x00007f76b04fa69b:   vptest %ymm0,%ymm0
          │  │ │                                                                         │││││ │╭          ││   0x00007f76b04fa6a0:   jne    0x00007f76b04fa6ef
          │  │ │                                                                         │││││ ││╭         ││   0x00007f76b04fa6a2:   jmp    0x00007f76b04fa6e8
          │  │ │                                                                         │││↘│ │││         ││   0x00007f76b04fa6a4:   mov    %eax,%ecx
          │  │ │                                                                         │││ │ │││         ││   0x00007f76b04fa6a6:   and    $0xfffffffc,%ecx
          │  │ │                                                                         │││ │ │││╭        ││   0x00007f76b04fa6a9:   je     0x00007f76b04fa6c4
          │  │ │                                                                         │││ │ ││││        ││   0x00007f76b04fa6ab:   lea    (%rdi,%rcx,1),%rdi
          │  │ │                                                                         │││ │ ││││        ││   0x00007f76b04fa6af:   lea    (%rsi,%rcx,1),%rsi
          │  │ │                                                                         │││ │ ││││        ││   0x00007f76b04fa6b3:   neg    %rcx
          │  │ │                                                                         │││ │ ││││ ↗      ││   0x00007f76b04fa6b6:   mov    (%rdi,%rcx,1),%ebx
          │  │ │                                                                         │││ │ ││││ │      ││   0x00007f76b04fa6b9:   cmp    (%rsi,%rcx,1),%ebx
          │  │ │                                                                         │││ │ ││││╭│      ││   0x00007f76b04fa6bc:   jne    0x00007f76b04fa6ef
          │  │ │                                                                         │││ │ ││││││      ││   0x00007f76b04fa6be:   add    $0x4,%rcx
          │  │ │                                                                         │││ │ │││││╰      ││   0x00007f76b04fa6c2:   jne    0x00007f76b04fa6b6
   1.42%  │  │ │                                                                         │││ │ │││↘│       ││   0x00007f76b04fa6c4:   test   $0x2,%al
          │  │ │                                                                         │││ │ │││ │ ╭     ││   0x00007f76b04fa6c6:   je     0x00007f76b04fa6da
          │  │ │                                                                         │││ │ │││ │ │     ││   0x00007f76b04fa6c8:   movzwl (%rdi),%ebx
          │  │ │                                                                         │││ │ │││ │ │     ││   0x00007f76b04fa6cb:   movzwl (%rsi),%ecx
   0.00%  │  │ │                                                                         │││ │ │││ │ │     ││   0x00007f76b04fa6ce:   cmp    %ecx,%ebx
          │  │ │                                                                         │││ │ │││ │ │╭    ││   0x00007f76b04fa6d0:   jne    0x00007f76b04fa6ef
          │  │ │                                                                         │││ │ │││ │ ││    ││   0x00007f76b04fa6d2:   lea    0x2(%rdi),%rdi
          │  │ │                                                                         │││ │ │││ │ ││    ││   0x00007f76b04fa6d6:   lea    0x2(%rsi),%rsi
          │  │ │                                                                         │││ │ │││ │ ↘│    ││   0x00007f76b04fa6da:   test   $0x1,%al
          │  │ │                                                                         │││ │ │││ │  │╭   ││   0x00007f76b04fa6dc:   je     0x00007f76b04fa6e8
          │  │ │                                                                         │││ │ │││ │  ││   ││   0x00007f76b04fa6de:   movzbl (%rdi),%ebx
          │  │ │                                                                         │││ │ │││ │  ││   ││   0x00007f76b04fa6e1:   movzbl (%rsi),%ecx
          │  │ │                                                                         │││ │ │││ │  ││   ││   0x00007f76b04fa6e4:   cmp    %ecx,%ebx
          │  │ │                                                                         │││ │ │││ │  ││╭  ││   0x00007f76b04fa6e6:   jne    0x00007f76b04fa6ef
          │  │ │                                                                         ││↘ │ ↘│↘ │  │↘│  ││   0x00007f76b04fa6e8:   mov    $0x1,%eax
          │  │ │                                                                         ││  │  │  │  │ │╭ ││   0x00007f76b04fa6ed:   jmp    0x00007f76b04fa6f1
   1.37%  │  │ │                                                                         ││  ↘  ↘  ↘  ↘ ↘│ ││   0x00007f76b04fa6ef:   xor    %eax,%eax
          │  │ │                                                                         ││              ↘ ││   0x00007f76b04fa6f1:   vpxor  %ymm0,%ymm0,%ymm0
          │  │ │                                                                         ││                ││   0x00007f76b04fa6f5:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         ││                ││                                                             ; - java.lang.String::equals@44 (line 1863)
          │  │ │                                                                         ││                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
          │  │ │                                                                         ││                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                                         ││                ││   0x00007f76b04fa6f9:   test   %eax,%eax
   1.30%  │  │ │                                                                         ││                ││   0x00007f76b04fa6fb:   nopl   0x0(%rax,%rax,1)
          │  │ │                                                                         ││               ╭││   0x00007f76b04fa700:   jne    0x00007f76b04fa787           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         ││               │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
          │  │ │                                                                         ││               │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                                         │↘               │││   0x00007f76b04fa706:   mov    %r10d,0x4(%rsp)
   0.01%  │  │ │                                                                         │                │││   0x00007f76b04fa70b:   mov    %rbp,%rdx
   1.29%  │  │ │                                                                         │                │││   0x00007f76b04fa70e:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
          │  │ │                                                                         │                │││   0x00007f76b04fa712:   movabs $0x7ff035320,%rsi            ;   {oop(&quot;SUV&quot;{0x00000007ff035320})}
          │  │ │                                                                         │                │││   0x00007f76b04fa71c:   movabs $0x7ff035238,%rbp            ;   {oop([B{0x00000007ff035238})}
   0.00%  │  │ │                                                                         │                │││   0x00007f76b04fa726:   movabs $0x7ff035308,%r10            ;   {oop([B{0x00000007ff035308})}
   1.33%  │  │ │                                                                         │                │││   0x00007f76b04fa730:   mov    %r10,0x50(%rsp)
   0.00%  │  │ │                                                                         │                │││   0x00007f76b04fa735:   movabs $0x7ff0352d0,%r10            ;   {oop([B{0x00000007ff0352d0})}
          │  │ │                                                                         │                │││   0x00007f76b04fa73f:   mov    %r10,0x58(%rsp)
   0.00%  │  │ │                                                                         │                │││   0x00007f76b04fa744:   movabs $0x7ff035298,%r10            ;   {oop([B{0x00000007ff035298})}
   1.33%  │  │ │                                                                         │                │││   0x00007f76b04fa74e:   mov    %r10,0x60(%rsp)
   0.00%  │  │ │                                                                         │                │││   0x00007f76b04fa753:   movabs $0x7ff035268,%r10            ;   {oop([B{0x00000007ff035268})}
          │  │ │                                                                         │                │││   0x00007f76b04fa75d:   mov    %r10,0x68(%rsp)
          │  │ │                                                                         │                │││   0x00007f76b04fa762:   xchg   %ax,%ax
   1.19%  │  │ │                                                                         │                │││   0x00007f76b04fa764:   vzeroupper 
   1.42%  │  │ │                                                                         │                │││   0x00007f76b04fa767:   call   0x00007f76b04e2d40           ; ImmutableOopMap {rbp=Oop [64]=Derived_oop_rbp [8]=Oop [16]=Oop [24]=NarrowOop [72]=NarrowOop [80]=Oop [32]=Derived_oop_[80] [88]=Oop [40]=Derived_oop_[88] [96]=Oop [48]=Derived_oop_[96] [104]=Oop [56]=Derived_oop_[104] }
          │  │ │                                                                         │                │││                                                             ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                                         │                │││                                                             ;   {optimized virtual_call}
   1.14%  │  │ │                                                                         │                │││   0x00007f76b04fa76c:   nopl   0x85c(%rax,%rax,1)           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          │  │ │                                                                         │                │││                                                             ;   {other}
   0.00%  │  │ │                                                                         │                │││   0x00007f76b04fa774:   test   %eax,%eax
          │  │ │                                                                         │                │││   0x00007f76b04fa776:   je     0x00007f76b04fa7dc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
          │  │ │                                                                         │                │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.94%  │  │ │                                                                         │                │││   0x00007f76b04fa77c:   mov    $0x6,%r8d
          │  │ │                                                                         │                │╰│   0x00007f76b04fa782:   jmp    0x00007f76b04fa210
   1.36%  │  │ │                                                                         ↘                ↘ │   0x00007f76b04fa787:   mov    $0x5,%r8d
   0.00%  │  │ │                                                                                            │   0x00007f76b04fa78d:   mov    %r10d,0x4(%rsp)
          │  │ │                                                                                            ╰   0x00007f76b04fa792:   jmp    0x00007f76b04fa210
   0.02%  │  ↘ │                                                                                                0x00007f76b04fa797:   mov    0x1c(%rsp),%eax              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.08%  │    │                                                                                             ↗  0x00007f76b04fa79b:   vzeroupper 
   0.01%  │    │                                                                                             │  0x00007f76b04fa79e:   add    $0x80,%rsp
          │    │                                                                                             │  0x00007f76b04fa7a5:   pop    %rbp
   0.01%  │    │                                                                                             │  0x00007f76b04fa7a6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    │                                                                                             │  0x00007f76b04fa7ad:   ja     0x00007f76b04fa870
   0.00%  │    │                                                                                             │  0x00007f76b04fa7b3:   ret    
          ↘    │                                                                                             │  0x00007f76b04fa7b4:   xor    %eax,%eax
               │                                                                                             ╰  0x00007f76b04fa7b6:   jmp    0x00007f76b04fa79b
               ↘                                                                                                0x00007f76b04fa7b8:   mov    $0xffffff45,%esi
                                                                                                                0x00007f76b04fa7bd:   mov    (%rsp),%ebp
                                                                                                                0x00007f76b04fa7c0:   mov    %r10d,(%rsp)
                                                                                                                0x00007f76b04fa7c4:   mov    %r11d,0xc(%rsp)
                                                                                                                0x00007f76b04fa7c9:   data16 xchg %ax,%ax
                                                                                                                0x00007f76b04fa7cc:   vzeroupper 
                                                                                                                0x00007f76b04fa7cf:   call   0x00007f76aff8af00           ; ImmutableOopMap {[16]=Oop [24]=NarrowOop [72]=NarrowOop }
                                                                                                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  90.20%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.20%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 649 
   6.81%           c2, level 4  java.lang.String::equals, version 2, compile id 324 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_memcg_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 687 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.94%  <...other 192 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.20%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 649 
   6.81%           c2, level 4  java.lang.String::equals, version 2, compile id 324 
   0.30%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  page_remove_rmap 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.11%     [kernel.kallsyms]  __mod_node_page_state 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_memcg_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 687 
   0.04%     [kernel.kallsyms]  free_swap_cache 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.94%  <...other 189 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.07%           c2, level 4
   2.59%     [kernel.kallsyms]
   0.17%             libjvm.so
   0.12%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.00%                      
   0.00%      Unknown, level 0
   0.00%       nf_conntrack.ko
   0.00%  ld-linux-x86-64.so.2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:21:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 32.034 ns/op
# Warmup Iteration   2: 31.454 ns/op
# Warmup Iteration   3: 31.169 ns/op
# Warmup Iteration   4: 31.175 ns/op
# Warmup Iteration   5: 31.175 ns/op
Iteration   1: 31.215 ns/op
Iteration   2: 31.102 ns/op
Iteration   3: 31.131 ns/op
Iteration   4: 31.098 ns/op
Iteration   5: 31.185 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  31.146 ±(99.9%) 0.200 ns/op [Average]
  (min, avg, max) = (31.098, 31.146, 31.215), stdev = 0.052
  CI (99.9%): [30.946, 31.346] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 126514 total address lines.
Perf output processed (skipped 67.072 seconds):
 Column 1: cycles (49859 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 641 

                                                                                                                                                                                            # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                                                                                                                                            #           [sp+0x30]  (sp of caller)
                                                                                                                                                                                            0x00007f4d6c4f5480:   mov    0x8(%rsi),%r10d
                                                                                                                                                                                            0x00007f4d6c4f5484:   movabs $0x7f4ceb000000,%r11
                                                                                                                                                                                            0x00007f4d6c4f548e:   add    %r11,%r10
                                                                                                                                                                                            0x00007f4d6c4f5491:   cmp    %r10,%rax
                                                                                                                                                                                            0x00007f4d6c4f5494:   jne    0x00007f4d6bf85080           ;   {runtime_call ic_miss_stub}
                                                                                                                                                                                            0x00007f4d6c4f549a:   xchg   %ax,%ax
                                                                                                                                                                                            0x00007f4d6c4f549c:   nopl   0x0(%rax)
                                                                                                                                                                                          [Verified Entry Point]
   1.56%                                                                                                                                                                                    0x00007f4d6c4f54a0:   mov    %eax,-0x14000(%rsp)
   1.99%                                                                                                                                                                                    0x00007f4d6c4f54a7:   push   %rbp
   0.58%                                                                                                                                                                                    0x00007f4d6c4f54a8:   sub    $0x20,%rsp
   1.14%                                                                                                                                                                                    0x00007f4d6c4f54ac:   cmpl   $0x1,0x20(%r15)
   1.20%                                                                                                                                                                                    0x00007f4d6c4f54b4:   jne    0x00007f4d6c4f601c           ;*synchronization entry
                                                                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@-1 (line 244)
   0.41%                                                                                                                                                                                    0x00007f4d6c4f54ba:   mov    %rdx,(%rsp)
   0.78%                                                                                                                                                                                    0x00007f4d6c4f54be:   movabs $0x7ff035220,%r10            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
   0.32%                                                                                                                                                                                    0x00007f4d6c4f54c8:   cmp    %r10,%rdx
          ╭                                                                                                                                                                                 0x00007f4d6c4f54cb:   jne    0x00007f4d6c4f54ef
   0.23%  │                  ↗                                                                                                                                                              0x00007f4d6c4f54cd:   mov    $0x1,%eax
          │╭                 │                                                                                                                                                              0x00007f4d6c4f54d2:   jmp    0x00007f4d6c4f54d9
   0.22%  ││                 │↗                ↗                                                                                                                                            0x00007f4d6c4f54d4:   mov    $0x2,%eax                    ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││                 ││                │                                                                                                                                                                                                      ; - java.lang.String::equals@8 (line 1863)
          ││                 ││                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.31%  │↘                 ││                │ ↗                  ↗                  ↗                  ↗                  ↗                  ↗                  ↗                  ↗ ↗↗  0x00007f4d6c4f54d9:   vzeroupper 
   2.96%  │                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54dc:   add    $0x20,%rsp
   0.18%  │                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54e0:   pop    %rbp
   0.71%  │                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54e8:   ja     0x00007f4d6c4f6006
   1.91%  │                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54ee:   ret    
   0.87%  ↘                  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54ef:   movsbl 0x10(%rdx),%ebp              ; implicit exception: dispatches to 0x00007f4d6c4f5fd4
                             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@30 (line 1861)
                             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.96%                     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54f3:   test   %ebp,%ebp
            ╭                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54f5:   jne    0x00007f4d6c4f5ee5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.13%    │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54fb:   mov    0x14(%rdx),%r9d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.35%    │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f54ff:   mov    0xc(%r12,%r9,8),%r11d
   7.51%    │                ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5504:   cmp    $0x5,%r11d
            │╭               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5508:   jne    0x00007f4d6c4f55e8           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.18%    ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f550e:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5512:   lea    0x10(%r12,%r9,8),%rsi
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5517:   movabs $0x7ff035238,%rdi            ;   {oop([B{0x00000007ff035238})}
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5521:   add    $0x10,%rdi
   0.21%    ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5525:   mov    $0x5,%ecx
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f552a:   test   %ecx,%ecx
            ││╭              ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f552c:   je     0x00007f4d6c4f55cf
            │││              ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5532:   mov    %ecx,%eax
            │││              ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5534:   and    $0x1f,%eax
   0.21%    │││              ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5537:   and    $0xffffffe0,%ecx
            │││╭             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f553a:   je     0x00007f4d6c4f558b
            ││││             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5540:   lea    (%rdi,%rcx,1),%rdi
            ││││             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5544:   lea    (%rsi,%rcx,1),%rsi
            ││││             ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5548:   neg    %rcx
            ││││ ↗           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f554b:   vmovdqu (%rdi,%rcx,1),%ymm0
            ││││ │           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5550:   vmovdqu (%rsi,%rcx,1),%ymm1
            ││││ │           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5555:   vpxor  %ymm1,%ymm0,%ymm0
            ││││ │           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5559:   vptest %ymm0,%ymm0
            ││││╭│           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f555e:   jne    0x00007f4d6c4f55d6
            ││││││           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5564:   add    $0x20,%rcx
            │││││╰           ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5568:   jne    0x00007f4d6c4f554b
            │││││            ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f556a:   test   %eax,%eax
            │││││ ╭          ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f556c:   je     0x00007f4d6c4f55cf
            │││││ │          ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5572:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
            │││││ │          ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5578:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
            │││││ │          ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f557e:   vpxor  %ymm1,%ymm0,%ymm0
            │││││ │          ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5582:   vptest %ymm0,%ymm0
            │││││ │╭         ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5587:   jne    0x00007f4d6c4f55d6
            │││││ ││╭        ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5589:   jmp    0x00007f4d6c4f55cf
            │││↘│ │││        ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f558b:   mov    %eax,%ecx
            │││ │ │││        ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f558d:   and    $0xfffffffc,%ecx
            │││ │ │││╭       ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5590:   je     0x00007f4d6c4f55ab
            │││ │ ││││       ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5592:   lea    (%rdi,%rcx,1),%rdi
   0.23%    │││ │ ││││       ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5596:   lea    (%rsi,%rcx,1),%rsi
            │││ │ ││││       ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f559a:   neg    %rcx
            │││ │ ││││ ↗     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f559d:   mov    (%rdi,%rcx,1),%ebx
            │││ │ ││││ │     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55a0:   cmp    (%rsi,%rcx,1),%ebx
            │││ │ ││││╭│     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55a3:   jne    0x00007f4d6c4f55d6
            │││ │ ││││││     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55a5:   add    $0x4,%rcx
            │││ │ │││││╰     ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55a9:   jne    0x00007f4d6c4f559d
            │││ │ │││↘│      ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55ab:   test   $0x2,%al
            │││ │ │││ │ ╭    ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55ad:   je     0x00007f4d6c4f55c1
            │││ │ │││ │ │    ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55af:   movzwl (%rdi),%ebx
            │││ │ │││ │ │    ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55b2:   movzwl (%rsi),%ecx
            │││ │ │││ │ │    ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55b5:   cmp    %ecx,%ebx
            │││ │ │││ │ │╭   ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55b7:   jne    0x00007f4d6c4f55d6
            │││ │ │││ │ ││   ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55b9:   lea    0x2(%rdi),%rdi
            │││ │ │││ │ ││   ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55bd:   lea    0x2(%rsi),%rsi
            │││ │ │││ │ ↘│   ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55c1:   test   $0x1,%al
            │││ │ │││ │  │╭  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55c3:   je     0x00007f4d6c4f55cf
            │││ │ │││ │  ││  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55c5:   movzbl (%rdi),%ebx
            │││ │ │││ │  ││  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55c8:   movzbl (%rsi),%ecx
            │││ │ │││ │  ││  ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55cb:   cmp    %ecx,%ebx
            │││ │ │││ │  ││╭ ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55cd:   jne    0x00007f4d6c4f55d6
            ││↘ │ ↘│↘ │  │↘│ ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55cf:   mov    $0x1,%eax
            ││  │  │  │  │ │╭││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55d4:   jmp    0x00007f4d6c4f55d8
   0.41%    ││  ↘  ↘  ↘  ↘ ↘│││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55d6:   xor    %eax,%eax
            ││              ↘││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55d8:   vpxor  %ymm0,%ymm0,%ymm0
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55dc:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.04%    ││               ││                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55e0:   test   %eax,%eax
            ││               ╰│                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55e2:   jne    0x00007f4d6c4f54cd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││                │                │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@8 (line 246)
   1.99%    │↘                │                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55e8:   movabs $0x7ff035250,%r10            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
   0.00%    │                 │                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55f2:   cmp    %r10,%rdx
            │                 ╰                │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55f5:   je     0x00007f4d6c4f54d4           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.21%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55fb:   test   %ebp,%ebp
   0.19%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f55fd:   data16 xchg %ax,%ax
   1.97%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5600:   jne    0x00007f4d6c4f5efc           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.01%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5606:   mov    0xc(%r12,%r9,8),%r11d
   0.19%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f560b:   mov    $0x7,%ecx
   0.17%    │                                  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5610:   cmp    $0x7,%r11d
            │                  ╭               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5614:   jne    0x00007f4d6c4f56ef           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
   0.00%    │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f561a:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f561e:   lea    0x10(%r12,%r9,8),%rsi
   0.24%    │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5623:   movabs $0x7ff035268,%rdi            ;   {oop([B{0x00000007ff035268})}
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f562d:   add    $0x10,%rdi
   0.00%    │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5631:   test   %ecx,%ecx
            │                  │╭              │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5633:   je     0x00007f4d6c4f56d6
            │                  ││              │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5639:   mov    %ecx,%eax
   0.18%    │                  ││              │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f563b:   and    $0x1f,%eax
            │                  ││              │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f563e:   and    $0xffffffe0,%ecx
            │                  ││╭             │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5641:   je     0x00007f4d6c4f5692
            │                  │││             │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5647:   lea    (%rdi,%rcx,1),%rdi
            │                  │││             │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f564b:   lea    (%rsi,%rcx,1),%rsi
            │                  │││             │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f564f:   neg    %rcx
            │                  │││ ↗           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5652:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                  │││ │           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5657:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                  │││ │           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f565c:   vpxor  %ymm0,%ymm1,%ymm1
            │                  │││ │           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5660:   vptest %ymm1,%ymm1
            │                  │││╭│           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5665:   jne    0x00007f4d6c4f56dd
            │                  │││││           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f566b:   add    $0x20,%rcx
            │                  ││││╰           │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f566f:   jne    0x00007f4d6c4f5652
            │                  ││││            │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5671:   test   %eax,%eax
            │                  ││││ ╭          │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5673:   je     0x00007f4d6c4f56d6
            │                  ││││ │          │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5679:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                  ││││ │          │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f567f:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                  ││││ │          │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5685:   vpxor  %ymm0,%ymm1,%ymm1
            │                  ││││ │          │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5689:   vptest %ymm1,%ymm1
            │                  ││││ │╭         │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f568e:   jne    0x00007f4d6c4f56dd
            │                  ││││ ││╭        │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5690:   jmp    0x00007f4d6c4f56d6
            │                  ││↘│ │││        │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5692:   mov    %eax,%ecx
            │                  ││ │ │││        │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5694:   and    $0xfffffffc,%ecx
            │                  ││ │ │││╭       │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5697:   je     0x00007f4d6c4f56b2
   0.21%    │                  ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5699:   lea    (%rdi,%rcx,1),%rdi
            │                  ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f569d:   lea    (%rsi,%rcx,1),%rsi
   0.00%    │                  ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56a1:   neg    %rcx
            │                  ││ │ ││││ ↗     │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56a4:   mov    (%rdi,%rcx,1),%ebx
   0.22%    │                  ││ │ ││││ │     │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56a7:   cmp    (%rsi,%rcx,1),%ebx
            │                  ││ │ ││││╭│     │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56aa:   jne    0x00007f4d6c4f56dd
            │                  ││ │ ││││││     │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56ac:   add    $0x4,%rcx
            │                  ││ │ │││││╰     │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56b0:   jne    0x00007f4d6c4f56a4
            │                  ││ │ │││↘│      │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56b2:   test   $0x2,%al
            │                  ││ │ │││ │ ╭    │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56b4:   je     0x00007f4d6c4f56c8
            │                  ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56b6:   movzwl (%rdi),%ebx
            │                  ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56b9:   movzwl (%rsi),%ecx
            │                  ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56bc:   cmp    %ecx,%ebx
            │                  ││ │ │││ │ │╭   │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56be:   jne    0x00007f4d6c4f56dd
            │                  ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56c0:   lea    0x2(%rdi),%rdi
            │                  ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56c4:   lea    0x2(%rsi),%rsi
            │                  ││ │ │││ │ ↘│   │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56c8:   test   $0x1,%al
            │                  ││ │ │││ │  │╭  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56ca:   je     0x00007f4d6c4f56d6
            │                  ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56cc:   movzbl (%rdi),%ebx
            │                  ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56cf:   movzbl (%rsi),%ecx
            │                  ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56d2:   cmp    %ecx,%ebx
            │                  ││ │ │││ │  ││╭ │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56d4:   jne    0x00007f4d6c4f56dd
            │                  │↘ │ ↘│↘ │  │↘│ │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56d6:   mov    $0x1,%eax
            │                  │  │  │  │  │ │╭│ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56db:   jmp    0x00007f4d6c4f56df
   0.00%    │                  │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56dd:   xor    %eax,%eax
            │                  │              ↘│ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56df:   vpxor  %ymm1,%ymm1,%ymm1
   0.22%    │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56e3:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@16 (line 248)
            │                  │               │ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56e7:   test   %eax,%eax
            │                  │               ╰ │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56e9:   jne    0x00007f4d6c4f54d4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                  │                 │                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@19 (line 248)
   1.78%    │                  ↘                 │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56ef:   movabs $0x7ff035280,%r10            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.00%    │                                    │                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56f9:   cmp    %r10,%rdx
            │                                   ╭│                  │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56fc:   jne    0x00007f4d6c4f5708           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                   ││                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                   ││                  │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
            │                                   ││                ↗ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f56fe:   mov    $0x3,%eax
   0.02%    │                                   │╰                │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5703:   jmp    0x00007f4d6c4f54d9
   1.96%    │                                   ↘                 │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5708:   test   %ebp,%ebp
            │                                                     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f570a:   jne    0x00007f4d6c4f5f14           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                     │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                     │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
            │                                                     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5710:   mov    0xc(%r12,%r9,8),%r11d
   0.00%    │                                                     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5715:   cmp    $0x10,%r11d
            │                                     ╭               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5719:   jne    0x00007f4d6c4f57f9           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f571f:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5723:   lea    0x10(%r12,%r9,8),%rsi
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5728:   mov    $0x10,%ecx
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f572d:   movabs $0x7ff035298,%rdi            ;   {oop([B{0x00000007ff035298})}
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5737:   add    $0x10,%rdi
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f573b:   test   %ecx,%ecx
            │                                     │╭              │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f573d:   je     0x00007f4d6c4f57e0
            │                                     ││              │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5743:   mov    %ecx,%eax
            │                                     ││              │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5745:   and    $0x1f,%eax
            │                                     ││              │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5748:   and    $0xffffffe0,%ecx
            │                                     ││╭             │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f574b:   je     0x00007f4d6c4f579c
            │                                     │││             │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5751:   lea    (%rdi,%rcx,1),%rdi
            │                                     │││             │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5755:   lea    (%rsi,%rcx,1),%rsi
            │                                     │││             │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5759:   neg    %rcx
            │                                     │││ ↗           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f575c:   vmovdqu (%rdi,%rcx,1),%ymm0
            │                                     │││ │           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5761:   vmovdqu (%rsi,%rcx,1),%ymm1
            │                                     │││ │           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5766:   vpxor  %ymm1,%ymm0,%ymm0
            │                                     │││ │           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f576a:   vptest %ymm0,%ymm0
            │                                     │││╭│           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f576f:   jne    0x00007f4d6c4f57e7
            │                                     │││││           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5775:   add    $0x20,%rcx
            │                                     ││││╰           │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5779:   jne    0x00007f4d6c4f575c
            │                                     ││││            │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f577b:   test   %eax,%eax
            │                                     ││││ ╭          │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f577d:   je     0x00007f4d6c4f57e0
            │                                     ││││ │          │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5783:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
            │                                     ││││ │          │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5789:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
            │                                     ││││ │          │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f578f:   vpxor  %ymm1,%ymm0,%ymm0
            │                                     ││││ │          │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5793:   vptest %ymm0,%ymm0
            │                                     ││││ │╭         │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5798:   jne    0x00007f4d6c4f57e7
            │                                     ││││ ││╭        │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f579a:   jmp    0x00007f4d6c4f57e0
            │                                     ││↘│ │││        │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f579c:   mov    %eax,%ecx
            │                                     ││ │ │││        │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f579e:   and    $0xfffffffc,%ecx
            │                                     ││ │ │││╭       │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57a1:   je     0x00007f4d6c4f57bc
            │                                     ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57a3:   lea    (%rdi,%rcx,1),%rdi
            │                                     ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57a7:   lea    (%rsi,%rcx,1),%rsi
            │                                     ││ │ ││││       │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ab:   neg    %rcx
            │                                     ││ │ ││││ ↗     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ae:   mov    (%rdi,%rcx,1),%ebx
            │                                     ││ │ ││││ │     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57b1:   cmp    (%rsi,%rcx,1),%ebx
            │                                     ││ │ ││││╭│     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57b4:   jne    0x00007f4d6c4f57e7
            │                                     ││ │ ││││││     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57b6:   add    $0x4,%rcx
            │                                     ││ │ │││││╰     │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ba:   jne    0x00007f4d6c4f57ae
            │                                     ││ │ │││↘│      │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57bc:   test   $0x2,%al
            │                                     ││ │ │││ │ ╭    │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57be:   je     0x00007f4d6c4f57d2
            │                                     ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57c0:   movzwl (%rdi),%ebx
            │                                     ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57c3:   movzwl (%rsi),%ecx
            │                                     ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57c6:   cmp    %ecx,%ebx
            │                                     ││ │ │││ │ │╭   │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57c8:   jne    0x00007f4d6c4f57e7
            │                                     ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ca:   lea    0x2(%rdi),%rdi
            │                                     ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ce:   lea    0x2(%rsi),%rsi
            │                                     ││ │ │││ │ ↘│   │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57d2:   test   $0x1,%al
            │                                     ││ │ │││ │  │╭  │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57d4:   je     0x00007f4d6c4f57e0
            │                                     ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57d6:   movzbl (%rdi),%ebx
            │                                     ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57d9:   movzbl (%rsi),%ecx
            │                                     ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57dc:   cmp    %ecx,%ebx
            │                                     ││ │ │││ │  ││╭ │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57de:   jne    0x00007f4d6c4f57e7
            │                                     │↘ │ ↘│↘ │  │↘│ │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57e0:   mov    $0x1,%eax
            │                                     │  │  │  │  │ │╭│ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57e5:   jmp    0x00007f4d6c4f57e9
            │                                     │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57e7:   xor    %eax,%eax
            │                                     │              ↘│ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57e9:   vpxor  %ymm0,%ymm0,%ymm0
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57ed:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
            │                                     │               │ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57f1:   test   %eax,%eax
            │                                     │               ╰ │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57f3:   jne    0x00007f4d6c4f56fe           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                     │                 │                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
   1.96%    │                                     ↘                 │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f57f9:   movabs $0x7ff0352b8,%r10            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff0352b8})}
            │                                                       │                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5803:   cmp    %r10,%rdx
            │                                                      ╭│                  │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5806:   jne    0x00007f4d6c4f5812           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                      ││                  │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                      ││                  │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.00%    │                                                      ││                ↗ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5808:   mov    $0x4,%eax
            │                                                      │╰                │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f580d:   jmp    0x00007f4d6c4f54d9
   1.82%    │                                                      ↘                 │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5812:   test   %ebp,%ebp
            │                                                                        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5814:   jne    0x00007f4d6c4f5f2c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                        │ │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                        │ │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
            │                                                                        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f581a:   mov    0xc(%r12,%r9,8),%r11d
   0.00%    │                                                                        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f581f:   nop
            │                                                                        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5820:   cmp    $0xa,%r11d
            │                                                        ╭               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5824:   jne    0x00007f4d6c4f5908           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.20%    │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f582a:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f582e:   lea    0x10(%r12,%r9,8),%rsi
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5833:   movabs $0x7ff0352d0,%rdi            ;   {oop([B{0x00000007ff0352d0})}
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f583d:   add    $0x10,%rdi
   0.20%    │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5841:   mov    $0xa,%ecx
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5846:   test   %ecx,%ecx
            │                                                        │╭              │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5848:   je     0x00007f4d6c4f58eb
            │                                                        ││              │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f584e:   mov    %ecx,%eax
            │                                                        ││              │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5850:   and    $0x1f,%eax
   0.20%    │                                                        ││              │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5853:   and    $0xffffffe0,%ecx
            │                                                        ││╭             │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5856:   je     0x00007f4d6c4f58a7
            │                                                        │││             │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f585c:   lea    (%rdi,%rcx,1),%rdi
            │                                                        │││             │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5860:   lea    (%rsi,%rcx,1),%rsi
            │                                                        │││             │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5864:   neg    %rcx
            │                                                        │││ ↗           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5867:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                                                        │││ │           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f586c:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                                                        │││ │           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5871:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                        │││ │           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5875:   vptest %ymm1,%ymm1
            │                                                        │││╭│           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f587a:   jne    0x00007f4d6c4f58f2
            │                                                        │││││           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5880:   add    $0x20,%rcx
            │                                                        ││││╰           │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5884:   jne    0x00007f4d6c4f5867
            │                                                        ││││            │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5886:   test   %eax,%eax
            │                                                        ││││ ╭          │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5888:   je     0x00007f4d6c4f58eb
            │                                                        ││││ │          │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f588e:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                                                        ││││ │          │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5894:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                                                        ││││ │          │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f589a:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                        ││││ │          │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f589e:   vptest %ymm1,%ymm1
            │                                                        ││││ │╭         │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58a3:   jne    0x00007f4d6c4f58f2
            │                                                        ││││ ││╭        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58a5:   jmp    0x00007f4d6c4f58eb
            │                                                        ││↘│ │││        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58a7:   mov    %eax,%ecx
            │                                                        ││ │ │││        │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58a9:   and    $0xfffffffc,%ecx
            │                                                        ││ │ │││╭       │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58ac:   je     0x00007f4d6c4f58c7
            │                                                        ││ │ ││││       │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58ae:   lea    (%rdi,%rcx,1),%rdi
   0.23%    │                                                        ││ │ ││││       │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58b2:   lea    (%rsi,%rcx,1),%rsi
            │                                                        ││ │ ││││       │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58b6:   neg    %rcx
            │                                                        ││ │ ││││ ↗     │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58b9:   mov    (%rdi,%rcx,1),%ebx
   0.01%    │                                                        ││ │ ││││ │     │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58bc:   cmp    (%rsi,%rcx,1),%ebx
            │                                                        ││ │ ││││╭│     │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58bf:   jne    0x00007f4d6c4f58f2
   0.20%    │                                                        ││ │ ││││││     │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58c1:   add    $0x4,%rcx
            │                                                        ││ │ │││││╰     │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58c5:   jne    0x00007f4d6c4f58b9
            │                                                        ││ │ │││↘│      │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58c7:   test   $0x2,%al
            │                                                        ││ │ │││ │ ╭    │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58c9:   je     0x00007f4d6c4f58dd
            │                                                        ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58cb:   movzwl (%rdi),%ebx
            │                                                        ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58ce:   movzwl (%rsi),%ecx
            │                                                        ││ │ │││ │ │    │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58d1:   cmp    %ecx,%ebx
            │                                                        ││ │ │││ │ │╭   │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58d3:   jne    0x00007f4d6c4f58f2
            │                                                        ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58d5:   lea    0x2(%rdi),%rdi
            │                                                        ││ │ │││ │ ││   │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58d9:   lea    0x2(%rsi),%rsi
            │                                                        ││ │ │││ │ ↘│   │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58dd:   test   $0x1,%al
            │                                                        ││ │ │││ │  │╭  │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58df:   je     0x00007f4d6c4f58eb
            │                                                        ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58e1:   movzbl (%rdi),%ebx
            │                                                        ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58e4:   movzbl (%rsi),%ecx
            │                                                        ││ │ │││ │  ││  │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58e7:   cmp    %ecx,%ebx
            │                                                        ││ │ │││ │  ││╭ │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58e9:   jne    0x00007f4d6c4f58f2
            │                                                        │↘ │ ↘│↘ │  │↘│ │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58eb:   mov    $0x1,%eax
            │                                                        │  │  │  │  │ │╭│ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58f0:   jmp    0x00007f4d6c4f58f4
   0.21%    │                                                        │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58f2:   xor    %eax,%eax
            │                                                        │              ↘│ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58f4:   vpxor  %ymm1,%ymm1,%ymm1
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58f8:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                        │               │ │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@38 (line 252)
   0.19%    │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f58fc:   nopl   0x0(%rax)
   0.01%    │                                                        │               │ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5900:   test   %eax,%eax
            │                                                        │               ╰ │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5902:   jne    0x00007f4d6c4f5808           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                        │                 │                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@41 (line 252)
   1.58%    │                                                        ↘                 │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5908:   movabs $0x7ff0352f0,%r10            ;   {oop(&quot;CAR&quot;{0x00000007ff0352f0})}
            │                                                                          │                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5912:   cmp    %r10,%rdx
            │                                                                         ╭│                  │                  │                  │                  │                  │ ││  0x00007f4d6c4f5915:   jne    0x00007f4d6c4f5925           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                         ││                  │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                                         ││                  │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
            │                                                                         ││                ↗ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5917:   mov    $0x5,%eax
            │                                                                         ││                │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f591c:   nopl   0x0(%rax)
   0.23%    │                                                                         │╰                │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5920:   jmp    0x00007f4d6c4f54d9
   1.37%    │                                                                         ↘                 │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5925:   test   %ebp,%ebp
            │                                                                                           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5927:   jne    0x00007f4d6c4f5f44           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                           │ │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                                           │ │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.01%    │                                                                                           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f592d:   mov    0xc(%r12,%r9,8),%r10d
            │                                                                                           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5932:   cmp    $0x3,%r10d
            │                                                                           ╭               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5936:   jne    0x00007f4d6c4f5a16           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
   0.00%    │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f593c:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.65%    │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5940:   lea    0x10(%r12,%r9,8),%rsi
            │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5945:   movabs $0x7ff035308,%rdi            ;   {oop([B{0x00000007ff035308})}
            │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f594f:   add    $0x10,%rdi
            │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5953:   mov    $0x3,%ecx
   0.64%    │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5958:   test   %ecx,%ecx
            │                                                                           │╭              │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f595a:   je     0x00007f4d6c4f59fd
            │                                                                           ││              │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5960:   mov    %ecx,%eax
            │                                                                           ││              │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5962:   and    $0x1f,%eax
            │                                                                           ││              │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5965:   and    $0xffffffe0,%ecx
            │                                                                           ││╭             │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5968:   je     0x00007f4d6c4f59b9
            │                                                                           │││             │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f596e:   lea    (%rdi,%rcx,1),%rdi
            │                                                                           │││             │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5972:   lea    (%rsi,%rcx,1),%rsi
            │                                                                           │││             │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5976:   neg    %rcx
            │                                                                           │││ ↗           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5979:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                                                                           │││ │           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f597e:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                                                                           │││ │           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5983:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                           │││ │           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5987:   vptest %ymm1,%ymm1
            │                                                                           │││╭│           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f598c:   jne    0x00007f4d6c4f5a04
            │                                                                           │││││           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5992:   add    $0x20,%rcx
            │                                                                           ││││╰           │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5996:   jne    0x00007f4d6c4f5979
            │                                                                           ││││            │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5998:   test   %eax,%eax
            │                                                                           ││││ ╭          │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f599a:   je     0x00007f4d6c4f59fd
            │                                                                           ││││ │          │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59a0:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                                                                           ││││ │          │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59a6:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                                                                           ││││ │          │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59ac:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                           ││││ │          │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59b0:   vptest %ymm1,%ymm1
            │                                                                           ││││ │╭         │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59b5:   jne    0x00007f4d6c4f5a04
            │                                                                           ││││ ││╭        │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59b7:   jmp    0x00007f4d6c4f59fd
   0.67%    │                                                                           ││↘│ │││        │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59b9:   mov    %eax,%ecx
            │                                                                           ││ │ │││        │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59bb:   and    $0xfffffffc,%ecx
            │                                                                           ││ │ │││╭       │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59be:   je     0x00007f4d6c4f59d9
            │                                                                           ││ │ ││││       │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59c0:   lea    (%rdi,%rcx,1),%rdi
            │                                                                           ││ │ ││││       │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59c4:   lea    (%rsi,%rcx,1),%rsi
            │                                                                           ││ │ ││││       │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59c8:   neg    %rcx
            │                                                                           ││ │ ││││ ↗     │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59cb:   mov    (%rdi,%rcx,1),%ebx
            │                                                                           ││ │ ││││ │     │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59ce:   cmp    (%rsi,%rcx,1),%ebx
            │                                                                           ││ │ ││││╭│     │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59d1:   jne    0x00007f4d6c4f5a04
            │                                                                           ││ │ ││││││     │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59d3:   add    $0x4,%rcx
            │                                                                           ││ │ │││││╰     │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59d7:   jne    0x00007f4d6c4f59cb
   0.65%    │                                                                           ││ │ │││↘│      │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59d9:   test   $0x2,%al
            │                                                                           ││ │ │││ │ ╭    │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59db:   je     0x00007f4d6c4f59ef
            │                                                                           ││ │ │││ │ │    │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59dd:   movzwl (%rdi),%ebx
   0.00%    │                                                                           ││ │ │││ │ │    │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59e0:   movzwl (%rsi),%ecx
            │                                                                           ││ │ │││ │ │    │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59e3:   cmp    %ecx,%ebx
            │                                                                           ││ │ │││ │ │╭   │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59e5:   jne    0x00007f4d6c4f5a04
            │                                                                           ││ │ │││ │ ││   │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59e7:   lea    0x2(%rdi),%rdi
            │                                                                           ││ │ │││ │ ││   │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59eb:   lea    0x2(%rsi),%rsi
            │                                                                           ││ │ │││ │ ↘│   │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59ef:   test   $0x1,%al
            │                                                                           ││ │ │││ │  │╭  │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59f1:   je     0x00007f4d6c4f59fd
            │                                                                           ││ │ │││ │  ││  │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59f3:   movzbl (%rdi),%ebx
            │                                                                           ││ │ │││ │  ││  │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59f6:   movzbl (%rsi),%ecx
            │                                                                           ││ │ │││ │  ││  │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59f9:   cmp    %ecx,%ebx
            │                                                                           ││ │ │││ │  ││╭ │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59fb:   jne    0x00007f4d6c4f5a04
            │                                                                           │↘ │ ↘│↘ │  │↘│ │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f59fd:   mov    $0x1,%eax
            │                                                                           │  │  │  │  │ │╭│ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a02:   jmp    0x00007f4d6c4f5a06
   0.69%    │                                                                           │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a04:   xor    %eax,%eax
   0.00%    │                                                                           │              ↘│ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a06:   vpxor  %ymm1,%ymm1,%ymm1
            │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a0a:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                           │               │ │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@49 (line 254)
            │                                                                           │               │ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a0e:   test   %eax,%eax
            │                                                                           │               ╰ │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a10:   jne    0x00007f4d6c4f5917           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                           │                 │                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@52 (line 254)
   1.58%    │                                                                           ↘                 │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a16:   movabs $0x7ff035320,%r10            ;   {oop(&quot;SUV&quot;{0x00000007ff035320})}
            │                                                                                             │                  │                  │                  │                  │ ││  0x00007f4d6c4f5a20:   cmp    %r10,%rdx
            │                                                                                            ╭│                  │                  │                  │                  │ ││  0x00007f4d6c4f5a23:   jne    0x00007f4d6c4f5a2f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                            ││                  │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                                                            ││                  │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
            │                                                                                            ││                ↗ │                  │                  │                  │ ││  0x00007f4d6c4f5a25:   mov    $0x6,%eax
            │                                                                                            │╰                │ │                  │                  │                  │ ││  0x00007f4d6c4f5a2a:   jmp    0x00007f4d6c4f54d9
   0.88%    │                                                                                            ↘                 │ │                  │                  │                  │ ││  0x00007f4d6c4f5a2f:   test   %ebp,%ebp
            │                                                                                                              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a31:   jne    0x00007f4d6c4f5f5c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                              │ │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                                                              │ │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
            │                                                                                                              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a37:   mov    0xc(%r12,%r9,8),%r11d
   0.41%    │                                                                                                              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a3c:   nopl   0x0(%rax)
            │                                                                                                              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a40:   cmp    $0x3,%r11d
            │                                                                                              ╭               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a44:   jne    0x00007f4d6c4f5b28           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a4a:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a4e:   lea    0x10(%r12,%r9,8),%rsi
   0.36%    │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a53:   movabs $0x7ff035338,%rdi            ;   {oop([B{0x00000007ff035338})}
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a5d:   add    $0x10,%rdi
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a61:   mov    $0x3,%ecx
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5a66:   test   %ecx,%ecx
            │                                                                                              │╭              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a68:   je     0x00007f4d6c4f5b0b
   0.49%    │                                                                                              ││              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a6e:   mov    %ecx,%eax
            │                                                                                              ││              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a70:   and    $0x1f,%eax
   0.00%    │                                                                                              ││              │ │                  │                  │                  │ ││  0x00007f4d6c4f5a73:   and    $0xffffffe0,%ecx
            │                                                                                              ││╭             │ │                  │                  │                  │ ││  0x00007f4d6c4f5a76:   je     0x00007f4d6c4f5ac7
            │                                                                                              │││             │ │                  │                  │                  │ ││  0x00007f4d6c4f5a7c:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                              │││             │ │                  │                  │                  │ ││  0x00007f4d6c4f5a80:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                              │││             │ │                  │                  │                  │ ││  0x00007f4d6c4f5a84:   neg    %rcx
            │                                                                                              │││ ↗           │ │                  │                  │                  │ ││  0x00007f4d6c4f5a87:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                                                                                              │││ │           │ │                  │                  │                  │ ││  0x00007f4d6c4f5a8c:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                                                                                              │││ │           │ │                  │                  │                  │ ││  0x00007f4d6c4f5a91:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                              │││ │           │ │                  │                  │                  │ ││  0x00007f4d6c4f5a95:   vptest %ymm1,%ymm1
            │                                                                                              │││╭│           │ │                  │                  │                  │ ││  0x00007f4d6c4f5a9a:   jne    0x00007f4d6c4f5b12
            │                                                                                              │││││           │ │                  │                  │                  │ ││  0x00007f4d6c4f5aa0:   add    $0x20,%rcx
            │                                                                                              ││││╰           │ │                  │                  │                  │ ││  0x00007f4d6c4f5aa4:   jne    0x00007f4d6c4f5a87
            │                                                                                              ││││            │ │                  │                  │                  │ ││  0x00007f4d6c4f5aa6:   test   %eax,%eax
            │                                                                                              ││││ ╭          │ │                  │                  │                  │ ││  0x00007f4d6c4f5aa8:   je     0x00007f4d6c4f5b0b
            │                                                                                              ││││ │          │ │                  │                  │                  │ ││  0x00007f4d6c4f5aae:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                                                                                              ││││ │          │ │                  │                  │                  │ ││  0x00007f4d6c4f5ab4:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                                                                                              ││││ │          │ │                  │                  │                  │ ││  0x00007f4d6c4f5aba:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                              ││││ │          │ │                  │                  │                  │ ││  0x00007f4d6c4f5abe:   vptest %ymm1,%ymm1
            │                                                                                              ││││ │╭         │ │                  │                  │                  │ ││  0x00007f4d6c4f5ac3:   jne    0x00007f4d6c4f5b12
            │                                                                                              ││││ ││╭        │ │                  │                  │                  │ ││  0x00007f4d6c4f5ac5:   jmp    0x00007f4d6c4f5b0b
            │                                                                                              ││↘│ │││        │ │                  │                  │                  │ ││  0x00007f4d6c4f5ac7:   mov    %eax,%ecx
   0.46%    │                                                                                              ││ │ │││        │ │                  │                  │                  │ ││  0x00007f4d6c4f5ac9:   and    $0xfffffffc,%ecx
            │                                                                                              ││ │ │││╭       │ │                  │                  │                  │ ││  0x00007f4d6c4f5acc:   je     0x00007f4d6c4f5ae7
            │                                                                                              ││ │ ││││       │ │                  │                  │                  │ ││  0x00007f4d6c4f5ace:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                              ││ │ ││││       │ │                  │                  │                  │ ││  0x00007f4d6c4f5ad2:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                              ││ │ ││││       │ │                  │                  │                  │ ││  0x00007f4d6c4f5ad6:   neg    %rcx
            │                                                                                              ││ │ ││││ ↗     │ │                  │                  │                  │ ││  0x00007f4d6c4f5ad9:   mov    (%rdi,%rcx,1),%ebx
            │                                                                                              ││ │ ││││ │     │ │                  │                  │                  │ ││  0x00007f4d6c4f5adc:   cmp    (%rsi,%rcx,1),%ebx
            │                                                                                              ││ │ ││││╭│     │ │                  │                  │                  │ ││  0x00007f4d6c4f5adf:   jne    0x00007f4d6c4f5b12
            │                                                                                              ││ │ ││││││     │ │                  │                  │                  │ ││  0x00007f4d6c4f5ae1:   add    $0x4,%rcx
            │                                                                                              ││ │ │││││╰     │ │                  │                  │                  │ ││  0x00007f4d6c4f5ae5:   jne    0x00007f4d6c4f5ad9
            │                                                                                              ││ │ │││↘│      │ │                  │                  │                  │ ││  0x00007f4d6c4f5ae7:   test   $0x2,%al
            │                                                                                              ││ │ │││ │ ╭    │ │                  │                  │                  │ ││  0x00007f4d6c4f5ae9:   je     0x00007f4d6c4f5afd
            │                                                                                              ││ │ │││ │ │    │ │                  │                  │                  │ ││  0x00007f4d6c4f5aeb:   movzwl (%rdi),%ebx
            │                                                                                              ││ │ │││ │ │    │ │                  │                  │                  │ ││  0x00007f4d6c4f5aee:   movzwl (%rsi),%ecx
   0.42%    │                                                                                              ││ │ │││ │ │    │ │                  │                  │                  │ ││  0x00007f4d6c4f5af1:   cmp    %ecx,%ebx
            │                                                                                              ││ │ │││ │ │╭   │ │                  │                  │                  │ ││  0x00007f4d6c4f5af3:   jne    0x00007f4d6c4f5b12
            │                                                                                              ││ │ │││ │ ││   │ │                  │                  │                  │ ││  0x00007f4d6c4f5af5:   lea    0x2(%rdi),%rdi
            │                                                                                              ││ │ │││ │ ││   │ │                  │                  │                  │ ││  0x00007f4d6c4f5af9:   lea    0x2(%rsi),%rsi
            │                                                                                              ││ │ │││ │ ↘│   │ │                  │                  │                  │ ││  0x00007f4d6c4f5afd:   test   $0x1,%al
            │                                                                                              ││ │ │││ │  │╭  │ │                  │                  │                  │ ││  0x00007f4d6c4f5aff:   je     0x00007f4d6c4f5b0b
            │                                                                                              ││ │ │││ │  ││  │ │                  │                  │                  │ ││  0x00007f4d6c4f5b01:   movzbl (%rdi),%ebx
            │                                                                                              ││ │ │││ │  ││  │ │                  │                  │                  │ ││  0x00007f4d6c4f5b04:   movzbl (%rsi),%ecx
            │                                                                                              ││ │ │││ │  ││  │ │                  │                  │                  │ ││  0x00007f4d6c4f5b07:   cmp    %ecx,%ebx
            │                                                                                              ││ │ │││ │  ││╭ │ │                  │                  │                  │ ││  0x00007f4d6c4f5b09:   jne    0x00007f4d6c4f5b12
            │                                                                                              │↘ │ ↘│↘ │  │↘│ │ │                  │                  │                  │ ││  0x00007f4d6c4f5b0b:   mov    $0x1,%eax
            │                                                                                              │  │  │  │  │ │╭│ │                  │                  │                  │ ││  0x00007f4d6c4f5b10:   jmp    0x00007f4d6c4f5b14
   0.00%    │                                                                                              │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │                  │ ││  0x00007f4d6c4f5b12:   xor    %eax,%eax
            │                                                                                              │              ↘│ │                  │                  │                  │ ││  0x00007f4d6c4f5b14:   vpxor  %ymm1,%ymm1,%ymm1
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5b18:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                              │               │ │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@60 (line 256)
   0.45%    │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5b1c:   nopl   0x0(%rax)
            │                                                                                              │               │ │                  │                  │                  │ ││  0x00007f4d6c4f5b20:   test   %eax,%eax
            │                                                                                              │               ╰ │                  │                  │                  │ ││  0x00007f4d6c4f5b22:   jne    0x00007f4d6c4f5a25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                              │                 │                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@63 (line 256)
   0.94%    │                                                                                              ↘                 │                  │                  │                  │ ││  0x00007f4d6c4f5b28:   movabs $0x7ff035350,%r10            ;   {oop(&quot;VAN&quot;{0x00000007ff035350})}
            │                                                                                                                │                  │                  │                  │ ││  0x00007f4d6c4f5b32:   cmp    %r10,%rdx
            │                                                                                                               ╭│                  │                  │                  │ ││  0x00007f4d6c4f5b35:   jne    0x00007f4d6c4f5b45           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                               ││                  │                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                                                                               ││                  │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.23%    │                                                                                                               ││                ↗ │                  │                  │ ││  0x00007f4d6c4f5b37:   mov    $0x7,%eax
            │                                                                                                               ││                │ │                  │                  │ ││  0x00007f4d6c4f5b3c:   nopl   0x0(%rax)
            │                                                                                                               │╰                │ │                  │                  │ ││  0x00007f4d6c4f5b40:   jmp    0x00007f4d6c4f54d9
   1.09%    │                                                                                                               ↘                 │ │                  │                  │ ││  0x00007f4d6c4f5b45:   test   %ebp,%ebp
            │                                                                                                                                 │ │                  │                  │ ││  0x00007f4d6c4f5b47:   jne    0x00007f4d6c4f5f74           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                 │ │                  │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                                                                                 │ │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
            │                                                                                                                                 │ │                  │                  │ ││  0x00007f4d6c4f5b4d:   mov    0xc(%r12,%r9,8),%r10d
   0.00%    │                                                                                                                                 │ │                  │                  │ ││  0x00007f4d6c4f5b52:   cmp    $0x3,%r10d
            │                                                                                                                 ╭               │ │                  │                  │ ││  0x00007f4d6c4f5b56:   jne    0x00007f4d6c4f5c36           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b5c:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.24%    │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b60:   lea    0x10(%r12,%r9,8),%rsi
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b65:   movabs $0x7ff035368,%rdi            ;   {oop([B{0x00000007ff035368})}
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b6f:   add    $0x10,%rdi
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b73:   mov    $0x3,%ecx
   0.23%    │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5b78:   test   %ecx,%ecx
            │                                                                                                                 │╭              │ │                  │                  │ ││  0x00007f4d6c4f5b7a:   je     0x00007f4d6c4f5c1d
            │                                                                                                                 ││              │ │                  │                  │ ││  0x00007f4d6c4f5b80:   mov    %ecx,%eax
            │                                                                                                                 ││              │ │                  │                  │ ││  0x00007f4d6c4f5b82:   and    $0x1f,%eax
   0.00%    │                                                                                                                 ││              │ │                  │                  │ ││  0x00007f4d6c4f5b85:   and    $0xffffffe0,%ecx
            │                                                                                                                 ││╭             │ │                  │                  │ ││  0x00007f4d6c4f5b88:   je     0x00007f4d6c4f5bd9
            │                                                                                                                 │││             │ │                  │                  │ ││  0x00007f4d6c4f5b8e:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                 │││             │ │                  │                  │ ││  0x00007f4d6c4f5b92:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                 │││             │ │                  │                  │ ││  0x00007f4d6c4f5b96:   neg    %rcx
            │                                                                                                                 │││ ↗           │ │                  │                  │ ││  0x00007f4d6c4f5b99:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                                                                                                                 │││ │           │ │                  │                  │ ││  0x00007f4d6c4f5b9e:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                                                                                                                 │││ │           │ │                  │                  │ ││  0x00007f4d6c4f5ba3:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                                                 │││ │           │ │                  │                  │ ││  0x00007f4d6c4f5ba7:   vptest %ymm1,%ymm1
            │                                                                                                                 │││╭│           │ │                  │                  │ ││  0x00007f4d6c4f5bac:   jne    0x00007f4d6c4f5c24
            │                                                                                                                 │││││           │ │                  │                  │ ││  0x00007f4d6c4f5bb2:   add    $0x20,%rcx
            │                                                                                                                 ││││╰           │ │                  │                  │ ││  0x00007f4d6c4f5bb6:   jne    0x00007f4d6c4f5b99
            │                                                                                                                 ││││            │ │                  │                  │ ││  0x00007f4d6c4f5bb8:   test   %eax,%eax
            │                                                                                                                 ││││ ╭          │ │                  │                  │ ││  0x00007f4d6c4f5bba:   je     0x00007f4d6c4f5c1d
            │                                                                                                                 ││││ │          │ │                  │                  │ ││  0x00007f4d6c4f5bc0:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                                                                                                                 ││││ │          │ │                  │                  │ ││  0x00007f4d6c4f5bc6:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                                                                                                                 ││││ │          │ │                  │                  │ ││  0x00007f4d6c4f5bcc:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                                                 ││││ │          │ │                  │                  │ ││  0x00007f4d6c4f5bd0:   vptest %ymm1,%ymm1
            │                                                                                                                 ││││ │╭         │ │                  │                  │ ││  0x00007f4d6c4f5bd5:   jne    0x00007f4d6c4f5c24
            │                                                                                                                 ││││ ││╭        │ │                  │                  │ ││  0x00007f4d6c4f5bd7:   jmp    0x00007f4d6c4f5c1d
   0.20%    │                                                                                                                 ││↘│ │││        │ │                  │                  │ ││  0x00007f4d6c4f5bd9:   mov    %eax,%ecx
            │                                                                                                                 ││ │ │││        │ │                  │                  │ ││  0x00007f4d6c4f5bdb:   and    $0xfffffffc,%ecx
            │                                                                                                                 ││ │ │││╭       │ │                  │                  │ ││  0x00007f4d6c4f5bde:   je     0x00007f4d6c4f5bf9
            │                                                                                                                 ││ │ ││││       │ │                  │                  │ ││  0x00007f4d6c4f5be0:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                 ││ │ ││││       │ │                  │                  │ ││  0x00007f4d6c4f5be4:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                 ││ │ ││││       │ │                  │                  │ ││  0x00007f4d6c4f5be8:   neg    %rcx
            │                                                                                                                 ││ │ ││││ ↗     │ │                  │                  │ ││  0x00007f4d6c4f5beb:   mov    (%rdi,%rcx,1),%ebx
            │                                                                                                                 ││ │ ││││ │     │ │                  │                  │ ││  0x00007f4d6c4f5bee:   cmp    (%rsi,%rcx,1),%ebx
            │                                                                                                                 ││ │ ││││╭│     │ │                  │                  │ ││  0x00007f4d6c4f5bf1:   jne    0x00007f4d6c4f5c24
            │                                                                                                                 ││ │ ││││││     │ │                  │                  │ ││  0x00007f4d6c4f5bf3:   add    $0x4,%rcx
            │                                                                                                                 ││ │ │││││╰     │ │                  │                  │ ││  0x00007f4d6c4f5bf7:   jne    0x00007f4d6c4f5beb
   0.26%    │                                                                                                                 ││ │ │││↘│      │ │                  │                  │ ││  0x00007f4d6c4f5bf9:   test   $0x2,%al
            │                                                                                                                 ││ │ │││ │ ╭    │ │                  │                  │ ││  0x00007f4d6c4f5bfb:   je     0x00007f4d6c4f5c0f
            │                                                                                                                 ││ │ │││ │ │    │ │                  │                  │ ││  0x00007f4d6c4f5bfd:   movzwl (%rdi),%ebx
            │                                                                                                                 ││ │ │││ │ │    │ │                  │                  │ ││  0x00007f4d6c4f5c00:   movzwl (%rsi),%ecx
            │                                                                                                                 ││ │ │││ │ │    │ │                  │                  │ ││  0x00007f4d6c4f5c03:   cmp    %ecx,%ebx
            │                                                                                                                 ││ │ │││ │ │╭   │ │                  │                  │ ││  0x00007f4d6c4f5c05:   jne    0x00007f4d6c4f5c24
            │                                                                                                                 ││ │ │││ │ ││   │ │                  │                  │ ││  0x00007f4d6c4f5c07:   lea    0x2(%rdi),%rdi
            │                                                                                                                 ││ │ │││ │ ││   │ │                  │                  │ ││  0x00007f4d6c4f5c0b:   lea    0x2(%rsi),%rsi
            │                                                                                                                 ││ │ │││ │ ↘│   │ │                  │                  │ ││  0x00007f4d6c4f5c0f:   test   $0x1,%al
            │                                                                                                                 ││ │ │││ │  │╭  │ │                  │                  │ ││  0x00007f4d6c4f5c11:   je     0x00007f4d6c4f5c1d
            │                                                                                                                 ││ │ │││ │  ││  │ │                  │                  │ ││  0x00007f4d6c4f5c13:   movzbl (%rdi),%ebx
            │                                                                                                                 ││ │ │││ │  ││  │ │                  │                  │ ││  0x00007f4d6c4f5c16:   movzbl (%rsi),%ecx
            │                                                                                                                 ││ │ │││ │  ││  │ │                  │                  │ ││  0x00007f4d6c4f5c19:   cmp    %ecx,%ebx
            │                                                                                                                 ││ │ │││ │  ││╭ │ │                  │                  │ ││  0x00007f4d6c4f5c1b:   jne    0x00007f4d6c4f5c24
            │                                                                                                                 │↘ │ ↘│↘ │  │↘│ │ │                  │                  │ ││  0x00007f4d6c4f5c1d:   mov    $0x1,%eax
            │                                                                                                                 │  │  │  │  │ │╭│ │                  │                  │ ││  0x00007f4d6c4f5c22:   jmp    0x00007f4d6c4f5c26
   0.20%    │                                                                                                                 │  ↘  ↘  ↘  ↘ ↘││ │                  │                  │ ││  0x00007f4d6c4f5c24:   xor    %eax,%eax
            │                                                                                                                 │              ↘│ │                  │                  │ ││  0x00007f4d6c4f5c26:   vpxor  %ymm1,%ymm1,%ymm1
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5c2a:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                 │               │ │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
            │                                                                                                                 │               │ │                  │                  │ ││  0x00007f4d6c4f5c2e:   test   %eax,%eax
            │                                                                                                                 │               ╰ │                  │                  │ ││  0x00007f4d6c4f5c30:   jne    0x00007f4d6c4f5b37           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                 │                 │                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@75 (line 258)
   1.10%    │                                                                                                                 ↘                 │                  │                  │ ││  0x00007f4d6c4f5c36:   movabs $0x7ff035380,%r10            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007ff035380})}
            │                                                                                                                                   │                  │                  │ ││  0x00007f4d6c4f5c40:   cmp    %r10,%rdx
            │                                                                                                                                  ╭│                  │                  │ ││  0x00007f4d6c4f5c43:   jne    0x00007f4d6c4f5c4f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                  ││                  │                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                                                                                                  ││                  │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
            │                                                                                                                                  ││                ↗ │                  │ ││  0x00007f4d6c4f5c45:   mov    $0x8,%eax
            │                                                                                                                                  │╰                │ │                  │ ││  0x00007f4d6c4f5c4a:   jmp    0x00007f4d6c4f54d9
   0.64%    │                                                                                                                                  ↘                 │ │                  │ ││  0x00007f4d6c4f5c4f:   test   %ebp,%ebp
            │                                                                                                                                                    │ │                  │ ││  0x00007f4d6c4f5c51:   jne    0x00007f4d6c4f5f8c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                    │ │                  │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                                                                                                    │ │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
   0.00%    │                                                                                                                                                    │ │                  │ ││  0x00007f4d6c4f5c57:   mov    0xc(%r12,%r9,8),%r11d
   0.25%    │                                                                                                                                                    │ │                  │ ││  0x00007f4d6c4f5c5c:   nopl   0x0(%rax)
            │                                                                                                                                                    │ │                  │ ││  0x00007f4d6c4f5c60:   cmp    $0xa,%r11d
            │                                                                                                                                    ╭               │ │                  │ ││  0x00007f4d6c4f5c64:   jne    0x00007f4d6c4f5d48           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c6a:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c6e:   lea    0x10(%r12,%r9,8),%rsi
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c73:   movabs $0x7ff035398,%rdi            ;   {oop([B{0x00000007ff035398})}
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c7d:   add    $0x10,%rdi
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c81:   mov    $0xa,%ecx
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5c86:   test   %ecx,%ecx
            │                                                                                                                                    │╭              │ │                  │ ││  0x00007f4d6c4f5c88:   je     0x00007f4d6c4f5d2b
            │                                                                                                                                    ││              │ │                  │ ││  0x00007f4d6c4f5c8e:   mov    %ecx,%eax
            │                                                                                                                                    ││              │ │                  │ ││  0x00007f4d6c4f5c90:   and    $0x1f,%eax
            │                                                                                                                                    ││              │ │                  │ ││  0x00007f4d6c4f5c93:   and    $0xffffffe0,%ecx
            │                                                                                                                                    ││╭             │ │                  │ ││  0x00007f4d6c4f5c96:   je     0x00007f4d6c4f5ce7
            │                                                                                                                                    │││             │ │                  │ ││  0x00007f4d6c4f5c9c:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                                    │││             │ │                  │ ││  0x00007f4d6c4f5ca0:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                                    │││             │ │                  │ ││  0x00007f4d6c4f5ca4:   neg    %rcx
            │                                                                                                                                    │││ ↗           │ │                  │ ││  0x00007f4d6c4f5ca7:   vmovdqu (%rdi,%rcx,1),%ymm0
            │                                                                                                                                    │││ │           │ │                  │ ││  0x00007f4d6c4f5cac:   vmovdqu (%rsi,%rcx,1),%ymm1
            │                                                                                                                                    │││ │           │ │                  │ ││  0x00007f4d6c4f5cb1:   vpxor  %ymm1,%ymm0,%ymm0
            │                                                                                                                                    │││ │           │ │                  │ ││  0x00007f4d6c4f5cb5:   vptest %ymm0,%ymm0
            │                                                                                                                                    │││╭│           │ │                  │ ││  0x00007f4d6c4f5cba:   jne    0x00007f4d6c4f5d32
            │                                                                                                                                    │││││           │ │                  │ ││  0x00007f4d6c4f5cc0:   add    $0x20,%rcx
            │                                                                                                                                    ││││╰           │ │                  │ ││  0x00007f4d6c4f5cc4:   jne    0x00007f4d6c4f5ca7
            │                                                                                                                                    ││││            │ │                  │ ││  0x00007f4d6c4f5cc6:   test   %eax,%eax
            │                                                                                                                                    ││││ ╭          │ │                  │ ││  0x00007f4d6c4f5cc8:   je     0x00007f4d6c4f5d2b
            │                                                                                                                                    ││││ │          │ │                  │ ││  0x00007f4d6c4f5cce:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
            │                                                                                                                                    ││││ │          │ │                  │ ││  0x00007f4d6c4f5cd4:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
            │                                                                                                                                    ││││ │          │ │                  │ ││  0x00007f4d6c4f5cda:   vpxor  %ymm1,%ymm0,%ymm0
            │                                                                                                                                    ││││ │          │ │                  │ ││  0x00007f4d6c4f5cde:   vptest %ymm0,%ymm0
            │                                                                                                                                    ││││ │╭         │ │                  │ ││  0x00007f4d6c4f5ce3:   jne    0x00007f4d6c4f5d32
            │                                                                                                                                    ││││ ││╭        │ │                  │ ││  0x00007f4d6c4f5ce5:   jmp    0x00007f4d6c4f5d2b
            │                                                                                                                                    ││↘│ │││        │ │                  │ ││  0x00007f4d6c4f5ce7:   mov    %eax,%ecx
            │                                                                                                                                    ││ │ │││        │ │                  │ ││  0x00007f4d6c4f5ce9:   and    $0xfffffffc,%ecx
            │                                                                                                                                    ││ │ │││╭       │ │                  │ ││  0x00007f4d6c4f5cec:   je     0x00007f4d6c4f5d07
            │                                                                                                                                    ││ │ ││││       │ │                  │ ││  0x00007f4d6c4f5cee:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                                    ││ │ ││││       │ │                  │ ││  0x00007f4d6c4f5cf2:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                                    ││ │ ││││       │ │                  │ ││  0x00007f4d6c4f5cf6:   neg    %rcx
            │                                                                                                                                    ││ │ ││││ ↗     │ │                  │ ││  0x00007f4d6c4f5cf9:   mov    (%rdi,%rcx,1),%ebx
            │                                                                                                                                    ││ │ ││││ │     │ │                  │ ││  0x00007f4d6c4f5cfc:   cmp    (%rsi,%rcx,1),%ebx
            │                                                                                                                                    ││ │ ││││╭│     │ │                  │ ││  0x00007f4d6c4f5cff:   jne    0x00007f4d6c4f5d32
            │                                                                                                                                    ││ │ ││││││     │ │                  │ ││  0x00007f4d6c4f5d01:   add    $0x4,%rcx
            │                                                                                                                                    ││ │ │││││╰     │ │                  │ ││  0x00007f4d6c4f5d05:   jne    0x00007f4d6c4f5cf9
            │                                                                                                                                    ││ │ │││↘│      │ │                  │ ││  0x00007f4d6c4f5d07:   test   $0x2,%al
            │                                                                                                                                    ││ │ │││ │ ╭    │ │                  │ ││  0x00007f4d6c4f5d09:   je     0x00007f4d6c4f5d1d
            │                                                                                                                                    ││ │ │││ │ │    │ │                  │ ││  0x00007f4d6c4f5d0b:   movzwl (%rdi),%ebx
            │                                                                                                                                    ││ │ │││ │ │    │ │                  │ ││  0x00007f4d6c4f5d0e:   movzwl (%rsi),%ecx
            │                                                                                                                                    ││ │ │││ │ │    │ │                  │ ││  0x00007f4d6c4f5d11:   cmp    %ecx,%ebx
            │                                                                                                                                    ││ │ │││ │ │╭   │ │                  │ ││  0x00007f4d6c4f5d13:   jne    0x00007f4d6c4f5d32
            │                                                                                                                                    ││ │ │││ │ ││   │ │                  │ ││  0x00007f4d6c4f5d15:   lea    0x2(%rdi),%rdi
            │                                                                                                                                    ││ │ │││ │ ││   │ │                  │ ││  0x00007f4d6c4f5d19:   lea    0x2(%rsi),%rsi
            │                                                                                                                                    ││ │ │││ │ ↘│   │ │                  │ ││  0x00007f4d6c4f5d1d:   test   $0x1,%al
            │                                                                                                                                    ││ │ │││ │  │╭  │ │                  │ ││  0x00007f4d6c4f5d1f:   je     0x00007f4d6c4f5d2b
            │                                                                                                                                    ││ │ │││ │  ││  │ │                  │ ││  0x00007f4d6c4f5d21:   movzbl (%rdi),%ebx
            │                                                                                                                                    ││ │ │││ │  ││  │ │                  │ ││  0x00007f4d6c4f5d24:   movzbl (%rsi),%ecx
            │                                                                                                                                    ││ │ │││ │  ││  │ │                  │ ││  0x00007f4d6c4f5d27:   cmp    %ecx,%ebx
            │                                                                                                                                    ││ │ │││ │  ││╭ │ │                  │ ││  0x00007f4d6c4f5d29:   jne    0x00007f4d6c4f5d32
            │                                                                                                                                    │↘ │ ↘│↘ │  │↘│ │ │                  │ ││  0x00007f4d6c4f5d2b:   mov    $0x1,%eax
            │                                                                                                                                    │  │  │  │  │ │╭│ │                  │ ││  0x00007f4d6c4f5d30:   jmp    0x00007f4d6c4f5d34
            │                                                                                                                                    │  ↘  ↘  ↘  ↘ ↘││ │                  │ ││  0x00007f4d6c4f5d32:   xor    %eax,%eax
            │                                                                                                                                    │              ↘│ │                  │ ││  0x00007f4d6c4f5d34:   vpxor  %ymm0,%ymm0,%ymm0
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5d38:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                                    │               │ │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@84 (line 260)
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5d3c:   nopl   0x0(%rax)
            │                                                                                                                                    │               │ │                  │ ││  0x00007f4d6c4f5d40:   test   %eax,%eax
            │                                                                                                                                    │               ╰ │                  │ ││  0x00007f4d6c4f5d42:   jne    0x00007f4d6c4f5c45           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                    │                 │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@87 (line 260)
   0.80%    │                                                                                                                                    ↘                 │                  │ ││  0x00007f4d6c4f5d48:   movabs $0x7ff0353b8,%r10            ;   {oop(&quot;TRUCK&quot;{0x00000007ff0353b8})}
            │                                                                                                                                                      │                  │ ││  0x00007f4d6c4f5d52:   cmp    %r10,%rdx
            │                                                                                                                                                     ╭│                  │ ││  0x00007f4d6c4f5d55:   jne    0x00007f4d6c4f5d65           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                     ││                  │ ││                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                                                                                                                     ││                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
            │                                                                                                                                                     ││                ↗ │ ││  0x00007f4d6c4f5d57:   mov    $0x9,%eax
            │                                                                                                                                                     ││                │ │ ││  0x00007f4d6c4f5d5c:   nopl   0x0(%rax)
   0.22%    │                                                                                                                                                     │╰                │ │ ││  0x00007f4d6c4f5d60:   jmp    0x00007f4d6c4f54d9
   0.77%    │                                                                                                                                                     ↘                 │ │ ││  0x00007f4d6c4f5d65:   test   %ebp,%ebp
            │                                                                                                                                                                       │ │ ││  0x00007f4d6c4f5d67:   jne    0x00007f4d6c4f5fa4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                       │ │ ││                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                                                                                                                                       │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
            │                                                                                                                                                                       │ │ ││  0x00007f4d6c4f5d6d:   mov    0xc(%r12,%r9,8),%r10d
            │                                                                                                                                                                       │ │ ││  0x00007f4d6c4f5d72:   cmp    $0x5,%r10d
            │                                                                                                                                                       ╭               │ │ ││  0x00007f4d6c4f5d76:   jne    0x00007f4d6c4f5e56           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                       │               │ │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                                                       │               │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d7c:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                       │               │ │ ││                                                            ; - java.lang.String::equals@41 (line 1861)
            │                                                                                                                                                       │               │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d80:   lea    0x10(%r12,%r9,8),%rsi
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d85:   movabs $0x7ff0353d0,%rdi            ;   {oop([B{0x00000007ff0353d0})}
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d8f:   add    $0x10,%rdi
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d93:   mov    $0x5,%ecx
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5d98:   test   %ecx,%ecx
            │                                                                                                                                                       │╭              │ │ ││  0x00007f4d6c4f5d9a:   je     0x00007f4d6c4f5e3d
            │                                                                                                                                                       ││              │ │ ││  0x00007f4d6c4f5da0:   mov    %ecx,%eax
            │                                                                                                                                                       ││              │ │ ││  0x00007f4d6c4f5da2:   and    $0x1f,%eax
            │                                                                                                                                                       ││              │ │ ││  0x00007f4d6c4f5da5:   and    $0xffffffe0,%ecx
            │                                                                                                                                                       ││╭             │ │ ││  0x00007f4d6c4f5da8:   je     0x00007f4d6c4f5df9
            │                                                                                                                                                       │││             │ │ ││  0x00007f4d6c4f5dae:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                                                       │││             │ │ ││  0x00007f4d6c4f5db2:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                                                       │││             │ │ ││  0x00007f4d6c4f5db6:   neg    %rcx
            │                                                                                                                                                       │││ ↗           │ │ ││  0x00007f4d6c4f5db9:   vmovdqu (%rdi,%rcx,1),%ymm1
            │                                                                                                                                                       │││ │           │ │ ││  0x00007f4d6c4f5dbe:   vmovdqu (%rsi,%rcx,1),%ymm0
            │                                                                                                                                                       │││ │           │ │ ││  0x00007f4d6c4f5dc3:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                                                                                       │││ │           │ │ ││  0x00007f4d6c4f5dc7:   vptest %ymm1,%ymm1
            │                                                                                                                                                       │││╭│           │ │ ││  0x00007f4d6c4f5dcc:   jne    0x00007f4d6c4f5e44
            │                                                                                                                                                       │││││           │ │ ││  0x00007f4d6c4f5dd2:   add    $0x20,%rcx
            │                                                                                                                                                       ││││╰           │ │ ││  0x00007f4d6c4f5dd6:   jne    0x00007f4d6c4f5db9
            │                                                                                                                                                       ││││            │ │ ││  0x00007f4d6c4f5dd8:   test   %eax,%eax
            │                                                                                                                                                       ││││ ╭          │ │ ││  0x00007f4d6c4f5dda:   je     0x00007f4d6c4f5e3d
            │                                                                                                                                                       ││││ │          │ │ ││  0x00007f4d6c4f5de0:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
            │                                                                                                                                                       ││││ │          │ │ ││  0x00007f4d6c4f5de6:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
            │                                                                                                                                                       ││││ │          │ │ ││  0x00007f4d6c4f5dec:   vpxor  %ymm0,%ymm1,%ymm1
            │                                                                                                                                                       ││││ │          │ │ ││  0x00007f4d6c4f5df0:   vptest %ymm1,%ymm1
            │                                                                                                                                                       ││││ │╭         │ │ ││  0x00007f4d6c4f5df5:   jne    0x00007f4d6c4f5e44
            │                                                                                                                                                       ││││ ││╭        │ │ ││  0x00007f4d6c4f5df7:   jmp    0x00007f4d6c4f5e3d
            │                                                                                                                                                       ││↘│ │││        │ │ ││  0x00007f4d6c4f5df9:   mov    %eax,%ecx
            │                                                                                                                                                       ││ │ │││        │ │ ││  0x00007f4d6c4f5dfb:   and    $0xfffffffc,%ecx
            │                                                                                                                                                       ││ │ │││╭       │ │ ││  0x00007f4d6c4f5dfe:   je     0x00007f4d6c4f5e19
            │                                                                                                                                                       ││ │ ││││       │ │ ││  0x00007f4d6c4f5e00:   lea    (%rdi,%rcx,1),%rdi
            │                                                                                                                                                       ││ │ ││││       │ │ ││  0x00007f4d6c4f5e04:   lea    (%rsi,%rcx,1),%rsi
            │                                                                                                                                                       ││ │ ││││       │ │ ││  0x00007f4d6c4f5e08:   neg    %rcx
            │                                                                                                                                                       ││ │ ││││ ↗     │ │ ││  0x00007f4d6c4f5e0b:   mov    (%rdi,%rcx,1),%ebx
            │                                                                                                                                                       ││ │ ││││ │     │ │ ││  0x00007f4d6c4f5e0e:   cmp    (%rsi,%rcx,1),%ebx
            │                                                                                                                                                       ││ │ ││││╭│     │ │ ││  0x00007f4d6c4f5e11:   jne    0x00007f4d6c4f5e44
            │                                                                                                                                                       ││ │ ││││││     │ │ ││  0x00007f4d6c4f5e13:   add    $0x4,%rcx
            │                                                                                                                                                       ││ │ │││││╰     │ │ ││  0x00007f4d6c4f5e17:   jne    0x00007f4d6c4f5e0b
            │                                                                                                                                                       ││ │ │││↘│      │ │ ││  0x00007f4d6c4f5e19:   test   $0x2,%al
            │                                                                                                                                                       ││ │ │││ │ ╭    │ │ ││  0x00007f4d6c4f5e1b:   je     0x00007f4d6c4f5e2f
            │                                                                                                                                                       ││ │ │││ │ │    │ │ ││  0x00007f4d6c4f5e1d:   movzwl (%rdi),%ebx
            │                                                                                                                                                       ││ │ │││ │ │    │ │ ││  0x00007f4d6c4f5e20:   movzwl (%rsi),%ecx
            │                                                                                                                                                       ││ │ │││ │ │    │ │ ││  0x00007f4d6c4f5e23:   cmp    %ecx,%ebx
            │                                                                                                                                                       ││ │ │││ │ │╭   │ │ ││  0x00007f4d6c4f5e25:   jne    0x00007f4d6c4f5e44
            │                                                                                                                                                       ││ │ │││ │ ││   │ │ ││  0x00007f4d6c4f5e27:   lea    0x2(%rdi),%rdi
            │                                                                                                                                                       ││ │ │││ │ ││   │ │ ││  0x00007f4d6c4f5e2b:   lea    0x2(%rsi),%rsi
            │                                                                                                                                                       ││ │ │││ │ ↘│   │ │ ││  0x00007f4d6c4f5e2f:   test   $0x1,%al
            │                                                                                                                                                       ││ │ │││ │  │╭  │ │ ││  0x00007f4d6c4f5e31:   je     0x00007f4d6c4f5e3d
            │                                                                                                                                                       ││ │ │││ │  ││  │ │ ││  0x00007f4d6c4f5e33:   movzbl (%rdi),%ebx
            │                                                                                                                                                       ││ │ │││ │  ││  │ │ ││  0x00007f4d6c4f5e36:   movzbl (%rsi),%ecx
            │                                                                                                                                                       ││ │ │││ │  ││  │ │ ││  0x00007f4d6c4f5e39:   cmp    %ecx,%ebx
            │                                                                                                                                                       ││ │ │││ │  ││╭ │ │ ││  0x00007f4d6c4f5e3b:   jne    0x00007f4d6c4f5e44
            │                                                                                                                                                       │↘ │ ↘│↘ │  │↘│ │ │ ││  0x00007f4d6c4f5e3d:   mov    $0x1,%eax
            │                                                                                                                                                       │  │  │  │  │ │╭│ │ ││  0x00007f4d6c4f5e42:   jmp    0x00007f4d6c4f5e46
            │                                                                                                                                                       │  ↘  ↘  ↘  ↘ ↘││ │ ││  0x00007f4d6c4f5e44:   xor    %eax,%eax
            │                                                                                                                                                       │              ↘│ │ ││  0x00007f4d6c4f5e46:   vpxor  %ymm1,%ymm1,%ymm1
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5e4a:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                       │               │ │ ││                                                            ; - java.lang.String::equals@44 (line 1863)
            │                                                                                                                                                       │               │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@96 (line 262)
            │                                                                                                                                                       │               │ │ ││  0x00007f4d6c4f5e4e:   test   %eax,%eax
            │                                                                                                                                                       │               ╰ │ ││  0x00007f4d6c4f5e50:   jne    0x00007f4d6c4f5d57           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                       │                 │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@99 (line 262)
   0.66%    │                                                                                                                                                       ↘                 │ ││  0x00007f4d6c4f5e56:   movabs $0x7ff0353e8,%rsi            ;   {oop(&quot;BUS&quot;{0x00000007ff0353e8})}
            │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e60:   mov    %rdx,%rbp
            │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e63:   nop
            │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e64:   vzeroupper 
   0.65%    │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e67:   call   0x00007f4d6c4e25c0           ; ImmutableOopMap {rbp=Oop }
            │                                                                                                                                                                         │ ││                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                         │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
            │                                                                                                                                                                         │ ││                                                            ;   {optimized virtual_call}
   4.72%    │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e6c:   nopl   0xbdc(%rax,%rax,1)           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                         │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@108 (line 264)
            │                                                                                                                                                                         │ ││                                                            ;   {other}
            │                                                                                                                                                                         │ ││  0x00007f4d6c4f5e74:   test   %eax,%eax
            │                                                                                                                                                                        ╭│ ││  0x00007f4d6c4f5e76:   je     0x00007f4d6c4f5e85           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                        ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@111 (line 264)
            │                                                                                                                                                                        ││ ││  0x00007f4d6c4f5e78:   mov    $0xa,%eax
            │                                                                                                                                                                        ││ ││  0x00007f4d6c4f5e7d:   data16 xchg %ax,%ax
   0.23%    │                                                                                                                                                                        │╰ ││  0x00007f4d6c4f5e80:   jmp    0x00007f4d6c4f54d9
   0.40%    │                                                                                                                                                                        ↘  ││  0x00007f4d6c4f5e85:   movabs $0x7ff035418,%rsi            ;   {oop(&quot;TRACTOR&quot;{0x00000007ff035418})}
            │                                                                                                                                                                           ││  0x00007f4d6c4f5e8f:   mov    %rbp,%rdx
            │                                                                                                                                                                           ││  0x00007f4d6c4f5e92:   xchg   %ax,%ax
            │                                                                                                                                                                           ││  0x00007f4d6c4f5e94:   vzeroupper 
   0.46%    │                                                                                                                                                                           ││  0x00007f4d6c4f5e97:   call   0x00007f4d6c4e25c0           ; ImmutableOopMap {rbp=Oop }
            │                                                                                                                                                                           ││                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@120 (line 266)
            │                                                                                                                                                                           ││                                                            ;   {optimized virtual_call}
   1.03%    │                                                                                                                                                                           ││  0x00007f4d6c4f5e9c:   nopl   0x1000c0c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@120 (line 266)
            │                                                                                                                                                                           ││                                                            ;   {other}
            │                                                                                                                                                                           ││  0x00007f4d6c4f5ea4:   test   %eax,%eax
            │                                                                                                                                                                          ╭││  0x00007f4d6c4f5ea6:   jne    0x00007f4d6c4f5eda           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@123 (line 266)
            │                                                                                                                                                                          │││  0x00007f4d6c4f5ea8:   movabs $0x7ff035448,%rsi            ;   {oop(&quot;MONORAIL&quot;{0x00000007ff035448})}
   0.09%    │                                                                                                                                                                          │││  0x00007f4d6c4f5eb2:   mov    %rbp,%rdx
   0.12%    │                                                                                                                                                                          │││  0x00007f4d6c4f5eb5:   data16 xchg %ax,%ax
            │                                                                                                                                                                          │││  0x00007f4d6c4f5eb8:   vzeroupper 
   0.21%    │                                                                                                                                                                          │││  0x00007f4d6c4f5ebb:   call   0x00007f4d6c4e25c0           ; ImmutableOopMap {rbp=Oop }
            │                                                                                                                                                                          │││                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
            │                                                                                                                                                                          │││                                                            ;   {optimized virtual_call}
   1.30%    │                                                                                                                                                                          │││  0x00007f4d6c4f5ec0:   nopl   0x2000c30(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@132 (line 268)
            │                                                                                                                                                                          │││                                                            ;   {other}
   0.00%    │                                                                                                                                                                          │││  0x00007f4d6c4f5ec8:   test   %eax,%eax
            │                                                                                                                                                                          │││  0x00007f4d6c4f5eca:   je     0x00007f4d6c4f5fbc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                                                                                                                          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@135 (line 268)
            │                                                                                                                                                                          │││  0x00007f4d6c4f5ed0:   mov    $0xc,%eax
            │                                                                                                                                                                          │╰│  0x00007f4d6c4f5ed5:   jmp    0x00007f4d6c4f54d9
   0.25%    │                                                                                                                                                                          ↘ │  0x00007f4d6c4f5eda:   mov    $0xb,%eax
            │                                                                                                                                                                            │  0x00007f4d6c4f5edf:   nop
            │                                                                                                                                                                            ╰  0x00007f4d6c4f5ee0:   jmp    0x00007f4d6c4f54d9
            ↘                                                                                                                                                                               0x00007f4d6c4f5ee5:   mov    $0xffffff45,%esi
                                                                                                                                                                                            0x00007f4d6c4f5eea:   xchg   %ax,%ax
                                                                                                                                                                                            0x00007f4d6c4f5eec:   vzeroupper 
                                                                                                                                                                                            0x00007f4d6c4f5eef:   call   0x00007f4d6bf8af00           ; ImmutableOopMap {[0]=Oop }
                                                                                                                                                                                                                                                      ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                                                                                                                                                                                      ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                                                                                                                                                                                                      ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  71.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 646 

                 #           [sp+0x40]  (sp of caller)
                 0x00007f4d6c4f70a0:   mov    0x8(%rsi),%r10d
                 0x00007f4d6c4f70a4:   movabs $0x7f4ceb000000,%r11
                 0x00007f4d6c4f70ae:   add    %r11,%r10
                 0x00007f4d6c4f70b1:   cmp    %r10,%rax
                 0x00007f4d6c4f70b4:   jne    0x00007f4d6bf85080           ;   {runtime_call ic_miss_stub}
                 0x00007f4d6c4f70ba:   xchg   %ax,%ax
                 0x00007f4d6c4f70bc:   nopl   0x0(%rax)
               [Verified Entry Point]
                 0x00007f4d6c4f70c0:   mov    %eax,-0x14000(%rsp)
   0.00%         0x00007f4d6c4f70c7:   push   %rbp
   0.00%         0x00007f4d6c4f70c8:   sub    $0x30,%rsp
                 0x00007f4d6c4f70cc:   cmpl   $0x1,0x20(%r15)
                 0x00007f4d6c4f70d4:   jne    0x00007f4d6c4f71ca           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@-1 (line 125)
   0.00%         0x00007f4d6c4f70da:   mov    %rsi,%r10
   0.00%         0x00007f4d6c4f70dd:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                 0x00007f4d6c4f70e1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f4d6c4f71a1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
   0.01%         0x00007f4d6c4f70e6:   test   %ebx,%ebx
          ╭      0x00007f4d6c4f70e8:   jbe    0x00007f4d6c4f7172           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.01%  │      0x00007f4d6c4f70ee:   mov    %ebx,%r11d
          │      0x00007f4d6c4f70f1:   dec    %r11d
          │      0x00007f4d6c4f70f4:   cmp    %ebx,%r11d
          │╭     0x00007f4d6c4f70f7:   jae    0x00007f4d6c4f7176
   0.00%  ││     0x00007f4d6c4f70fd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          ││     0x00007f4d6c4f7101:   xor    %ebp,%ebp
          ││     0x00007f4d6c4f7103:   xor    %r11d,%r11d
          ││     0x00007f4d6c4f7106:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007f4d6c4f710b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f4d6c4f710f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f4d6c4f7114:   jmp    0x00007f4d6c4f7129
          │││    0x00007f4d6c4f7116:   data16 nopw 0x0(%rax,%rax,1)
   0.66%  │││↗   0x00007f4d6c4f7120:   mov    (%rsp),%r8
   0.96%  ││││   0x00007f4d6c4f7124:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   2.78%  ││↘│   0x00007f4d6c4f7129:   mov    0x10(%r8,%rbp,4),%r11d
   1.65%  ││ │   0x00007f4d6c4f712e:   mov    %r8,(%rsp)
   0.71%  ││ │   0x00007f4d6c4f7132:   mov    %r11,%rdx
   0.44%  ││ │   0x00007f4d6c4f7135:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.14%  ││ │   0x00007f4d6c4f7139:   mov    0x8(%rsp),%rsi
   0.33%  ││ │   0x00007f4d6c4f713e:   nop
   0.72%  ││ │   0x00007f4d6c4f713f:   call   0x00007f4d6c4f54a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {optimized virtual_call}
   1.48%  ││ │   0x00007f4d6c4f7144:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {other}
   0.38%  ││ │   0x00007f4d6c4f714c:   mov    0x14(%rsp),%r10d
   1.20%  ││ │   0x00007f4d6c4f7151:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.15%  ││ │   0x00007f4d6c4f7154:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.28%  ││ │   0x00007f4d6c4f7156:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f4d6c4f715a:   jl     0x00007f4d6c4f7120
   0.02%  ││     0x00007f4d6c4f715c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.00%  ││  ↗  0x00007f4d6c4f715f:   add    $0x30,%rsp
   0.01%  ││  │  0x00007f4d6c4f7163:   pop    %rbp
   0.01%  ││  │  0x00007f4d6c4f7164:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f4d6c4f716b:   ja     0x00007f4d6c4f71b4
   0.00%  ││  │  0x00007f4d6c4f7171:   ret    
          ↘│  │  0x00007f4d6c4f7172:   xor    %eax,%eax
           │  ╰  0x00007f4d6c4f7174:   jmp    0x00007f4d6c4f715f
           ↘     0x00007f4d6c4f7176:   mov    $0xffffff76,%esi
                 0x00007f4d6c4f717b:   mov    %r10,%rbp
                 0x00007f4d6c4f717e:   mov    %ebx,0x4(%rsp)
                 0x00007f4d6c4f7182:   mov    %r9d,0x8(%rsp)
                 0x00007f4d6c4f7187:   call   0x00007f4d6bf8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  13.95%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 333 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007f4d6c4e25a0:   mov    0x8(%rsi),%r10d
                                0x00007f4d6c4e25a4:   movabs $0x7f4ceb000000,%r11
                                0x00007f4d6c4e25ae:   add    %r11,%r10
                                0x00007f4d6c4e25b1:   cmp    %r10,%rax
                                0x00007f4d6c4e25b4:   jne    0x00007f4d6bf85080           ;   {runtime_call ic_miss_stub}
                                0x00007f4d6c4e25ba:   xchg   %ax,%ax
                                0x00007f4d6c4e25bc:   nopl   0x0(%rax)
                              [Verified Entry Point]
   1.61%                        0x00007f4d6c4e25c0:   mov    %eax,-0x14000(%rsp)
   2.12%                        0x00007f4d6c4e25c7:   push   %rbp
   0.58%                        0x00007f4d6c4e25c8:   sub    $0x20,%rsp
   0.23%                        0x00007f4d6c4e25cc:   cmpl   $0x1,0x20(%r15)
   0.48%                        0x00007f4d6c4e25d4:   jne    0x00007f4d6c4e2786           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   0.67%                        0x00007f4d6c4e25da:   nopw   0x0(%rax,%rax,1)
   0.06%                        0x00007f4d6c4e25e0:   cmp    %rdx,%rsi
          ╭                     0x00007f4d6c4e25e3:   jne    0x00007f4d6c4e25ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.11%  │                     0x00007f4d6c4e25e5:   mov    $0x1,%eax
   0.22%  │╭                    0x00007f4d6c4e25ea:   jmp    0x00007f4d6c4e2702
          ↘│                    0x00007f4d6c4e25ef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f4d6c4e2758
   0.17%   │                    0x00007f4d6c4e25f3:   nopw   0x0(%rax,%rax,1)
   0.41%   │                    0x00007f4d6c4e25fc:   data16 data16 xchg %ax,%ax
           │                    0x00007f4d6c4e2600:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007f4d6c4e2607:   jne    0x00007f4d6c4e2738           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007f4d6c4e260d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
   0.26%   │                    0x00007f4d6c4e2612:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
   0.40%   │                    0x00007f4d6c4e2616:   cmp    %ebp,%r10d
           │╭                   0x00007f4d6c4e2619:   jne    0x00007f4d6c4e271c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007f4d6c4e261f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007f4d6c4e2623:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
   0.25%   ││                   0x00007f4d6c4e2627:   mov    0xc(%r12,%r11,8),%r9d
   0.41%   ││                   0x00007f4d6c4e262c:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007f4d6c4e2631:   cmp    %r9d,%ecx
           ││╭                  0x00007f4d6c4e2634:   jne    0x00007f4d6c4e2718           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007f4d6c4e263a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007f4d6c4e263e:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007f4d6c4e2643:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007f4d6c4e2647:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007f4d6c4e264c:   test   %ecx,%ecx
           │││╭                 0x00007f4d6c4e264e:   je     0x00007f4d6c4e26f1
           ││││                 0x00007f4d6c4e2654:   mov    %ecx,%eax
           ││││                 0x00007f4d6c4e2656:   and    $0x1f,%eax
           ││││                 0x00007f4d6c4e2659:   and    $0xffffffe0,%ecx
           ││││╭                0x00007f4d6c4e265c:   je     0x00007f4d6c4e26ad
           │││││                0x00007f4d6c4e2662:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007f4d6c4e2666:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007f4d6c4e266a:   neg    %rcx
           │││││ ↗              0x00007f4d6c4e266d:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007f4d6c4e2672:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007f4d6c4e2677:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007f4d6c4e267b:   vptest %ymm1,%ymm1
           │││││╭│              0x00007f4d6c4e2680:   jne    0x00007f4d6c4e26f8
           │││││││              0x00007f4d6c4e2686:   add    $0x20,%rcx
           ││││││╰              0x00007f4d6c4e268a:   jne    0x00007f4d6c4e266d
           ││││││               0x00007f4d6c4e268c:   test   %eax,%eax
           ││││││ ╭             0x00007f4d6c4e268e:   je     0x00007f4d6c4e26f1
           ││││││ │             0x00007f4d6c4e2694:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007f4d6c4e269a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007f4d6c4e26a0:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007f4d6c4e26a4:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007f4d6c4e26a9:   jne    0x00007f4d6c4e26f8
           ││││││ ││╭           0x00007f4d6c4e26ab:   jmp    0x00007f4d6c4e26f1
           ││││↘│ │││           0x00007f4d6c4e26ad:   mov    %eax,%ecx
           ││││ │ │││           0x00007f4d6c4e26af:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007f4d6c4e26b2:   je     0x00007f4d6c4e26cd
           ││││ │ ││││          0x00007f4d6c4e26b4:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007f4d6c4e26b8:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007f4d6c4e26bc:   neg    %rcx
           ││││ │ ││││ ↗        0x00007f4d6c4e26bf:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007f4d6c4e26c2:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007f4d6c4e26c5:   jne    0x00007f4d6c4e26f8
           ││││ │ ││││││        0x00007f4d6c4e26c7:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007f4d6c4e26cb:   jne    0x00007f4d6c4e26bf
           ││││ │ │││↘│         0x00007f4d6c4e26cd:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007f4d6c4e26cf:   je     0x00007f4d6c4e26e3
           ││││ │ │││ │ │       0x00007f4d6c4e26d1:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007f4d6c4e26d4:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007f4d6c4e26d7:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007f4d6c4e26d9:   jne    0x00007f4d6c4e26f8
           ││││ │ │││ │ ││      0x00007f4d6c4e26db:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007f4d6c4e26df:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007f4d6c4e26e3:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007f4d6c4e26e5:   je     0x00007f4d6c4e26f1
           ││││ │ │││ │  ││     0x00007f4d6c4e26e7:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007f4d6c4e26ea:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007f4d6c4e26ed:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007f4d6c4e26ef:   jne    0x00007f4d6c4e26f8
           │││↘ │ ↘│↘ │  │↘│    0x00007f4d6c4e26f1:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007f4d6c4e26f6:   jmp    0x00007f4d6c4e26fa
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007f4d6c4e26f8:   xor    %eax,%eax
           │││              ↘   0x00007f4d6c4e26fa:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007f4d6c4e26fe:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   0.60%   ↘││               ↗  0x00007f4d6c4e2702:   vzeroupper 
   1.30%    ││               │  0x00007f4d6c4e2705:   add    $0x20,%rsp
   0.09%    ││               │  0x00007f4d6c4e2709:   pop    %rbp
   0.26%    ││               │  0x00007f4d6c4e270a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007f4d6c4e2711:   ja     0x00007f4d6c4e2770
   1.09%    ││               │  0x00007f4d6c4e2717:   ret    
            │↘               │  0x00007f4d6c4e2718:   xor    %eax,%eax
   0.21%    │                ╰  0x00007f4d6c4e271a:   jmp    0x00007f4d6c4e2702
            ↘                   0x00007f4d6c4e271c:   mov    $0xffffff45,%esi
                                0x00007f4d6c4e2721:   mov    %r10d,(%rsp)
                                0x00007f4d6c4e2725:   data16 xchg %ax,%ax
                                0x00007f4d6c4e2728:   vzeroupper 
                                0x00007f4d6c4e272b:   call   0x00007f4d6bf8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
                                0x00007f4d6c4e2730:   nopl   0x320(%rax,%rax,1)           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.String::equals@33 (line 1861)
....................................................................................................
  11.54%  <total for region 3>

....[Hottest Regions]...............................................................................
  71.24%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 641 
  13.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 646 
  11.54%           c2, level 4  java.lang.String::equals, version 2, compile id 333 
   0.35%     [kernel.kallsyms]  native_write_msr 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   1.15%  <...other 217 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.24%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 641 
  13.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 646 
  11.54%           c2, level 4  java.lang.String::equals, version 2, compile id 333 
   0.35%     [kernel.kallsyms]  native_write_msr 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.18%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.17%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  refill_obj_stock 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  lock_page_memcg 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  folio_lruvec_lock_irqsave 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   1.15%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.75%           c2, level 4
   2.83%     [kernel.kallsyms]
   0.24%             libjvm.so
   0.11%             libc.so.6
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%         perf-5782.map
   0.00%             nf_nat.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:18:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 55.433 ns/op
# Warmup Iteration   2: 53.215 ns/op
# Warmup Iteration   3: 52.841 ns/op
# Warmup Iteration   4: 53.122 ns/op
# Warmup Iteration   5: 53.224 ns/op
Iteration   1: 53.036 ns/op
Iteration   2: 53.058 ns/op
Iteration   3: 53.133 ns/op
Iteration   4: 52.992 ns/op
Iteration   5: 53.096 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  53.063 ±(99.9%) 0.209 ns/op [Average]
  (min, avg, max) = (52.992, 53.063, 53.133), stdev = 0.054
  CI (99.9%): [52.854, 53.272] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 128431 total address lines.
Perf output processed (skipped 67.084 seconds):
 Column 1: cycles (49674 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 651 

 <region is too big to display, has 1636 lines, but threshold is 1000>
....................................................................................................
  70.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 325 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007f0fd04e1da0:   mov    0x8(%rsi),%r10d
                                0x00007f0fd04e1da4:   movabs $0x7f0f4f000000,%r11
                                0x00007f0fd04e1dae:   add    %r11,%r10
                                0x00007f0fd04e1db1:   cmp    %r10,%rax
                                0x00007f0fd04e1db4:   jne    0x00007f0fcff85080           ;   {runtime_call ic_miss_stub}
                                0x00007f0fd04e1dba:   xchg   %ax,%ax
                                0x00007f0fd04e1dbc:   nopl   0x0(%rax)
                              [Verified Entry Point]
   2.22%                        0x00007f0fd04e1dc0:   mov    %eax,-0x14000(%rsp)
   2.94%                        0x00007f0fd04e1dc7:   push   %rbp
   0.80%                        0x00007f0fd04e1dc8:   sub    $0x20,%rsp
   0.39%                        0x00007f0fd04e1dcc:   cmpl   $0x1,0x20(%r15)
   0.34%                        0x00007f0fd04e1dd4:   jne    0x00007f0fd04e1f86           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   0.66%                        0x00007f0fd04e1dda:   nopw   0x0(%rax,%rax,1)
   0.07%                        0x00007f0fd04e1de0:   cmp    %rdx,%rsi
          ╭                     0x00007f0fd04e1de3:   jne    0x00007f0fd04e1def           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.05%  │                     0x00007f0fd04e1de5:   mov    $0x1,%eax
   0.03%  │╭                    0x00007f0fd04e1dea:   jmp    0x00007f0fd04e1f02
   0.28%  ↘│                    0x00007f0fd04e1def:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f0fd04e1f58
   0.33%   │                    0x00007f0fd04e1df3:   nopw   0x0(%rax,%rax,1)
   0.39%   │                    0x00007f0fd04e1dfc:   data16 data16 xchg %ax,%ax
   0.00%   │                    0x00007f0fd04e1e00:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007f0fd04e1e07:   jne    0x00007f0fd04e1f38           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
   0.22%   │                    0x00007f0fd04e1e0d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
   0.33%   │                    0x00007f0fd04e1e12:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
   0.34%   │                    0x00007f0fd04e1e16:   cmp    %ebp,%r10d
           │╭                   0x00007f0fd04e1e19:   jne    0x00007f0fd04e1f1c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
   0.02%   ││                   0x00007f0fd04e1e1f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
   0.24%   ││                   0x00007f0fd04e1e23:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
   0.34%   ││                   0x00007f0fd04e1e27:   mov    0xc(%r12,%r11,8),%r9d
   0.39%   ││                   0x00007f0fd04e1e2c:   mov    0xc(%r12,%r10,8),%ecx
   0.00%   ││                   0x00007f0fd04e1e31:   cmp    %r9d,%ecx
           ││╭                  0x00007f0fd04e1e34:   jne    0x00007f0fd04e1f18           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007f0fd04e1e3a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007f0fd04e1e3e:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007f0fd04e1e43:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007f0fd04e1e47:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007f0fd04e1e4c:   test   %ecx,%ecx
           │││╭                 0x00007f0fd04e1e4e:   je     0x00007f0fd04e1ef1
           ││││                 0x00007f0fd04e1e54:   mov    %ecx,%eax
           ││││                 0x00007f0fd04e1e56:   and    $0x1f,%eax
           ││││                 0x00007f0fd04e1e59:   and    $0xffffffe0,%ecx
           ││││╭                0x00007f0fd04e1e5c:   je     0x00007f0fd04e1ead
           │││││                0x00007f0fd04e1e62:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007f0fd04e1e66:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007f0fd04e1e6a:   neg    %rcx
           │││││ ↗              0x00007f0fd04e1e6d:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007f0fd04e1e72:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007f0fd04e1e77:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007f0fd04e1e7b:   vptest %ymm1,%ymm1
           │││││╭│              0x00007f0fd04e1e80:   jne    0x00007f0fd04e1ef8
           │││││││              0x00007f0fd04e1e86:   add    $0x20,%rcx
           ││││││╰              0x00007f0fd04e1e8a:   jne    0x00007f0fd04e1e6d
           ││││││               0x00007f0fd04e1e8c:   test   %eax,%eax
           ││││││ ╭             0x00007f0fd04e1e8e:   je     0x00007f0fd04e1ef1
           ││││││ │             0x00007f0fd04e1e94:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007f0fd04e1e9a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007f0fd04e1ea0:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007f0fd04e1ea4:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007f0fd04e1ea9:   jne    0x00007f0fd04e1ef8
           ││││││ ││╭           0x00007f0fd04e1eab:   jmp    0x00007f0fd04e1ef1
           ││││↘│ │││           0x00007f0fd04e1ead:   mov    %eax,%ecx
           ││││ │ │││           0x00007f0fd04e1eaf:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007f0fd04e1eb2:   je     0x00007f0fd04e1ecd
           ││││ │ ││││          0x00007f0fd04e1eb4:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007f0fd04e1eb8:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007f0fd04e1ebc:   neg    %rcx
           ││││ │ ││││ ↗        0x00007f0fd04e1ebf:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007f0fd04e1ec2:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007f0fd04e1ec5:   jne    0x00007f0fd04e1ef8
           ││││ │ ││││││        0x00007f0fd04e1ec7:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007f0fd04e1ecb:   jne    0x00007f0fd04e1ebf
           ││││ │ │││↘│         0x00007f0fd04e1ecd:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007f0fd04e1ecf:   je     0x00007f0fd04e1ee3
           ││││ │ │││ │ │       0x00007f0fd04e1ed1:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007f0fd04e1ed4:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007f0fd04e1ed7:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007f0fd04e1ed9:   jne    0x00007f0fd04e1ef8
           ││││ │ │││ │ ││      0x00007f0fd04e1edb:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007f0fd04e1edf:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007f0fd04e1ee3:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007f0fd04e1ee5:   je     0x00007f0fd04e1ef1
           ││││ │ │││ │  ││     0x00007f0fd04e1ee7:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007f0fd04e1eea:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007f0fd04e1eed:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007f0fd04e1eef:   jne    0x00007f0fd04e1ef8
           │││↘ │ ↘│↘ │  │↘│    0x00007f0fd04e1ef1:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007f0fd04e1ef6:   jmp    0x00007f0fd04e1efa
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007f0fd04e1ef8:   xor    %eax,%eax
           │││              ↘   0x00007f0fd04e1efa:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007f0fd04e1efe:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   0.86%   ↘││               ↗  0x00007f0fd04e1f02:   vzeroupper 
   1.37%    ││               │  0x00007f0fd04e1f05:   add    $0x20,%rsp
   0.06%    ││               │  0x00007f0fd04e1f09:   pop    %rbp
   0.10%    ││               │  0x00007f0fd04e1f0a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007f0fd04e1f11:   ja     0x00007f0fd04e1f70
   1.17%    ││               │  0x00007f0fd04e1f17:   ret    
   0.24%    │↘               │  0x00007f0fd04e1f18:   xor    %eax,%eax
   0.31%    │                ╰  0x00007f0fd04e1f1a:   jmp    0x00007f0fd04e1f02
            ↘                   0x00007f0fd04e1f1c:   mov    $0xffffff45,%esi
                                0x00007f0fd04e1f21:   mov    %r10d,(%rsp)
                                0x00007f0fd04e1f25:   data16 xchg %ax,%ax
                                0x00007f0fd04e1f28:   vzeroupper 
                                0x00007f0fd04e1f2b:   call   0x00007f0fcff8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
                                0x00007f0fd04e1f30:   nopl   0x320(%rax,%rax,1)           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.String::equals@33 (line 1861)
....................................................................................................
  14.51%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 656 

                 # {method} {0x00007f0f44479568} &apos;chained_ifs&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f0fd04fa820:   mov    0x8(%rsi),%r10d
                 0x00007f0fd04fa824:   movabs $0x7f0f4f000000,%r11
                 0x00007f0fd04fa82e:   add    %r11,%r10
                 0x00007f0fd04fa831:   cmp    %r10,%rax
                 0x00007f0fd04fa834:   jne    0x00007f0fcff85080           ;   {runtime_call ic_miss_stub}
                 0x00007f0fd04fa83a:   xchg   %ax,%ax
                 0x00007f0fd04fa83c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007f0fd04fa840:   mov    %eax,-0x14000(%rsp)
                 0x00007f0fd04fa847:   push   %rbp
                 0x00007f0fd04fa848:   sub    $0x30,%rsp
   0.00%         0x00007f0fd04fa84c:   cmpl   $0x1,0x20(%r15)
                 0x00007f0fd04fa854:   jne    0x00007f0fd04fa94a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@-1 (line 125)
                 0x00007f0fd04fa85a:   mov    %rsi,%r10
                 0x00007f0fd04fa85d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                 0x00007f0fd04fa861:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f0fd04fa921
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
   0.00%         0x00007f0fd04fa866:   test   %ebx,%ebx
          ╭      0x00007f0fd04fa868:   jbe    0x00007f0fd04fa8f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.00%  │      0x00007f0fd04fa86e:   mov    %ebx,%r11d
          │      0x00007f0fd04fa871:   dec    %r11d
          │      0x00007f0fd04fa874:   cmp    %ebx,%r11d
          │╭     0x00007f0fd04fa877:   jae    0x00007f0fd04fa8f6
   0.00%  ││     0x00007f0fd04fa87d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          ││     0x00007f0fd04fa881:   xor    %ebp,%ebp
          ││     0x00007f0fd04fa883:   xor    %r11d,%r11d
          ││     0x00007f0fd04fa886:   mov    %rsi,0x8(%rsp)
          ││     0x00007f0fd04fa88b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f0fd04fa88f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f0fd04fa894:   jmp    0x00007f0fd04fa8a9
          │││    0x00007f0fd04fa896:   data16 nopw 0x0(%rax,%rax,1)
   0.25%  │││↗   0x00007f0fd04fa8a0:   mov    (%rsp),%r8
   0.71%  ││││   0x00007f0fd04fa8a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   3.30%  ││↘│   0x00007f0fd04fa8a9:   mov    0x10(%r8,%rbp,4),%r11d
   1.80%  ││ │   0x00007f0fd04fa8ae:   mov    %r8,(%rsp)
   0.22%  ││ │   0x00007f0fd04fa8b2:   mov    %r11,%rdx
   0.05%  ││ │   0x00007f0fd04fa8b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.12%  ││ │   0x00007f0fd04fa8b9:   mov    0x8(%rsp),%rsi
   0.10%  ││ │   0x00007f0fd04fa8be:   nop
   0.17%  ││ │   0x00007f0fd04fa8bf:   call   0x00007f0fd04f79a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {optimized virtual_call}
   1.93%  ││ │   0x00007f0fd04fa8c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {other}
   0.11%  ││ │   0x00007f0fd04fa8cc:   mov    0x14(%rsp),%r10d
   0.61%  ││ │   0x00007f0fd04fa8d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.10%  ││ │   0x00007f0fd04fa8d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   0.13%  ││ │   0x00007f0fd04fa8d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f0fd04fa8da:   jl     0x00007f0fd04fa8a0
   0.02%  ││     0x00007f0fd04fa8dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.00%  ││  ↗  0x00007f0fd04fa8df:   add    $0x30,%rsp
   0.00%  ││  │  0x00007f0fd04fa8e3:   pop    %rbp
   0.01%  ││  │  0x00007f0fd04fa8e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f0fd04fa8eb:   ja     0x00007f0fd04fa934
   0.00%  ││  │  0x00007f0fd04fa8f1:   ret    
          ↘│  │  0x00007f0fd04fa8f2:   xor    %eax,%eax
           │  ╰  0x00007f0fd04fa8f4:   jmp    0x00007f0fd04fa8df
           ↘     0x00007f0fd04fa8f6:   mov    $0xffffff76,%esi
                 0x00007f0fd04fa8fb:   mov    %r10,%rbp
                 0x00007f0fd04fa8fe:   mov    %ebx,0x4(%rsp)
                 0x00007f0fd04fa902:   mov    %r9d,0x8(%rsp)
                 0x00007f0fd04fa907:   call   0x00007f0fcff8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  11.66%  <total for region 3>

....[Hottest Regions]...............................................................................
  70.75%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 651 
  14.51%           c2, level 4  java.lang.String::equals, version 2, compile id 325 
  11.66%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 656 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.07%  <...other 180 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.75%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 651 
  14.51%           c2, level 4  java.lang.String::equals, version 2, compile id 325 
  11.66%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 656 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.17%     [kernel.kallsyms]  release_pages 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.14%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   1.07%  <...other 175 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.92%           c2, level 4
   2.63%     [kernel.kallsyms]
   0.21%             libjvm.so
   0.17%             libc.so.6
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%        hsdis-amd64.so
   0.01%                      
   0.01%           c1, level 1
   0.00%      Unknown, level 0
   0.00%         perf-5852.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:16:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.799 ns/op
# Warmup Iteration   2: 12.302 ns/op
# Warmup Iteration   3: 12.254 ns/op
# Warmup Iteration   4: 12.311 ns/op
# Warmup Iteration   5: 12.219 ns/op
Iteration   1: 12.248 ns/op
Iteration   2: 12.123 ns/op
Iteration   3: 12.149 ns/op
Iteration   4: 12.198 ns/op
Iteration   5: 12.166 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  12.177 ±(99.9%) 0.186 ns/op [Average]
  (min, avg, max) = (12.123, 12.177, 12.248), stdev = 0.048
  CI (99.9%): [11.991, 12.363] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 123047 total address lines.
Perf output processed (skipped 67.770 seconds):
 Column 1: cycles (49548 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 652 

                                                                       # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                       #           [sp+0x30]  (sp of caller)
                                                                       0x00007f0cdc4f60e0:   mov    0x8(%rsi),%r10d
                                                                       0x00007f0cdc4f60e4:   movabs $0x7f0c5b000000,%r11
                                                                       0x00007f0cdc4f60ee:   add    %r11,%r10
                                                                       0x00007f0cdc4f60f1:   cmp    %r10,%rax
                                                                       0x00007f0cdc4f60f4:   jne    0x00007f0cdbf85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007f0cdc4f60fa:   xchg   %ax,%ax
                                                                       0x00007f0cdc4f60fc:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   6.52%                                                               0x00007f0cdc4f6100:   mov    %eax,-0x14000(%rsp)
   0.06%                                                               0x00007f0cdc4f6107:   push   %rbp
   2.61%                                                               0x00007f0cdc4f6108:   sub    $0x20,%rsp
   3.93%                                                               0x00007f0cdc4f610c:   cmpl   $0x1,0x20(%r15)
   0.04%                                                               0x00007f0cdc4f6114:   jne    0x00007f0cdc4f668a           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@-1 (line 214)
   2.71%                                                               0x00007f0cdc4f611a:   mov    %rdx,(%rsp)
   3.75%                                                               0x00007f0cdc4f611e:   xchg   %ax,%ax
   0.01%                                                               0x00007f0cdc4f6120:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f0cdc4f665c
                                                                                                                                 ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::hashCode@1 (line 2363)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   1.76%                                                               0x00007f0cdc4f6123:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::hashCode@24 (line 2365)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   3.31%                                                               0x00007f0cdc4f6127:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::isLatin1@7 (line 4817)
                                                                                                                                 ; - java.lang.String::hashCode@17 (line 2365)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   3.20%                                                               0x00007f0cdc4f612b:   test   %eax,%eax
          ╭                                                            0x00007f0cdc4f612d:   je     0x00007f0cdc4f63b0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.61%  │                                                            0x00007f0cdc4f6133:   cmp    $0x462300d,%eax
          │╭                                                           0x00007f0cdc4f6138:   je     0x00007f0cdc4f640b           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@37 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
   1.13%  ││                                       ↗                ↗  0x00007f0cdc4f613e:   xchg   %ax,%ax
   2.40%  ││                                       │                │  0x00007f0cdc4f6140:   cmp    $0x9ef434af,%eax
          ││╭                                      │                │  0x00007f0cdc4f6145:   jne    0x00007f0cdc4f6265           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                      │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.22%  │││                                      │                │  0x00007f0cdc4f614b:   movabs $0x7ff035280,%r10            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.00%  │││                                      │                │  0x00007f0cdc4f6155:   mov    (%rsp),%r8
   0.01%  │││                                      │                │  0x00007f0cdc4f6159:   cmp    %r10,%r8
   1.92%  │││                                      │                │  0x00007f0cdc4f615c:   nopl   0x0(%rax)
   0.19%  │││╭                                     │                │  0x00007f0cdc4f6160:   je     0x00007f0cdc4f6257           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@2 (line 1858)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││││                                     │                │  0x00007f0cdc4f6166:   test   %ebp,%ebp
          ││││                                     │                │  0x00007f0cdc4f6168:   jne    0x00007f0cdc4f6634           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@33 (line 1861)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││││                                     │                │  0x00007f0cdc4f616e:   mov    0xc(%r12,%r11,8),%r10d
          ││││                                     │                │  0x00007f0cdc4f6173:   cmp    $0x10,%r10d
          ││││                                     │                │  0x00007f0cdc4f6177:   jne    0x00007f0cdc4f65c8           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││││                                     │                │  0x00007f0cdc4f617d:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││││                                     │                │  0x00007f0cdc4f6181:   lea    0x10(%r12,%r11,8),%rdi
          ││││                                     │                │  0x00007f0cdc4f6186:   mov    $0x10,%ecx
          ││││                                     │                │  0x00007f0cdc4f618b:   movabs $0x7ff035298,%rsi            ;   {oop([B{0x00000007ff035298})}
          ││││                                     │                │  0x00007f0cdc4f6195:   add    $0x10,%rsi
          ││││                                     │                │  0x00007f0cdc4f6199:   test   %ecx,%ecx
          ││││╭                                    │                │  0x00007f0cdc4f619b:   je     0x00007f0cdc4f623e
          │││││                                    │                │  0x00007f0cdc4f61a1:   mov    %ecx,%eax
          │││││                                    │                │  0x00007f0cdc4f61a3:   and    $0x1f,%eax
          │││││                                    │                │  0x00007f0cdc4f61a6:   and    $0xffffffe0,%ecx
          │││││╭                                   │                │  0x00007f0cdc4f61a9:   je     0x00007f0cdc4f61fa
          ││││││                                   │                │  0x00007f0cdc4f61af:   lea    (%rdi,%rcx,1),%rdi
          ││││││                                   │                │  0x00007f0cdc4f61b3:   lea    (%rsi,%rcx,1),%rsi
          ││││││                                   │                │  0x00007f0cdc4f61b7:   neg    %rcx
          ││││││ ↗                                 │                │  0x00007f0cdc4f61ba:   vmovdqu (%rdi,%rcx,1),%ymm1
          ││││││ │                                 │                │  0x00007f0cdc4f61bf:   vmovdqu (%rsi,%rcx,1),%ymm0
          ││││││ │                                 │                │  0x00007f0cdc4f61c4:   vpxor  %ymm0,%ymm1,%ymm1
          ││││││ │                                 │                │  0x00007f0cdc4f61c8:   vptest %ymm1,%ymm1
          ││││││╭│                                 │                │  0x00007f0cdc4f61cd:   jne    0x00007f0cdc4f6245
          ││││││││                                 │                │  0x00007f0cdc4f61d3:   add    $0x20,%rcx
          │││││││╰                                 │                │  0x00007f0cdc4f61d7:   jne    0x00007f0cdc4f61ba
          │││││││                                  │                │  0x00007f0cdc4f61d9:   test   %eax,%eax
          │││││││ ╭                                │                │  0x00007f0cdc4f61db:   je     0x00007f0cdc4f623e
          │││││││ │                                │                │  0x00007f0cdc4f61e1:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          │││││││ │                                │                │  0x00007f0cdc4f61e7:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          │││││││ │                                │                │  0x00007f0cdc4f61ed:   vpxor  %ymm0,%ymm1,%ymm1
          │││││││ │                                │                │  0x00007f0cdc4f61f1:   vptest %ymm1,%ymm1
          │││││││ │╭                               │                │  0x00007f0cdc4f61f6:   jne    0x00007f0cdc4f6245
          │││││││ ││╭                              │                │  0x00007f0cdc4f61f8:   jmp    0x00007f0cdc4f623e
          │││││↘│ │││                              │                │  0x00007f0cdc4f61fa:   mov    %eax,%ecx
          │││││ │ │││                              │                │  0x00007f0cdc4f61fc:   and    $0xfffffffc,%ecx
          │││││ │ │││╭                             │                │  0x00007f0cdc4f61ff:   je     0x00007f0cdc4f621a
          │││││ │ ││││                             │                │  0x00007f0cdc4f6201:   lea    (%rdi,%rcx,1),%rdi
          │││││ │ ││││                             │                │  0x00007f0cdc4f6205:   lea    (%rsi,%rcx,1),%rsi
          │││││ │ ││││                             │                │  0x00007f0cdc4f6209:   neg    %rcx
          │││││ │ ││││ ↗                           │                │  0x00007f0cdc4f620c:   mov    (%rdi,%rcx,1),%ebx
          │││││ │ ││││ │                           │                │  0x00007f0cdc4f620f:   cmp    (%rsi,%rcx,1),%ebx
          │││││ │ ││││╭│                           │                │  0x00007f0cdc4f6212:   jne    0x00007f0cdc4f6245
          │││││ │ ││││││                           │                │  0x00007f0cdc4f6214:   add    $0x4,%rcx
          │││││ │ │││││╰                           │                │  0x00007f0cdc4f6218:   jne    0x00007f0cdc4f620c
          │││││ │ │││↘│                            │                │  0x00007f0cdc4f621a:   test   $0x2,%al
          │││││ │ │││ │ ╭                          │                │  0x00007f0cdc4f621c:   je     0x00007f0cdc4f6230
          │││││ │ │││ │ │                          │                │  0x00007f0cdc4f621e:   movzwl (%rdi),%ebx
          │││││ │ │││ │ │                          │                │  0x00007f0cdc4f6221:   movzwl (%rsi),%ecx
          │││││ │ │││ │ │                          │                │  0x00007f0cdc4f6224:   cmp    %ecx,%ebx
          │││││ │ │││ │ │╭                         │                │  0x00007f0cdc4f6226:   jne    0x00007f0cdc4f6245
          │││││ │ │││ │ ││                         │                │  0x00007f0cdc4f6228:   lea    0x2(%rdi),%rdi
          │││││ │ │││ │ ││                         │                │  0x00007f0cdc4f622c:   lea    0x2(%rsi),%rsi
          │││││ │ │││ │ ↘│                         │                │  0x00007f0cdc4f6230:   test   $0x1,%al
          │││││ │ │││ │  │╭                        │                │  0x00007f0cdc4f6232:   je     0x00007f0cdc4f623e
          │││││ │ │││ │  ││                        │                │  0x00007f0cdc4f6234:   movzbl (%rdi),%ebx
          │││││ │ │││ │  ││                        │                │  0x00007f0cdc4f6237:   movzbl (%rsi),%ecx
          │││││ │ │││ │  ││                        │                │  0x00007f0cdc4f623a:   cmp    %ecx,%ebx
          │││││ │ │││ │  ││╭                       │                │  0x00007f0cdc4f623c:   jne    0x00007f0cdc4f6245
          ││││↘ │ ↘│↘ │  │↘│                       │                │  0x00007f0cdc4f623e:   mov    $0x1,%eax
          ││││  │  │  │  │ │╭                      │                │  0x00007f0cdc4f6243:   jmp    0x00007f0cdc4f6247
          ││││  ↘  ↘  ↘  ↘ ↘│                      │                │  0x00007f0cdc4f6245:   xor    %eax,%eax
          ││││              ↘                      │                │  0x00007f0cdc4f6247:   vpxor  %ymm1,%ymm1,%ymm1
          ││││                                     │                │  0x00007f0cdc4f624b:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││││                                     │                │  0x00007f0cdc4f624f:   test   %eax,%eax
          ││││                                     │                │  0x00007f0cdc4f6251:   je     0x00007f0cdc4f65cd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
   0.01%  │││↘                                     │                │  0x00007f0cdc4f6257:   mov    $0x2,%r10d
          │││                                      │                │  0x00007f0cdc4f625d:   data16 xchg %ax,%ax
   1.98%  │││                ╭                     │                │  0x00007f0cdc4f6260:   jmp    0x00007f0cdc4f638c
   0.59%  ││↘                │                     │                │  0x00007f0cdc4f6265:   cmp    $0x23c6acdf,%eax
          ││                 │╭                    │                │  0x00007f0cdc4f626a:   jne    0x00007f0cdc4f6539           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                 ││                    │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   1.05%  ││                 ││                    │                │  0x00007f0cdc4f6270:   movabs $0x7ff035250,%r10            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
   0.65%  ││                 ││                    │                │  0x00007f0cdc4f627a:   mov    (%rsp),%r8
   0.43%  ││                 ││                    │                │  0x00007f0cdc4f627e:   xchg   %ax,%ax
   0.10%  ││                 ││                    │                │  0x00007f0cdc4f6280:   cmp    %r10,%r8
          ││                 ││╭                   │                │  0x00007f0cdc4f6283:   je     0x00007f0cdc4f6386           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@2 (line 1858)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││                 │││                   │                │  0x00007f0cdc4f6289:   test   %ebp,%ebp
          ││                 │││                   │                │  0x00007f0cdc4f628b:   jne    0x00007f0cdc4f65b0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@33 (line 1861)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││                 │││                   │                │  0x00007f0cdc4f6291:   mov    0xc(%r12,%r11,8),%r10d
          ││                 │││                   │                │  0x00007f0cdc4f6296:   cmp    $0x7,%r10d
          ││                 │││                   │                │  0x00007f0cdc4f629a:   nopw   0x0(%rax,%rax,1)
          ││                 │││                   │                │  0x00007f0cdc4f62a0:   jne    0x00007f0cdc4f6570           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││                 │││                   │                │  0x00007f0cdc4f62a6:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││                 │││                   │                │  0x00007f0cdc4f62aa:   lea    0x10(%r12,%r11,8),%rdi
          ││                 │││                   │                │  0x00007f0cdc4f62af:   mov    $0x7,%ecx
          ││                 │││                   │                │  0x00007f0cdc4f62b4:   movabs $0x7ff035268,%rsi            ;   {oop([B{0x00000007ff035268})}
          ││                 │││                   │                │  0x00007f0cdc4f62be:   add    $0x10,%rsi
          ││                 │││                   │                │  0x00007f0cdc4f62c2:   test   %ecx,%ecx
          ││                 │││╭                  │                │  0x00007f0cdc4f62c4:   je     0x00007f0cdc4f6367
          ││                 ││││                  │                │  0x00007f0cdc4f62ca:   mov    %ecx,%eax
          ││                 ││││                  │                │  0x00007f0cdc4f62cc:   and    $0x1f,%eax
          ││                 ││││                  │                │  0x00007f0cdc4f62cf:   and    $0xffffffe0,%ecx
          ││                 ││││╭                 │                │  0x00007f0cdc4f62d2:   je     0x00007f0cdc4f6323
          ││                 │││││                 │                │  0x00007f0cdc4f62d8:   lea    (%rdi,%rcx,1),%rdi
          ││                 │││││                 │                │  0x00007f0cdc4f62dc:   lea    (%rsi,%rcx,1),%rsi
          ││                 │││││                 │                │  0x00007f0cdc4f62e0:   neg    %rcx
          ││                 │││││ ↗               │                │  0x00007f0cdc4f62e3:   vmovdqu (%rdi,%rcx,1),%ymm0
          ││                 │││││ │               │                │  0x00007f0cdc4f62e8:   vmovdqu (%rsi,%rcx,1),%ymm1
          ││                 │││││ │               │                │  0x00007f0cdc4f62ed:   vpxor  %ymm1,%ymm0,%ymm0
          ││                 │││││ │               │                │  0x00007f0cdc4f62f1:   vptest %ymm0,%ymm0
          ││                 │││││╭│               │                │  0x00007f0cdc4f62f6:   jne    0x00007f0cdc4f636e
          ││                 │││││││               │                │  0x00007f0cdc4f62fc:   add    $0x20,%rcx
          ││                 ││││││╰               │                │  0x00007f0cdc4f6300:   jne    0x00007f0cdc4f62e3
          ││                 ││││││                │                │  0x00007f0cdc4f6302:   test   %eax,%eax
          ││                 ││││││ ╭              │                │  0x00007f0cdc4f6304:   je     0x00007f0cdc4f6367
          ││                 ││││││ │              │                │  0x00007f0cdc4f630a:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          ││                 ││││││ │              │                │  0x00007f0cdc4f6310:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          ││                 ││││││ │              │                │  0x00007f0cdc4f6316:   vpxor  %ymm1,%ymm0,%ymm0
          ││                 ││││││ │              │                │  0x00007f0cdc4f631a:   vptest %ymm0,%ymm0
          ││                 ││││││ │╭             │                │  0x00007f0cdc4f631f:   jne    0x00007f0cdc4f636e
          ││                 ││││││ ││╭            │                │  0x00007f0cdc4f6321:   jmp    0x00007f0cdc4f6367
          ││                 ││││↘│ │││            │                │  0x00007f0cdc4f6323:   mov    %eax,%ecx
          ││                 ││││ │ │││            │                │  0x00007f0cdc4f6325:   and    $0xfffffffc,%ecx
          ││                 ││││ │ │││╭           │                │  0x00007f0cdc4f6328:   je     0x00007f0cdc4f6343
          ││                 ││││ │ ││││           │                │  0x00007f0cdc4f632a:   lea    (%rdi,%rcx,1),%rdi
          ││                 ││││ │ ││││           │                │  0x00007f0cdc4f632e:   lea    (%rsi,%rcx,1),%rsi
          ││                 ││││ │ ││││           │                │  0x00007f0cdc4f6332:   neg    %rcx
          ││                 ││││ │ ││││ ↗         │                │  0x00007f0cdc4f6335:   mov    (%rdi,%rcx,1),%ebx
          ││                 ││││ │ ││││ │         │                │  0x00007f0cdc4f6338:   cmp    (%rsi,%rcx,1),%ebx
          ││                 ││││ │ ││││╭│         │                │  0x00007f0cdc4f633b:   jne    0x00007f0cdc4f636e
          ││                 ││││ │ ││││││         │                │  0x00007f0cdc4f633d:   add    $0x4,%rcx
          ││                 ││││ │ │││││╰         │                │  0x00007f0cdc4f6341:   jne    0x00007f0cdc4f6335
          ││                 ││││ │ │││↘│          │                │  0x00007f0cdc4f6343:   test   $0x2,%al
          ││                 ││││ │ │││ │ ╭        │                │  0x00007f0cdc4f6345:   je     0x00007f0cdc4f6359
          ││                 ││││ │ │││ │ │        │                │  0x00007f0cdc4f6347:   movzwl (%rdi),%ebx
          ││                 ││││ │ │││ │ │        │                │  0x00007f0cdc4f634a:   movzwl (%rsi),%ecx
          ││                 ││││ │ │││ │ │        │                │  0x00007f0cdc4f634d:   cmp    %ecx,%ebx
          ││                 ││││ │ │││ │ │╭       │                │  0x00007f0cdc4f634f:   jne    0x00007f0cdc4f636e
          ││                 ││││ │ │││ │ ││       │                │  0x00007f0cdc4f6351:   lea    0x2(%rdi),%rdi
          ││                 ││││ │ │││ │ ││       │                │  0x00007f0cdc4f6355:   lea    0x2(%rsi),%rsi
          ││                 ││││ │ │││ │ ↘│       │                │  0x00007f0cdc4f6359:   test   $0x1,%al
          ││                 ││││ │ │││ │  │╭      │                │  0x00007f0cdc4f635b:   je     0x00007f0cdc4f6367
          ││                 ││││ │ │││ │  ││      │                │  0x00007f0cdc4f635d:   movzbl (%rdi),%ebx
          ││                 ││││ │ │││ │  ││      │                │  0x00007f0cdc4f6360:   movzbl (%rsi),%ecx
          ││                 ││││ │ │││ │  ││      │                │  0x00007f0cdc4f6363:   cmp    %ecx,%ebx
          ││                 ││││ │ │││ │  ││╭     │                │  0x00007f0cdc4f6365:   jne    0x00007f0cdc4f636e
          ││                 │││↘ │ ↘│↘ │  │↘│     │                │  0x00007f0cdc4f6367:   mov    $0x1,%eax
          ││                 │││  │  │  │  │ │╭    │                │  0x00007f0cdc4f636c:   jmp    0x00007f0cdc4f6370
          ││                 │││  ↘  ↘  ↘  ↘ ↘│    │                │  0x00007f0cdc4f636e:   xor    %eax,%eax
          ││                 │││              ↘    │                │  0x00007f0cdc4f6370:   vpxor  %ymm0,%ymm0,%ymm0
          ││                 │││                   │                │  0x00007f0cdc4f6374:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          ││                 │││                   │                │  0x00007f0cdc4f6378:   test   %eax,%eax
          ││                 │││                   │                │  0x00007f0cdc4f637a:   nopw   0x0(%rax,%rax,1)
          ││                 │││                   │                │  0x00007f0cdc4f6380:   je     0x00007f0cdc4f6575           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
   0.93%  ││                 ││↘                   │                │  0x00007f0cdc4f6386:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                 ││                    │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@223 (line 214)
   0.96%  ││                 ↘│                    │                │  0x00007f0cdc4f638c:   cmp    $0x1,%r10d
          ││                  │                ╭   │                │  0x00007f0cdc4f6390:   je     0x00007f0cdc4f63a6
          ││                  │                │   │                │  0x00007f0cdc4f6392:   cmp    $0x2,%r10d
          ││                  │                │   │                │  0x00007f0cdc4f6396:   jne    0x00007f0cdc4f6558           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                  │                │   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
   0.01%  ││                  │                │   │                │  0x00007f0cdc4f639c:   mov    $0x3,%eax
   2.05%  ││                  │                │╭  │                │  0x00007f0cdc4f63a1:   jmp    0x00007f0cdc4f651c
   1.47%  ││                  │                ↘│  │                │  0x00007f0cdc4f63a6:   mov    $0x2,%eax
          ││                  │                 │╭ │                │  0x00007f0cdc4f63ab:   jmp    0x00007f0cdc4f651c
          ↘│                  │                 ││ │                │  0x00007f0cdc4f63b0:   movzbl 0x11(%rdx),%r8d              ;   {no_reloc}
           │                  │                 ││ │                │  0x00007f0cdc4f63b5:   test   %r8d,%r8d
           │                  │                 ││╭│                │  0x00007f0cdc4f63b8:   jne    0x00007f0cdc4f6532           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@13 (line 2364)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63be:   xchg   %ax,%ax
           │                  │                 ││││                │  0x00007f0cdc4f63c0:   test   %ebp,%ebp
           │                  │                 ││││                │  0x00007f0cdc4f63c2:   jne    0x00007f0cdc4f6600           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::isLatin1@10 (line 4817)
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@17 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63c8:   mov    %r11,%rsi
           │                  │                 ││││                │  0x00007f0cdc4f63cb:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@24 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63cf:   mov    %rdx,%rbp
           │                  │                 ││││                │  0x00007f0cdc4f63d2:   xchg   %ax,%ax
           │                  │                 ││││                │  0x00007f0cdc4f63d4:   vzeroupper 
           │                  │                 ││││                │  0x00007f0cdc4f63d7:   call   0x00007f0cdbf85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
           │                  │                 ││││                │                                                            ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@27 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │                                                            ;   {static_call}
           │                  │                 ││││                │  0x00007f0cdc4f63dc:   nopl   0x4cc(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@27 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │                                                            ;   {other}
           │                  │                 ││││                │  0x00007f0cdc4f63e4:   test   %eax,%eax
           │                  │                 ││││                │  0x00007f0cdc4f63e6:   je     0x00007f0cdc4f6618           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@42 (line 2367)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63ec:   mov    %eax,0xc(%rbp)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@55 (line 2370)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63ef:   mov    0x14(%rbp),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::equals@37 (line 1861)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63f3:   movsbl 0x10(%rbp),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::equals@26 (line 1861)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           │                  │                 ││││                │  0x00007f0cdc4f63f7:   nopw   0x0(%rax,%rax,1)
           │                  │                 ││││                │  0x00007f0cdc4f6400:   cmp    $0x462300d,%eax
           │                  │                 │││╰                │  0x00007f0cdc4f6405:   jne    0x00007f0cdc4f613e           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 │││                 │                                                            ; - java.lang.String::equals@37 (line 1861)
           │                  │                 │││                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
   1.26%   ↘                  │                 │││                 │  0x00007f0cdc4f640b:   movabs $0x7ff035220,%r10            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
   0.31%                      │                 │││                 │  0x00007f0cdc4f6415:   mov    (%rsp),%r8
   0.47%                      │                 │││                 │  0x00007f0cdc4f6419:   cmp    %r10,%r8
   1.09%                      │                 │││                 │  0x00007f0cdc4f641c:   nopl   0x0(%rax)
   0.34%                      │                 │││ ╭               │  0x00007f0cdc4f6420:   je     0x00007f0cdc4f6517           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@2 (line 1858)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                              │                 │││ │               │  0x00007f0cdc4f6426:   test   %ebp,%ebp
                              │                 │││ │               │  0x00007f0cdc4f6428:   jne    0x00007f0cdc4f65e8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@33 (line 1861)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                              │                 │││ │               │  0x00007f0cdc4f642e:   mov    0xc(%r12,%r11,8),%r8d
                              │                 │││ │               │  0x00007f0cdc4f6433:   cmp    $0x5,%r8d
                              │                 │││ │               │  0x00007f0cdc4f6437:   jne    0x00007f0cdc4f6590           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@44 (line 1863)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                              │                 │││ │               │  0x00007f0cdc4f643d:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@37 (line 1861)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
                              │                 │││ │               │  0x00007f0cdc4f6441:   lea    0x10(%r12,%r11,8),%rdi
                              │                 │││ │               │  0x00007f0cdc4f6446:   mov    $0x5,%ecx
                              │                 │││ │               │  0x00007f0cdc4f644b:   movabs $0x7ff035238,%rsi            ;   {oop([B{0x00000007ff035238})}
                              │                 │││ │               │  0x00007f0cdc4f6455:   add    $0x10,%rsi
                              │                 │││ │               │  0x00007f0cdc4f6459:   test   %ecx,%ecx
                              │                 │││ │╭              │  0x00007f0cdc4f645b:   je     0x00007f0cdc4f64fe
                              │                 │││ ││              │  0x00007f0cdc4f6461:   mov    %ecx,%eax
                              │                 │││ ││              │  0x00007f0cdc4f6463:   and    $0x1f,%eax
                              │                 │││ ││              │  0x00007f0cdc4f6466:   and    $0xffffffe0,%ecx
                              │                 │││ ││╭             │  0x00007f0cdc4f6469:   je     0x00007f0cdc4f64ba
                              │                 │││ │││             │  0x00007f0cdc4f646f:   lea    (%rdi,%rcx,1),%rdi
                              │                 │││ │││             │  0x00007f0cdc4f6473:   lea    (%rsi,%rcx,1),%rsi
                              │                 │││ │││             │  0x00007f0cdc4f6477:   neg    %rcx
                              │                 │││ │││ ↗           │  0x00007f0cdc4f647a:   vmovdqu (%rdi,%rcx,1),%ymm1
                              │                 │││ │││ │           │  0x00007f0cdc4f647f:   vmovdqu (%rsi,%rcx,1),%ymm0
                              │                 │││ │││ │           │  0x00007f0cdc4f6484:   vpxor  %ymm0,%ymm1,%ymm1
                              │                 │││ │││ │           │  0x00007f0cdc4f6488:   vptest %ymm1,%ymm1
                              │                 │││ │││╭│           │  0x00007f0cdc4f648d:   jne    0x00007f0cdc4f6505
                              │                 │││ │││││           │  0x00007f0cdc4f6493:   add    $0x20,%rcx
                              │                 │││ ││││╰           │  0x00007f0cdc4f6497:   jne    0x00007f0cdc4f647a
                              │                 │││ ││││            │  0x00007f0cdc4f6499:   test   %eax,%eax
                              │                 │││ ││││ ╭          │  0x00007f0cdc4f649b:   je     0x00007f0cdc4f64fe
                              │                 │││ ││││ │          │  0x00007f0cdc4f64a1:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
                              │                 │││ ││││ │          │  0x00007f0cdc4f64a7:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
                              │                 │││ ││││ │          │  0x00007f0cdc4f64ad:   vpxor  %ymm0,%ymm1,%ymm1
                              │                 │││ ││││ │          │  0x00007f0cdc4f64b1:   vptest %ymm1,%ymm1
                              │                 │││ ││││ │╭         │  0x00007f0cdc4f64b6:   jne    0x00007f0cdc4f6505
                              │                 │││ ││││ ││╭        │  0x00007f0cdc4f64b8:   jmp    0x00007f0cdc4f64fe
                              │                 │││ ││↘│ │││        │  0x00007f0cdc4f64ba:   mov    %eax,%ecx
                              │                 │││ ││ │ │││        │  0x00007f0cdc4f64bc:   and    $0xfffffffc,%ecx
                              │                 │││ ││ │ │││╭       │  0x00007f0cdc4f64bf:   je     0x00007f0cdc4f64da
                              │                 │││ ││ │ ││││       │  0x00007f0cdc4f64c1:   lea    (%rdi,%rcx,1),%rdi
                              │                 │││ ││ │ ││││       │  0x00007f0cdc4f64c5:   lea    (%rsi,%rcx,1),%rsi
                              │                 │││ ││ │ ││││       │  0x00007f0cdc4f64c9:   neg    %rcx
                              │                 │││ ││ │ ││││ ↗     │  0x00007f0cdc4f64cc:   mov    (%rdi,%rcx,1),%ebx
                              │                 │││ ││ │ ││││ │     │  0x00007f0cdc4f64cf:   cmp    (%rsi,%rcx,1),%ebx
                              │                 │││ ││ │ ││││╭│     │  0x00007f0cdc4f64d2:   jne    0x00007f0cdc4f6505
                              │                 │││ ││ │ ││││││     │  0x00007f0cdc4f64d4:   add    $0x4,%rcx
                              │                 │││ ││ │ │││││╰     │  0x00007f0cdc4f64d8:   jne    0x00007f0cdc4f64cc
                              │                 │││ ││ │ │││↘│      │  0x00007f0cdc4f64da:   test   $0x2,%al
                              │                 │││ ││ │ │││ │ ╭    │  0x00007f0cdc4f64dc:   je     0x00007f0cdc4f64f0
                              │                 │││ ││ │ │││ │ │    │  0x00007f0cdc4f64de:   movzwl (%rdi),%ebx
                              │                 │││ ││ │ │││ │ │    │  0x00007f0cdc4f64e1:   movzwl (%rsi),%ecx
                              │                 │││ ││ │ │││ │ │    │  0x00007f0cdc4f64e4:   cmp    %ecx,%ebx
                              │                 │││ ││ │ │││ │ │╭   │  0x00007f0cdc4f64e6:   jne    0x00007f0cdc4f6505
                              │                 │││ ││ │ │││ │ ││   │  0x00007f0cdc4f64e8:   lea    0x2(%rdi),%rdi
                              │                 │││ ││ │ │││ │ ││   │  0x00007f0cdc4f64ec:   lea    0x2(%rsi),%rsi
                              │                 │││ ││ │ │││ │ ↘│   │  0x00007f0cdc4f64f0:   test   $0x1,%al
                              │                 │││ ││ │ │││ │  │╭  │  0x00007f0cdc4f64f2:   je     0x00007f0cdc4f64fe
                              │                 │││ ││ │ │││ │  ││  │  0x00007f0cdc4f64f4:   movzbl (%rdi),%ebx
                              │                 │││ ││ │ │││ │  ││  │  0x00007f0cdc4f64f7:   movzbl (%rsi),%ecx
                              │                 │││ ││ │ │││ │  ││  │  0x00007f0cdc4f64fa:   cmp    %ecx,%ebx
                              │                 │││ ││ │ │││ │  ││╭ │  0x00007f0cdc4f64fc:   jne    0x00007f0cdc4f6505
                              │                 │││ │↘ │ ↘│↘ │  │↘│ │  0x00007f0cdc4f64fe:   mov    $0x1,%eax
                              │                 │││ │  │  │  │  │ │╭│  0x00007f0cdc4f6503:   jmp    0x00007f0cdc4f6507
                              │                 │││ │  ↘  ↘  ↘  ↘ ↘││  0x00007f0cdc4f6505:   xor    %eax,%eax
                              │                 │││ │              ↘│  0x00007f0cdc4f6507:   vpxor  %ymm1,%ymm1,%ymm1
                              │                 │││ │               │  0x00007f0cdc4f650b:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@44 (line 1863)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                              │                 │││ │               │  0x00007f0cdc4f650f:   test   %eax,%eax
                              │                 │││ │               │  0x00007f0cdc4f6511:   je     0x00007f0cdc4f6595           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
   1.26%                      │                 │││ ↘               │  0x00007f0cdc4f6517:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@681 (line 216)
   2.83%                      │                 ↘↘│                 │  0x00007f0cdc4f651c:   vzeroupper 
   6.44%                      │                   │                 │  0x00007f0cdc4f651f:   add    $0x20,%rsp
   0.06%                      │                   │                 │  0x00007f0cdc4f6523:   pop    %rbp
   0.68%                      │                   │                 │  0x00007f0cdc4f6524:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              │                   │                 │  0x00007f0cdc4f652b:   ja     0x00007f0cdc4f6674
   6.26%                      │                   │                 │  0x00007f0cdc4f6531:   ret    
                              │                   ↘                 │  0x00007f0cdc4f6532:   xor    %eax,%eax
                              │                                     ╰  0x00007f0cdc4f6534:   jmp    0x00007f0cdc4f613e           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                              │                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                              ↘                                        0x00007f0cdc4f6539:   mov    $0xffffff45,%esi
                                                                       0x00007f0cdc4f653e:   mov    (%rsp),%rbp
                                                                       0x00007f0cdc4f6542:   mov    %eax,(%rsp)
                                                                       0x00007f0cdc4f6545:   data16 xchg %ax,%ax
                                                                       0x00007f0cdc4f6548:   vzeroupper 
                                                                       0x00007f0cdc4f654b:   call   0x00007f0cdbf8af00           ; ImmutableOopMap {rbp=Oop }
                                                                                                                                 ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  65.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 2, compile id 655 

                 # {method} {0x00007f0c50479428} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f0cdc4f6ea0:   mov    0x8(%rsi),%r10d
                 0x00007f0cdc4f6ea4:   movabs $0x7f0c5b000000,%r11
                 0x00007f0cdc4f6eae:   add    %r11,%r10
                 0x00007f0cdc4f6eb1:   cmp    %r10,%rax
                 0x00007f0cdc4f6eb4:   jne    0x00007f0cdbf85080           ;   {runtime_call ic_miss_stub}
                 0x00007f0cdc4f6eba:   xchg   %ax,%ax
                 0x00007f0cdc4f6ebc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007f0cdc4f6ec0:   mov    %eax,-0x14000(%rsp)
                 0x00007f0cdc4f6ec7:   push   %rbp
                 0x00007f0cdc4f6ec8:   sub    $0x30,%rsp
   0.00%         0x00007f0cdc4f6ecc:   cmpl   $0x1,0x20(%r15)
                 0x00007f0cdc4f6ed4:   jne    0x00007f0cdc4f6fca           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007f0cdc4f6eda:   mov    %rsi,%r10
   0.00%         0x00007f0cdc4f6edd:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007f0cdc4f6ee1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f0cdc4f6fa1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.01%         0x00007f0cdc4f6ee6:   test   %ebx,%ebx
          ╭      0x00007f0cdc4f6ee8:   jbe    0x00007f0cdc4f6f72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          │      0x00007f0cdc4f6eee:   mov    %ebx,%r11d
          │      0x00007f0cdc4f6ef1:   dec    %r11d
          │      0x00007f0cdc4f6ef4:   cmp    %ebx,%r11d
          │╭     0x00007f0cdc4f6ef7:   jae    0x00007f0cdc4f6f76
   0.00%  ││     0x00007f0cdc4f6efd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007f0cdc4f6f01:   xor    %ebp,%ebp
          ││     0x00007f0cdc4f6f03:   xor    %r11d,%r11d
          ││     0x00007f0cdc4f6f06:   mov    %rsi,0x8(%rsp)
   0.01%  ││     0x00007f0cdc4f6f0b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f0cdc4f6f0f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f0cdc4f6f14:   jmp    0x00007f0cdc4f6f29
          │││    0x00007f0cdc4f6f16:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │││↗   0x00007f0cdc4f6f20:   mov    (%rsp),%r8
   2.57%  ││││   0x00007f0cdc4f6f24:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   3.95%  ││↘│   0x00007f0cdc4f6f29:   mov    0x10(%r8,%rbp,4),%r11d
   0.18%  ││ │   0x00007f0cdc4f6f2e:   mov    %r8,(%rsp)
   0.04%  ││ │   0x00007f0cdc4f6f32:   mov    %r11,%rdx
   2.56%  ││ │   0x00007f0cdc4f6f35:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   3.82%  ││ │   0x00007f0cdc4f6f39:   mov    0x8(%rsp),%rsi
   0.02%  ││ │   0x00007f0cdc4f6f3e:   nop
   0.03%  ││ │   0x00007f0cdc4f6f3f:   call   0x00007f0cdc4f6100           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
  11.68%  ││ │   0x00007f0cdc4f6f44:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
   0.00%  ││ │   0x00007f0cdc4f6f4c:   mov    0x14(%rsp),%r10d
   2.70%  ││ │   0x00007f0cdc4f6f51:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   3.87%  ││ │   0x00007f0cdc4f6f54:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.01%  ││ │   0x00007f0cdc4f6f56:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f0cdc4f6f5a:   jl     0x00007f0cdc4f6f20
   0.04%  ││     0x00007f0cdc4f6f5c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  ││  ↗  0x00007f0cdc4f6f5f:   add    $0x30,%rsp
   0.03%  ││  │  0x00007f0cdc4f6f63:   pop    %rbp
   0.04%  ││  │  0x00007f0cdc4f6f64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f0cdc4f6f6b:   ja     0x00007f0cdc4f6fb4
   0.00%  ││  │  0x00007f0cdc4f6f71:   ret    
          ↘│  │  0x00007f0cdc4f6f72:   xor    %eax,%eax
           │  ╰  0x00007f0cdc4f6f74:   jmp    0x00007f0cdc4f6f5f
           ↘     0x00007f0cdc4f6f76:   mov    $0xffffff76,%esi
                 0x00007f0cdc4f6f7b:   mov    %r10,%rbp
                 0x00007f0cdc4f6f7e:   mov    %ebx,0x4(%rsp)
                 0x00007f0cdc4f6f82:   mov    %r9d,0x8(%rsp)
                 0x00007f0cdc4f6f87:   call   0x00007f0cdbf8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  31.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.60%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 652 
  31.61%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 2, compile id 655 
   0.29%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.18%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  native_read_msr_safe 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%             libjvm.so  ElfStringTable::string_at 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  __rcu_read_unlock 
   0.03%     [kernel.kallsyms]  free_swap_cache 
   0.98%  <...other 192 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.60%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 652 
  31.61%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 2, compile id 655 
   0.29%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.18%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.09%     [kernel.kallsyms]  __mod_node_page_state 
   0.09%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.09%     [kernel.kallsyms]  lock_page_memcg 
   0.08%     [kernel.kallsyms]  native_read_msr_safe 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%             libjvm.so  ElfStringTable::string_at 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%     [kernel.kallsyms]  __rcu_read_unlock 
   0.03%     [kernel.kallsyms]  free_swap_cache 
   0.98%  <...other 188 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.24%           c2, level 4
   2.43%     [kernel.kallsyms]
   0.19%             libjvm.so
   0.08%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                      
   0.00%  ld-linux-x86-64.so.2
   0.00%         perf-5916.map
   0.00%            libjava.so
   0.00%        libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:14:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.474 ns/op
# Warmup Iteration   2: 22.073 ns/op
# Warmup Iteration   3: 22.226 ns/op
# Warmup Iteration   4: 21.955 ns/op
# Warmup Iteration   5: 22.008 ns/op
Iteration   1: 22.218 ns/op
Iteration   2: 21.982 ns/op
Iteration   3: 22.292 ns/op
Iteration   4: 22.126 ns/op
Iteration   5: 22.106 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  22.145 ±(99.9%) 0.454 ns/op [Average]
  (min, avg, max) = (21.982, 22.145, 22.292), stdev = 0.118
  CI (99.9%): [21.691, 22.598] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 126704 total address lines.
Perf output processed (skipped 67.824 seconds):
 Column 1: cycles (49172 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 648 

                                    # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                    #           [sp+0x30]  (sp of caller)
                                    0x00007fe9e04f85a0:   mov    0x8(%rsi),%r10d
                                    0x00007fe9e04f85a4:   movabs $0x7fe95b000000,%r11
                                    0x00007fe9e04f85ae:   add    %r11,%r10
                                    0x00007fe9e04f85b1:   cmp    %r10,%rax
                                    0x00007fe9e04f85b4:   jne    0x00007fe9dff85080           ;   {runtime_call ic_miss_stub}
                                    0x00007fe9e04f85ba:   xchg   %ax,%ax
                                    0x00007fe9e04f85bc:   nopl   0x0(%rax)
                                  [Verified Entry Point]
   1.37%                            0x00007fe9e04f85c0:   mov    %eax,-0x14000(%rsp)
   2.70%                            0x00007fe9e04f85c7:   push   %rbp
   0.62%                            0x00007fe9e04f85c8:   sub    $0x20,%rsp
   1.01%                            0x00007fe9e04f85cc:   cmpl   $0x0,0x20(%r15)
   2.06%                            0x00007fe9e04f85d4:   jne    0x00007fe9e04f89d4           ;*synchronization entry
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@-1 (line 214)
   0.54%                            0x00007fe9e04f85da:   mov    %rdx,(%rsp)
   0.77%                            0x00007fe9e04f85de:   xchg   %ax,%ax
   0.30%                            0x00007fe9e04f85e0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fe9e04f897c
                                                                                              ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - java.lang.String::hashCode@1 (line 2363)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   3.47%                            0x00007fe9e04f85e3:   test   %eax,%eax
          ╭                         0x00007fe9e04f85e5:   jne    0x00007fe9e04f862f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                   ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │                         0x00007fe9e04f85e7:   movzbl 0x11(%rdx),%r11d
          │                         0x00007fe9e04f85ec:   test   %r11d,%r11d
          │╭                        0x00007fe9e04f85ef:   jne    0x00007fe9e04f8834           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@13 (line 2364)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                        0x00007fe9e04f85f5:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::isLatin1@7 (line 4817)
          ││                                                                                  ; - java.lang.String::hashCode@17 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                        0x00007fe9e04f85f9:   test   %ebp,%ebp
          ││                        0x00007fe9e04f85fb:   nopl   0x0(%rax,%rax,1)
          ││                        0x00007fe9e04f8600:   jne    0x00007fe9e04f88bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::isLatin1@10 (line 4817)
          ││                                                                                  ; - java.lang.String::hashCode@17 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                        0x00007fe9e04f8606:   mov    0x14(%rdx),%r10d
          ││                        0x00007fe9e04f860a:   mov    %r10,%rsi
          ││                        0x00007fe9e04f860d:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@24 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                        0x00007fe9e04f8611:   mov    %rdx,%rbp
          ││                        0x00007fe9e04f8614:   data16 xchg %ax,%ax
          ││                        0x00007fe9e04f8617:   call   0x00007fe9dff85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
          ││                                                                                  ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@27 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                                                                                  ;   {static_call}
          ││                        0x00007fe9e04f861c:   nopl   0x28c(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@27 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                                                                                  ;   {other}
          ││                        0x00007fe9e04f8624:   test   %eax,%eax
          ││                        0x00007fe9e04f8626:   je     0x00007fe9e04f88d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@42 (line 2367)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                        0x00007fe9e04f862c:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@58 (line 2373)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   1.75%  ↘│                     ↗  0x00007fe9e04f862f:   cmp    $0x462300d,%eax
           │╭                    │  0x00007fe9e04f8634:   je     0x00007fe9e04f8809
   0.89%   ││                    │  0x00007fe9e04f863a:   nopw   0x0(%rax,%rax,1)
   0.24%   ││                    │  0x00007fe9e04f8640:   cmp    $0x462300d,%eax
           ││╭                   │  0x00007fe9e04f8645:   jge    0x00007fe9e04f8705
   1.59%   │││                   │  0x00007fe9e04f864b:   cmp    $0x103b4,%eax
           │││╭                  │  0x00007fe9e04f8650:   jne    0x00007fe9e04f8685           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.13%   ││││                  │  0x00007fe9e04f8652:   movabs $0x7ff0352f0,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff0352f0})}
   0.13%   ││││                  │  0x00007fe9e04f865c:   mov    (%rsp),%rsi
           ││││                  │  0x00007fe9e04f8660:   data16 xchg %ax,%ax
   0.39%   ││││                  │  0x00007fe9e04f8663:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           ││││                  │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
           ││││                  │                                                            ;   {optimized virtual_call}
   1.94%   ││││                  │  0x00007fe9e04f8668:   nopl   0x10002d8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
           ││││                  │                                                            ;   {other}
           ││││                  │  0x00007fe9e04f8670:   test   %eax,%eax
           ││││                  │  0x00007fe9e04f8672:   je     0x00007fe9e04f8954           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
   0.19%   ││││                  │  0x00007fe9e04f8678:   mov    $0x4,%r10d
           ││││                  │  0x00007fe9e04f867e:   xchg   %ax,%ax
   0.38%   ││││╭                 │  0x00007fe9e04f8680:   jmp    0x00007fe9e04f8782
           │││↘│                 │  0x00007fe9e04f8685:   cmp    $0x103b4,%eax
           │││ │╭                │  0x00007fe9e04f868a:   jge    0x00007fe9e04f86c7
   0.18%   │││ ││                │  0x00007fe9e04f868c:   cmp    $0x9ef434af,%eax
           │││ ││                │  0x00007fe9e04f8691:   jne    0x00007fe9e04f8910           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.22%   │││ ││                │  0x00007fe9e04f8697:   movabs $0x7ff035280,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.26%   │││ ││                │  0x00007fe9e04f86a1:   mov    (%rsp),%rsi
           │││ ││                │  0x00007fe9e04f86a5:   xchg   %ax,%ax
   0.15%   │││ ││                │  0x00007fe9e04f86a7:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           │││ ││                │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │││ ││                │                                                            ;   {optimized virtual_call}
   4.56%   │││ ││                │  0x00007fe9e04f86ac:   nopl   0x200031c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
           │││ ││                │                                                            ;   {other}
   0.00%   │││ ││                │  0x00007fe9e04f86b4:   test   %eax,%eax
           │││ ││                │  0x00007fe9e04f86b6:   je     0x00007fe9e04f8968           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
   0.00%   │││ ││                │  0x00007fe9e04f86bc:   mov    $0x2,%r10d
           │││ ││╭               │  0x00007fe9e04f86c2:   jmp    0x00007fe9e04f8782
   0.66%   │││ │↘│               │  0x00007fe9e04f86c7:   cmp    $0x14234,%eax
           │││ │ │               │  0x00007fe9e04f86cc:   jne    0x00007fe9e04f8888           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.01%   │││ │ │               │  0x00007fe9e04f86d2:   movabs $0x7ff035320,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff035320})}
           │││ │ │               │  0x00007fe9e04f86dc:   mov    (%rsp),%rsi
   0.00%   │││ │ │               │  0x00007fe9e04f86e0:   data16 xchg %ax,%ax
   0.68%   │││ │ │               │  0x00007fe9e04f86e3:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           │││ │ │               │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
           │││ │ │               │                                                            ;   {optimized virtual_call}
   4.04%   │││ │ │               │  0x00007fe9e04f86e8:   nopl   0x3000358(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
           │││ │ │               │                                                            ;   {other}
           │││ │ │               │  0x00007fe9e04f86f0:   test   %eax,%eax
           │││ │ │               │  0x00007fe9e04f86f2:   je     0x00007fe9e04f892c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
   0.01%   │││ │ │               │  0x00007fe9e04f86f8:   mov    $0x5,%r10d
           │││ │ │               │  0x00007fe9e04f86fe:   xchg   %ax,%ax
   0.69%   │││ │ │╭              │  0x00007fe9e04f8700:   jmp    0x00007fe9e04f8782
   1.19%   ││↘ │ ││              │  0x00007fe9e04f8705:   cmp    $0x23c6acdf,%eax
           ││  │ ││╭             │  0x00007fe9e04f870a:   je     0x00007fe9e04f8758
   0.03%   ││  │ │││             │  0x00007fe9e04f8710:   cmp    $0x23c6acdf,%eax
           ││  │ │││             │  0x00007fe9e04f8715:   jl     0x00007fe9e04f8850
   0.21%   ││  │ │││             │  0x00007fe9e04f871b:   nopl   0x0(%rax,%rax,1)
           ││  │ │││             │  0x00007fe9e04f8720:   cmp    $0x33eb4d91,%eax
           ││  │ │││             │  0x00007fe9e04f8725:   jne    0x00007fe9e04f886c           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.56%   ││  │ │││             │  0x00007fe9e04f872b:   movabs $0x7ff0352b8,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff0352b8})}
   0.01%   ││  │ │││             │  0x00007fe9e04f8735:   mov    (%rsp),%rsi
   0.07%   ││  │ │││             │  0x00007fe9e04f8739:   xchg   %ax,%ax
           ││  │ │││             │  0x00007fe9e04f873b:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           ││  │ │││             │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
           ││  │ │││             │                                                            ;   {optimized virtual_call}
   4.08%   ││  │ │││             │  0x00007fe9e04f8740:   nopl   0x40003b0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
           ││  │ │││             │                                                            ;   {other}
           ││  │ │││             │  0x00007fe9e04f8748:   test   %eax,%eax
           ││  │ │││             │  0x00007fe9e04f874a:   je     0x00007fe9e04f88fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
           ││  │ │││             │  0x00007fe9e04f8750:   mov    $0x3,%r10d
   0.01%   ││  │ │││╭            │  0x00007fe9e04f8756:   jmp    0x00007fe9e04f8782           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││││            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.63%   ││  │ ││↘│            │  0x00007fe9e04f8758:   movabs $0x7ff035250,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
           ││  │ ││ │            │  0x00007fe9e04f8762:   mov    (%rsp),%rsi
           ││  │ ││ │            │  0x00007fe9e04f8766:   nop
           ││  │ ││ │            │  0x00007fe9e04f8767:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           ││  │ ││ │            │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           ││  │ ││ │            │                                                            ;   {optimized virtual_call}
   1.12%   ││  │ ││ │            │  0x00007fe9e04f876c:   nopl   0x50003dc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
           ││  │ ││ │            │                                                            ;   {other}
           ││  │ ││ │            │  0x00007fe9e04f8774:   test   %eax,%eax
           ││  │ ││ │            │  0x00007fe9e04f8776:   je     0x00007fe9e04f88e8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
           ││  │ ││ │            │  0x00007fe9e04f877c:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@237 (line 214)
   2.07%   ││  ↘ ↘↘ ↘           ↗│  0x00007fe9e04f8782:   cmp    $0x2,%r10d
           ││        ╭          ││  0x00007fe9e04f8786:   je     0x00007fe9e04f8802
   0.62%   ││        │          ││  0x00007fe9e04f878c:   cmp    $0x2,%r10d
           ││        │╭         ││  0x00007fe9e04f8790:   jge    0x00007fe9e04f87ba
   0.00%   ││        ││         ││  0x00007fe9e04f8792:   cmp    $0x1,%r10d
           ││        ││╭        ││  0x00007fe9e04f8796:   je     0x00007fe9e04f87b0
           ││        │││        ││  0x00007fe9e04f8798:   test   %r10d,%r10d
   0.62%   ││        │││        ││  0x00007fe9e04f879b:   nopl   0x0(%rax,%rax,1)
           ││        │││        ││  0x00007fe9e04f87a0:   jne    0x00007fe9e04f88a4
   0.00%   ││        │││        ││  0x00007fe9e04f87a6:   mov    $0x1,%eax
           ││        │││╭       ││  0x00007fe9e04f87ab:   jmp    0x00007fe9e04f87ef
           ││        ││↘│       ││  0x00007fe9e04f87b0:   mov    $0x2,%eax
   0.25%   ││        ││ │╭      ││  0x00007fe9e04f87b5:   jmp    0x00007fe9e04f87ef
   1.71%   ││        │↘ ││      ││  0x00007fe9e04f87ba:   nopw   0x0(%rax,%rax,1)
           ││        │  ││      ││  0x00007fe9e04f87c0:   cmp    $0x4,%r10d
           ││        │  ││╭     ││  0x00007fe9e04f87c4:   jne    0x00007fe9e04f87cd
           ││        │  │││     ││  0x00007fe9e04f87c6:   mov    $0x5,%eax
   0.21%   ││        │  │││╭    ││  0x00007fe9e04f87cb:   jmp    0x00007fe9e04f87ef
   1.19%   ││        │  ││↘│    ││  0x00007fe9e04f87cd:   cmp    $0x4,%r10d
           ││        │  ││ │╭   ││  0x00007fe9e04f87d1:   jge    0x00007fe9e04f87da
           ││        │  ││ ││   ││  0x00007fe9e04f87d3:   mov    $0x4,%eax
           ││        │  ││ ││╭  ││  0x00007fe9e04f87d8:   jmp    0x00007fe9e04f87ef
   0.62%   ││        │  ││ │↘│  ││  0x00007fe9e04f87da:   nopw   0x0(%rax,%rax,1)
           ││        │  ││ │ │  ││  0x00007fe9e04f87e0:   cmp    $0x5,%r10d
           ││        │  ││ │ │╭ ││  0x00007fe9e04f87e4:   jne    0x00007fe9e04f883b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││        │  ││ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
           ││        │  ││ │ ││ ││  0x00007fe9e04f87ea:   mov    $0x6,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │  ││ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@693 (line 219)
   2.63%   ││        │  ↘↘ ↘ ↘│↗││  0x00007fe9e04f87ef:   add    $0x20,%rsp
   0.60%   ││        │        ││││  0x00007fe9e04f87f3:   pop    %rbp
   0.55%   ││        │        ││││  0x00007fe9e04f87f4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││        │        ││││  0x00007fe9e04f87fb:   ja     0x00007fe9e04f89be
   3.26%   ││        │        ││││  0x00007fe9e04f8801:   ret    
   0.67%   ││        ↘        ││││  0x00007fe9e04f8802:   mov    $0x3,%eax
           ││                 │╰││  0x00007fe9e04f8807:   jmp    0x00007fe9e04f87ef           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││                 │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.59%   │↘                 │ ││  0x00007fe9e04f8809:   movabs $0x7ff035220,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
           │                  │ ││  0x00007fe9e04f8813:   mov    (%rsp),%rsi
   0.01%   │                  │ ││  0x00007fe9e04f8817:   call   0x00007fe9dff85380           ; ImmutableOopMap {}
           │                  │ ││                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
           │                  │ ││                                                            ;   {optimized virtual_call}
   4.50%   │                  │ ││  0x00007fe9e04f881c:   nopl   0x600048c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
           │                  │ ││                                                            ;   {other}
           │                  │ ││  0x00007fe9e04f8824:   test   %eax,%eax
           │                  │ ││  0x00007fe9e04f8826:   je     0x00007fe9e04f8940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
   0.00%   │                  │ ││  0x00007fe9e04f882c:   xor    %r10d,%r10d
           │                  │ ╰│  0x00007fe9e04f882f:   jmp    0x00007fe9e04f8782
           ↘                  │  │  0x00007fe9e04f8834:   xor    %eax,%eax
                              │  ╰  0x00007fe9e04f8836:   jmp    0x00007fe9e04f862f
                              ↘     0x00007fe9e04f883b:   mov    $0xffffff45,%esi
                                    0x00007fe9e04f8840:   mov    %r10d,%ebp
                                    0x00007fe9e04f8843:   call   0x00007fe9dff8af00           ; ImmutableOopMap {}
                                                                                              ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
                                                                                              ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  59.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 308 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007fe9e04e2aa0:   mov    0x8(%rsi),%r10d
                                0x00007fe9e04e2aa4:   movabs $0x7fe95b000000,%r11
                                0x00007fe9e04e2aae:   add    %r11,%r10
                                0x00007fe9e04e2ab1:   cmp    %r10,%rax
                                0x00007fe9e04e2ab4:   jne    0x00007fe9dff85080           ;   {runtime_call ic_miss_stub}
                                0x00007fe9e04e2aba:   xchg   %ax,%ax
                                0x00007fe9e04e2abc:   nopl   0x0(%rax)
                              [Verified Entry Point]
   2.40%                        0x00007fe9e04e2ac0:   mov    %eax,-0x14000(%rsp)
   2.84%                        0x00007fe9e04e2ac7:   push   %rbp
   1.52%                        0x00007fe9e04e2ac8:   sub    $0x20,%rsp
   0.74%                        0x00007fe9e04e2acc:   cmpl   $0x1,0x20(%r15)
   1.45%                        0x00007fe9e04e2ad4:   jne    0x00007fe9e04e2c86           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   1.39%                        0x00007fe9e04e2ada:   nopw   0x0(%rax,%rax,1)
   0.70%                        0x00007fe9e04e2ae0:   cmp    %rdx,%rsi
          ╭                     0x00007fe9e04e2ae3:   jne    0x00007fe9e04e2aef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.01%  │                     0x00007fe9e04e2ae5:   mov    $0x1,%eax
   1.39%  │╭                    0x00007fe9e04e2aea:   jmp    0x00007fe9e04e2c02
          ↘│                    0x00007fe9e04e2aef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fe9e04e2c58
           │                    0x00007fe9e04e2af3:   nopw   0x0(%rax,%rax,1)
           │                    0x00007fe9e04e2afc:   data16 data16 xchg %ax,%ax
           │                    0x00007fe9e04e2b00:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007fe9e04e2b07:   jne    0x00007fe9e04e2c38           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007fe9e04e2b0d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007fe9e04e2b12:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007fe9e04e2b16:   cmp    %ebp,%r10d
           │╭                   0x00007fe9e04e2b19:   jne    0x00007fe9e04e2c1c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007fe9e04e2b1f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007fe9e04e2b23:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007fe9e04e2b27:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007fe9e04e2b2c:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007fe9e04e2b31:   cmp    %r9d,%ecx
           ││╭                  0x00007fe9e04e2b34:   jne    0x00007fe9e04e2c18           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007fe9e04e2b3a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007fe9e04e2b3e:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007fe9e04e2b43:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007fe9e04e2b47:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007fe9e04e2b4c:   test   %ecx,%ecx
           │││╭                 0x00007fe9e04e2b4e:   je     0x00007fe9e04e2bf1
           ││││                 0x00007fe9e04e2b54:   mov    %ecx,%eax
           ││││                 0x00007fe9e04e2b56:   and    $0x1f,%eax
           ││││                 0x00007fe9e04e2b59:   and    $0xffffffe0,%ecx
           ││││╭                0x00007fe9e04e2b5c:   je     0x00007fe9e04e2bad
           │││││                0x00007fe9e04e2b62:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007fe9e04e2b66:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007fe9e04e2b6a:   neg    %rcx
           │││││ ↗              0x00007fe9e04e2b6d:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007fe9e04e2b72:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007fe9e04e2b77:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007fe9e04e2b7b:   vptest %ymm1,%ymm1
           │││││╭│              0x00007fe9e04e2b80:   jne    0x00007fe9e04e2bf8
           │││││││              0x00007fe9e04e2b86:   add    $0x20,%rcx
           ││││││╰              0x00007fe9e04e2b8a:   jne    0x00007fe9e04e2b6d
           ││││││               0x00007fe9e04e2b8c:   test   %eax,%eax
           ││││││ ╭             0x00007fe9e04e2b8e:   je     0x00007fe9e04e2bf1
           ││││││ │             0x00007fe9e04e2b94:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007fe9e04e2b9a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007fe9e04e2ba0:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007fe9e04e2ba4:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007fe9e04e2ba9:   jne    0x00007fe9e04e2bf8
           ││││││ ││╭           0x00007fe9e04e2bab:   jmp    0x00007fe9e04e2bf1
           ││││↘│ │││           0x00007fe9e04e2bad:   mov    %eax,%ecx
           ││││ │ │││           0x00007fe9e04e2baf:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007fe9e04e2bb2:   je     0x00007fe9e04e2bcd
           ││││ │ ││││          0x00007fe9e04e2bb4:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007fe9e04e2bb8:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007fe9e04e2bbc:   neg    %rcx
           ││││ │ ││││ ↗        0x00007fe9e04e2bbf:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007fe9e04e2bc2:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007fe9e04e2bc5:   jne    0x00007fe9e04e2bf8
           ││││ │ ││││││        0x00007fe9e04e2bc7:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007fe9e04e2bcb:   jne    0x00007fe9e04e2bbf
           ││││ │ │││↘│         0x00007fe9e04e2bcd:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007fe9e04e2bcf:   je     0x00007fe9e04e2be3
           ││││ │ │││ │ │       0x00007fe9e04e2bd1:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007fe9e04e2bd4:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007fe9e04e2bd7:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007fe9e04e2bd9:   jne    0x00007fe9e04e2bf8
           ││││ │ │││ │ ││      0x00007fe9e04e2bdb:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007fe9e04e2bdf:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007fe9e04e2be3:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007fe9e04e2be5:   je     0x00007fe9e04e2bf1
           ││││ │ │││ │  ││     0x00007fe9e04e2be7:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007fe9e04e2bea:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007fe9e04e2bed:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007fe9e04e2bef:   jne    0x00007fe9e04e2bf8
           │││↘ │ ↘│↘ │  │↘│    0x00007fe9e04e2bf1:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007fe9e04e2bf6:   jmp    0x00007fe9e04e2bfa
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007fe9e04e2bf8:   xor    %eax,%eax
           │││              ↘   0x00007fe9e04e2bfa:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007fe9e04e2bfe:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   1.44%   ↘││               ↗  0x00007fe9e04e2c02:   vzeroupper 
   3.72%    ││               │  0x00007fe9e04e2c05:   add    $0x20,%rsp
   0.82%    ││               │  0x00007fe9e04e2c09:   pop    %rbp
   0.01%    ││               │  0x00007fe9e04e2c0a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007fe9e04e2c11:   ja     0x00007fe9e04e2c70
   2.89%    ││               │  0x00007fe9e04e2c17:   ret    
            │↘               │  0x00007fe9e04e2c18:   xor    %eax,%eax
            │                ╰  0x00007fe9e04e2c1a:   jmp    0x00007fe9e04e2c02
            ↘                   0x00007fe9e04e2c1c:   mov    $0xffffff45,%esi
                                0x00007fe9e04e2c21:   mov    %r10d,(%rsp)
                                0x00007fe9e04e2c25:   data16 xchg %ax,%ax
                                0x00007fe9e04e2c28:   vzeroupper 
                                0x00007fe9e04e2c2b:   call   0x00007fe9dff8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  21.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 653 

                 # {method} {0x00007fe957479428} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007fe9e04f9920:   mov    0x8(%rsi),%r10d
                 0x00007fe9e04f9924:   movabs $0x7fe95b000000,%r11
                 0x00007fe9e04f992e:   add    %r11,%r10
                 0x00007fe9e04f9931:   cmp    %r10,%rax
                 0x00007fe9e04f9934:   jne    0x00007fe9dff85080           ;   {runtime_call ic_miss_stub}
                 0x00007fe9e04f993a:   xchg   %ax,%ax
                 0x00007fe9e04f993c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007fe9e04f9940:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007fe9e04f9947:   push   %rbp
                 0x00007fe9e04f9948:   sub    $0x30,%rsp
   0.00%         0x00007fe9e04f994c:   cmpl   $0x1,0x20(%r15)
                 0x00007fe9e04f9954:   jne    0x00007fe9e04f9a4a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007fe9e04f995a:   mov    %rsi,%r10
                 0x00007fe9e04f995d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007fe9e04f9961:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fe9e04f9a21
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.01%         0x00007fe9e04f9966:   test   %ebx,%ebx
          ╭      0x00007fe9e04f9968:   jbe    0x00007fe9e04f99f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.01%  │      0x00007fe9e04f996e:   mov    %ebx,%r11d
          │      0x00007fe9e04f9971:   dec    %r11d
          │      0x00007fe9e04f9974:   cmp    %ebx,%r11d
          │╭     0x00007fe9e04f9977:   jae    0x00007fe9e04f99f6
   0.00%  ││     0x00007fe9e04f997d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007fe9e04f9981:   xor    %ebp,%ebp
          ││     0x00007fe9e04f9983:   xor    %r11d,%r11d
          ││     0x00007fe9e04f9986:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007fe9e04f998b:   mov    %ebx,0x10(%rsp)
          ││     0x00007fe9e04f998f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007fe9e04f9994:   jmp    0x00007fe9e04f99a9
          │││    0x00007fe9e04f9996:   data16 nopw 0x0(%rax,%rax,1)
   2.37%  │││↗   0x00007fe9e04f99a0:   mov    (%rsp),%r8
   0.59%  ││││   0x00007fe9e04f99a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   0.74%  ││↘│   0x00007fe9e04f99a9:   mov    0x10(%r8,%rbp,4),%r11d
   1.63%  ││ │   0x00007fe9e04f99ae:   mov    %r8,(%rsp)
   2.07%  ││ │   0x00007fe9e04f99b2:   mov    %r11,%rdx
   0.22%  ││ │   0x00007fe9e04f99b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   1.00%  ││ │   0x00007fe9e04f99b9:   mov    0x8(%rsp),%rsi
   0.36%  ││ │   0x00007fe9e04f99be:   nop
   2.02%  ││ │   0x00007fe9e04f99bf:   call   0x00007fe9e04f85c0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
   0.75%  ││ │   0x00007fe9e04f99c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
   0.36%  ││ │   0x00007fe9e04f99cc:   mov    0x14(%rsp),%r10d
   2.86%  ││ │   0x00007fe9e04f99d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.42%  ││ │   0x00007fe9e04f99d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.31%  ││ │   0x00007fe9e04f99d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007fe9e04f99da:   jl     0x00007fe9e04f99a0
   0.01%  ││     0x00007fe9e04f99dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  ││  ↗  0x00007fe9e04f99df:   add    $0x30,%rsp
   0.01%  ││  │  0x00007fe9e04f99e3:   pop    %rbp
   0.02%  ││  │  0x00007fe9e04f99e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fe9e04f99eb:   ja     0x00007fe9e04f9a34
   0.00%  ││  │  0x00007fe9e04f99f1:   ret    
          ↘│  │  0x00007fe9e04f99f2:   xor    %eax,%eax
           │  ╰  0x00007fe9e04f99f4:   jmp    0x00007fe9e04f99df
           ↘     0x00007fe9e04f99f6:   mov    $0xffffff76,%esi
                 0x00007fe9e04f99fb:   mov    %r10,%rbp
                 0x00007fe9e04f99fe:   mov    %ebx,0x4(%rsp)
                 0x00007fe9e04f9a02:   mov    %r9d,0x8(%rsp)
                 0x00007fe9e04f9a07:   call   0x00007fe9dff8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  15.80%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 648 
  21.33%           c2, level 4  java.lang.String::equals, version 2, compile id 308 
  15.80%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 653 
   0.27%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  native_read_msr 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_list 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 686 
   1.04%  <...other 219 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 648 
  21.33%           c2, level 4  java.lang.String::equals, version 2, compile id 308 
  15.80%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 653 
   0.27%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.21%     [kernel.kallsyms]  __mod_lruvec_state 
   0.21%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.11%     [kernel.kallsyms]  native_read_msr 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.09%     [kernel.kallsyms]  __mod_zone_page_state 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_list 
   0.04%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 686 
   1.04%  <...other 213 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.12%           c2, level 4
   2.57%     [kernel.kallsyms]
   0.17%             libjvm.so
   0.09%             libc.so.6
   0.02%        hsdis-amd64.so
   0.01%           interpreter
   0.01%                      
   0.00%        libz.so.1.2.11
   0.00%         perf-5979.map
   0.00%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%                kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:12:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.529 ns/op
# Warmup Iteration   2: 21.869 ns/op
# Warmup Iteration   3: 22.008 ns/op
# Warmup Iteration   4: 21.966 ns/op
# Warmup Iteration   5: 21.876 ns/op
Iteration   1: 22.429 ns/op
Iteration   2: 22.145 ns/op
Iteration   3: 21.966 ns/op
Iteration   4: 22.109 ns/op
Iteration   5: 21.201 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  21.970 ±(99.9%) 1.777 ns/op [Average]
  (min, avg, max) = (21.201, 21.970, 22.429), stdev = 0.462
  CI (99.9%): [20.192, 23.747] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 126506 total address lines.
Perf output processed (skipped 67.212 seconds):
 Column 1: cycles (49493 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 641 

                                                                       # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                       #           [sp+0x30]  (sp of caller)
                                                                       0x00007fee644f9180:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                                                                       0x00007fee644f9184:   movabs $0x7fede3000000,%r11
                                                                       0x00007fee644f918e:   add    %r11,%r10
                                                                       0x00007fee644f9191:   cmp    %r10,%rax
                                                                       0x00007fee644f9194:   jne    0x00007fee63f85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007fee644f919a:   xchg   %ax,%ax
                                                                       0x00007fee644f919c:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   1.15%                                                               0x00007fee644f91a0:   mov    %eax,-0x14000(%rsp)
   2.75%                                                               0x00007fee644f91a7:   push   %rbp
   0.25%                                                               0x00007fee644f91a8:   sub    $0x20,%rsp
   3.45%                                                               0x00007fee644f91ac:   cmpl   $0x1,0x20(%r15)
   0.12%                                                               0x00007fee644f91b4:   jne    0x00007fee644f988a           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@-1 (line 214)
   0.22%                                                               0x00007fee644f91ba:   mov    %rdx,(%rsp)
   0.90%                                                               0x00007fee644f91be:   xchg   %ax,%ax
   2.55%  ╭                                                            0x00007fee644f91c0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fee644f97ff
          │                                                                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::hashCode@1 (line 2363)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.35%  │                                                            0x00007fee644f91c3:   test   %eax,%eax
          │╭                                                           0x00007fee644f91c5:   jne    0x00007fee644f920f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::hashCode@6 (line 2364)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││                                                           0x00007fee644f91c7:   movzbl 0x11(%rdx),%r10d
          ││                                                           0x00007fee644f91cc:   test   %r10d,%r10d
          ││╭                                                          0x00007fee644f91cf:   jne    0x00007fee644f9571           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::hashCode@13 (line 2364)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │││                                                          0x00007fee644f91d5:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::isLatin1@7 (line 4817)
          │││                                                                                                                    ; - java.lang.String::hashCode@17 (line 2365)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │││                                                          0x00007fee644f91d9:   test   %ebp,%ebp
          │││                                                          0x00007fee644f91db:   nopl   0x0(%rax,%rax,1)
          │││╭                                                         0x00007fee644f91e0:   jne    0x00007fee644f9578           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::isLatin1@10 (line 4817)
          ││││                                                                                                                   ; - java.lang.String::hashCode@17 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││││                                                         0x00007fee644f91e6:   mov    0x14(%rdx),%r11d
          ││││                                                         0x00007fee644f91ea:   mov    %r11,%rsi
          ││││                                                         0x00007fee644f91ed:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@24 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││││                                                         0x00007fee644f91f1:   mov    %rdx,%rbp
          ││││                                                         0x00007fee644f91f4:   data16 xchg %ax,%ax
          ││││                                                         0x00007fee644f91f7:   call   0x00007fee63f85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
          ││││                                                                                                                   ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@27 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││││                                                                                                                   ;   {static_call}
          ││││                                                         0x00007fee644f91fc:   nopl   0x36c(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@27 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          ││││                                                                                                                   ;   {other}
          ││││                                                         0x00007fee644f9204:   test   %eax,%eax
          ││││╭                                                        0x00007fee644f9206:   je     0x00007fee644f958c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                                                                  ; - java.lang.String::hashCode@42 (line 2367)
          │││││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │││││                                                        0x00007fee644f920c:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                                                                  ; - java.lang.String::hashCode@58 (line 2373)
          │││││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.80%  │↘│││                                          ↗             0x00007fee644f920f:   cmp    $0x462300d,%eax
          │ │││╭                                         │             0x00007fee644f9214:   je     0x00007fee644f9511
   0.91%  │ ││││                                         │             0x00007fee644f921a:   nopw   0x0(%rax,%rax,1)
   1.98%  │ ││││                                         │             0x00007fee644f9220:   cmp    $0x462300d,%eax
          │ ││││╭                                        │             0x00007fee644f9225:   jge    0x00007fee644f93ab
   0.21%  │ │││││                                        │             0x00007fee644f922b:   cmp    $0x10260,%eax
          │ │││││╭                                       │             0x00007fee644f9230:   je     0x00007fee644f953c
   0.28%  │ ││││││                                       │             0x00007fee644f9236:   data16 nopw 0x0(%rax,%rax,1)
   0.55%  │ ││││││                                       │             0x00007fee644f9240:   cmp    $0x10260,%eax
          │ ││││││╭                                      │             0x00007fee644f9245:   jge    0x00007fee644f92d7
   0.24%  │ │││││││                                      │             0x00007fee644f924b:   cmp    $0x9ef434af,%eax
          │ │││││││╭                                     │             0x00007fee644f9250:   je     0x00007fee644f92a7
   0.01%  │ ││││││││                                     │             0x00007fee644f9256:   data16 nopw 0x0(%rax,%rax,1)
   0.05%  │ ││││││││                                     │             0x00007fee644f9260:   cmp    $0x9ef434af,%eax
          │ ││││││││╭                                    │             0x00007fee644f9265:   jl     0x00007fee644f9630
   0.23%  │ │││││││││                                    │             0x00007fee644f926b:   cmp    $0xeb2c8617,%eax
          │ │││││││││╭                                   │             0x00007fee644f9270:   jne    0x00007fee644f964c           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.02%  │ ││││││││││                                   │             0x00007fee644f9276:   movabs $0x7ff035418,%rdx            ;   {oop(&quot;TRACTOR&quot;{0x00000007ff035418})}
   0.00%  │ ││││││││││                                   │             0x00007fee644f9280:   mov    (%rsp),%rsi
   0.05%  │ ││││││││││                                   │             0x00007fee644f9284:   data16 xchg %ax,%ax
   0.25%  │ ││││││││││                                   │             0x00007fee644f9287:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││││││││                                   │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
          │ ││││││││││                                   │                                                                       ;   {optimized virtual_call}
   3.26%  │ ││││││││││                                   │             0x00007fee644f928c:   nopl   0x10003fc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@359 (line 214)
          │ ││││││││││                                   │                                                                       ;   {other}
          │ ││││││││││                                   │             0x00007fee644f9294:   test   %eax,%eax
          │ ││││││││││╭                                  │             0x00007fee644f9296:   je     0x00007fee644f974c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                  │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@362 (line 214)
   0.01%  │ │││││││││││                                  │             0x00007fee644f929c:   mov    $0xa,%r11d
          │ │││││││││││╭                                 │             0x00007fee644f92a2:   jmp    0x00007fee644f9396           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.02%  │ │││││││↘││││                                 │             0x00007fee644f92a7:   movabs $0x7ff035280,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.06%  │ │││││││ ││││                                 │             0x00007fee644f92b1:   mov    (%rsp),%rsi
   0.10%  │ │││││││ ││││                                 │             0x00007fee644f92b5:   xchg   %ax,%ax
   0.14%  │ │││││││ ││││                                 │             0x00007fee644f92b7:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ │││││││ ││││                                 │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          │ │││││││ ││││                                 │                                                                       ;   {optimized virtual_call}
   1.97%  │ │││││││ ││││                                 │             0x00007fee644f92bc:   nopl   0x200042c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          │ │││││││ ││││                                 │                                                                       ;   {other}
   0.00%  │ │││││││ ││││                                 │             0x00007fee644f92c4:   test   %eax,%eax
          │ │││││││ ││││╭                                │             0x00007fee644f92c6:   je     0x00007fee644f9738           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │││││                                │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
   0.01%  │ │││││││ │││││                                │             0x00007fee644f92cc:   mov    $0x2,%r11d
          │ │││││││ │││││╭                               │             0x00007fee644f92d2:   jmp    0x00007fee644f9396
   0.54%  │ ││││││↘ ││││││                               │             0x00007fee644f92d7:   nopw   0x0(%rax,%rax,1)
   0.04%  │ ││││││  ││││││                               │             0x00007fee644f92e0:   cmp    $0x14234,%eax
          │ ││││││  ││││││╭                              │             0x00007fee644f92e5:   jne    0x00007fee644f9317           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.05%  │ ││││││  │││││││                              │             0x00007fee644f92e7:   movabs $0x7ff035320,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff035320})}
          │ ││││││  │││││││                              │             0x00007fee644f92f1:   mov    (%rsp),%rsi
   0.24%  │ ││││││  │││││││                              │             0x00007fee644f92f5:   xchg   %ax,%ax
          │ ││││││  │││││││                              │             0x00007fee644f92f7:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││││  │││││││                              │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
          │ ││││││  │││││││                              │                                                                       ;   {optimized virtual_call}
   1.35%  │ ││││││  │││││││                              │             0x00007fee644f92fc:   nopl   0x300046c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
          │ ││││││  │││││││                              │                                                                       ;   {other}
   0.07%  │ ││││││  │││││││                              │             0x00007fee644f9304:   test   %eax,%eax
          │ ││││││  │││││││╭                             │             0x00007fee644f9306:   je     0x00007fee644f96d4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││││                             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
          │ ││││││  ││││││││                             │             0x00007fee644f930c:   mov    $0x5,%r11d
          │ ││││││  ││││││││╭                            │             0x00007fee644f9312:   jmp    0x00007fee644f9396
   0.58%  │ ││││││  ││││││↘││                            │             0x00007fee644f9317:   nopw   0x0(%rax,%rax,1)
          │ ││││││  ││││││ ││                            │             0x00007fee644f9320:   cmp    $0x14234,%eax
          │ ││││││  ││││││ ││╭                           │             0x00007fee644f9325:   jge    0x00007fee644f9362
          │ ││││││  ││││││ │││                           │             0x00007fee644f9327:   cmp    $0x103b4,%eax
          │ ││││││  ││││││ │││╭                          │             0x00007fee644f932c:   jne    0x00007fee644f9668           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.02%  │ ││││││  ││││││ ││││                          │             0x00007fee644f9332:   movabs $0x7ff0352f0,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff0352f0})}
   0.25%  │ ││││││  ││││││ ││││                          │             0x00007fee644f933c:   mov    (%rsp),%rsi
   0.00%  │ ││││││  ││││││ ││││                          │             0x00007fee644f9340:   data16 xchg %ax,%ax
          │ ││││││  ││││││ ││││                          │             0x00007fee644f9343:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││││  ││││││ ││││                          │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
          │ ││││││  ││││││ ││││                          │                                                                       ;   {optimized virtual_call}
   2.16%  │ ││││││  ││││││ ││││                          │             0x00007fee644f9348:   nopl   0x40004b8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
          │ ││││││  ││││││ ││││                          │                                                                       ;   {other}
          │ ││││││  ││││││ ││││                          │             0x00007fee644f9350:   test   %eax,%eax
          │ ││││││  ││││││ ││││╭                         │             0x00007fee644f9352:   je     0x00007fee644f9760           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ │││││                         │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
          │ ││││││  ││││││ │││││                         │             0x00007fee644f9358:   mov    $0x4,%r11d
          │ ││││││  ││││││ │││││                         │             0x00007fee644f935e:   xchg   %ax,%ax
   0.34%  │ ││││││  ││││││ │││││╭                        │             0x00007fee644f9360:   jmp    0x00007fee644f9396
   0.32%  │ ││││││  ││││││ ││↘│││                        │             0x00007fee644f9362:   cmp    $0x14b03,%eax
          │ ││││││  ││││││ ││ │││╭                       │             0x00007fee644f9367:   jne    0x00007fee644f95a4           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │ ││││││  ││││││ ││ ││││                       │             0x00007fee644f936d:   movabs $0x7ff035350,%rdx            ;   {oop(&quot;VAN&quot;{0x00000007ff035350})}
          │ ││││││  ││││││ ││ ││││                       │             0x00007fee644f9377:   mov    (%rsp),%rsi
          │ ││││││  ││││││ ││ ││││                       │             0x00007fee644f937b:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;   {optimized virtual_call}
   1.71%  │ ││││││  ││││││ ││ ││││                       │             0x00007fee644f9380:   nopl   0x50004f0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@299 (line 214)
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;   {other}
          │ ││││││  ││││││ ││ ││││                       │             0x00007fee644f9388:   test   %eax,%eax
          │ ││││││  ││││││ ││ ││││╭                      │             0x00007fee644f938a:   je     0x00007fee644f9684           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ │││││                      │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@302 (line 214)
          │ ││││││  ││││││ ││ │││││                      │             0x00007fee644f9390:   mov    $0x6,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ │││││                      │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@265 (line 214)
   1.93%  │ ││││││  │││↘│↘ │↘ ││↘││  ↗     ↗ ↗    ↗ ↗ ↗ ↗│             0x00007fee644f9396:   movslq %r11d,%r10
   0.67%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007fee644f9399:   shl    $0x3,%r10
   0.73%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007fee644f939d:   movabs $0x7fee644f9120,%r8          ;   {section_word}
   0.49%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007fee644f93a7:   jmp    *(%r8,%r10,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
   0.45%  │ ││││↘│  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007fee644f93ab:   cmp    $0x23c6acdf,%eax
          │ ││││ │  │││ │  │  ││ ││╭ │     │ │    │ │ │ ││             0x00007fee644f93b0:   jne    0x00007fee644f93e2           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93b2:   movabs $0x7ff035250,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
   0.04%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93bc:   mov    (%rsp),%rsi
   0.00%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93c0:   data16 xchg %ax,%ax
   0.28%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93c3:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   0.39%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93c8:   nopl   0x6000538(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;   {other}
   0.00%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007fee644f93d0:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ │││╭│     │ │    │ │ │ ││             0x00007fee644f93d2:   je     0x00007fee644f96c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
   0.18%  │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││             0x00007fee644f93d8:   mov    $0x1,%r11d
          │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││             0x00007fee644f93de:   xchg   %ax,%ax
   0.14%  │ ││││ │  │││ │  │  ││ ││││╰     │ │    │ │ │ ││             0x00007fee644f93e0:   jmp    0x00007fee644f9396
   1.45%  │ ││││ │  │││ │  │  ││ ││↘│      │ │    │ │ │ ││             0x00007fee644f93e2:   cmp    $0x23c6acdf,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ╭    │ │    │ │ │ ││             0x00007fee644f93e7:   jge    0x00007fee644f9477
          │ ││││ │  │││ │  │  ││ ││ │ │    │ │    │ │ │ ││             0x00007fee644f93ed:   cmp    $0x4c6443f,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │╭   │ │    │ │ │ ││             0x00007fee644f93f2:   je     0x00007fee644f9447
   0.00%  │ ││││ │  │││ │  │  ││ ││ │ ││   │ │    │ │ │ ││             0x00007fee644f93f8:   nopl   0x0(%rax,%rax,1)
          │ ││││ │  │││ │  │  ││ ││ │ ││   │ │    │ │ │ ││             0x00007fee644f9400:   cmp    $0x4c6443f,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ││╭  │ │    │ │ │ ││             0x00007fee644f9405:   jl     0x00007fee644f95f8
   0.32%  │ ││││ │  │││ │  │  ││ ││ │ │││  │ │    │ │ │ ││             0x00007fee644f940b:   cmp    $0x1b604cf5,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │││╭ │ │    │ │ │ ││             0x00007fee644f9410:   jne    0x00007fee644f9614           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.00%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f9416:   movabs $0x7ff035448,%rdx            ;   {oop(&quot;MONORAIL&quot;{0x00000007ff035448})}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f9420:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f9424:   data16 xchg %ax,%ax
   0.30%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f9427:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   0.74%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f942c:   nopl   0x700059c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@374 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007fee644f9434:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ││││╭│ │    │ │ │ ││             0x00007fee644f9436:   je     0x00007fee644f9724           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││││ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@377 (line 214)
   0.16%  │ ││││ │  │││ │  │  ││ ││ │ ││││││ │    │ │ │ ││             0x00007fee644f943c:   mov    $0xb,%r11d
          │ ││││ │  │││ │  │  ││ ││ │ │││││╰ │    │ │ │ ││             0x00007fee644f9442:   jmp    0x00007fee644f9396           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │││││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.30%  │ ││││ │  │││ │  │  ││ ││ │ │↘│││  │    │ │ │ ││             0x00007fee644f9447:   movabs $0x7ff0353b8,%rdx            ;   {oop(&quot;TRUCK&quot;{0x00000007ff0353b8})}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007fee644f9451:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007fee644f9455:   xchg   %ax,%ax
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007fee644f9457:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   1.22%  │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007fee644f945c:   nopl   0x80005cc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@329 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007fee644f9464:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ╭│    │ │ │ ││             0x00007fee644f9466:   je     0x00007fee644f9710           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ││    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@332 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ││    │ │ │ ││             0x00007fee644f946c:   mov    $0x8,%r11d
   0.03%  │ ││││ │  │││ │  │  ││ ││ │ │ │││ │╰    │ │ │ ││             0x00007fee644f9472:   jmp    0x00007fee644f9396
   0.66%  │ ││││ │  │││ │  │  ││ ││ │ ↘ │││ │     │ │ │ ││             0x00007fee644f9477:   nopw   0x0(%rax,%rax,1)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │     │ │ │ ││             0x00007fee644f9480:   cmp    $0x33eb4d91,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ╭   │ │ │ ││             0x00007fee644f9485:   je     0x00007fee644f94db
   0.15%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │   │ │ │ ││             0x00007fee644f948b:   cmp    $0x33eb4d91,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │╭  │ │ │ ││             0x00007fee644f9490:   jl     0x00007fee644f95c0
   0.02%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││  │ │ │ ││             0x00007fee644f9496:   data16 nopw 0x0(%rax,%rax,1)
   0.26%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││  │ │ │ ││             0x00007fee644f94a0:   cmp    $0x356e5289,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││╭ │ │ │ ││             0x00007fee644f94a5:   jne    0x00007fee644f95dc           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94ab:   movabs $0x7ff035380,%rdx            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007ff035380})}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94b5:   mov    (%rsp),%rsi
   0.01%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94b9:   xchg   %ax,%ax
   0.32%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94bb:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;   {optimized virtual_call}
   1.66%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94c0:   nopl   0x9000630(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@314 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007fee644f94c8:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││╭│ │ │ ││             0x00007fee644f94ca:   je     0x00007fee644f96ac           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││││ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@317 (line 214)
   0.02%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││││ │ │ ││             0x00007fee644f94d0:   mov    $0x7,%r11d
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││││╰ │ │ ││             0x00007fee644f94d6:   jmp    0x00007fee644f9396           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.31%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ↘│││  │ │ ││             0x00007fee644f94db:   movabs $0x7ff0352b8,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff0352b8})}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94e5:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94e9:   xchg   %ax,%ax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94eb:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;   {optimized virtual_call}
   0.99%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94f0:   nopl   0xa000660(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94f8:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007fee644f94fa:   nopw   0x0(%rax,%rax,1)
   0.13%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ╭│ │ ││             0x00007fee644f9500:   je     0x00007fee644f9698           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ││ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
   0.20%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ││ │ ││             0x00007fee644f9506:   mov    $0x3,%r11d
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ │╰ │ ││             0x00007fee644f950c:   jmp    0x00007fee644f9396           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.31%  │ │││↘ │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007fee644f9511:   movabs $0x7ff035220,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007fee644f951b:   mov    (%rsp),%rsi
   0.00%  │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007fee644f951f:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;   {optimized virtual_call}
   2.34%  │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007fee644f9524:   nopl   0xb000694(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;   {other}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007fee644f952c:   test   %eax,%eax
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ╭│ ││             0x00007fee644f952e:   je     0x00007fee644f96e8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ││ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
   0.01%  │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ││ ││             0x00007fee644f9534:   xor    %r11d,%r11d
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ │╰ ││             0x00007fee644f9537:   jmp    0x00007fee644f9396           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │ │││  ↘  │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f953c:   movabs $0x7ff0353e8,%rdx            ;   {oop(&quot;BUS&quot;{0x00000007ff0353e8})}
   0.12%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f9546:   mov    (%rsp),%rsi
   0.22%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f954a:   nop
   0.02%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f954b:   call   0x00007fee644e3140           ; ImmutableOopMap {}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;   {optimized virtual_call}
   2.23%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f9550:   nopl   0xc0006c0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@344 (line 214)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;   {other}
   0.05%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f9558:   test   %eax,%eax
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007fee644f955a:   nopw   0x0(%rax,%rax,1)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ ╭││             0x00007fee644f9560:   je     0x00007fee644f96fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@347 (line 214)
   0.24%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │││             0x00007fee644f9566:   mov    $0x9,%r11d
   0.04%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │╰│             0x00007fee644f956c:   jmp    0x00007fee644f9396
          │ ↘││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │ │             0x00007fee644f9571:   xor    %eax,%eax
          │  ││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │ ╰             0x00007fee644f9573:   jmp    0x00007fee644f920f
          │  ↘│     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f9578:   mov    $0xffffff45,%esi
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f957d:   xchg   %ax,%ax
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f957f:   call   0x00007fee63f8af00           ; ImmutableOopMap {[0]=Oop }
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) java.lang.String::isLatin1@10 (line 4817)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::hashCode@17 (line 2365)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f9584:   nopl   0xd0006f4(%rax,%rax,1)       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::isLatin1@10 (line 4817)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::hashCode@17 (line 2365)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │   ↘     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f958c:   mov    $0xffffff45,%esi
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f9591:   mov    %eax,0xc(%rsp)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f9595:   xchg   %ax,%ax
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f9597:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) java.lang.String::hashCode@42 (line 2367)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007fee644f959c:   nopl   0xe00070c(%rax,%rax,1)       ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││ ↘│ │   │││ │  │││ │ │ │               0x00007fee644f95a4:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007fee644f95a9:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007fee644f95ad:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007fee644f95b0:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007fee644f95b3:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007fee644f95b8:   nopl   0xf000728(%rax,%rax,1)       ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   │││ │  ↘││ │ │ │               0x00007fee644f95c0:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007fee644f95c5:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007fee644f95c9:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007fee644f95cc:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007fee644f95cf:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007fee644f95d4:   nopl   0x10000744(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   │││ │   ↘│ │ │ │               0x00007fee644f95dc:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007fee644f95e1:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007fee644f95e5:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007fee644f95e8:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007fee644f95eb:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007fee644f95f0:   nopl   0x11000760(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   ↘││ │    │ │ │ │               0x00007fee644f95f8:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007fee644f95fd:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007fee644f9601:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007fee644f9604:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007fee644f9607:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007fee644f960c:   nopl   0x1200077c(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │    ↘│ │    │ │ │ │               0x00007fee644f9614:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9619:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f961d:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9620:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9623:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9628:   nopl   0x13000798(%rax,%rax,1)      ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │         ↘││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9630:   mov    $0xffffff45,%esi
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9635:   mov    (%rsp),%rbp
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9639:   mov    %eax,(%rsp)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f963c:   data16 xchg %ax,%ax
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f963f:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9644:   nopl   0x140007b4(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │          ↘│ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f964c:   mov    $0xffffff45,%esi
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9651:   mov    (%rsp),%rbp
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9655:   mov    %eax,(%rsp)
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9658:   data16 xchg %ax,%ax
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f965b:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007fee644f9660:   nopl   0x150007d0(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │  ↘│  │ │     │ │    │ │ │ │               0x00007fee644f9668:   mov    $0xffffff45,%esi
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007fee644f966d:   mov    (%rsp),%rbp
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007fee644f9671:   mov    %eax,(%rsp)
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007fee644f9674:   data16 xchg %ax,%ax
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007fee644f9677:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop }
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007fee644f967c:   nopl   0x160007ec(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │   │  ↘ │     │ │    │ │ │ │               0x00007fee644f9684:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007fee644f9689:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007fee644f968b:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@302 (line 214)
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007fee644f9690:   nopl   0x17000800(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@302 (line 214)
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │   │    │     │ │    │ ↘ │ │               0x00007fee644f9698:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │    │   │ │               0x00007fee644f969d:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │    │   │ │               0x00007fee644f969f:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │    │   │ │               0x00007fee644f96a4:   nopl   0x18000814(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;   {other}
          │           │ │  │   │    │     │ │    ↘   │ │               0x00007fee644f96ac:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │        │ │               0x00007fee644f96b1:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │        │ │               0x00007fee644f96b3:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@317 (line 214)
          │           │ │  │   │    │     │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │        │ │               0x00007fee644f96b8:   nopl   0x19000828(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@317 (line 214)
          │           │ │  │   │    │     │ │        │ │                                                                         ;   {other}
          │           │ │  │   │    ↘     │ │        │ │               0x00007fee644f96c0:   mov    $0xffffff45,%esi
          │           │ │  │   │          │ │        │ │               0x00007fee644f96c5:   mov    %eax,%ebp
          │           │ │  │   │          │ │        │ │               0x00007fee644f96c7:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │  │   │          │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │          │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
          │           │ │  │   │          │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │          │ │        │ │               0x00007fee644f96cc:   nopl   0x1a00083c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │          │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
          │           │ │  │   │          │ │        │ │                                                                         ;   {other}
          │           │ │  ↘   │          │ │        │ │               0x00007fee644f96d4:   mov    $0xffffff45,%esi
          │           │ │      │          │ │        │ │               0x00007fee644f96d9:   mov    %eax,%ebp
          │           │ │      │          │ │        │ │               0x00007fee644f96db:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
          │           │ │      │          │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │        │ │               0x00007fee644f96e0:   nopl   0x1b000850(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
          │           │ │      │          │ │        │ │                                                                         ;   {other}
          │           │ │      │          │ │        ↘ │               0x00007fee644f96e8:   mov    $0xffffff45,%esi
          │           │ │      │          │ │          │               0x00007fee644f96ed:   mov    %eax,%ebp
          │           │ │      │          │ │          │               0x00007fee644f96ef:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │          │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │          │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
          │           │ │      │          │ │          │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │          │               0x00007fee644f96f4:   nopl   0x1c000864(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
          │           │ │      │          │ │          │                                                                         ;   {other}
          │           │ │      │          │ │          ↘               0x00007fee644f96fc:   mov    $0xffffff45,%esi
          │           │ │      │          │ │                          0x00007fee644f9701:   mov    %eax,%ebp
          │           │ │      │          │ │                          0x00007fee644f9703:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │                                                                                    ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@347 (line 214)
          │           │ │      │          │ │                                                                                    ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │                          0x00007fee644f9708:   nopl   0x1d000878(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@347 (line 214)
          │           │ │      │          │ │                                                                                    ;   {other}
          │           │ │      │          │ ↘                          0x00007fee644f9710:   mov    $0xffffff45,%esi
          │           │ │      │          │                            0x00007fee644f9715:   mov    %eax,%ebp
          │           │ │      │          │                            0x00007fee644f9717:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │      │          │                                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@332 (line 214)
          │           │ │      │          │                                                                                      ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │                            0x00007fee644f971c:   nopl   0x1e00088c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@332 (line 214)
          │           │ │      │          │                                                                                      ;   {other}
          │           │ │      │          ↘                            0x00007fee644f9724:   mov    $0xffffff45,%esi
          │           │ │      │                                       0x00007fee644f9729:   mov    %eax,%ebp
          │           │ │      │                                       0x00007fee644f972b:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │ │      │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@377 (line 214)
          │           │ │      │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │           │ │      │                                       0x00007fee644f9730:   nopl   0x1f0008a0(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@377 (line 214)
          │           │ │      │                                                                                                 ;   {other}
          │           │ ↘      │                                       0x00007fee644f9738:   mov    $0xffffff45,%esi
          │           │        │                                       0x00007fee644f973d:   mov    %eax,%ebp
          │           │        │                                       0x00007fee644f973f:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │           │        │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │        │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
          │           │        │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │           │        │                                       0x00007fee644f9744:   nopl   0x200008b4(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │        │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
          │           │        │                                                                                                 ;   {other}
          │           ↘        │                                       0x00007fee644f974c:   mov    $0xffffff45,%esi
          │                    │                                       0x00007fee644f9751:   mov    %eax,%ebp
          │                    │                                       0x00007fee644f9753:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │                    │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                    │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@362 (line 214)
          │                    │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │                    │                                       0x00007fee644f9758:   nopl   0x210008c8(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@362 (line 214)
          │                    │                                                                                                 ;   {other}
          │                    ↘                                       0x00007fee644f9760:   mov    $0xffffff45,%esi
          │                                                            0x00007fee644f9765:   mov    %eax,%ebp
          │                                                            0x00007fee644f9767:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
          │                                                                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
          │                                                                                                                      ;   {runtime_call UncommonTrapBlob}
          │                                                            0x00007fee644f976c:   nopl   0x220008dc(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
          │                                                                                                                      ;   {other}
   0.32%  │                                                            0x00007fee644f9774:   mov    $0x7,%r10d
          │                                               ╭            0x00007fee644f977a:   jmp    0x00007fee644f97e9
   0.29%  │                                               │            0x00007fee644f977f:   mov    $0x6,%r10d
   0.01%  │                                               │╭           0x00007fee644f9785:   jmp    0x00007fee644f97e9
   0.01%  │                                               ││           0x00007fee644f978a:   mov    $0x5,%r10d
   0.00%  │                                               ││╭          0x00007fee644f9790:   jmp    0x00007fee644f97e9
   0.36%  │                                               │││          0x00007fee644f9795:   mov    $0xb,%r10d
   0.01%  │                                               │││          0x00007fee644f979b:   nopl   0x0(%rax,%rax,1)
          │                                               │││╭         0x00007fee644f97a0:   jmp    0x00007fee644f97e9
   0.00%  │                                               ││││         0x00007fee644f97a5:   mov    $0xa,%r10d
   0.29%  │                                               ││││╭        0x00007fee644f97ab:   jmp    0x00007fee644f97e9
   0.28%  │                                               │││││        0x00007fee644f97b0:   mov    $0x9,%r10d
   0.00%  │                                               │││││╭       0x00007fee644f97b6:   jmp    0x00007fee644f97e9
   0.28%  │                                               ││││││       0x00007fee644f97bb:   mov    $0x8,%r10d
   0.02%  │                                               ││││││╭      0x00007fee644f97c1:   jmp    0x00007fee644f97e9
   0.17%  │                                               │││││││      0x00007fee644f97c3:   mov    $0xc,%r10d
   0.17%  │                                               │││││││╭     0x00007fee644f97c9:   jmp    0x00007fee644f97e9
   0.14%  │                                               ││││││││     0x00007fee644f97cb:   mov    $0x4,%r10d
   0.19%  │                                               ││││││││╭    0x00007fee644f97d1:   jmp    0x00007fee644f97e9
   0.34%  │                                               │││││││││    0x00007fee644f97d3:   mov    $0x3,%r10d
   0.02%  │                                               │││││││││╭   0x00007fee644f97d9:   jmp    0x00007fee644f97e9
   0.16%  │                                               ││││││││││   0x00007fee644f97db:   mov    $0x2,%r10d
          │                                               ││││││││││╭  0x00007fee644f97e1:   jmp    0x00007fee644f97e9
   0.45%  │                                               │││││││││││  0x00007fee644f97e3:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                               │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@723 (line 225)
   2.73%  │                                               ↘↘↘↘↘↘↘↘↘↘↘  0x00007fee644f97e9:   mov    %r10d,%eax
   0.00%  │                                                            0x00007fee644f97ec:   add    $0x20,%rsp
   0.98%  │                                                            0x00007fee644f97f0:   pop    %rbp
   2.99%  │                                                            0x00007fee644f97f1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                                                            0x00007fee644f97f8:   ja     0x00007fee644f9874
   0.25%  │                                                            0x00007fee644f97fe:   ret    
          ↘                                                            0x00007fee644f97ff:   mov    $0xfffffff6,%esi
                                                                       0x00007fee644f9804:   data16 xchg %ax,%ax
                                                                       0x00007fee644f9807:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
                                                                                                                                 ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                                                                 ;   {runtime_call UncommonTrapBlob}
                                                                       0x00007fee644f980c:   nopl   0x2300097c(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
                                                                                                                                 ;   {other}
                                                                       0x00007fee644f9814:   mov    %rax,%rsi
....................................................................................................
  61.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 330 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007fee644e3120:   mov    0x8(%rsi),%r10d
                                0x00007fee644e3124:   movabs $0x7fede3000000,%r11
                                0x00007fee644e312e:   add    %r11,%r10
                                0x00007fee644e3131:   cmp    %r10,%rax
                                0x00007fee644e3134:   jne    0x00007fee63f85080           ;   {runtime_call ic_miss_stub}
                                0x00007fee644e313a:   xchg   %ax,%ax
                                0x00007fee644e313c:   nopl   0x0(%rax)
                              [Verified Entry Point]
   1.80%                        0x00007fee644e3140:   mov    %eax,-0x14000(%rsp)
   3.51%                        0x00007fee644e3147:   push   %rbp
   0.82%                        0x00007fee644e3148:   sub    $0x20,%rsp
   0.96%                        0x00007fee644e314c:   cmpl   $0x1,0x20(%r15)
   1.90%                        0x00007fee644e3154:   jne    0x00007fee644e3306           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   0.87%                        0x00007fee644e315a:   nopw   0x0(%rax,%rax,1)
   0.49%                        0x00007fee644e3160:   cmp    %rdx,%rsi
          ╭                     0x00007fee644e3163:   jne    0x00007fee644e316f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.40%  │                     0x00007fee644e3165:   mov    $0x1,%eax
   1.88%  │╭                    0x00007fee644e316a:   jmp    0x00007fee644e3282
          ↘│                    0x00007fee644e316f:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fee644e32d8
           │                    0x00007fee644e3173:   nopw   0x0(%rax,%rax,1)
           │                    0x00007fee644e317c:   data16 data16 xchg %ax,%ax
           │                    0x00007fee644e3180:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007fee644e3187:   jne    0x00007fee644e32b8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007fee644e318d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007fee644e3192:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007fee644e3196:   cmp    %ebp,%r10d
           │╭                   0x00007fee644e3199:   jne    0x00007fee644e329c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007fee644e319f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007fee644e31a3:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007fee644e31a7:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007fee644e31ac:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007fee644e31b1:   cmp    %r9d,%ecx
           ││╭                  0x00007fee644e31b4:   jne    0x00007fee644e3298           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007fee644e31ba:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007fee644e31be:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007fee644e31c3:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007fee644e31c7:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007fee644e31cc:   test   %ecx,%ecx
           │││╭                 0x00007fee644e31ce:   je     0x00007fee644e3271
           ││││                 0x00007fee644e31d4:   mov    %ecx,%eax
           ││││                 0x00007fee644e31d6:   and    $0x1f,%eax
           ││││                 0x00007fee644e31d9:   and    $0xffffffe0,%ecx
           ││││╭                0x00007fee644e31dc:   je     0x00007fee644e322d
           │││││                0x00007fee644e31e2:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007fee644e31e6:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007fee644e31ea:   neg    %rcx
           │││││ ↗              0x00007fee644e31ed:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007fee644e31f2:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007fee644e31f7:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007fee644e31fb:   vptest %ymm1,%ymm1
           │││││╭│              0x00007fee644e3200:   jne    0x00007fee644e3278
           │││││││              0x00007fee644e3206:   add    $0x20,%rcx
           ││││││╰              0x00007fee644e320a:   jne    0x00007fee644e31ed
           ││││││               0x00007fee644e320c:   test   %eax,%eax
           ││││││ ╭             0x00007fee644e320e:   je     0x00007fee644e3271
           ││││││ │             0x00007fee644e3214:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007fee644e321a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007fee644e3220:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007fee644e3224:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007fee644e3229:   jne    0x00007fee644e3278
           ││││││ ││╭           0x00007fee644e322b:   jmp    0x00007fee644e3271
           ││││↘│ │││           0x00007fee644e322d:   mov    %eax,%ecx
           ││││ │ │││           0x00007fee644e322f:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007fee644e3232:   je     0x00007fee644e324d
           ││││ │ ││││          0x00007fee644e3234:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007fee644e3238:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007fee644e323c:   neg    %rcx
           ││││ │ ││││ ↗        0x00007fee644e323f:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007fee644e3242:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007fee644e3245:   jne    0x00007fee644e3278
           ││││ │ ││││││        0x00007fee644e3247:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007fee644e324b:   jne    0x00007fee644e323f
           ││││ │ │││↘│         0x00007fee644e324d:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007fee644e324f:   je     0x00007fee644e3263
           ││││ │ │││ │ │       0x00007fee644e3251:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007fee644e3254:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007fee644e3257:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007fee644e3259:   jne    0x00007fee644e3278
           ││││ │ │││ │ ││      0x00007fee644e325b:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007fee644e325f:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007fee644e3263:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007fee644e3265:   je     0x00007fee644e3271
           ││││ │ │││ │  ││     0x00007fee644e3267:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007fee644e326a:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007fee644e326d:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007fee644e326f:   jne    0x00007fee644e3278
           │││↘ │ ↘│↘ │  │↘│    0x00007fee644e3271:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007fee644e3276:   jmp    0x00007fee644e327a
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007fee644e3278:   xor    %eax,%eax
           │││              ↘   0x00007fee644e327a:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007fee644e327e:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   0.86%   ↘││               ↗  0x00007fee644e3282:   vzeroupper 
   3.76%    ││               │  0x00007fee644e3285:   add    $0x20,%rsp
   0.48%    ││               │  0x00007fee644e3289:   pop    %rbp
   0.77%    ││               │  0x00007fee644e328a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007fee644e3291:   ja     0x00007fee644e32f0
   2.74%    ││               │  0x00007fee644e3297:   ret    
            │↘               │  0x00007fee644e3298:   xor    %eax,%eax
            │                ╰  0x00007fee644e329a:   jmp    0x00007fee644e3282
            ↘                   0x00007fee644e329c:   mov    $0xffffff45,%esi
                                0x00007fee644e32a1:   mov    %r10d,(%rsp)
                                0x00007fee644e32a5:   data16 xchg %ax,%ax
                                0x00007fee644e32a8:   vzeroupper 
                                0x00007fee644e32ab:   call   0x00007fee63f8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  21.25%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 642 

                 # {method} {0x00007fedd8479428} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007fee644fa620:   mov    0x8(%rsi),%r10d
                 0x00007fee644fa624:   movabs $0x7fede3000000,%r11
                 0x00007fee644fa62e:   add    %r11,%r10
                 0x00007fee644fa631:   cmp    %r10,%rax
                 0x00007fee644fa634:   jne    0x00007fee63f85080           ;   {runtime_call ic_miss_stub}
                 0x00007fee644fa63a:   xchg   %ax,%ax
                 0x00007fee644fa63c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007fee644fa640:   mov    %eax,-0x14000(%rsp)
                 0x00007fee644fa647:   push   %rbp
                 0x00007fee644fa648:   sub    $0x30,%rsp
   0.00%         0x00007fee644fa64c:   cmpl   $0x1,0x20(%r15)
                 0x00007fee644fa654:   jne    0x00007fee644fa74a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007fee644fa65a:   mov    %rsi,%r10
   0.01%         0x00007fee644fa65d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007fee644fa661:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fee644fa721
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.01%         0x00007fee644fa666:   test   %ebx,%ebx
          ╭      0x00007fee644fa668:   jbe    0x00007fee644fa6f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  │      0x00007fee644fa66e:   mov    %ebx,%r11d
          │      0x00007fee644fa671:   dec    %r11d
          │      0x00007fee644fa674:   cmp    %ebx,%r11d
          │╭     0x00007fee644fa677:   jae    0x00007fee644fa6f6
   0.01%  ││     0x00007fee644fa67d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007fee644fa681:   xor    %ebp,%ebp
          ││     0x00007fee644fa683:   xor    %r11d,%r11d
          ││     0x00007fee644fa686:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007fee644fa68b:   mov    %ebx,0x10(%rsp)
          ││     0x00007fee644fa68f:   mov    %r11d,0x14(%rsp)
   0.00%  ││╭    0x00007fee644fa694:   jmp    0x00007fee644fa6a9
          │││    0x00007fee644fa696:   data16 nopw 0x0(%rax,%rax,1)
          │││↗   0x00007fee644fa6a0:   mov    (%rsp),%r8
   0.24%  ││││   0x00007fee644fa6a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   0.85%  ││↘│   0x00007fee644fa6a9:   mov    0x10(%r8,%rbp,4),%r11d
   2.70%  ││ │   0x00007fee644fa6ae:   mov    %r8,(%rsp)
          ││ │   0x00007fee644fa6b2:   mov    %r11,%rdx
   0.23%  ││ │   0x00007fee644fa6b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.87%  ││ │   0x00007fee644fa6b9:   mov    0x8(%rsp),%rsi
   2.62%  ││ │   0x00007fee644fa6be:   nop
          ││ │   0x00007fee644fa6bf:   call   0x00007fee644f91a0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
   1.02%  ││ │   0x00007fee644fa6c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
   2.68%  ││ │   0x00007fee644fa6cc:   mov    0x14(%rsp),%r10d
   0.24%  ││ │   0x00007fee644fa6d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.80%  ││ │   0x00007fee644fa6d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   2.57%  ││ │   0x00007fee644fa6d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007fee644fa6da:   jl     0x00007fee644fa6a0
   0.01%  ││     0x00007fee644fa6dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.01%  ││  ↗  0x00007fee644fa6df:   add    $0x30,%rsp
   0.01%  ││  │  0x00007fee644fa6e3:   pop    %rbp
   0.02%  ││  │  0x00007fee644fa6e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fee644fa6eb:   ja     0x00007fee644fa734
          ││  │  0x00007fee644fa6f1:   ret    
          ↘│  │  0x00007fee644fa6f2:   xor    %eax,%eax
           │  ╰  0x00007fee644fa6f4:   jmp    0x00007fee644fa6df
           ↘     0x00007fee644fa6f6:   mov    $0xffffff76,%esi
                 0x00007fee644fa6fb:   mov    %r10,%rbp
                 0x00007fee644fa6fe:   mov    %ebx,0x4(%rsp)
                 0x00007fee644fa702:   mov    %r9d,0x8(%rsp)
                 0x00007fee644fa707:   call   0x00007fee63f8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  14.90%  <total for region 3>

....[Hottest Regions]...............................................................................
  61.19%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 641 
  21.25%           c2, level 4  java.lang.String::equals, version 2, compile id 330 
  14.90%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 642 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.14%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  native_write_msr 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.96%  <...other 184 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.19%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 641 
  21.25%           c2, level 4  java.lang.String::equals, version 2, compile id 330 
  14.90%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 642 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.14%     [kernel.kallsyms]  refill_obj_stock 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  syscall_exit_to_user_mode 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  native_write_msr 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%     [kernel.kallsyms]  __mod_node_page_state 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.04%     [kernel.kallsyms]  free_unref_page_commit 
   0.96%  <...other 183 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.37%           c2, level 4
   2.34%     [kernel.kallsyms]
   0.15%             libjvm.so
   0.08%             libc.so.6
   0.02%           interpreter
   0.01%        hsdis-amd64.so
   0.01%                [vdso]
   0.00%                      
   0.00%         perf-6042.map
   0.00%      Unknown, level 0
   0.00%       nf_conntrack.ko
   0.00%  ld-linux-x86-64.so.2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:10:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.539 ns/op
# Warmup Iteration   2: 23.300 ns/op
# Warmup Iteration   3: 22.950 ns/op
# Warmup Iteration   4: 22.998 ns/op
# Warmup Iteration   5: 22.374 ns/op
Iteration   1: 22.565 ns/op
Iteration   2: 22.481 ns/op
Iteration   3: 22.570 ns/op
Iteration   4: 22.496 ns/op
Iteration   5: 22.446 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  22.511 ±(99.9%) 0.209 ns/op [Average]
  (min, avg, max) = (22.446, 22.511, 22.570), stdev = 0.054
  CI (99.9%): [22.303, 22.720] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 129028 total address lines.
Perf output processed (skipped 67.709 seconds):
 Column 1: cycles (49671 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 672 

 <region is too big to display, has 1032 lines, but threshold is 1000>
....................................................................................................
  59.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 331 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007f24744e24a0:   mov    0x8(%rsi),%r10d
                                0x00007f24744e24a4:   movabs $0x7f23f3000000,%r11
                                0x00007f24744e24ae:   add    %r11,%r10
                                0x00007f24744e24b1:   cmp    %r10,%rax
                                0x00007f24744e24b4:   jne    0x00007f2473f85080           ;   {runtime_call ic_miss_stub}
                                0x00007f24744e24ba:   xchg   %ax,%ax
                                0x00007f24744e24bc:   nopl   0x0(%rax)
                              [Verified Entry Point]
   2.00%                        0x00007f24744e24c0:   mov    %eax,-0x14000(%rsp)
   5.40%                        0x00007f24744e24c7:   push   %rbp
   1.05%                        0x00007f24744e24c8:   sub    $0x20,%rsp
   0.34%                        0x00007f24744e24cc:   cmpl   $0x0,0x20(%r15)
   2.15%                        0x00007f24744e24d4:   jne    0x00007f24744e2686           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   1.15%                        0x00007f24744e24da:   nopw   0x0(%rax,%rax,1)
   0.12%                        0x00007f24744e24e0:   cmp    %rdx,%rsi
          ╭                     0x00007f24744e24e3:   jne    0x00007f24744e24ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.18%  │                     0x00007f24744e24e5:   mov    $0x1,%eax
   2.26%  │╭                    0x00007f24744e24ea:   jmp    0x00007f24744e2602
          ↘│                    0x00007f24744e24ef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f24744e2658
           │                    0x00007f24744e24f3:   nopw   0x0(%rax,%rax,1)
           │                    0x00007f24744e24fc:   data16 data16 xchg %ax,%ax
           │                    0x00007f24744e2500:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007f24744e2507:   jne    0x00007f24744e2638           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007f24744e250d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007f24744e2512:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007f24744e2516:   cmp    %ebp,%r10d
           │╭                   0x00007f24744e2519:   jne    0x00007f24744e261c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007f24744e251f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007f24744e2523:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007f24744e2527:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007f24744e252c:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007f24744e2531:   cmp    %r9d,%ecx
           ││╭                  0x00007f24744e2534:   jne    0x00007f24744e2618           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007f24744e253a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007f24744e253e:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007f24744e2543:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007f24744e2547:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007f24744e254c:   test   %ecx,%ecx
           │││╭                 0x00007f24744e254e:   je     0x00007f24744e25f1
           ││││                 0x00007f24744e2554:   mov    %ecx,%eax
           ││││                 0x00007f24744e2556:   and    $0x1f,%eax
           ││││                 0x00007f24744e2559:   and    $0xffffffe0,%ecx
           ││││╭                0x00007f24744e255c:   je     0x00007f24744e25ad
           │││││                0x00007f24744e2562:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007f24744e2566:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007f24744e256a:   neg    %rcx
           │││││ ↗              0x00007f24744e256d:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007f24744e2572:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007f24744e2577:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007f24744e257b:   vptest %ymm1,%ymm1
           │││││╭│              0x00007f24744e2580:   jne    0x00007f24744e25f8
           │││││││              0x00007f24744e2586:   add    $0x20,%rcx
           ││││││╰              0x00007f24744e258a:   jne    0x00007f24744e256d
           ││││││               0x00007f24744e258c:   test   %eax,%eax
           ││││││ ╭             0x00007f24744e258e:   je     0x00007f24744e25f1
           ││││││ │             0x00007f24744e2594:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007f24744e259a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007f24744e25a0:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007f24744e25a4:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007f24744e25a9:   jne    0x00007f24744e25f8
           ││││││ ││╭           0x00007f24744e25ab:   jmp    0x00007f24744e25f1
           ││││↘│ │││           0x00007f24744e25ad:   mov    %eax,%ecx
           ││││ │ │││           0x00007f24744e25af:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007f24744e25b2:   je     0x00007f24744e25cd
           ││││ │ ││││          0x00007f24744e25b4:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007f24744e25b8:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007f24744e25bc:   neg    %rcx
           ││││ │ ││││ ↗        0x00007f24744e25bf:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007f24744e25c2:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007f24744e25c5:   jne    0x00007f24744e25f8
           ││││ │ ││││││        0x00007f24744e25c7:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007f24744e25cb:   jne    0x00007f24744e25bf
           ││││ │ │││↘│         0x00007f24744e25cd:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007f24744e25cf:   je     0x00007f24744e25e3
           ││││ │ │││ │ │       0x00007f24744e25d1:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007f24744e25d4:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007f24744e25d7:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007f24744e25d9:   jne    0x00007f24744e25f8
           ││││ │ │││ │ ││      0x00007f24744e25db:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007f24744e25df:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007f24744e25e3:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007f24744e25e5:   je     0x00007f24744e25f1
           ││││ │ │││ │  ││     0x00007f24744e25e7:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007f24744e25ea:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007f24744e25ed:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007f24744e25ef:   jne    0x00007f24744e25f8
           │││↘ │ ↘│↘ │  │↘│    0x00007f24744e25f1:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007f24744e25f6:   jmp    0x00007f24744e25fa
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007f24744e25f8:   xor    %eax,%eax
           │││              ↘   0x00007f24744e25fa:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007f24744e25fe:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   1.10%   ↘││               ↗  0x00007f24744e2602:   vzeroupper 
   3.53%    ││               │  0x00007f24744e2605:   add    $0x20,%rsp
   0.09%    ││               │  0x00007f24744e2609:   pop    %rbp
   0.40%    ││               │  0x00007f24744e260a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007f24744e2611:   ja     0x00007f24744e2670
   3.18%    ││               │  0x00007f24744e2617:   ret    
            │↘               │  0x00007f24744e2618:   xor    %eax,%eax
            │                ╰  0x00007f24744e261a:   jmp    0x00007f24744e2602
            ↘                   0x00007f24744e261c:   mov    $0xffffff45,%esi
                                0x00007f24744e2621:   mov    %r10d,(%rsp)
                                0x00007f24744e2625:   data16 xchg %ax,%ax
                                0x00007f24744e2628:   vzeroupper 
                                0x00007f24744e262b:   call   0x00007f2473f8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  22.95%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 676 

                 # {method} {0x00007f23e8479428} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f24744fb6a0:   mov    0x8(%rsi),%r10d
                 0x00007f24744fb6a4:   movabs $0x7f23f3000000,%r11
                 0x00007f24744fb6ae:   add    %r11,%r10
                 0x00007f24744fb6b1:   cmp    %r10,%rax
                 0x00007f24744fb6b4:   jne    0x00007f2473f85080           ;   {runtime_call ic_miss_stub}
                 0x00007f24744fb6ba:   xchg   %ax,%ax
                 0x00007f24744fb6bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.00%         0x00007f24744fb6c0:   mov    %eax,-0x14000(%rsp)
                 0x00007f24744fb6c7:   push   %rbp
                 0x00007f24744fb6c8:   sub    $0x30,%rsp
   0.00%         0x00007f24744fb6cc:   cmpl   $0x0,0x20(%r15)
                 0x00007f24744fb6d4:   jne    0x00007f24744fb7ca           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007f24744fb6da:   mov    %rsi,%r10
   0.00%         0x00007f24744fb6dd:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007f24744fb6e1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f24744fb7a1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.01%         0x00007f24744fb6e6:   test   %ebx,%ebx
          ╭      0x00007f24744fb6e8:   jbe    0x00007f24744fb772           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          │      0x00007f24744fb6ee:   mov    %ebx,%r11d
          │      0x00007f24744fb6f1:   dec    %r11d
          │      0x00007f24744fb6f4:   cmp    %ebx,%r11d
          │╭     0x00007f24744fb6f7:   jae    0x00007f24744fb776
          ││     0x00007f24744fb6fd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007f24744fb701:   xor    %ebp,%ebp
          ││     0x00007f24744fb703:   xor    %r11d,%r11d
          ││     0x00007f24744fb706:   mov    %rsi,0x8(%rsp)
          ││     0x00007f24744fb70b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f24744fb70f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f24744fb714:   jmp    0x00007f24744fb729
          │││    0x00007f24744fb716:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │││↗   0x00007f24744fb720:   mov    (%rsp),%r8
   0.14%  ││││   0x00007f24744fb724:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   0.52%  ││↘│   0x00007f24744fb729:   mov    0x10(%r8,%rbp,4),%r11d
   3.14%  ││ │   0x00007f24744fb72e:   mov    %r8,(%rsp)
          ││ │   0x00007f24744fb732:   mov    %r11,%rdx
   0.12%  ││ │   0x00007f24744fb735:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   0.47%  ││ │   0x00007f24744fb739:   mov    0x8(%rsp),%rsi
   2.98%  ││ │   0x00007f24744fb73e:   nop
          ││ │   0x00007f24744fb73f:   call   0x00007f2473f85380           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
   0.78%  ││ │   0x00007f24744fb744:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
   2.81%  ││ │   0x00007f24744fb74c:   mov    0x14(%rsp),%r10d
   0.18%  ││ │   0x00007f24744fb751:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   0.51%  ││ │   0x00007f24744fb754:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   2.87%  ││ │   0x00007f24744fb756:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f24744fb75a:   jl     0x00007f24744fb720
   0.01%  ││     0x00007f24744fb75c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  ││  ↗  0x00007f24744fb75f:   add    $0x30,%rsp
   0.01%  ││  │  0x00007f24744fb763:   pop    %rbp
   0.03%  ││  │  0x00007f24744fb764:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f24744fb76b:   ja     0x00007f24744fb7b4
          ││  │  0x00007f24744fb771:   ret    
          ↘│  │  0x00007f24744fb772:   xor    %eax,%eax
           │  ╰  0x00007f24744fb774:   jmp    0x00007f24744fb75f
           ↘     0x00007f24744fb776:   mov    $0xffffff76,%esi
                 0x00007f24744fb77b:   mov    %r10,%rbp
                 0x00007f24744fb77e:   mov    %ebx,0x4(%rsp)
                 0x00007f24744fb782:   mov    %r9d,0x8(%rsp)
                 0x00007f24744fb787:   call   0x00007f2473f8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  14.59%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.40%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 672 
  22.95%           c2, level 4  java.lang.String::equals, version 2, compile id 331 
  14.59%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 676 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_memcg_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.13%  <...other 221 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.40%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 672 
  22.95%           c2, level 4  java.lang.String::equals, version 2, compile id 331 
  14.59%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 676 
   0.31%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.25%     [kernel.kallsyms]  native_read_msr 
   0.18%     [kernel.kallsyms]  __free_one_page 
   0.13%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.10%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  __mod_memcg_state 
   0.08%     [kernel.kallsyms]  __rcu_read_unlock 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.13%  <...other 216 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.96%           c2, level 4
   2.68%     [kernel.kallsyms]
   0.20%             libjvm.so
   0.10%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.01%         perf-6105.map
   0.01%                [vdso]
   0.00%  ld-linux-x86-64.so.2
   0.00%                      
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:08:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.635 ns/op
# Warmup Iteration   2: 12.374 ns/op
# Warmup Iteration   3: 12.167 ns/op
# Warmup Iteration   4: 12.361 ns/op
# Warmup Iteration   5: 12.274 ns/op
Iteration   1: 12.408 ns/op
Iteration   2: 12.273 ns/op
Iteration   3: 12.424 ns/op
Iteration   4: 12.338 ns/op
Iteration   5: 12.475 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  12.383 ±(99.9%) 0.303 ns/op [Average]
  (min, avg, max) = (12.273, 12.383, 12.475), stdev = 0.079
  CI (99.9%): [12.081, 12.686] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 130235 total address lines.
Perf output processed (skipped 67.772 seconds):
 Column 1: cycles (50051 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 660 

                                                                       # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                       #           [sp+0x30]  (sp of caller)
                                                                       0x00007fe8b44fa4e0:   mov    0x8(%rsi),%r10d
                                                                       0x00007fe8b44fa4e4:   movabs $0x7fe833000000,%r11
                                                                       0x00007fe8b44fa4ee:   add    %r11,%r10
                                                                       0x00007fe8b44fa4f1:   cmp    %r10,%rax
                                                                       0x00007fe8b44fa4f4:   jne    0x00007fe8b3f85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007fe8b44fa4fa:   xchg   %ax,%ax
                                                                       0x00007fe8b44fa4fc:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   6.35%                                                               0x00007fe8b44fa500:   mov    %eax,-0x14000(%rsp)
   0.05%                                                               0x00007fe8b44fa507:   push   %rbp
   2.58%                                                               0x00007fe8b44fa508:   sub    $0x20,%rsp
   3.79%                                                               0x00007fe8b44fa50c:   cmpl   $0x0,0x20(%r15)
   0.03%                                                               0x00007fe8b44fa514:   jne    0x00007fe8b44faa8a           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@-1 (line 133)
   2.59%                                                               0x00007fe8b44fa51a:   mov    %rdx,(%rsp)
   3.90%                                                               0x00007fe8b44fa51e:   xchg   %ax,%ax
   0.01%                                                               0x00007fe8b44fa520:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fe8b44faa5c
                                                                                                                                 ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::hashCode@1 (line 2363)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   1.78%                                                               0x00007fe8b44fa523:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::hashCode@24 (line 2365)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   3.21%                                                               0x00007fe8b44fa527:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::isLatin1@7 (line 4817)
                                                                                                                                 ; - java.lang.String::hashCode@17 (line 2365)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   3.16%                                                               0x00007fe8b44fa52b:   test   %eax,%eax
          ╭                                                            0x00007fe8b44fa52d:   je     0x00007fe8b44fa7b0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.59%  │                                                            0x00007fe8b44fa533:   cmp    $0x462300d,%eax
          │╭                                                           0x00007fe8b44fa538:   je     0x00007fe8b44fa80b           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@37 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   1.20%  ││                                       ↗                ↗  0x00007fe8b44fa53e:   xchg   %ax,%ax
   2.38%  ││                                       │                │  0x00007fe8b44fa540:   cmp    $0x9ef434af,%eax
          ││╭                                      │                │  0x00007fe8b44fa545:   jne    0x00007fe8b44fa665           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                      │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.21%  │││                                      │                │  0x00007fe8b44fa54b:   movabs $0x7ff035280,%r10            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.00%  │││                                      │                │  0x00007fe8b44fa555:   mov    (%rsp),%r8
   0.00%  │││                                      │                │  0x00007fe8b44fa559:   cmp    %r10,%r8
   1.97%  │││                                      │                │  0x00007fe8b44fa55c:   nopl   0x0(%rax)
   0.23%  │││╭                                     │                │  0x00007fe8b44fa560:   je     0x00007fe8b44fa657           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@2 (line 1858)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││││                                     │                │  0x00007fe8b44fa566:   test   %ebp,%ebp
          ││││                                     │                │  0x00007fe8b44fa568:   jne    0x00007fe8b44faa34           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@33 (line 1861)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││││                                     │                │  0x00007fe8b44fa56e:   mov    0xc(%r12,%r11,8),%r10d
          ││││                                     │                │  0x00007fe8b44fa573:   cmp    $0x10,%r10d
          ││││                                     │                │  0x00007fe8b44fa577:   jne    0x00007fe8b44fa9c8           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││││                                     │                │  0x00007fe8b44fa57d:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││││                                     │                │  0x00007fe8b44fa581:   lea    0x10(%r12,%r11,8),%rdi
          ││││                                     │                │  0x00007fe8b44fa586:   mov    $0x10,%ecx
          ││││                                     │                │  0x00007fe8b44fa58b:   movabs $0x7ff035298,%rsi            ;   {oop([B{0x00000007ff035298})}
          ││││                                     │                │  0x00007fe8b44fa595:   add    $0x10,%rsi
          ││││                                     │                │  0x00007fe8b44fa599:   test   %ecx,%ecx
          ││││╭                                    │                │  0x00007fe8b44fa59b:   je     0x00007fe8b44fa63e
          │││││                                    │                │  0x00007fe8b44fa5a1:   mov    %ecx,%eax
          │││││                                    │                │  0x00007fe8b44fa5a3:   and    $0x1f,%eax
          │││││                                    │                │  0x00007fe8b44fa5a6:   and    $0xffffffe0,%ecx
          │││││╭                                   │                │  0x00007fe8b44fa5a9:   je     0x00007fe8b44fa5fa
          ││││││                                   │                │  0x00007fe8b44fa5af:   lea    (%rdi,%rcx,1),%rdi
          ││││││                                   │                │  0x00007fe8b44fa5b3:   lea    (%rsi,%rcx,1),%rsi
          ││││││                                   │                │  0x00007fe8b44fa5b7:   neg    %rcx
          ││││││ ↗                                 │                │  0x00007fe8b44fa5ba:   vmovdqu (%rdi,%rcx,1),%ymm0
          ││││││ │                                 │                │  0x00007fe8b44fa5bf:   vmovdqu (%rsi,%rcx,1),%ymm1
          ││││││ │                                 │                │  0x00007fe8b44fa5c4:   vpxor  %ymm1,%ymm0,%ymm0
          ││││││ │                                 │                │  0x00007fe8b44fa5c8:   vptest %ymm0,%ymm0
          ││││││╭│                                 │                │  0x00007fe8b44fa5cd:   jne    0x00007fe8b44fa645
          ││││││││                                 │                │  0x00007fe8b44fa5d3:   add    $0x20,%rcx
          │││││││╰                                 │                │  0x00007fe8b44fa5d7:   jne    0x00007fe8b44fa5ba
          │││││││                                  │                │  0x00007fe8b44fa5d9:   test   %eax,%eax
          │││││││ ╭                                │                │  0x00007fe8b44fa5db:   je     0x00007fe8b44fa63e
          │││││││ │                                │                │  0x00007fe8b44fa5e1:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          │││││││ │                                │                │  0x00007fe8b44fa5e7:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          │││││││ │                                │                │  0x00007fe8b44fa5ed:   vpxor  %ymm1,%ymm0,%ymm0
          │││││││ │                                │                │  0x00007fe8b44fa5f1:   vptest %ymm0,%ymm0
          │││││││ │╭                               │                │  0x00007fe8b44fa5f6:   jne    0x00007fe8b44fa645
          │││││││ ││╭                              │                │  0x00007fe8b44fa5f8:   jmp    0x00007fe8b44fa63e
          │││││↘│ │││                              │                │  0x00007fe8b44fa5fa:   mov    %eax,%ecx
          │││││ │ │││                              │                │  0x00007fe8b44fa5fc:   and    $0xfffffffc,%ecx
          │││││ │ │││╭                             │                │  0x00007fe8b44fa5ff:   je     0x00007fe8b44fa61a
          │││││ │ ││││                             │                │  0x00007fe8b44fa601:   lea    (%rdi,%rcx,1),%rdi
          │││││ │ ││││                             │                │  0x00007fe8b44fa605:   lea    (%rsi,%rcx,1),%rsi
          │││││ │ ││││                             │                │  0x00007fe8b44fa609:   neg    %rcx
          │││││ │ ││││ ↗                           │                │  0x00007fe8b44fa60c:   mov    (%rdi,%rcx,1),%ebx
          │││││ │ ││││ │                           │                │  0x00007fe8b44fa60f:   cmp    (%rsi,%rcx,1),%ebx
          │││││ │ ││││╭│                           │                │  0x00007fe8b44fa612:   jne    0x00007fe8b44fa645
          │││││ │ ││││││                           │                │  0x00007fe8b44fa614:   add    $0x4,%rcx
          │││││ │ │││││╰                           │                │  0x00007fe8b44fa618:   jne    0x00007fe8b44fa60c
          │││││ │ │││↘│                            │                │  0x00007fe8b44fa61a:   test   $0x2,%al
          │││││ │ │││ │ ╭                          │                │  0x00007fe8b44fa61c:   je     0x00007fe8b44fa630
          │││││ │ │││ │ │                          │                │  0x00007fe8b44fa61e:   movzwl (%rdi),%ebx
          │││││ │ │││ │ │                          │                │  0x00007fe8b44fa621:   movzwl (%rsi),%ecx
          │││││ │ │││ │ │                          │                │  0x00007fe8b44fa624:   cmp    %ecx,%ebx
          │││││ │ │││ │ │╭                         │                │  0x00007fe8b44fa626:   jne    0x00007fe8b44fa645
          │││││ │ │││ │ ││                         │                │  0x00007fe8b44fa628:   lea    0x2(%rdi),%rdi
          │││││ │ │││ │ ││                         │                │  0x00007fe8b44fa62c:   lea    0x2(%rsi),%rsi
          │││││ │ │││ │ ↘│                         │                │  0x00007fe8b44fa630:   test   $0x1,%al
          │││││ │ │││ │  │╭                        │                │  0x00007fe8b44fa632:   je     0x00007fe8b44fa63e
          │││││ │ │││ │  ││                        │                │  0x00007fe8b44fa634:   movzbl (%rdi),%ebx
          │││││ │ │││ │  ││                        │                │  0x00007fe8b44fa637:   movzbl (%rsi),%ecx
          │││││ │ │││ │  ││                        │                │  0x00007fe8b44fa63a:   cmp    %ecx,%ebx
          │││││ │ │││ │  ││╭                       │                │  0x00007fe8b44fa63c:   jne    0x00007fe8b44fa645
          ││││↘ │ ↘│↘ │  │↘│                       │                │  0x00007fe8b44fa63e:   mov    $0x1,%eax
          ││││  │  │  │  │ │╭                      │                │  0x00007fe8b44fa643:   jmp    0x00007fe8b44fa647
          ││││  ↘  ↘  ↘  ↘ ↘│                      │                │  0x00007fe8b44fa645:   xor    %eax,%eax
          ││││              ↘                      │                │  0x00007fe8b44fa647:   vpxor  %ymm0,%ymm0,%ymm0
          ││││                                     │                │  0x00007fe8b44fa64b:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││││                                     │                │  0x00007fe8b44fa64f:   test   %eax,%eax
          ││││                                     │                │  0x00007fe8b44fa651:   je     0x00007fe8b44fa9cd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                     │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
   0.02%  │││↘                                     │                │  0x00007fe8b44fa657:   mov    $0x2,%r10d
   0.00%  │││                                      │                │  0x00007fe8b44fa65d:   data16 xchg %ax,%ax
   2.02%  │││                ╭                     │                │  0x00007fe8b44fa660:   jmp    0x00007fe8b44fa78c
   0.46%  ││↘                │                     │                │  0x00007fe8b44fa665:   cmp    $0x23c6acdf,%eax
          ││                 │╭                    │                │  0x00007fe8b44fa66a:   jne    0x00007fe8b44fa939           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                 ││                    │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.93%  ││                 ││                    │                │  0x00007fe8b44fa670:   movabs $0x7ff035250,%r10            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
   0.76%  ││                 ││                    │                │  0x00007fe8b44fa67a:   mov    (%rsp),%r8
   0.42%  ││                 ││                    │                │  0x00007fe8b44fa67e:   xchg   %ax,%ax
   0.06%  ││                 ││                    │                │  0x00007fe8b44fa680:   cmp    %r10,%r8
          ││                 ││╭                   │                │  0x00007fe8b44fa683:   je     0x00007fe8b44fa786           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@2 (line 1858)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││                 │││                   │                │  0x00007fe8b44fa689:   test   %ebp,%ebp
          ││                 │││                   │                │  0x00007fe8b44fa68b:   jne    0x00007fe8b44fa9b0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@33 (line 1861)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││                 │││                   │                │  0x00007fe8b44fa691:   mov    0xc(%r12,%r11,8),%r10d
          ││                 │││                   │                │  0x00007fe8b44fa696:   cmp    $0x7,%r10d
          ││                 │││                   │                │  0x00007fe8b44fa69a:   nopw   0x0(%rax,%rax,1)
          ││                 │││                   │                │  0x00007fe8b44fa6a0:   jne    0x00007fe8b44fa970           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││                 │││                   │                │  0x00007fe8b44fa6a6:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││                 │││                   │                │  0x00007fe8b44fa6aa:   lea    0x10(%r12,%r11,8),%rdi
          ││                 │││                   │                │  0x00007fe8b44fa6af:   mov    $0x7,%ecx
          ││                 │││                   │                │  0x00007fe8b44fa6b4:   movabs $0x7ff035268,%rsi            ;   {oop([B{0x00000007ff035268})}
          ││                 │││                   │                │  0x00007fe8b44fa6be:   add    $0x10,%rsi
          ││                 │││                   │                │  0x00007fe8b44fa6c2:   test   %ecx,%ecx
          ││                 │││╭                  │                │  0x00007fe8b44fa6c4:   je     0x00007fe8b44fa767
          ││                 ││││                  │                │  0x00007fe8b44fa6ca:   mov    %ecx,%eax
          ││                 ││││                  │                │  0x00007fe8b44fa6cc:   and    $0x1f,%eax
          ││                 ││││                  │                │  0x00007fe8b44fa6cf:   and    $0xffffffe0,%ecx
          ││                 ││││╭                 │                │  0x00007fe8b44fa6d2:   je     0x00007fe8b44fa723
          ││                 │││││                 │                │  0x00007fe8b44fa6d8:   lea    (%rdi,%rcx,1),%rdi
          ││                 │││││                 │                │  0x00007fe8b44fa6dc:   lea    (%rsi,%rcx,1),%rsi
          ││                 │││││                 │                │  0x00007fe8b44fa6e0:   neg    %rcx
          ││                 │││││ ↗               │                │  0x00007fe8b44fa6e3:   vmovdqu (%rdi,%rcx,1),%ymm1
          ││                 │││││ │               │                │  0x00007fe8b44fa6e8:   vmovdqu (%rsi,%rcx,1),%ymm0
          ││                 │││││ │               │                │  0x00007fe8b44fa6ed:   vpxor  %ymm0,%ymm1,%ymm1
          ││                 │││││ │               │                │  0x00007fe8b44fa6f1:   vptest %ymm1,%ymm1
          ││                 │││││╭│               │                │  0x00007fe8b44fa6f6:   jne    0x00007fe8b44fa76e
          ││                 │││││││               │                │  0x00007fe8b44fa6fc:   add    $0x20,%rcx
          ││                 ││││││╰               │                │  0x00007fe8b44fa700:   jne    0x00007fe8b44fa6e3
          ││                 ││││││                │                │  0x00007fe8b44fa702:   test   %eax,%eax
          ││                 ││││││ ╭              │                │  0x00007fe8b44fa704:   je     0x00007fe8b44fa767
          ││                 ││││││ │              │                │  0x00007fe8b44fa70a:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││                 ││││││ │              │                │  0x00007fe8b44fa710:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││                 ││││││ │              │                │  0x00007fe8b44fa716:   vpxor  %ymm0,%ymm1,%ymm1
          ││                 ││││││ │              │                │  0x00007fe8b44fa71a:   vptest %ymm1,%ymm1
          ││                 ││││││ │╭             │                │  0x00007fe8b44fa71f:   jne    0x00007fe8b44fa76e
          ││                 ││││││ ││╭            │                │  0x00007fe8b44fa721:   jmp    0x00007fe8b44fa767
          ││                 ││││↘│ │││            │                │  0x00007fe8b44fa723:   mov    %eax,%ecx
          ││                 ││││ │ │││            │                │  0x00007fe8b44fa725:   and    $0xfffffffc,%ecx
          ││                 ││││ │ │││╭           │                │  0x00007fe8b44fa728:   je     0x00007fe8b44fa743
          ││                 ││││ │ ││││           │                │  0x00007fe8b44fa72a:   lea    (%rdi,%rcx,1),%rdi
          ││                 ││││ │ ││││           │                │  0x00007fe8b44fa72e:   lea    (%rsi,%rcx,1),%rsi
          ││                 ││││ │ ││││           │                │  0x00007fe8b44fa732:   neg    %rcx
          ││                 ││││ │ ││││ ↗         │                │  0x00007fe8b44fa735:   mov    (%rdi,%rcx,1),%ebx
          ││                 ││││ │ ││││ │         │                │  0x00007fe8b44fa738:   cmp    (%rsi,%rcx,1),%ebx
          ││                 ││││ │ ││││╭│         │                │  0x00007fe8b44fa73b:   jne    0x00007fe8b44fa76e
          ││                 ││││ │ ││││││         │                │  0x00007fe8b44fa73d:   add    $0x4,%rcx
          ││                 ││││ │ │││││╰         │                │  0x00007fe8b44fa741:   jne    0x00007fe8b44fa735
          ││                 ││││ │ │││↘│          │                │  0x00007fe8b44fa743:   test   $0x2,%al
          ││                 ││││ │ │││ │ ╭        │                │  0x00007fe8b44fa745:   je     0x00007fe8b44fa759
          ││                 ││││ │ │││ │ │        │                │  0x00007fe8b44fa747:   movzwl (%rdi),%ebx
          ││                 ││││ │ │││ │ │        │                │  0x00007fe8b44fa74a:   movzwl (%rsi),%ecx
          ││                 ││││ │ │││ │ │        │                │  0x00007fe8b44fa74d:   cmp    %ecx,%ebx
          ││                 ││││ │ │││ │ │╭       │                │  0x00007fe8b44fa74f:   jne    0x00007fe8b44fa76e
          ││                 ││││ │ │││ │ ││       │                │  0x00007fe8b44fa751:   lea    0x2(%rdi),%rdi
          ││                 ││││ │ │││ │ ││       │                │  0x00007fe8b44fa755:   lea    0x2(%rsi),%rsi
          ││                 ││││ │ │││ │ ↘│       │                │  0x00007fe8b44fa759:   test   $0x1,%al
          ││                 ││││ │ │││ │  │╭      │                │  0x00007fe8b44fa75b:   je     0x00007fe8b44fa767
          ││                 ││││ │ │││ │  ││      │                │  0x00007fe8b44fa75d:   movzbl (%rdi),%ebx
          ││                 ││││ │ │││ │  ││      │                │  0x00007fe8b44fa760:   movzbl (%rsi),%ecx
          ││                 ││││ │ │││ │  ││      │                │  0x00007fe8b44fa763:   cmp    %ecx,%ebx
          ││                 ││││ │ │││ │  ││╭     │                │  0x00007fe8b44fa765:   jne    0x00007fe8b44fa76e
          ││                 │││↘ │ ↘│↘ │  │↘│     │                │  0x00007fe8b44fa767:   mov    $0x1,%eax
          ││                 │││  │  │  │  │ │╭    │                │  0x00007fe8b44fa76c:   jmp    0x00007fe8b44fa770
          ││                 │││  ↘  ↘  ↘  ↘ ↘│    │                │  0x00007fe8b44fa76e:   xor    %eax,%eax
          ││                 │││              ↘    │                │  0x00007fe8b44fa770:   vpxor  %ymm1,%ymm1,%ymm1
          ││                 │││                   │                │  0x00007fe8b44fa774:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          ││                 │││                   │                │  0x00007fe8b44fa778:   test   %eax,%eax
          ││                 │││                   │                │  0x00007fe8b44fa77a:   nopw   0x0(%rax,%rax,1)
          ││                 │││                   │                │  0x00007fe8b44fa780:   je     0x00007fe8b44fa975           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                 │││                   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
   0.95%  ││                 ││↘                   │                │  0x00007fe8b44fa786:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                 ││                    │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@224 (line 135)
   0.86%  ││                 ↘│                    │                │  0x00007fe8b44fa78c:   cmp    $0x1,%r10d
          ││                  │                ╭   │                │  0x00007fe8b44fa790:   je     0x00007fe8b44fa7a6
   0.00%  ││                  │                │   │                │  0x00007fe8b44fa792:   cmp    $0x2,%r10d
          ││                  │                │   │                │  0x00007fe8b44fa796:   jne    0x00007fe8b44fa958           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                  │                │   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
   0.00%  ││                  │                │   │                │  0x00007fe8b44fa79c:   mov    $0x3,%eax
   2.01%  ││                  │                │╭  │                │  0x00007fe8b44fa7a1:   jmp    0x00007fe8b44fa91c
   1.43%  ││                  │                ↘│  │                │  0x00007fe8b44fa7a6:   mov    $0x2,%eax
          ││                  │                 │╭ │                │  0x00007fe8b44fa7ab:   jmp    0x00007fe8b44fa91c
          ↘│                  │                 ││ │                │  0x00007fe8b44fa7b0:   movzbl 0x11(%rdx),%r8d              ;   {no_reloc}
           │                  │                 ││ │                │  0x00007fe8b44fa7b5:   test   %r8d,%r8d
           │                  │                 ││╭│                │  0x00007fe8b44fa7b8:   jne    0x00007fe8b44fa932           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@13 (line 2364)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7be:   xchg   %ax,%ax
           │                  │                 ││││                │  0x00007fe8b44fa7c0:   test   %ebp,%ebp
           │                  │                 ││││                │  0x00007fe8b44fa7c2:   jne    0x00007fe8b44faa00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::isLatin1@10 (line 4817)
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@17 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7c8:   mov    %r11,%rsi
           │                  │                 ││││                │  0x00007fe8b44fa7cb:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@24 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7cf:   mov    %rdx,%rbp
           │                  │                 ││││                │  0x00007fe8b44fa7d2:   xchg   %ax,%ax
           │                  │                 ││││                │  0x00007fe8b44fa7d4:   vzeroupper 
           │                  │                 ││││                │  0x00007fe8b44fa7d7:   call   0x00007fe8b3f85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
           │                  │                 ││││                │                                                            ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@27 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │                                                            ;   {static_call}
           │                  │                 ││││                │  0x00007fe8b44fa7dc:   nopl   0x4cc(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@27 (line 2365)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │                                                            ;   {other}
           │                  │                 ││││                │  0x00007fe8b44fa7e4:   test   %eax,%eax
           │                  │                 ││││                │  0x00007fe8b44fa7e6:   je     0x00007fe8b44faa18           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@42 (line 2367)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7ec:   mov    %eax,0xc(%rbp)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::hashCode@55 (line 2370)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7ef:   mov    0x14(%rbp),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::equals@37 (line 1861)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7f3:   movsbl 0x10(%rbp),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 ││││                │                                                            ; - java.lang.String::equals@26 (line 1861)
           │                  │                 ││││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           │                  │                 ││││                │  0x00007fe8b44fa7f7:   nopw   0x0(%rax,%rax,1)
           │                  │                 ││││                │  0x00007fe8b44fa800:   cmp    $0x462300d,%eax
           │                  │                 │││╰                │  0x00007fe8b44fa805:   jne    0x00007fe8b44fa53e           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                  │                 │││                 │                                                            ; - java.lang.String::equals@37 (line 1861)
           │                  │                 │││                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   1.11%   ↘                  │                 │││                 │  0x00007fe8b44fa80b:   movabs $0x7ff035220,%r10            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
   0.28%                      │                 │││                 │  0x00007fe8b44fa815:   mov    (%rsp),%r8
   0.44%                      │                 │││                 │  0x00007fe8b44fa819:   cmp    %r10,%r8
   1.03%                      │                 │││                 │  0x00007fe8b44fa81c:   nopl   0x0(%rax)
   0.30%                      │                 │││ ╭               │  0x00007fe8b44fa820:   je     0x00007fe8b44fa917           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@2 (line 1858)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                              │                 │││ │               │  0x00007fe8b44fa826:   test   %ebp,%ebp
                              │                 │││ │               │  0x00007fe8b44fa828:   jne    0x00007fe8b44fa9e8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@33 (line 1861)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                              │                 │││ │               │  0x00007fe8b44fa82e:   mov    0xc(%r12,%r11,8),%r8d
                              │                 │││ │               │  0x00007fe8b44fa833:   cmp    $0x5,%r8d
                              │                 │││ │               │  0x00007fe8b44fa837:   jne    0x00007fe8b44fa990           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@44 (line 1863)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                              │                 │││ │               │  0x00007fe8b44fa83d:   lea    (%r12,%r11,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@37 (line 1861)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
                              │                 │││ │               │  0x00007fe8b44fa841:   lea    0x10(%r12,%r11,8),%rdi
                              │                 │││ │               │  0x00007fe8b44fa846:   mov    $0x5,%ecx
                              │                 │││ │               │  0x00007fe8b44fa84b:   movabs $0x7ff035238,%rsi            ;   {oop([B{0x00000007ff035238})}
                              │                 │││ │               │  0x00007fe8b44fa855:   add    $0x10,%rsi
                              │                 │││ │               │  0x00007fe8b44fa859:   test   %ecx,%ecx
                              │                 │││ │╭              │  0x00007fe8b44fa85b:   je     0x00007fe8b44fa8fe
                              │                 │││ ││              │  0x00007fe8b44fa861:   mov    %ecx,%eax
                              │                 │││ ││              │  0x00007fe8b44fa863:   and    $0x1f,%eax
                              │                 │││ ││              │  0x00007fe8b44fa866:   and    $0xffffffe0,%ecx
                              │                 │││ ││╭             │  0x00007fe8b44fa869:   je     0x00007fe8b44fa8ba
                              │                 │││ │││             │  0x00007fe8b44fa86f:   lea    (%rdi,%rcx,1),%rdi
                              │                 │││ │││             │  0x00007fe8b44fa873:   lea    (%rsi,%rcx,1),%rsi
                              │                 │││ │││             │  0x00007fe8b44fa877:   neg    %rcx
                              │                 │││ │││ ↗           │  0x00007fe8b44fa87a:   vmovdqu (%rdi,%rcx,1),%ymm1
                              │                 │││ │││ │           │  0x00007fe8b44fa87f:   vmovdqu (%rsi,%rcx,1),%ymm0
                              │                 │││ │││ │           │  0x00007fe8b44fa884:   vpxor  %ymm0,%ymm1,%ymm1
                              │                 │││ │││ │           │  0x00007fe8b44fa888:   vptest %ymm1,%ymm1
                              │                 │││ │││╭│           │  0x00007fe8b44fa88d:   jne    0x00007fe8b44fa905
                              │                 │││ │││││           │  0x00007fe8b44fa893:   add    $0x20,%rcx
                              │                 │││ ││││╰           │  0x00007fe8b44fa897:   jne    0x00007fe8b44fa87a
                              │                 │││ ││││            │  0x00007fe8b44fa899:   test   %eax,%eax
                              │                 │││ ││││ ╭          │  0x00007fe8b44fa89b:   je     0x00007fe8b44fa8fe
                              │                 │││ ││││ │          │  0x00007fe8b44fa8a1:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
                              │                 │││ ││││ │          │  0x00007fe8b44fa8a7:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
                              │                 │││ ││││ │          │  0x00007fe8b44fa8ad:   vpxor  %ymm0,%ymm1,%ymm1
                              │                 │││ ││││ │          │  0x00007fe8b44fa8b1:   vptest %ymm1,%ymm1
                              │                 │││ ││││ │╭         │  0x00007fe8b44fa8b6:   jne    0x00007fe8b44fa905
                              │                 │││ ││││ ││╭        │  0x00007fe8b44fa8b8:   jmp    0x00007fe8b44fa8fe
                              │                 │││ ││↘│ │││        │  0x00007fe8b44fa8ba:   mov    %eax,%ecx
                              │                 │││ ││ │ │││        │  0x00007fe8b44fa8bc:   and    $0xfffffffc,%ecx
                              │                 │││ ││ │ │││╭       │  0x00007fe8b44fa8bf:   je     0x00007fe8b44fa8da
                              │                 │││ ││ │ ││││       │  0x00007fe8b44fa8c1:   lea    (%rdi,%rcx,1),%rdi
                              │                 │││ ││ │ ││││       │  0x00007fe8b44fa8c5:   lea    (%rsi,%rcx,1),%rsi
                              │                 │││ ││ │ ││││       │  0x00007fe8b44fa8c9:   neg    %rcx
                              │                 │││ ││ │ ││││ ↗     │  0x00007fe8b44fa8cc:   mov    (%rdi,%rcx,1),%ebx
                              │                 │││ ││ │ ││││ │     │  0x00007fe8b44fa8cf:   cmp    (%rsi,%rcx,1),%ebx
                              │                 │││ ││ │ ││││╭│     │  0x00007fe8b44fa8d2:   jne    0x00007fe8b44fa905
                              │                 │││ ││ │ ││││││     │  0x00007fe8b44fa8d4:   add    $0x4,%rcx
                              │                 │││ ││ │ │││││╰     │  0x00007fe8b44fa8d8:   jne    0x00007fe8b44fa8cc
                              │                 │││ ││ │ │││↘│      │  0x00007fe8b44fa8da:   test   $0x2,%al
                              │                 │││ ││ │ │││ │ ╭    │  0x00007fe8b44fa8dc:   je     0x00007fe8b44fa8f0
                              │                 │││ ││ │ │││ │ │    │  0x00007fe8b44fa8de:   movzwl (%rdi),%ebx
                              │                 │││ ││ │ │││ │ │    │  0x00007fe8b44fa8e1:   movzwl (%rsi),%ecx
                              │                 │││ ││ │ │││ │ │    │  0x00007fe8b44fa8e4:   cmp    %ecx,%ebx
                              │                 │││ ││ │ │││ │ │╭   │  0x00007fe8b44fa8e6:   jne    0x00007fe8b44fa905
                              │                 │││ ││ │ │││ │ ││   │  0x00007fe8b44fa8e8:   lea    0x2(%rdi),%rdi
                              │                 │││ ││ │ │││ │ ││   │  0x00007fe8b44fa8ec:   lea    0x2(%rsi),%rsi
                              │                 │││ ││ │ │││ │ ↘│   │  0x00007fe8b44fa8f0:   test   $0x1,%al
                              │                 │││ ││ │ │││ │  │╭  │  0x00007fe8b44fa8f2:   je     0x00007fe8b44fa8fe
                              │                 │││ ││ │ │││ │  ││  │  0x00007fe8b44fa8f4:   movzbl (%rdi),%ebx
                              │                 │││ ││ │ │││ │  ││  │  0x00007fe8b44fa8f7:   movzbl (%rsi),%ecx
                              │                 │││ ││ │ │││ │  ││  │  0x00007fe8b44fa8fa:   cmp    %ecx,%ebx
                              │                 │││ ││ │ │││ │  ││╭ │  0x00007fe8b44fa8fc:   jne    0x00007fe8b44fa905
                              │                 │││ │↘ │ ↘│↘ │  │↘│ │  0x00007fe8b44fa8fe:   mov    $0x1,%eax
                              │                 │││ │  │  │  │  │ │╭│  0x00007fe8b44fa903:   jmp    0x00007fe8b44fa907
                              │                 │││ │  ↘  ↘  ↘  ↘ ↘││  0x00007fe8b44fa905:   xor    %eax,%eax
                              │                 │││ │              ↘│  0x00007fe8b44fa907:   vpxor  %ymm1,%ymm1,%ymm1
                              │                 │││ │               │  0x00007fe8b44fa90b:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - java.lang.String::equals@44 (line 1863)
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                              │                 │││ │               │  0x00007fe8b44fa90f:   test   %eax,%eax
                              │                 │││ │               │  0x00007fe8b44fa911:   je     0x00007fe8b44fa995           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
   1.40%                      │                 │││ ↘               │  0x00007fe8b44fa917:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                              │                 │││                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@707 (line 141)
   2.77%                      │                 ↘↘│                 │  0x00007fe8b44fa91c:   vzeroupper 
   6.58%                      │                   │                 │  0x00007fe8b44fa91f:   add    $0x20,%rsp
   0.08%                      │                   │                 │  0x00007fe8b44fa923:   pop    %rbp
   0.61%                      │                   │                 │  0x00007fe8b44fa924:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                              │                   │                 │  0x00007fe8b44fa92b:   ja     0x00007fe8b44faa74
   6.10%                      │                   │                 │  0x00007fe8b44fa931:   ret    
                              │                   ↘                 │  0x00007fe8b44fa932:   xor    %eax,%eax
                              │                                     ╰  0x00007fe8b44fa934:   jmp    0x00007fe8b44fa53e           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                              │                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                              ↘                                        0x00007fe8b44fa939:   mov    $0xffffff45,%esi
                                                                       0x00007fe8b44fa93e:   mov    (%rsp),%rbp
                                                                       0x00007fe8b44fa942:   mov    %eax,(%rsp)
                                                                       0x00007fe8b44fa945:   data16 xchg %ax,%ax
                                                                       0x00007fe8b44fa948:   vzeroupper 
                                                                       0x00007fe8b44fa94b:   call   0x00007fe8b3f8af00           ; ImmutableOopMap {rbp=Oop }
                                                                                                                                 ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  64.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 665 

                 # {method} {0x00007fe8284792e8} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007fe8b44fb920:   mov    0x8(%rsi),%r10d
                 0x00007fe8b44fb924:   movabs $0x7fe833000000,%r11
                 0x00007fe8b44fb92e:   add    %r11,%r10
                 0x00007fe8b44fb931:   cmp    %r10,%rax
                 0x00007fe8b44fb934:   jne    0x00007fe8b3f85080           ;   {runtime_call ic_miss_stub}
                 0x00007fe8b44fb93a:   xchg   %ax,%ax
                 0x00007fe8b44fb93c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007fe8b44fb940:   mov    %eax,-0x14000(%rsp)
                 0x00007fe8b44fb947:   push   %rbp
                 0x00007fe8b44fb948:   sub    $0x30,%rsp
   0.01%         0x00007fe8b44fb94c:   cmpl   $0x0,0x20(%r15)
                 0x00007fe8b44fb954:   jne    0x00007fe8b44fba4a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@-1 (line 103)
                 0x00007fe8b44fb95a:   mov    %rsi,%r10
   0.01%         0x00007fe8b44fb95d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                 0x00007fe8b44fb961:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fe8b44fba21
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
   0.02%         0x00007fe8b44fb966:   test   %ebx,%ebx
          ╭      0x00007fe8b44fb968:   jbe    0x00007fe8b44fb9f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.00%  │      0x00007fe8b44fb96e:   mov    %ebx,%r11d
          │      0x00007fe8b44fb971:   dec    %r11d
          │      0x00007fe8b44fb974:   cmp    %ebx,%r11d
          │╭     0x00007fe8b44fb977:   jae    0x00007fe8b44fb9f6
   0.00%  ││     0x00007fe8b44fb97d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          ││     0x00007fe8b44fb981:   xor    %ebp,%ebp
          ││     0x00007fe8b44fb983:   xor    %r11d,%r11d
          ││     0x00007fe8b44fb986:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007fe8b44fb98b:   mov    %ebx,0x10(%rsp)
          ││     0x00007fe8b44fb98f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007fe8b44fb994:   jmp    0x00007fe8b44fb9a9
          │││    0x00007fe8b44fb996:   data16 nopw 0x0(%rax,%rax,1)
   0.05%  │││↗   0x00007fe8b44fb9a0:   mov    (%rsp),%r8
   2.60%  ││││   0x00007fe8b44fb9a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   3.74%  ││↘│   0x00007fe8b44fb9a9:   mov    0x10(%r8,%rbp,4),%r11d
   0.13%  ││ │   0x00007fe8b44fb9ae:   mov    %r8,(%rsp)
   0.04%  ││ │   0x00007fe8b44fb9b2:   mov    %r11,%rdx
   2.51%  ││ │   0x00007fe8b44fb9b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   3.91%  ││ │   0x00007fe8b44fb9b9:   mov    0x8(%rsp),%rsi
   0.01%  ││ │   0x00007fe8b44fb9be:   nop
   0.04%  ││ │   0x00007fe8b44fb9bf:   call   0x00007fe8b3f85380           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {optimized virtual_call}
  11.77%  ││ │   0x00007fe8b44fb9c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {other}
   0.02%  ││ │   0x00007fe8b44fb9cc:   mov    0x14(%rsp),%r10d
   2.66%  ││ │   0x00007fe8b44fb9d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   3.81%  ││ │   0x00007fe8b44fb9d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.01%  ││ │   0x00007fe8b44fb9d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007fe8b44fb9da:   jl     0x00007fe8b44fb9a0
   0.02%  ││     0x00007fe8b44fb9dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.01%  ││  ↗  0x00007fe8b44fb9df:   add    $0x30,%rsp
   0.04%  ││  │  0x00007fe8b44fb9e3:   pop    %rbp
   0.02%  ││  │  0x00007fe8b44fb9e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fe8b44fb9eb:   ja     0x00007fe8b44fba34
   0.01%  ││  │  0x00007fe8b44fb9f1:   ret    
          ↘│  │  0x00007fe8b44fb9f2:   xor    %eax,%eax
           │  ╰  0x00007fe8b44fb9f4:   jmp    0x00007fe8b44fb9df
           ↘     0x00007fe8b44fb9f6:   mov    $0xffffff76,%esi
                 0x00007fe8b44fb9fb:   mov    %r10,%rbp
                 0x00007fe8b44fb9fe:   mov    %ebx,0x4(%rsp)
                 0x00007fe8b44fba02:   mov    %r9d,0x8(%rsp)
                 0x00007fe8b44fba07:   call   0x00007fe8b3f8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  31.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.68%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 660 
  31.45%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 665 
   0.96%     [kernel.kallsyms]  native_read_msr 
   0.33%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  __mod_lruvec_state 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  mod_memcg_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   1.16%  <...other 212 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.68%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 660 
  31.45%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 665 
   0.96%     [kernel.kallsyms]  native_read_msr 
   0.33%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.16%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.16%     [kernel.kallsyms]  release_pages 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  __mod_lruvec_state 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.09%     [kernel.kallsyms]  free_unref_page_list 
   0.08%     [kernel.kallsyms]  mod_memcg_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __mod_zone_page_state 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  free_unref_page_commit 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   0.04%     [kernel.kallsyms]  __rcu_read_lock 
   1.16%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.16%           c2, level 4
   3.38%     [kernel.kallsyms]
   0.26%             libjvm.so
   0.15%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%                kvm.ko
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:06:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.620 ns/op
# Warmup Iteration   2: 22.672 ns/op
# Warmup Iteration   3: 22.414 ns/op
# Warmup Iteration   4: 21.749 ns/op
# Warmup Iteration   5: 22.221 ns/op
Iteration   1: 22.359 ns/op
Iteration   2: 22.406 ns/op
Iteration   3: 22.177 ns/op
Iteration   4: 22.182 ns/op
Iteration   5: 21.619 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  22.149 ±(99.9%) 1.207 ns/op [Average]
  (min, avg, max) = (21.619, 22.149, 22.406), stdev = 0.314
  CI (99.9%): [20.941, 23.356] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 126336 total address lines.
Perf output processed (skipped 67.234 seconds):
 Column 1: cycles (49535 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 630 

                                    # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                    #           [sp+0x30]  (sp of caller)
                                    0x00007f45484f7ca0:   mov    0x8(%rsi),%r10d
                                    0x00007f45484f7ca4:   movabs $0x7f44c7000000,%r11
                                    0x00007f45484f7cae:   add    %r11,%r10
                                    0x00007f45484f7cb1:   cmp    %r10,%rax
                                    0x00007f45484f7cb4:   jne    0x00007f4547f85080           ;   {runtime_call ic_miss_stub}
                                    0x00007f45484f7cba:   xchg   %ax,%ax
                                    0x00007f45484f7cbc:   nopl   0x0(%rax)
                                  [Verified Entry Point]
   1.67%                            0x00007f45484f7cc0:   mov    %eax,-0x14000(%rsp)
   2.50%                            0x00007f45484f7cc7:   push   %rbp
   0.73%                            0x00007f45484f7cc8:   sub    $0x20,%rsp
   1.17%                            0x00007f45484f7ccc:   cmpl   $0x1,0x20(%r15)
   1.96%                            0x00007f45484f7cd4:   jne    0x00007f45484f80d4           ;*synchronization entry
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@-1 (line 133)
   0.58%                            0x00007f45484f7cda:   mov    %rdx,(%rsp)
   0.97%                            0x00007f45484f7cde:   xchg   %ax,%ax
   0.18%                            0x00007f45484f7ce0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f45484f807c
                                                                                              ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - java.lang.String::hashCode@1 (line 2363)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   3.63%                            0x00007f45484f7ce3:   test   %eax,%eax
          ╭                         0x00007f45484f7ce5:   jne    0x00007f45484f7d2f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                   ; - java.lang.String::hashCode@6 (line 2364)
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │                         0x00007f45484f7ce7:   movzbl 0x11(%rdx),%r11d
          │                         0x00007f45484f7cec:   test   %r11d,%r11d
          │╭                        0x00007f45484f7cef:   jne    0x00007f45484f7f34           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@13 (line 2364)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                        0x00007f45484f7cf5:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::isLatin1@7 (line 4817)
          ││                                                                                  ; - java.lang.String::hashCode@17 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                        0x00007f45484f7cf9:   test   %ebp,%ebp
          ││                        0x00007f45484f7cfb:   nopl   0x0(%rax,%rax,1)
          ││                        0x00007f45484f7d00:   jne    0x00007f45484f7fbc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::isLatin1@10 (line 4817)
          ││                                                                                  ; - java.lang.String::hashCode@17 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                        0x00007f45484f7d06:   mov    0x14(%rdx),%r10d
          ││                        0x00007f45484f7d0a:   mov    %r10,%rsi
          ││                        0x00007f45484f7d0d:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@24 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                        0x00007f45484f7d11:   mov    %rdx,%rbp
          ││                        0x00007f45484f7d14:   data16 xchg %ax,%ax
          ││                        0x00007f45484f7d17:   call   0x00007f4547f85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
          ││                                                                                  ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@27 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                                                                                  ;   {static_call}
          ││                        0x00007f45484f7d1c:   nopl   0x28c(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@27 (line 2365)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                                                                                  ;   {other}
          ││                        0x00007f45484f7d24:   test   %eax,%eax
          ││                        0x00007f45484f7d26:   je     0x00007f45484f7fd0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@42 (line 2367)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                        0x00007f45484f7d2c:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - java.lang.String::hashCode@58 (line 2373)
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   2.27%  ↘│                     ↗  0x00007f45484f7d2f:   cmp    $0x462300d,%eax
           │╭                    │  0x00007f45484f7d34:   je     0x00007f45484f7f09
   1.03%   ││                    │  0x00007f45484f7d3a:   nopw   0x0(%rax,%rax,1)
   0.16%   ││                    │  0x00007f45484f7d40:   cmp    $0x462300d,%eax
           ││╭                   │  0x00007f45484f7d45:   jge    0x00007f45484f7e05
   1.65%   │││                   │  0x00007f45484f7d4b:   cmp    $0x103b4,%eax
           │││╭                  │  0x00007f45484f7d50:   jne    0x00007f45484f7d85           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.17%   ││││                  │  0x00007f45484f7d52:   movabs $0x7ff1352f0,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff1352f0})}
   0.06%   ││││                  │  0x00007f45484f7d5c:   mov    (%rsp),%rsi
   0.00%   ││││                  │  0x00007f45484f7d60:   data16 xchg %ax,%ax
   0.39%   ││││                  │  0x00007f45484f7d63:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           ││││                  │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
           ││││                  │                                                            ;   {optimized virtual_call}
   1.50%   ││││                  │  0x00007f45484f7d68:   nopl   0x10002d8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
           ││││                  │                                                            ;   {other}
           ││││                  │  0x00007f45484f7d70:   test   %eax,%eax
           ││││                  │  0x00007f45484f7d72:   je     0x00007f45484f8054           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
   0.17%   ││││                  │  0x00007f45484f7d78:   mov    $0x4,%r10d
           ││││                  │  0x00007f45484f7d7e:   xchg   %ax,%ax
   0.40%   ││││╭                 │  0x00007f45484f7d80:   jmp    0x00007f45484f7e82
   0.00%   │││↘│                 │  0x00007f45484f7d85:   cmp    $0x103b4,%eax
           │││ │╭                │  0x00007f45484f7d8a:   jge    0x00007f45484f7dc7
   0.27%   │││ ││                │  0x00007f45484f7d8c:   cmp    $0x9ef434af,%eax
           │││ ││                │  0x00007f45484f7d91:   jne    0x00007f45484f8010           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.14%   │││ ││                │  0x00007f45484f7d97:   movabs $0x7ff135280,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff135280})}
   0.25%   │││ ││                │  0x00007f45484f7da1:   mov    (%rsp),%rsi
           │││ ││                │  0x00007f45484f7da5:   xchg   %ax,%ax
   0.24%   │││ ││                │  0x00007f45484f7da7:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           │││ ││                │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │││ ││                │                                                            ;   {optimized virtual_call}
   3.88%   │││ ││                │  0x00007f45484f7dac:   nopl   0x200031c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
           │││ ││                │                                                            ;   {other}
   0.00%   │││ ││                │  0x00007f45484f7db4:   test   %eax,%eax
           │││ ││                │  0x00007f45484f7db6:   je     0x00007f45484f8068           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
           │││ ││                │  0x00007f45484f7dbc:   mov    $0x2,%r10d
           │││ ││╭               │  0x00007f45484f7dc2:   jmp    0x00007f45484f7e82
   0.64%   │││ │↘│               │  0x00007f45484f7dc7:   cmp    $0x14234,%eax
           │││ │ │               │  0x00007f45484f7dcc:   jne    0x00007f45484f7f88           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.04%   │││ │ │               │  0x00007f45484f7dd2:   movabs $0x7ff135320,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff135320})}
           │││ │ │               │  0x00007f45484f7ddc:   mov    (%rsp),%rsi
   0.00%   │││ │ │               │  0x00007f45484f7de0:   data16 xchg %ax,%ax
   0.61%   │││ │ │               │  0x00007f45484f7de3:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           │││ │ │               │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
           │││ │ │               │                                                            ;   {optimized virtual_call}
   3.68%   │││ │ │               │  0x00007f45484f7de8:   nopl   0x3000358(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
           │││ │ │               │                                                            ;   {other}
   0.00%   │││ │ │               │  0x00007f45484f7df0:   test   %eax,%eax
           │││ │ │               │  0x00007f45484f7df2:   je     0x00007f45484f802c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
   0.00%   │││ │ │               │  0x00007f45484f7df8:   mov    $0x5,%r10d
           │││ │ │               │  0x00007f45484f7dfe:   xchg   %ax,%ax
   0.57%   │││ │ │╭              │  0x00007f45484f7e00:   jmp    0x00007f45484f7e82
   1.19%   ││↘ │ ││              │  0x00007f45484f7e05:   cmp    $0x23c6acdf,%eax
           ││  │ ││╭             │  0x00007f45484f7e0a:   je     0x00007f45484f7e58
   0.01%   ││  │ │││             │  0x00007f45484f7e10:   cmp    $0x23c6acdf,%eax
           ││  │ │││             │  0x00007f45484f7e15:   jl     0x00007f45484f7f50
   0.44%   ││  │ │││             │  0x00007f45484f7e1b:   nopl   0x0(%rax,%rax,1)
           ││  │ │││             │  0x00007f45484f7e20:   cmp    $0x33eb4d91,%eax
           ││  │ │││             │  0x00007f45484f7e25:   jne    0x00007f45484f7f6c           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.26%   ││  │ │││             │  0x00007f45484f7e2b:   movabs $0x7ff1352b8,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff1352b8})}
   0.00%   ││  │ │││             │  0x00007f45484f7e35:   mov    (%rsp),%rsi
   0.36%   ││  │ │││             │  0x00007f45484f7e39:   xchg   %ax,%ax
           ││  │ │││             │  0x00007f45484f7e3b:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           ││  │ │││             │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
           ││  │ │││             │                                                            ;   {optimized virtual_call}
   4.89%   ││  │ │││             │  0x00007f45484f7e40:   nopl   0x40003b0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
           ││  │ │││             │                                                            ;   {other}
   0.00%   ││  │ │││             │  0x00007f45484f7e48:   test   %eax,%eax
           ││  │ │││             │  0x00007f45484f7e4a:   je     0x00007f45484f7ffc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │││             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
           ││  │ │││             │  0x00007f45484f7e50:   mov    $0x3,%r10d
           ││  │ │││╭            │  0x00007f45484f7e56:   jmp    0x00007f45484f7e82           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││││            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.61%   ││  │ ││↘│            │  0x00007f45484f7e58:   movabs $0x7ff135250,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff135250})}
           ││  │ ││ │            │  0x00007f45484f7e62:   mov    (%rsp),%rsi
   0.00%   ││  │ ││ │            │  0x00007f45484f7e66:   nop
           ││  │ ││ │            │  0x00007f45484f7e67:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           ││  │ ││ │            │                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           ││  │ ││ │            │                                                            ;   {optimized virtual_call}
   0.99%   ││  │ ││ │            │  0x00007f45484f7e6c:   nopl   0x50003dc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
           ││  │ ││ │            │                                                            ;   {other}
   0.00%   ││  │ ││ │            │  0x00007f45484f7e74:   test   %eax,%eax
           ││  │ ││ │            │  0x00007f45484f7e76:   je     0x00007f45484f7fe8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
           ││  │ ││ │            │  0x00007f45484f7e7c:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@239 (line 135)
   2.12%   ││  ↘ ↘↘ ↘           ↗│  0x00007f45484f7e82:   cmp    $0x2,%r10d
           ││        ╭          ││  0x00007f45484f7e86:   je     0x00007f45484f7f02
   0.61%   ││        │          ││  0x00007f45484f7e8c:   cmp    $0x2,%r10d
           ││        │╭         ││  0x00007f45484f7e90:   jge    0x00007f45484f7eba
   0.00%   ││        ││         ││  0x00007f45484f7e92:   cmp    $0x1,%r10d
           ││        ││╭        ││  0x00007f45484f7e96:   je     0x00007f45484f7eb0
           ││        │││        ││  0x00007f45484f7e98:   test   %r10d,%r10d
   0.58%   ││        │││        ││  0x00007f45484f7e9b:   nopl   0x0(%rax,%rax,1)
           ││        │││        ││  0x00007f45484f7ea0:   jne    0x00007f45484f7fa4
   0.00%   ││        │││        ││  0x00007f45484f7ea6:   mov    $0x1,%eax
           ││        │││╭       ││  0x00007f45484f7eab:   jmp    0x00007f45484f7eef
           ││        ││↘│       ││  0x00007f45484f7eb0:   mov    $0x2,%eax
   0.22%   ││        ││ │╭      ││  0x00007f45484f7eb5:   jmp    0x00007f45484f7eef
   1.67%   ││        │↘ ││      ││  0x00007f45484f7eba:   nopw   0x0(%rax,%rax,1)
           ││        │  ││      ││  0x00007f45484f7ec0:   cmp    $0x4,%r10d
           ││        │  ││╭     ││  0x00007f45484f7ec4:   jne    0x00007f45484f7ecd
           ││        │  │││     ││  0x00007f45484f7ec6:   mov    $0x5,%eax
   0.15%   ││        │  │││╭    ││  0x00007f45484f7ecb:   jmp    0x00007f45484f7eef
   1.23%   ││        │  ││↘│    ││  0x00007f45484f7ecd:   cmp    $0x4,%r10d
           ││        │  ││ │╭   ││  0x00007f45484f7ed1:   jge    0x00007f45484f7eda
           ││        │  ││ ││   ││  0x00007f45484f7ed3:   mov    $0x4,%eax
           ││        │  ││ ││╭  ││  0x00007f45484f7ed8:   jmp    0x00007f45484f7eef
   0.57%   ││        │  ││ │↘│  ││  0x00007f45484f7eda:   nopw   0x0(%rax,%rax,1)
           ││        │  ││ │ │  ││  0x00007f45484f7ee0:   cmp    $0x5,%r10d
           ││        │  ││ │ │╭ ││  0x00007f45484f7ee4:   jne    0x00007f45484f7f3b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││        │  ││ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
           ││        │  ││ │ ││ ││  0x00007f45484f7eea:   mov    $0x6,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │  ││ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@722 (line 150)
   2.66%   ││        │  ↘↘ ↘ ↘│↗││  0x00007f45484f7eef:   add    $0x20,%rsp
   0.61%   ││        │        ││││  0x00007f45484f7ef3:   pop    %rbp
   0.57%   ││        │        ││││  0x00007f45484f7ef4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││        │        ││││  0x00007f45484f7efb:   ja     0x00007f45484f80be
   3.30%   ││        │        ││││  0x00007f45484f7f01:   ret    
   0.67%   ││        ↘        ││││  0x00007f45484f7f02:   mov    $0x3,%eax
   0.00%   ││                 │╰││  0x00007f45484f7f07:   jmp    0x00007f45484f7eef           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
           ││                 │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.67%   │↘                 │ ││  0x00007f45484f7f09:   movabs $0x7ff135220,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff135220})}
           │                  │ ││  0x00007f45484f7f13:   mov    (%rsp),%rsi
   0.00%   │                  │ ││  0x00007f45484f7f17:   call   0x00007f45484e2c40           ; ImmutableOopMap {}
           │                  │ ││                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
           │                  │ ││                                                            ;   {optimized virtual_call}
   3.50%   │                  │ ││  0x00007f45484f7f1c:   nopl   0x600048c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
           │                  │ ││                                                            ;   {other}
   0.00%   │                  │ ││  0x00007f45484f7f24:   test   %eax,%eax
           │                  │ ││  0x00007f45484f7f26:   je     0x00007f45484f8040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
           │                  │ ││  0x00007f45484f7f2c:   xor    %r10d,%r10d
           │                  │ ╰│  0x00007f45484f7f2f:   jmp    0x00007f45484f7e82
           ↘                  │  │  0x00007f45484f7f34:   xor    %eax,%eax
                              │  ╰  0x00007f45484f7f36:   jmp    0x00007f45484f7d2f
                              ↘     0x00007f45484f7f3b:   mov    $0xffffff45,%esi
                                    0x00007f45484f7f40:   mov    %r10d,%ebp
....................................................................................................
  59.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 333 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007f45484e2c20:   mov    0x8(%rsi),%r10d
                                0x00007f45484e2c24:   movabs $0x7f44c7000000,%r11
                                0x00007f45484e2c2e:   add    %r11,%r10
                                0x00007f45484e2c31:   cmp    %r10,%rax
                                0x00007f45484e2c34:   jne    0x00007f4547f85080           ;   {runtime_call ic_miss_stub}
                                0x00007f45484e2c3a:   xchg   %ax,%ax
                                0x00007f45484e2c3c:   nopl   0x0(%rax)
                              [Verified Entry Point]
   2.23%                        0x00007f45484e2c40:   mov    %eax,-0x14000(%rsp)
   3.45%                        0x00007f45484e2c47:   push   %rbp
   1.42%                        0x00007f45484e2c48:   sub    $0x20,%rsp
   0.57%                        0x00007f45484e2c4c:   cmpl   $0x1,0x20(%r15)
   1.75%                        0x00007f45484e2c54:   jne    0x00007f45484e2e06           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   1.31%                        0x00007f45484e2c5a:   nopw   0x0(%rax,%rax,1)
   0.59%                        0x00007f45484e2c60:   cmp    %rdx,%rsi
          ╭                     0x00007f45484e2c63:   jne    0x00007f45484e2c6f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
          │                     0x00007f45484e2c65:   mov    $0x1,%eax
   1.75%  │╭                    0x00007f45484e2c6a:   jmp    0x00007f45484e2d82
          ↘│                    0x00007f45484e2c6f:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f45484e2dd8
           │                    0x00007f45484e2c73:   nopw   0x0(%rax,%rax,1)
           │                    0x00007f45484e2c7c:   data16 data16 xchg %ax,%ax
           │                    0x00007f45484e2c80:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007f45484e2c87:   jne    0x00007f45484e2db8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007f45484e2c8d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007f45484e2c92:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007f45484e2c96:   cmp    %ebp,%r10d
           │╭                   0x00007f45484e2c99:   jne    0x00007f45484e2d9c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007f45484e2c9f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007f45484e2ca3:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007f45484e2ca7:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007f45484e2cac:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007f45484e2cb1:   cmp    %r9d,%ecx
           ││╭                  0x00007f45484e2cb4:   jne    0x00007f45484e2d98           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007f45484e2cba:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007f45484e2cbe:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007f45484e2cc3:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007f45484e2cc7:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007f45484e2ccc:   test   %ecx,%ecx
           │││╭                 0x00007f45484e2cce:   je     0x00007f45484e2d71
           ││││                 0x00007f45484e2cd4:   mov    %ecx,%eax
           ││││                 0x00007f45484e2cd6:   and    $0x1f,%eax
           ││││                 0x00007f45484e2cd9:   and    $0xffffffe0,%ecx
           ││││╭                0x00007f45484e2cdc:   je     0x00007f45484e2d2d
           │││││                0x00007f45484e2ce2:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007f45484e2ce6:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007f45484e2cea:   neg    %rcx
           │││││ ↗              0x00007f45484e2ced:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007f45484e2cf2:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007f45484e2cf7:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007f45484e2cfb:   vptest %ymm1,%ymm1
           │││││╭│              0x00007f45484e2d00:   jne    0x00007f45484e2d78
           │││││││              0x00007f45484e2d06:   add    $0x20,%rcx
           ││││││╰              0x00007f45484e2d0a:   jne    0x00007f45484e2ced
           ││││││               0x00007f45484e2d0c:   test   %eax,%eax
           ││││││ ╭             0x00007f45484e2d0e:   je     0x00007f45484e2d71
           ││││││ │             0x00007f45484e2d14:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007f45484e2d1a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007f45484e2d20:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007f45484e2d24:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007f45484e2d29:   jne    0x00007f45484e2d78
           ││││││ ││╭           0x00007f45484e2d2b:   jmp    0x00007f45484e2d71
           ││││↘│ │││           0x00007f45484e2d2d:   mov    %eax,%ecx
           ││││ │ │││           0x00007f45484e2d2f:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007f45484e2d32:   je     0x00007f45484e2d4d
           ││││ │ ││││          0x00007f45484e2d34:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007f45484e2d38:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007f45484e2d3c:   neg    %rcx
           ││││ │ ││││ ↗        0x00007f45484e2d3f:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007f45484e2d42:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007f45484e2d45:   jne    0x00007f45484e2d78
           ││││ │ ││││││        0x00007f45484e2d47:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007f45484e2d4b:   jne    0x00007f45484e2d3f
           ││││ │ │││↘│         0x00007f45484e2d4d:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007f45484e2d4f:   je     0x00007f45484e2d63
           ││││ │ │││ │ │       0x00007f45484e2d51:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007f45484e2d54:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007f45484e2d57:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007f45484e2d59:   jne    0x00007f45484e2d78
           ││││ │ │││ │ ││      0x00007f45484e2d5b:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007f45484e2d5f:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007f45484e2d63:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007f45484e2d65:   je     0x00007f45484e2d71
           ││││ │ │││ │  ││     0x00007f45484e2d67:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007f45484e2d6a:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007f45484e2d6d:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007f45484e2d6f:   jne    0x00007f45484e2d78
           │││↘ │ ↘│↘ │  │↘│    0x00007f45484e2d71:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007f45484e2d76:   jmp    0x00007f45484e2d7a
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007f45484e2d78:   xor    %eax,%eax
           │││              ↘   0x00007f45484e2d7a:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007f45484e2d7e:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   1.29%   ↘││               ↗  0x00007f45484e2d82:   vzeroupper 
   3.59%    ││               │  0x00007f45484e2d85:   add    $0x20,%rsp
   0.62%    ││               │  0x00007f45484e2d89:   pop    %rbp
   0.01%    ││               │  0x00007f45484e2d8a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007f45484e2d91:   ja     0x00007f45484e2df0
   3.01%    ││               │  0x00007f45484e2d97:   ret    
            │↘               │  0x00007f45484e2d98:   xor    %eax,%eax
            │                ╰  0x00007f45484e2d9a:   jmp    0x00007f45484e2d82
            ↘                   0x00007f45484e2d9c:   mov    $0xffffff45,%esi
                                0x00007f45484e2da1:   mov    %r10d,(%rsp)
                                0x00007f45484e2da5:   data16 xchg %ax,%ax
                                0x00007f45484e2da8:   vzeroupper 
                                0x00007f45484e2dab:   call   0x00007f4547f8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  21.60%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 636 

                 # {method} {0x00007f44bc4792e8} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f45484f9020:   mov    0x8(%rsi),%r10d
                 0x00007f45484f9024:   movabs $0x7f44c7000000,%r11
                 0x00007f45484f902e:   add    %r11,%r10
                 0x00007f45484f9031:   cmp    %r10,%rax
                 0x00007f45484f9034:   jne    0x00007f4547f85080           ;   {runtime_call ic_miss_stub}
                 0x00007f45484f903a:   xchg   %ax,%ax
                 0x00007f45484f903c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007f45484f9040:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f45484f9047:   push   %rbp
                 0x00007f45484f9048:   sub    $0x30,%rsp
                 0x00007f45484f904c:   cmpl   $0x1,0x20(%r15)
                 0x00007f45484f9054:   jne    0x00007f45484f914a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@-1 (line 103)
                 0x00007f45484f905a:   mov    %rsi,%r10
   0.00%         0x00007f45484f905d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                 0x00007f45484f9061:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f45484f9121
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
   0.01%         0x00007f45484f9066:   test   %ebx,%ebx
          ╭      0x00007f45484f9068:   jbe    0x00007f45484f90f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          │      0x00007f45484f906e:   mov    %ebx,%r11d
          │      0x00007f45484f9071:   dec    %r11d
          │      0x00007f45484f9074:   cmp    %ebx,%r11d
          │╭     0x00007f45484f9077:   jae    0x00007f45484f90f6
   0.00%  ││     0x00007f45484f907d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          ││     0x00007f45484f9081:   xor    %ebp,%ebp
          ││     0x00007f45484f9083:   xor    %r11d,%r11d
          ││     0x00007f45484f9086:   mov    %rsi,0x8(%rsp)
   0.01%  ││     0x00007f45484f908b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f45484f908f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f45484f9094:   jmp    0x00007f45484f90a9
          │││    0x00007f45484f9096:   data16 nopw 0x0(%rax,%rax,1)
   2.22%  │││↗   0x00007f45484f90a0:   mov    (%rsp),%r8
   0.64%  ││││   0x00007f45484f90a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   0.85%  ││↘│   0x00007f45484f90a9:   mov    0x10(%r8,%rbp,4),%r11d
   1.68%  ││ │   0x00007f45484f90ae:   mov    %r8,(%rsp)
   1.89%  ││ │   0x00007f45484f90b2:   mov    %r11,%rdx
   0.23%  ││ │   0x00007f45484f90b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.40%  ││ │   0x00007f45484f90b9:   mov    0x8(%rsp),%rsi
   0.19%  ││ │   0x00007f45484f90be:   nop
   1.91%  ││ │   0x00007f45484f90bf:   call   0x00007f45484f7cc0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {optimized virtual_call}
   1.04%  ││ │   0x00007f45484f90c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {other}
   0.17%  ││ │   0x00007f45484f90cc:   mov    0x14(%rsp),%r10d
   3.04%  ││ │   0x00007f45484f90d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.56%  ││ │   0x00007f45484f90d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.21%  ││ │   0x00007f45484f90d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f45484f90da:   jl     0x00007f45484f90a0
   0.01%  ││     0x00007f45484f90dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          ││  ↗  0x00007f45484f90df:   add    $0x30,%rsp
   0.01%  ││  │  0x00007f45484f90e3:   pop    %rbp
   0.02%  ││  │  0x00007f45484f90e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f45484f90eb:   ja     0x00007f45484f9134
   0.00%  ││  │  0x00007f45484f90f1:   ret    
          ↘│  │  0x00007f45484f90f2:   xor    %eax,%eax
           │  ╰  0x00007f45484f90f4:   jmp    0x00007f45484f90df
           ↘     0x00007f45484f90f6:   mov    $0xffffff76,%esi
                 0x00007f45484f90fb:   mov    %r10,%rbp
                 0x00007f45484f90fe:   mov    %ebx,0x4(%rsp)
                 0x00007f45484f9102:   mov    %r9d,0x8(%rsp)
                 0x00007f45484f9107:   call   0x00007f4547f8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  16.11%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.43%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 630 
  21.60%           c2, level 4  java.lang.String::equals, version 2, compile id 333 
  16.11%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 636 
   0.26%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 671 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  native_read_msr 
   1.04%  <...other 206 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.43%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 630 
  21.60%           c2, level 4  java.lang.String::equals, version 2, compile id 333 
  16.11%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 636 
   0.26%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.20%     [kernel.kallsyms]  release_pages 
   0.17%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  __free_one_page 
   0.14%     [kernel.kallsyms]  zap_pte_range 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.10%     [kernel.kallsyms]  page_remove_rmap 
   0.09%     [kernel.kallsyms]  __rcu_read_unlock 
   0.08%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.08%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 671 
   0.06%     [kernel.kallsyms]  lock_page_memcg 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  free_unref_page_list 
   0.05%     [kernel.kallsyms]  cgroup_rstat_updated 
   1.04%  <...other 202 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.20%           c2, level 4
   2.41%     [kernel.kallsyms]
   0.20%             libjvm.so
   0.12%             libc.so.6
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.00%                      
   0.00%           c1, level 3
   0.00%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%              r8152.ko
   0.00%        libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:04:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.025 ns/op
# Warmup Iteration   2: 21.771 ns/op
# Warmup Iteration   3: 21.361 ns/op
# Warmup Iteration   4: 21.559 ns/op
# Warmup Iteration   5: 21.446 ns/op
Iteration   1: 21.880 ns/op
Iteration   2: 21.497 ns/op
Iteration   3: 21.473 ns/op
Iteration   4: 21.284 ns/op
Iteration   5: 21.469 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  21.521 ±(99.9%) 0.840 ns/op [Average]
  (min, avg, max) = (21.284, 21.521, 21.880), stdev = 0.218
  CI (99.9%): [20.680, 22.361] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 126210 total address lines.
Perf output processed (skipped 66.865 seconds):
 Column 1: cycles (49808 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 616 

                                                                       # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
                                                                       #           [sp+0x30]  (sp of caller)
                                                                       0x00007f95f44f8400:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                                                                       0x00007f95f44f8404:   movabs $0x7f956b000000,%r11
                                                                       0x00007f95f44f840e:   add    %r11,%r10
                                                                       0x00007f95f44f8411:   cmp    %r10,%rax
                                                                       0x00007f95f44f8414:   jne    0x00007f95f3f85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007f95f44f841a:   xchg   %ax,%ax
                                                                       0x00007f95f44f841c:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   1.19%                                                               0x00007f95f44f8420:   mov    %eax,-0x14000(%rsp)
   2.72%                                                               0x00007f95f44f8427:   push   %rbp
   0.30%                                                               0x00007f95f44f8428:   sub    $0x20,%rsp
   3.30%                                                               0x00007f95f44f842c:   cmpl   $0x1,0x20(%r15)
   0.15%                                                               0x00007f95f44f8434:   jne    0x00007f95f44f8b0a           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@-1 (line 133)
   0.23%                                                               0x00007f95f44f843a:   mov    %rdx,(%rsp)
   0.97%                                                               0x00007f95f44f843e:   xchg   %ax,%ax
   2.43%  ╭                                                            0x00007f95f44f8440:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f95f44f8a7f
          │                                                                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::hashCode@1 (line 2363)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.26%  │                                                            0x00007f95f44f8443:   test   %eax,%eax
          │╭                                                           0x00007f95f44f8445:   jne    0x00007f95f44f848f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::hashCode@6 (line 2364)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││                                                           0x00007f95f44f8447:   movzbl 0x11(%rdx),%r10d
          ││                                                           0x00007f95f44f844c:   test   %r10d,%r10d
          ││╭                                                          0x00007f95f44f844f:   jne    0x00007f95f44f87f1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::hashCode@13 (line 2364)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │││                                                          0x00007f95f44f8455:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::isLatin1@7 (line 4817)
          │││                                                                                                                    ; - java.lang.String::hashCode@17 (line 2365)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │││                                                          0x00007f95f44f8459:   test   %ebp,%ebp
          │││                                                          0x00007f95f44f845b:   nopl   0x0(%rax,%rax,1)
          │││╭                                                         0x00007f95f44f8460:   jne    0x00007f95f44f87f8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::isLatin1@10 (line 4817)
          ││││                                                                                                                   ; - java.lang.String::hashCode@17 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││││                                                         0x00007f95f44f8466:   mov    0x14(%rdx),%r11d
          ││││                                                         0x00007f95f44f846a:   mov    %r11,%rsi
          ││││                                                         0x00007f95f44f846d:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@24 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││││                                                         0x00007f95f44f8471:   mov    %rdx,%rbp
          ││││                                                         0x00007f95f44f8474:   data16 xchg %ax,%ax
          ││││                                                         0x00007f95f44f8477:   call   0x00007f95f3f85980           ; ImmutableOopMap {rbp=Oop [0]=Oop }
          ││││                                                                                                                   ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@27 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││││                                                                                                                   ;   {static_call}
          ││││                                                         0x00007f95f44f847c:   nopl   0x36c(%rax,%rax,1)           ;*invokestatic hashCode {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                                                                   ; - java.lang.String::hashCode@27 (line 2365)
          ││││                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          ││││                                                                                                                   ;   {other}
          ││││                                                         0x00007f95f44f8484:   test   %eax,%eax
          ││││╭                                                        0x00007f95f44f8486:   je     0x00007f95f44f880c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                                                                  ; - java.lang.String::hashCode@42 (line 2367)
          │││││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │││││                                                        0x00007f95f44f848c:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                                                                  ; - java.lang.String::hashCode@58 (line 2373)
          │││││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.59%  │↘│││                                          ↗             0x00007f95f44f848f:   cmp    $0x462300d,%eax
          │ │││╭                                         │             0x00007f95f44f8494:   je     0x00007f95f44f8791
   0.85%  │ ││││                                         │             0x00007f95f44f849a:   nopw   0x0(%rax,%rax,1)
   2.08%  │ ││││                                         │             0x00007f95f44f84a0:   cmp    $0x462300d,%eax
          │ ││││╭                                        │             0x00007f95f44f84a5:   jge    0x00007f95f44f862b
   0.18%  │ │││││                                        │             0x00007f95f44f84ab:   cmp    $0x10260,%eax
          │ │││││╭                                       │             0x00007f95f44f84b0:   je     0x00007f95f44f87bc
   0.33%  │ ││││││                                       │             0x00007f95f44f84b6:   data16 nopw 0x0(%rax,%rax,1)
   0.50%  │ ││││││                                       │             0x00007f95f44f84c0:   cmp    $0x10260,%eax
          │ ││││││╭                                      │             0x00007f95f44f84c5:   jge    0x00007f95f44f8557
   0.28%  │ │││││││                                      │             0x00007f95f44f84cb:   cmp    $0x9ef434af,%eax
          │ │││││││╭                                     │             0x00007f95f44f84d0:   je     0x00007f95f44f8527
   0.00%  │ ││││││││                                     │             0x00007f95f44f84d6:   data16 nopw 0x0(%rax,%rax,1)
   0.11%  │ ││││││││                                     │             0x00007f95f44f84e0:   cmp    $0x9ef434af,%eax
          │ ││││││││╭                                    │             0x00007f95f44f84e5:   jl     0x00007f95f44f88b0
   0.17%  │ │││││││││                                    │             0x00007f95f44f84eb:   cmp    $0xeb2c8617,%eax
          │ │││││││││╭                                   │             0x00007f95f44f84f0:   jne    0x00007f95f44f88cc           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.01%  │ ││││││││││                                   │             0x00007f95f44f84f6:   movabs $0x7ff035418,%rdx            ;   {oop(&quot;TRACTOR&quot;{0x00000007ff035418})}
          │ ││││││││││                                   │             0x00007f95f44f8500:   mov    (%rsp),%rsi
   0.08%  │ ││││││││││                                   │             0x00007f95f44f8504:   data16 xchg %ax,%ax
   0.18%  │ ││││││││││                                   │             0x00007f95f44f8507:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││││││││                                   │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
          │ ││││││││││                                   │                                                                       ;   {optimized virtual_call}
   2.97%  │ ││││││││││                                   │             0x00007f95f44f850c:   nopl   0x10003fc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                   │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@369 (line 135)
          │ ││││││││││                                   │                                                                       ;   {other}
          │ ││││││││││                                   │             0x00007f95f44f8514:   test   %eax,%eax
          │ ││││││││││╭                                  │             0x00007f95f44f8516:   je     0x00007f95f44f89cc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                  │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@372 (line 135)
   0.01%  │ │││││││││││                                  │             0x00007f95f44f851c:   mov    $0xa,%r11d
          │ │││││││││││╭                                 │             0x00007f95f44f8522:   jmp    0x00007f95f44f8616           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.01%  │ │││││││↘││││                                 │             0x00007f95f44f8527:   movabs $0x7ff035280,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff035280})}
   0.01%  │ │││││││ ││││                                 │             0x00007f95f44f8531:   mov    (%rsp),%rsi
   0.04%  │ │││││││ ││││                                 │             0x00007f95f44f8535:   xchg   %ax,%ax
   0.24%  │ │││││││ ││││                                 │             0x00007f95f44f8537:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ │││││││ ││││                                 │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          │ │││││││ ││││                                 │                                                                       ;   {optimized virtual_call}
   1.47%  │ │││││││ ││││                                 │             0x00007f95f44f853c:   nopl   0x200042c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ ││││                                 │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          │ │││││││ ││││                                 │                                                                       ;   {other}
   0.01%  │ │││││││ ││││                                 │             0x00007f95f44f8544:   test   %eax,%eax
          │ │││││││ ││││╭                                │             0x00007f95f44f8546:   je     0x00007f95f44f89b8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││ │││││                                │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
   0.01%  │ │││││││ │││││                                │             0x00007f95f44f854c:   mov    $0x2,%r11d
          │ │││││││ │││││╭                               │             0x00007f95f44f8552:   jmp    0x00007f95f44f8616
   0.60%  │ ││││││↘ ││││││                               │             0x00007f95f44f8557:   nopw   0x0(%rax,%rax,1)
   0.02%  │ ││││││  ││││││                               │             0x00007f95f44f8560:   cmp    $0x14234,%eax
          │ ││││││  ││││││╭                              │             0x00007f95f44f8565:   jne    0x00007f95f44f8597           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.06%  │ ││││││  │││││││                              │             0x00007f95f44f8567:   movabs $0x7ff035320,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff035320})}
   0.00%  │ ││││││  │││││││                              │             0x00007f95f44f8571:   mov    (%rsp),%rsi
   0.28%  │ ││││││  │││││││                              │             0x00007f95f44f8575:   xchg   %ax,%ax
          │ ││││││  │││││││                              │             0x00007f95f44f8577:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││││  │││││││                              │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
          │ ││││││  │││││││                              │                                                                       ;   {optimized virtual_call}
   1.35%  │ ││││││  │││││││                              │             0x00007f95f44f857c:   nopl   0x300046c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││││││                              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
          │ ││││││  │││││││                              │                                                                       ;   {other}
   0.07%  │ ││││││  │││││││                              │             0x00007f95f44f8584:   test   %eax,%eax
          │ ││││││  │││││││╭                             │             0x00007f95f44f8586:   je     0x00007f95f44f8954           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││││                             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
          │ ││││││  ││││││││                             │             0x00007f95f44f858c:   mov    $0x5,%r11d
          │ ││││││  ││││││││╭                            │             0x00007f95f44f8592:   jmp    0x00007f95f44f8616
   0.57%  │ ││││││  ││││││↘││                            │             0x00007f95f44f8597:   nopw   0x0(%rax,%rax,1)
          │ ││││││  ││││││ ││                            │             0x00007f95f44f85a0:   cmp    $0x14234,%eax
          │ ││││││  ││││││ ││╭                           │             0x00007f95f44f85a5:   jge    0x00007f95f44f85e2
          │ ││││││  ││││││ │││                           │             0x00007f95f44f85a7:   cmp    $0x103b4,%eax
          │ ││││││  ││││││ │││╭                          │             0x00007f95f44f85ac:   jne    0x00007f95f44f88e8           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.01%  │ ││││││  ││││││ ││││                          │             0x00007f95f44f85b2:   movabs $0x7ff0352f0,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff0352f0})}
   0.32%  │ ││││││  ││││││ ││││                          │             0x00007f95f44f85bc:   mov    (%rsp),%rsi
   0.01%  │ ││││││  ││││││ ││││                          │             0x00007f95f44f85c0:   data16 xchg %ax,%ax
          │ ││││││  ││││││ ││││                          │             0x00007f95f44f85c3:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││││  ││││││ ││││                          │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
          │ ││││││  ││││││ ││││                          │                                                                       ;   {optimized virtual_call}
   2.43%  │ ││││││  ││││││ ││││                          │             0x00007f95f44f85c8:   nopl   0x40004b8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││││                          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
          │ ││││││  ││││││ ││││                          │                                                                       ;   {other}
          │ ││││││  ││││││ ││││                          │             0x00007f95f44f85d0:   test   %eax,%eax
          │ ││││││  ││││││ ││││╭                         │             0x00007f95f44f85d2:   je     0x00007f95f44f89e0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ │││││                         │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
          │ ││││││  ││││││ │││││                         │             0x00007f95f44f85d8:   mov    $0x4,%r11d
          │ ││││││  ││││││ │││││                         │             0x00007f95f44f85de:   xchg   %ax,%ax
   0.36%  │ ││││││  ││││││ │││││╭                        │             0x00007f95f44f85e0:   jmp    0x00007f95f44f8616
   0.30%  │ ││││││  ││││││ ││↘│││                        │             0x00007f95f44f85e2:   cmp    $0x14b03,%eax
          │ ││││││  ││││││ ││ │││╭                       │             0x00007f95f44f85e7:   jne    0x00007f95f44f8824           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │ ││││││  ││││││ ││ ││││                       │             0x00007f95f44f85ed:   movabs $0x7ff035350,%rdx            ;   {oop(&quot;VAN&quot;{0x00000007ff035350})}
          │ ││││││  ││││││ ││ ││││                       │             0x00007f95f44f85f7:   mov    (%rsp),%rsi
   0.00%  │ ││││││  ││││││ ││ ││││                       │             0x00007f95f44f85fb:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;   {optimized virtual_call}
   2.07%  │ ││││││  ││││││ ││ ││││                       │             0x00007f95f44f8600:   nopl   0x50004f0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ ││││                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@305 (line 135)
          │ ││││││  ││││││ ││ ││││                       │                                                                       ;   {other}
          │ ││││││  ││││││ ││ ││││                       │             0x00007f95f44f8608:   test   %eax,%eax
          │ ││││││  ││││││ ││ ││││╭                      │             0x00007f95f44f860a:   je     0x00007f95f44f8904           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ │││││                      │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@308 (line 135)
          │ ││││││  ││││││ ││ │││││                      │             0x00007f95f44f8610:   mov    $0x6,%r11d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  ││││││ ││ │││││                      │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@269 (line 135)
   1.89%  │ ││││││  │││↘│↘ │↘ ││↘││  ↗     ↗ ↗    ↗ ↗ ↗ ↗│             0x00007f95f44f8616:   movslq %r11d,%r10
   0.66%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007f95f44f8619:   shl    $0x3,%r10
   0.67%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007f95f44f861d:   movabs $0x7f95f44f83a0,%r8          ;   {section_word}
   0.48%  │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007f95f44f8627:   jmp    *(%r8,%r10,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││  │││ │  │  ││ ││  │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
   0.44%  │ ││││↘│  │││ │  │  ││ ││  │     │ │    │ │ │ ││             0x00007f95f44f862b:   cmp    $0x23c6acdf,%eax
          │ ││││ │  │││ │  │  ││ ││╭ │     │ │    │ │ │ ││             0x00007f95f44f8630:   jne    0x00007f95f44f8662           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f8632:   movabs $0x7ff035250,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035250})}
   0.03%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f863c:   mov    (%rsp),%rsi
   0.00%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f8640:   data16 xchg %ax,%ax
   0.27%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f8643:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   0.24%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f8648:   nopl   0x6000538(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││                                                                       ;   {other}
   0.00%  │ ││││ │  │││ │  │  ││ │││ │     │ │    │ │ │ ││             0x00007f95f44f8650:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ │││╭│     │ │    │ │ │ ││             0x00007f95f44f8652:   je     0x00007f95f44f8940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
   0.24%  │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││             0x00007f95f44f8658:   mov    $0x1,%r11d
          │ ││││ │  │││ │  │  ││ │││││     │ │    │ │ │ ││             0x00007f95f44f865e:   xchg   %ax,%ax
   0.06%  │ ││││ │  │││ │  │  ││ ││││╰     │ │    │ │ │ ││             0x00007f95f44f8660:   jmp    0x00007f95f44f8616
   1.34%  │ ││││ │  │││ │  │  ││ ││↘│      │ │    │ │ │ ││             0x00007f95f44f8662:   cmp    $0x23c6acdf,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ╭    │ │    │ │ │ ││             0x00007f95f44f8667:   jge    0x00007f95f44f86f7
          │ ││││ │  │││ │  │  ││ ││ │ │    │ │    │ │ │ ││             0x00007f95f44f866d:   cmp    $0x4c6443f,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │╭   │ │    │ │ │ ││             0x00007f95f44f8672:   je     0x00007f95f44f86c7
   0.00%  │ ││││ │  │││ │  │  ││ ││ │ ││   │ │    │ │ │ ││             0x00007f95f44f8678:   nopl   0x0(%rax,%rax,1)
   0.00%  │ ││││ │  │││ │  │  ││ ││ │ ││   │ │    │ │ │ ││             0x00007f95f44f8680:   cmp    $0x4c6443f,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ││╭  │ │    │ │ │ ││             0x00007f95f44f8685:   jl     0x00007f95f44f8878
   0.30%  │ ││││ │  │││ │  │  ││ ││ │ │││  │ │    │ │ │ ││             0x00007f95f44f868b:   cmp    $0x1b604cf5,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │││╭ │ │    │ │ │ ││             0x00007f95f44f8690:   jne    0x00007f95f44f8894           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.01%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f8696:   movabs $0x7ff035448,%rdx            ;   {oop(&quot;MONORAIL&quot;{0x00000007ff035448})}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f86a0:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f86a4:   data16 xchg %ax,%ax
   0.30%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f86a7:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   1.30%  │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f86ac:   nopl   0x700059c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@385 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │ ││││ │ │    │ │ │ ││             0x00007f95f44f86b4:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │ ││││╭│ │    │ │ │ ││             0x00007f95f44f86b6:   je     0x00007f95f44f89a4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ ││││││ │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@388 (line 135)
   0.09%  │ ││││ │  │││ │  │  ││ ││ │ ││││││ │    │ │ │ ││             0x00007f95f44f86bc:   mov    $0xb,%r11d
          │ ││││ │  │││ │  │  ││ ││ │ │││││╰ │    │ │ │ ││             0x00007f95f44f86c2:   jmp    0x00007f95f44f8616           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │││││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.28%  │ ││││ │  │││ │  │  ││ ││ │ │↘│││  │    │ │ │ ││             0x00007f95f44f86c7:   movabs $0x7ff0353b8,%rdx            ;   {oop(&quot;TRUCK&quot;{0x00000007ff0353b8})}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007f95f44f86d1:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007f95f44f86d5:   xchg   %ax,%ax
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007f95f44f86d7:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;   {optimized virtual_call}
   1.16%  │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007f95f44f86dc:   nopl   0x80005cc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@337 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││  │    │ │ │ ││             0x00007f95f44f86e4:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ╭│    │ │ │ ││             0x00007f95f44f86e6:   je     0x00007f95f44f8990           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ││    │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@340 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │ │ │││ ││    │ │ │ ││             0x00007f95f44f86ec:   mov    $0x8,%r11d
   0.09%  │ ││││ │  │││ │  │  ││ ││ │ │ │││ │╰    │ │ │ ││             0x00007f95f44f86f2:   jmp    0x00007f95f44f8616
   0.64%  │ ││││ │  │││ │  │  ││ ││ │ ↘ │││ │     │ │ │ ││             0x00007f95f44f86f7:   nopw   0x0(%rax,%rax,1)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │     │ │ │ ││             0x00007f95f44f8700:   cmp    $0x33eb4d91,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ╭   │ │ │ ││             0x00007f95f44f8705:   je     0x00007f95f44f875b
   0.06%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │   │ │ │ ││             0x00007f95f44f870b:   cmp    $0x33eb4d91,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │╭  │ │ │ ││             0x00007f95f44f8710:   jl     0x00007f95f44f8840
   0.01%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││  │ │ │ ││             0x00007f95f44f8716:   data16 nopw 0x0(%rax,%rax,1)
   0.27%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││  │ │ │ ││             0x00007f95f44f8720:   cmp    $0x356e5289,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││╭ │ │ │ ││             0x00007f95f44f8725:   jne    0x00007f95f44f885c           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f872b:   movabs $0x7ff035380,%rdx            ;   {oop(&quot;MOTOR_HOME&quot;{0x00000007ff035380})}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f8735:   mov    (%rsp),%rsi
   0.00%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f8739:   xchg   %ax,%ax
   0.34%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f873b:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;   {optimized virtual_call}
   1.39%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f8740:   nopl   0x9000630(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@321 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││ │ │ │ ││             0x00007f95f44f8748:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││╭│ │ │ ││             0x00007f95f44f874a:   je     0x00007f95f44f892c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││││ │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@324 (line 135)
   0.04%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ │││││ │ │ ││             0x00007f95f44f8750:   mov    $0x7,%r11d
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││││╰ │ │ ││             0x00007f95f44f8756:   jmp    0x00007f95f44f8616           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │ ││││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.29%  │ ││││ │  │││ │  │  ││ ││ │   │││ │ ↘│││  │ │ ││             0x00007f95f44f875b:   movabs $0x7ff0352b8,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff0352b8})}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f8765:   mov    (%rsp),%rsi
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f8769:   xchg   %ax,%ax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f876b:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;   {optimized virtual_call}
   1.42%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f8770:   nopl   0xa000660(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││                                                                       ;   {other}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f8778:   test   %eax,%eax
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││  │ │ ││             0x00007f95f44f877a:   nopw   0x0(%rax,%rax,1)
   0.07%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ╭│ │ ││             0x00007f95f44f8780:   je     0x00007f95f44f8918           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ││ │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
   0.27%  │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ ││ │ ││             0x00007f95f44f8786:   mov    $0x3,%r11d
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ │╰ │ ││             0x00007f95f44f878c:   jmp    0x00007f95f44f8616           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││ │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.33%  │ │││↘ │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007f95f44f8791:   movabs $0x7ff035220,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff035220})}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007f95f44f879b:   mov    (%rsp),%rsi
   0.01%  │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007f95f44f879f:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;   {optimized virtual_call}
   2.79%  │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007f95f44f87a4:   nopl   0xb000694(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││                                                                       ;   {other}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │  │ ││             0x00007f95f44f87ac:   test   %eax,%eax
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ╭│ ││             0x00007f95f44f87ae:   je     0x00007f95f44f8968           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ││ ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ ││ ││             0x00007f95f44f87b4:   xor    %r11d,%r11d
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ │╰ ││             0x00007f95f44f87b7:   jmp    0x00007f95f44f8616           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │ │││  │  │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │ │││  ↘  │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87bc:   movabs $0x7ff0353e8,%rdx            ;   {oop(&quot;BUS&quot;{0x00000007ff0353e8})}
   0.17%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87c6:   mov    (%rsp),%rsi
   0.18%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87ca:   nop
   0.01%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87cb:   call   0x00007f95f44e3140           ; ImmutableOopMap {}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;   {optimized virtual_call}
   1.76%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87d0:   nopl   0xc0006c0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@353 (line 135)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││                                                                       ;   {other}
   0.02%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87d8:   test   %eax,%eax
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │  ││             0x00007f95f44f87da:   nopw   0x0(%rax,%rax,1)
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ ╭││             0x00007f95f44f87e0:   je     0x00007f95f44f897c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@356 (line 135)
   0.28%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │││             0x00007f95f44f87e6:   mov    $0x9,%r11d
   0.02%  │ │││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │╰│             0x00007f95f44f87ec:   jmp    0x00007f95f44f8616
          │ ↘││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │ │             0x00007f95f44f87f1:   xor    %eax,%eax
          │  ││     │││ │  │  ││ ││ │   │││ │  │││ │ │ │ ╰             0x00007f95f44f87f3:   jmp    0x00007f95f44f848f
          │  ↘│     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f87f8:   mov    $0xffffff45,%esi
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f87fd:   xchg   %ax,%ax
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f87ff:   call   0x00007f95f3f8af00           ; ImmutableOopMap {[0]=Oop }
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) java.lang.String::isLatin1@10 (line 4817)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::hashCode@17 (line 2365)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f8804:   nopl   0xd0006f4(%rax,%rax,1)       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::isLatin1@10 (line 4817)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - java.lang.String::hashCode@17 (line 2365)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │   │     │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │   ↘     │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f880c:   mov    $0xffffff45,%esi
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f8811:   mov    %eax,0xc(%rsp)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f8815:   xchg   %ax,%ax
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f8817:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) java.lang.String::hashCode@42 (line 2367)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │               0x00007f95f44f881c:   nopl   0xe00070c(%rax,%rax,1)       ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││ ││ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││ ↘│ │   │││ │  │││ │ │ │               0x00007f95f44f8824:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007f95f44f8829:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007f95f44f882d:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007f95f44f8830:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007f95f44f8833:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │               0x00007f95f44f8838:   nopl   0xf000728(%rax,%rax,1)       ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │  │││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   │││ │  ↘││ │ │ │               0x00007f95f44f8840:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007f95f44f8845:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007f95f44f8849:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007f95f44f884c:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007f95f44f884f:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │               0x00007f95f44f8854:   nopl   0x10000744(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │   ││ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   │││ │   ↘│ │ │ │               0x00007f95f44f885c:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007f95f44f8861:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007f95f44f8865:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007f95f44f8868:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007f95f44f886b:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │               0x00007f95f44f8870:   nopl   0x11000760(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │   │││ │    │ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │   ↘││ │    │ │ │ │               0x00007f95f44f8878:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007f95f44f887d:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007f95f44f8881:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007f95f44f8884:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007f95f44f8887:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │               0x00007f95f44f888c:   nopl   0x1200077c(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │    ││ │    │ │ │ │                                                                         ;   {other}
          │         │││ │  │  ││  │ │    ↘│ │    │ │ │ │               0x00007f95f44f8894:   mov    $0xffffff45,%esi
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f8899:   mov    (%rsp),%rbp
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f889d:   mov    %eax,(%rsp)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88a0:   data16 xchg %ax,%ax
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88a3:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88a8:   nopl   0x13000798(%rax,%rax,1)      ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
          │         │││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │         ↘││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88b0:   mov    $0xffffff45,%esi
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88b5:   mov    (%rsp),%rbp
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88b9:   mov    %eax,(%rsp)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88bc:   data16 xchg %ax,%ax
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88bf:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88c4:   nopl   0x140007b4(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │          ││ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │          ↘│ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88cc:   mov    $0xffffff45,%esi
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88d1:   mov    (%rsp),%rbp
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88d5:   mov    %eax,(%rsp)
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88d8:   data16 xchg %ax,%ax
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88db:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │  ││  │ │     │ │    │ │ │ │               0x00007f95f44f88e0:   nopl   0x150007d0(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │           │ │  │  ││  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │  ↘│  │ │     │ │    │ │ │ │               0x00007f95f44f88e8:   mov    $0xffffff45,%esi
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007f95f44f88ed:   mov    (%rsp),%rbp
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007f95f44f88f1:   mov    %eax,(%rsp)
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007f95f44f88f4:   data16 xchg %ax,%ax
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007f95f44f88f7:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop }
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │  │ │     │ │    │ │ │ │               0x00007f95f44f88fc:   nopl   0x160007ec(%rax,%rax,1)      ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
          │           │ │  │   │  │ │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │   │  ↘ │     │ │    │ │ │ │               0x00007f95f44f8904:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007f95f44f8909:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007f95f44f890b:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@308 (line 135)
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │    │ │ │ │               0x00007f95f44f8910:   nopl   0x17000800(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@308 (line 135)
          │           │ │  │   │    │     │ │    │ │ │ │                                                                         ;   {other}
          │           │ │  │   │    │     │ │    │ ↘ │ │               0x00007f95f44f8918:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │    │   │ │               0x00007f95f44f891d:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │    │   │ │               0x00007f95f44f891f:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │    │   │ │               0x00007f95f44f8924:   nopl   0x18000814(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │    │   │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
          │           │ │  │   │    │     │ │    │   │ │                                                                         ;   {other}
          │           │ │  │   │    │     │ │    ↘   │ │               0x00007f95f44f892c:   mov    $0xffffff45,%esi
          │           │ │  │   │    │     │ │        │ │               0x00007f95f44f8931:   mov    %eax,%ebp
          │           │ │  │   │    │     │ │        │ │               0x00007f95f44f8933:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │  │   │    │     │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@324 (line 135)
          │           │ │  │   │    │     │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │    │     │ │        │ │               0x00007f95f44f8938:   nopl   0x19000828(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │    │     │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@324 (line 135)
          │           │ │  │   │    │     │ │        │ │                                                                         ;   {other}
          │           │ │  │   │    ↘     │ │        │ │               0x00007f95f44f8940:   mov    $0xffffff45,%esi
          │           │ │  │   │          │ │        │ │               0x00007f95f44f8945:   mov    %eax,%ebp
          │           │ │  │   │          │ │        │ │               0x00007f95f44f8947:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │  │   │          │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │  │   │          │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
          │           │ │  │   │          │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │  │   │          │ │        │ │               0x00007f95f44f894c:   nopl   0x1a00083c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │  │   │          │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
          │           │ │  │   │          │ │        │ │                                                                         ;   {other}
          │           │ │  ↘   │          │ │        │ │               0x00007f95f44f8954:   mov    $0xffffff45,%esi
          │           │ │      │          │ │        │ │               0x00007f95f44f8959:   mov    %eax,%ebp
          │           │ │      │          │ │        │ │               0x00007f95f44f895b:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │        │ │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │        │ │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
          │           │ │      │          │ │        │ │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │        │ │               0x00007f95f44f8960:   nopl   0x1b000850(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │        │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
          │           │ │      │          │ │        │ │                                                                         ;   {other}
          │           │ │      │          │ │        ↘ │               0x00007f95f44f8968:   mov    $0xffffff45,%esi
          │           │ │      │          │ │          │               0x00007f95f44f896d:   mov    %eax,%ebp
          │           │ │      │          │ │          │               0x00007f95f44f896f:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │          │                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │          │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
          │           │ │      │          │ │          │                                                                         ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │          │               0x00007f95f44f8974:   nopl   0x1c000864(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
          │           │ │      │          │ │          │                                                                         ;   {other}
          │           │ │      │          │ │          ↘               0x00007f95f44f897c:   mov    $0xffffff45,%esi
          │           │ │      │          │ │                          0x00007f95f44f8981:   mov    %eax,%ebp
          │           │ │      │          │ │                          0x00007f95f44f8983:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │      │          │ │                                                                                    ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │ │                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@356 (line 135)
          │           │ │      │          │ │                                                                                    ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │ │                          0x00007f95f44f8988:   nopl   0x1d000878(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │ │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@356 (line 135)
          │           │ │      │          │ │                                                                                    ;   {other}
          │           │ │      │          │ ↘                          0x00007f95f44f8990:   mov    $0xffffff45,%esi
          │           │ │      │          │                            0x00007f95f44f8995:   mov    %eax,%ebp
          │           │ │      │          │                            0x00007f95f44f8997:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │      │          │                                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │          │                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@340 (line 135)
          │           │ │      │          │                                                                                      ;   {runtime_call UncommonTrapBlob}
          │           │ │      │          │                            0x00007f95f44f899c:   nopl   0x1e00088c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@340 (line 135)
          │           │ │      │          │                                                                                      ;   {other}
          │           │ │      │          ↘                            0x00007f95f44f89a4:   mov    $0xffffff45,%esi
          │           │ │      │                                       0x00007f95f44f89a9:   mov    %eax,%ebp
          │           │ │      │                                       0x00007f95f44f89ab:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │ │      │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │ │      │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@388 (line 135)
          │           │ │      │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │           │ │      │                                       0x00007f95f44f89b0:   nopl   0x1f0008a0(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │ │      │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@388 (line 135)
          │           │ │      │                                                                                                 ;   {other}
          │           │ ↘      │                                       0x00007f95f44f89b8:   mov    $0xffffff45,%esi
          │           │        │                                       0x00007f95f44f89bd:   mov    %eax,%ebp
          │           │        │                                       0x00007f95f44f89bf:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │           │        │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │           │        │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
          │           │        │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │           │        │                                       0x00007f95f44f89c4:   nopl   0x200008b4(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │           │        │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
          │           │        │                                                                                                 ;   {other}
          │           ↘        │                                       0x00007f95f44f89cc:   mov    $0xffffff45,%esi
          │                    │                                       0x00007f95f44f89d1:   mov    %eax,%ebp
          │                    │                                       0x00007f95f44f89d3:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │                    │                                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                    │                                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@372 (line 135)
          │                    │                                                                                                 ;   {runtime_call UncommonTrapBlob}
          │                    │                                       0x00007f95f44f89d8:   nopl   0x210008c8(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@372 (line 135)
          │                    │                                                                                                 ;   {other}
          │                    ↘                                       0x00007f95f44f89e0:   mov    $0xffffff45,%esi
          │                                                            0x00007f95f44f89e5:   mov    %eax,%ebp
          │                                                            0x00007f95f44f89e7:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
          │                                                                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
          │                                                                                                                      ;   {runtime_call UncommonTrapBlob}
          │                                                            0x00007f95f44f89ec:   nopl   0x220008dc(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
          │                                                                                                                      ;   {other}
   0.31%  │                                                            0x00007f95f44f89f4:   mov    $0x7,%r10d
          │                                               ╭            0x00007f95f44f89fa:   jmp    0x00007f95f44f8a69
   0.28%  │                                               │            0x00007f95f44f89ff:   mov    $0x6,%r10d
          │                                               │╭           0x00007f95f44f8a05:   jmp    0x00007f95f44f8a69
          │                                               ││           0x00007f95f44f8a0a:   mov    $0x5,%r10d
          │                                               ││╭          0x00007f95f44f8a10:   jmp    0x00007f95f44f8a69
   0.27%  │                                               │││          0x00007f95f44f8a15:   mov    $0xb,%r10d
   0.01%  │                                               │││          0x00007f95f44f8a1b:   nopl   0x0(%rax,%rax,1)
          │                                               │││╭         0x00007f95f44f8a20:   jmp    0x00007f95f44f8a69
          │                                               ││││         0x00007f95f44f8a25:   mov    $0xa,%r10d
   0.26%  │                                               ││││╭        0x00007f95f44f8a2b:   jmp    0x00007f95f44f8a69
   0.23%  │                                               │││││        0x00007f95f44f8a30:   mov    $0x9,%r10d
   0.00%  │                                               │││││╭       0x00007f95f44f8a36:   jmp    0x00007f95f44f8a69
   0.26%  │                                               ││││││       0x00007f95f44f8a3b:   mov    $0x8,%r10d
   0.07%  │                                               ││││││╭      0x00007f95f44f8a41:   jmp    0x00007f95f44f8a69
   0.24%  │                                               │││││││      0x00007f95f44f8a43:   mov    $0xc,%r10d
   0.07%  │                                               │││││││╭     0x00007f95f44f8a49:   jmp    0x00007f95f44f8a69
   0.06%  │                                               ││││││││     0x00007f95f44f8a4b:   mov    $0x4,%r10d
   0.24%  │                                               ││││││││╭    0x00007f95f44f8a51:   jmp    0x00007f95f44f8a69
   0.32%  │                                               │││││││││    0x00007f95f44f8a53:   mov    $0x3,%r10d
   0.01%  │                                               │││││││││╭   0x00007f95f44f8a59:   jmp    0x00007f95f44f8a69
   0.21%  │                                               ││││││││││   0x00007f95f44f8a5b:   mov    $0x2,%r10d
   0.00%  │                                               ││││││││││╭  0x00007f95f44f8a61:   jmp    0x00007f95f44f8a69
   0.32%  │                                               │││││││││││  0x00007f95f44f8a63:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                               │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@758 (line 168)
   2.55%  │                                               ↘↘↘↘↘↘↘↘↘↘↘  0x00007f95f44f8a69:   mov    %r10d,%eax
          │                                                            0x00007f95f44f8a6c:   add    $0x20,%rsp
   1.04%  │                                                            0x00007f95f44f8a70:   pop    %rbp
   2.97%  │                                                            0x00007f95f44f8a71:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                                                            0x00007f95f44f8a78:   ja     0x00007f95f44f8af4
   0.36%  │                                                            0x00007f95f44f8a7e:   ret    
          ↘                                                            0x00007f95f44f8a7f:   mov    $0xfffffff6,%esi
                                                                       0x00007f95f44f8a84:   data16 xchg %ax,%ax
                                                                       0x00007f95f44f8a87:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
                                                                                                                                 ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                                                                 ;   {runtime_call UncommonTrapBlob}
                                                                       0x00007f95f44f8a8c:   nopl   0x2300097c(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
                                                                                                                                 ;   {other}
                                                                       0x00007f95f44f8a94:   mov    %rax,%rsi
....................................................................................................
  60.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 328 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007f95f44e3120:   mov    0x8(%rsi),%r10d
                                0x00007f95f44e3124:   movabs $0x7f956b000000,%r11
                                0x00007f95f44e312e:   add    %r11,%r10
                                0x00007f95f44e3131:   cmp    %r10,%rax
                                0x00007f95f44e3134:   jne    0x00007f95f3f85080           ;   {runtime_call ic_miss_stub}
                                0x00007f95f44e313a:   xchg   %ax,%ax
                                0x00007f95f44e313c:   nopl   0x0(%rax)
                              [Verified Entry Point]
   1.83%                        0x00007f95f44e3140:   mov    %eax,-0x14000(%rsp)
   3.01%                        0x00007f95f44e3147:   push   %rbp
   0.89%                        0x00007f95f44e3148:   sub    $0x20,%rsp
   0.97%                        0x00007f95f44e314c:   cmpl   $0x1,0x20(%r15)
   1.73%                        0x00007f95f44e3154:   jne    0x00007f95f44e3306           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   0.99%                        0x00007f95f44e315a:   nopw   0x0(%rax,%rax,1)
   0.55%                        0x00007f95f44e3160:   cmp    %rdx,%rsi
          ╭                     0x00007f95f44e3163:   jne    0x00007f95f44e316f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.45%  │                     0x00007f95f44e3165:   mov    $0x1,%eax
   1.77%  │╭                    0x00007f95f44e316a:   jmp    0x00007f95f44e3282
          ↘│                    0x00007f95f44e316f:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f95f44e32d8
           │                    0x00007f95f44e3173:   nopw   0x0(%rax,%rax,1)
           │                    0x00007f95f44e317c:   data16 data16 xchg %ax,%ax
           │                    0x00007f95f44e3180:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007f95f44e3187:   jne    0x00007f95f44e32b8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007f95f44e318d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007f95f44e3192:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007f95f44e3196:   cmp    %ebp,%r10d
           │╭                   0x00007f95f44e3199:   jne    0x00007f95f44e329c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007f95f44e319f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007f95f44e31a3:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007f95f44e31a7:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007f95f44e31ac:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007f95f44e31b1:   cmp    %r9d,%ecx
           ││╭                  0x00007f95f44e31b4:   jne    0x00007f95f44e3298           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007f95f44e31ba:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007f95f44e31be:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007f95f44e31c3:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007f95f44e31c7:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007f95f44e31cc:   test   %ecx,%ecx
           │││╭                 0x00007f95f44e31ce:   je     0x00007f95f44e3271
           ││││                 0x00007f95f44e31d4:   mov    %ecx,%eax
           ││││                 0x00007f95f44e31d6:   and    $0x1f,%eax
           ││││                 0x00007f95f44e31d9:   and    $0xffffffe0,%ecx
           ││││╭                0x00007f95f44e31dc:   je     0x00007f95f44e322d
           │││││                0x00007f95f44e31e2:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007f95f44e31e6:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007f95f44e31ea:   neg    %rcx
           │││││ ↗              0x00007f95f44e31ed:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007f95f44e31f2:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007f95f44e31f7:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007f95f44e31fb:   vptest %ymm1,%ymm1
           │││││╭│              0x00007f95f44e3200:   jne    0x00007f95f44e3278
           │││││││              0x00007f95f44e3206:   add    $0x20,%rcx
           ││││││╰              0x00007f95f44e320a:   jne    0x00007f95f44e31ed
           ││││││               0x00007f95f44e320c:   test   %eax,%eax
           ││││││ ╭             0x00007f95f44e320e:   je     0x00007f95f44e3271
           ││││││ │             0x00007f95f44e3214:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007f95f44e321a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007f95f44e3220:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007f95f44e3224:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007f95f44e3229:   jne    0x00007f95f44e3278
           ││││││ ││╭           0x00007f95f44e322b:   jmp    0x00007f95f44e3271
           ││││↘│ │││           0x00007f95f44e322d:   mov    %eax,%ecx
           ││││ │ │││           0x00007f95f44e322f:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007f95f44e3232:   je     0x00007f95f44e324d
           ││││ │ ││││          0x00007f95f44e3234:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007f95f44e3238:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007f95f44e323c:   neg    %rcx
           ││││ │ ││││ ↗        0x00007f95f44e323f:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007f95f44e3242:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007f95f44e3245:   jne    0x00007f95f44e3278
           ││││ │ ││││││        0x00007f95f44e3247:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007f95f44e324b:   jne    0x00007f95f44e323f
           ││││ │ │││↘│         0x00007f95f44e324d:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007f95f44e324f:   je     0x00007f95f44e3263
           ││││ │ │││ │ │       0x00007f95f44e3251:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007f95f44e3254:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007f95f44e3257:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007f95f44e3259:   jne    0x00007f95f44e3278
           ││││ │ │││ │ ││      0x00007f95f44e325b:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007f95f44e325f:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007f95f44e3263:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007f95f44e3265:   je     0x00007f95f44e3271
           ││││ │ │││ │  ││     0x00007f95f44e3267:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007f95f44e326a:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007f95f44e326d:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007f95f44e326f:   jne    0x00007f95f44e3278
           │││↘ │ ↘│↘ │  │↘│    0x00007f95f44e3271:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007f95f44e3276:   jmp    0x00007f95f44e327a
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007f95f44e3278:   xor    %eax,%eax
           │││              ↘   0x00007f95f44e327a:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007f95f44e327e:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   0.97%   ↘││               ↗  0x00007f95f44e3282:   vzeroupper 
   3.71%    ││               │  0x00007f95f44e3285:   add    $0x20,%rsp
   0.57%    ││               │  0x00007f95f44e3289:   pop    %rbp
   0.76%    ││               │  0x00007f95f44e328a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007f95f44e3291:   ja     0x00007f95f44e32f0
   2.84%    ││               │  0x00007f95f44e3297:   ret    
            │↘               │  0x00007f95f44e3298:   xor    %eax,%eax
            │                ╰  0x00007f95f44e329a:   jmp    0x00007f95f44e3282
            ↘                   0x00007f95f44e329c:   mov    $0xffffff45,%esi
                                0x00007f95f44e32a1:   mov    %r10d,(%rsp)
                                0x00007f95f44e32a5:   data16 xchg %ax,%ax
                                0x00007f95f44e32a8:   vzeroupper 
                                0x00007f95f44e32ab:   call   0x00007f95f3f8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  21.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 621 

                 # {method} {0x00007f95674792e8} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f95f44f9ea0:   mov    0x8(%rsi),%r10d
                 0x00007f95f44f9ea4:   movabs $0x7f956b000000,%r11
                 0x00007f95f44f9eae:   add    %r11,%r10
                 0x00007f95f44f9eb1:   cmp    %r10,%rax
                 0x00007f95f44f9eb4:   jne    0x00007f95f3f85080           ;   {runtime_call ic_miss_stub}
                 0x00007f95f44f9eba:   xchg   %ax,%ax
                 0x00007f95f44f9ebc:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007f95f44f9ec0:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f95f44f9ec7:   push   %rbp
   0.00%         0x00007f95f44f9ec8:   sub    $0x30,%rsp
   0.00%         0x00007f95f44f9ecc:   cmpl   $0x1,0x20(%r15)
   0.01%         0x00007f95f44f9ed4:   jne    0x00007f95f44f9fca           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@-1 (line 103)
   0.00%         0x00007f95f44f9eda:   mov    %rsi,%r10
   0.00%         0x00007f95f44f9edd:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                 0x00007f95f44f9ee1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f95f44f9fa1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
   0.00%         0x00007f95f44f9ee6:   test   %ebx,%ebx
          ╭      0x00007f95f44f9ee8:   jbe    0x00007f95f44f9f72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.00%  │      0x00007f95f44f9eee:   mov    %ebx,%r11d
          │      0x00007f95f44f9ef1:   dec    %r11d
          │      0x00007f95f44f9ef4:   cmp    %ebx,%r11d
          │╭     0x00007f95f44f9ef7:   jae    0x00007f95f44f9f76
   0.01%  ││     0x00007f95f44f9efd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          ││     0x00007f95f44f9f01:   xor    %ebp,%ebp
          ││     0x00007f95f44f9f03:   xor    %r11d,%r11d
          ││     0x00007f95f44f9f06:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007f95f44f9f0b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f95f44f9f0f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f95f44f9f14:   jmp    0x00007f95f44f9f29
          │││    0x00007f95f44f9f16:   data16 nopw 0x0(%rax,%rax,1)
          │││↗   0x00007f95f44f9f20:   mov    (%rsp),%r8
   0.27%  ││││   0x00007f95f44f9f24:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   0.89%  ││↘│   0x00007f95f44f9f29:   mov    0x10(%r8,%rbp,4),%r11d
   2.66%  ││ │   0x00007f95f44f9f2e:   mov    %r8,(%rsp)
   0.00%  ││ │   0x00007f95f44f9f32:   mov    %r11,%rdx
   0.23%  ││ │   0x00007f95f44f9f35:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.90%  ││ │   0x00007f95f44f9f39:   mov    0x8(%rsp),%rsi
   2.55%  ││ │   0x00007f95f44f9f3e:   nop
   0.00%  ││ │   0x00007f95f44f9f3f:   call   0x00007f95f44f8420           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {optimized virtual_call}
   0.95%  ││ │   0x00007f95f44f9f44:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {other}
   2.60%  ││ │   0x00007f95f44f9f4c:   mov    0x14(%rsp),%r10d
   0.27%  ││ │   0x00007f95f44f9f51:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.93%  ││ │   0x00007f95f44f9f54:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   2.59%  ││ │   0x00007f95f44f9f56:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f95f44f9f5a:   jl     0x00007f95f44f9f20
   0.01%  ││     0x00007f95f44f9f5c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          ││  ↗  0x00007f95f44f9f5f:   add    $0x30,%rsp
   0.03%  ││  │  0x00007f95f44f9f63:   pop    %rbp
   0.01%  ││  │  0x00007f95f44f9f64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f95f44f9f6b:   ja     0x00007f95f44f9fb4
   0.00%  ││  │  0x00007f95f44f9f71:   ret    
          ↘│  │  0x00007f95f44f9f72:   xor    %eax,%eax
           │  ╰  0x00007f95f44f9f74:   jmp    0x00007f95f44f9f5f
           ↘     0x00007f95f44f9f76:   mov    $0xffffff76,%esi
                 0x00007f95f44f9f7b:   mov    %r10,%rbp
                 0x00007f95f44f9f7e:   mov    %ebx,0x4(%rsp)
                 0x00007f95f44f9f82:   mov    %r9d,0x8(%rsp)
                 0x00007f95f44f9f87:   call   0x00007f95f3f8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  14.95%  <total for region 3>

....[Hottest Regions]...............................................................................
  60.53%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 616 
  21.03%           c2, level 4  java.lang.String::equals, version 2, compile id 328 
  14.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 621 
   0.35%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  native_read_msr 
   0.20%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 659 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.41%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.53%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 616 
  21.03%           c2, level 4  java.lang.String::equals, version 2, compile id 328 
  14.95%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 621 
   0.35%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.32%     [kernel.kallsyms]  native_read_msr 
   0.20%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.15%     [kernel.kallsyms]  release_pages 
   0.14%     [kernel.kallsyms]  __mod_lruvec_state 
   0.13%     [kernel.kallsyms]  __free_one_page 
   0.12%     [kernel.kallsyms]  page_remove_rmap 
   0.12%     [kernel.kallsyms]  zap_pte_range 
   0.08%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  free_unref_page_list 
   0.07%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.06%     [kernel.kallsyms]  __mod_zone_page_state 
   0.06%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 659 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __rcu_read_unlock 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.41%  <...other 241 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.57%           c2, level 4
   2.96%     [kernel.kallsyms]
   0.25%             libjvm.so
   0.15%             libc.so.6
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%                      
   0.00%           c1, level 3
   0.00%         perf-6292.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:02:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.425 ns/op
# Warmup Iteration   2: 24.157 ns/op
# Warmup Iteration   3: 24.212 ns/op
# Warmup Iteration   4: 24.786 ns/op
# Warmup Iteration   5: 24.201 ns/op
Iteration   1: 24.176 ns/op
Iteration   2: 24.225 ns/op
Iteration   3: 24.234 ns/op
Iteration   4: 24.439 ns/op
Iteration   5: 24.614 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  24.338 ±(99.9%) 0.711 ns/op [Average]
  (min, avg, max) = (24.176, 24.338, 24.614), stdev = 0.185
  CI (99.9%): [23.627, 25.049] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 129781 total address lines.
Perf output processed (skipped 67.501 seconds):
 Column 1: cycles (49814 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 661 

 <region is too big to display, has 1034 lines, but threshold is 1000>
....................................................................................................
  59.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 319 

                                # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                                #           [sp+0x30]  (sp of caller)
                                0x00007fe30c4e35a0:   mov    0x8(%rsi),%r10d
                                0x00007fe30c4e35a4:   movabs $0x7fe287000000,%r11
                                0x00007fe30c4e35ae:   add    %r11,%r10
                                0x00007fe30c4e35b1:   cmp    %r10,%rax
                                0x00007fe30c4e35b4:   jne    0x00007fe30bf85080           ;   {runtime_call ic_miss_stub}
                                0x00007fe30c4e35ba:   xchg   %ax,%ax
                                0x00007fe30c4e35bc:   nopl   0x0(%rax)
                              [Verified Entry Point]
   1.94%                        0x00007fe30c4e35c0:   mov    %eax,-0x14000(%rsp)
   6.60%                        0x00007fe30c4e35c7:   push   %rbp
   1.37%                        0x00007fe30c4e35c8:   sub    $0x20,%rsp
   0.30%                        0x00007fe30c4e35cc:   cmpl   $0x1,0x20(%r15)
   2.00%                        0x00007fe30c4e35d4:   jne    0x00007fe30c4e3786           ;*synchronization entry
                                                                                          ; - java.lang.String::equals@-1 (line 1858)
   1.08%                        0x00007fe30c4e35da:   nopw   0x0(%rax,%rax,1)
   0.09%                        0x00007fe30c4e35e0:   cmp    %rdx,%rsi
          ╭                     0x00007fe30c4e35e3:   jne    0x00007fe30c4e35ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.String::equals@2 (line 1858)
   0.22%  │                     0x00007fe30c4e35e5:   mov    $0x1,%eax
   1.90%  │╭                    0x00007fe30c4e35ea:   jmp    0x00007fe30c4e3702
          ↘│                    0x00007fe30c4e35ef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fe30c4e3758
           │                    0x00007fe30c4e35f3:   nopw   0x0(%rax,%rax,1)
           │                    0x00007fe30c4e35fc:   data16 data16 xchg %ax,%ax
           │                    0x00007fe30c4e3600:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
           │                    0x00007fe30c4e3607:   jne    0x00007fe30c4e3738           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@8 (line 1863)
           │                    0x00007fe30c4e360d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@26 (line 1861)
           │                    0x00007fe30c4e3612:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                                              ; - java.lang.String::equals@30 (line 1861)
           │                    0x00007fe30c4e3616:   cmp    %ebp,%r10d
           │╭                   0x00007fe30c4e3619:   jne    0x00007fe30c4e371c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@33 (line 1861)
           ││                   0x00007fe30c4e361f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@41 (line 1861)
           ││                   0x00007fe30c4e3623:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                             ; - java.lang.String::equals@37 (line 1861)
           ││                   0x00007fe30c4e3627:   mov    0xc(%r12,%r11,8),%r9d
           ││                   0x00007fe30c4e362c:   mov    0xc(%r12,%r10,8),%ecx
           ││                   0x00007fe30c4e3631:   cmp    %r9d,%ecx
           ││╭                  0x00007fe30c4e3634:   jne    0x00007fe30c4e3718           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@44 (line 1863)
           │││                  0x00007fe30c4e363a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@41 (line 1861)
           │││                  0x00007fe30c4e363e:   lea    0x10(%r12,%r11,8),%rsi
           │││                  0x00007fe30c4e3643:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                            ; - java.lang.String::equals@37 (line 1861)
           │││                  0x00007fe30c4e3647:   lea    0x10(%r12,%r10,8),%rdi
           │││                  0x00007fe30c4e364c:   test   %ecx,%ecx
           │││╭                 0x00007fe30c4e364e:   je     0x00007fe30c4e36f1
           ││││                 0x00007fe30c4e3654:   mov    %ecx,%eax
           ││││                 0x00007fe30c4e3656:   and    $0x1f,%eax
           ││││                 0x00007fe30c4e3659:   and    $0xffffffe0,%ecx
           ││││╭                0x00007fe30c4e365c:   je     0x00007fe30c4e36ad
           │││││                0x00007fe30c4e3662:   lea    (%rdi,%rcx,1),%rdi
           │││││                0x00007fe30c4e3666:   lea    (%rsi,%rcx,1),%rsi
           │││││                0x00007fe30c4e366a:   neg    %rcx
           │││││ ↗              0x00007fe30c4e366d:   vmovdqu (%rdi,%rcx,1),%ymm1
           │││││ │              0x00007fe30c4e3672:   vmovdqu (%rsi,%rcx,1),%ymm0
           │││││ │              0x00007fe30c4e3677:   vpxor  %ymm0,%ymm1,%ymm1
           │││││ │              0x00007fe30c4e367b:   vptest %ymm1,%ymm1
           │││││╭│              0x00007fe30c4e3680:   jne    0x00007fe30c4e36f8
           │││││││              0x00007fe30c4e3686:   add    $0x20,%rcx
           ││││││╰              0x00007fe30c4e368a:   jne    0x00007fe30c4e366d
           ││││││               0x00007fe30c4e368c:   test   %eax,%eax
           ││││││ ╭             0x00007fe30c4e368e:   je     0x00007fe30c4e36f1
           ││││││ │             0x00007fe30c4e3694:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
           ││││││ │             0x00007fe30c4e369a:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
           ││││││ │             0x00007fe30c4e36a0:   vpxor  %ymm0,%ymm1,%ymm1
           ││││││ │             0x00007fe30c4e36a4:   vptest %ymm1,%ymm1
           ││││││ │╭            0x00007fe30c4e36a9:   jne    0x00007fe30c4e36f8
           ││││││ ││╭           0x00007fe30c4e36ab:   jmp    0x00007fe30c4e36f1
           ││││↘│ │││           0x00007fe30c4e36ad:   mov    %eax,%ecx
           ││││ │ │││           0x00007fe30c4e36af:   and    $0xfffffffc,%ecx
           ││││ │ │││╭          0x00007fe30c4e36b2:   je     0x00007fe30c4e36cd
           ││││ │ ││││          0x00007fe30c4e36b4:   lea    (%rdi,%rcx,1),%rdi
           ││││ │ ││││          0x00007fe30c4e36b8:   lea    (%rsi,%rcx,1),%rsi
           ││││ │ ││││          0x00007fe30c4e36bc:   neg    %rcx
           ││││ │ ││││ ↗        0x00007fe30c4e36bf:   mov    (%rdi,%rcx,1),%ebx
           ││││ │ ││││ │        0x00007fe30c4e36c2:   cmp    (%rsi,%rcx,1),%ebx
           ││││ │ ││││╭│        0x00007fe30c4e36c5:   jne    0x00007fe30c4e36f8
           ││││ │ ││││││        0x00007fe30c4e36c7:   add    $0x4,%rcx
           ││││ │ │││││╰        0x00007fe30c4e36cb:   jne    0x00007fe30c4e36bf
           ││││ │ │││↘│         0x00007fe30c4e36cd:   test   $0x2,%al
           ││││ │ │││ │ ╭       0x00007fe30c4e36cf:   je     0x00007fe30c4e36e3
           ││││ │ │││ │ │       0x00007fe30c4e36d1:   movzwl (%rdi),%ebx
           ││││ │ │││ │ │       0x00007fe30c4e36d4:   movzwl (%rsi),%ecx
           ││││ │ │││ │ │       0x00007fe30c4e36d7:   cmp    %ecx,%ebx
           ││││ │ │││ │ │╭      0x00007fe30c4e36d9:   jne    0x00007fe30c4e36f8
           ││││ │ │││ │ ││      0x00007fe30c4e36db:   lea    0x2(%rdi),%rdi
           ││││ │ │││ │ ││      0x00007fe30c4e36df:   lea    0x2(%rsi),%rsi
           ││││ │ │││ │ ↘│      0x00007fe30c4e36e3:   test   $0x1,%al
           ││││ │ │││ │  │╭     0x00007fe30c4e36e5:   je     0x00007fe30c4e36f1
           ││││ │ │││ │  ││     0x00007fe30c4e36e7:   movzbl (%rdi),%ebx
           ││││ │ │││ │  ││     0x00007fe30c4e36ea:   movzbl (%rsi),%ecx
           ││││ │ │││ │  ││     0x00007fe30c4e36ed:   cmp    %ecx,%ebx
           ││││ │ │││ │  ││╭    0x00007fe30c4e36ef:   jne    0x00007fe30c4e36f8
           │││↘ │ ↘│↘ │  │↘│    0x00007fe30c4e36f1:   mov    $0x1,%eax
           │││  │  │  │  │ │╭   0x00007fe30c4e36f6:   jmp    0x00007fe30c4e36fa
           │││  ↘  ↘  ↘  ↘ ↘│   0x00007fe30c4e36f8:   xor    %eax,%eax
           │││              ↘   0x00007fe30c4e36fa:   vpxor  %ymm1,%ymm1,%ymm1
           │││                  0x00007fe30c4e36fe:   vpxor  %ymm0,%ymm0,%ymm0            ;*synchronization entry
           │││                                                                            ; - java.lang.String::equals@-1 (line 1858)
           │││                                                                            ;   {no_reloc}
   0.98%   ↘││               ↗  0x00007fe30c4e3702:   vzeroupper 
   3.29%    ││               │  0x00007fe30c4e3705:   add    $0x20,%rsp
   0.08%    ││               │  0x00007fe30c4e3709:   pop    %rbp
   0.39%    ││               │  0x00007fe30c4e370a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ││               │  0x00007fe30c4e3711:   ja     0x00007fe30c4e3770
   3.02%    ││               │  0x00007fe30c4e3717:   ret    
            │↘               │  0x00007fe30c4e3718:   xor    %eax,%eax
            │                ╰  0x00007fe30c4e371a:   jmp    0x00007fe30c4e3702
            ↘                   0x00007fe30c4e371c:   mov    $0xffffff45,%esi
                                0x00007fe30c4e3721:   mov    %r10d,(%rsp)
                                0x00007fe30c4e3725:   data16 xchg %ax,%ax
                                0x00007fe30c4e3728:   vzeroupper 
                                0x00007fe30c4e372b:   call   0x00007fe30bf8af00           ; ImmutableOopMap {}
                                                                                          ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                                                          ; - (reexecute) java.lang.String::equals@33 (line 1861)
                                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  23.27%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 666 

                 # {method} {0x00007fe2834792e8} &apos;switch_statements&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007fe30c4fa120:   mov    0x8(%rsi),%r10d
                 0x00007fe30c4fa124:   movabs $0x7fe287000000,%r11
                 0x00007fe30c4fa12e:   add    %r11,%r10
                 0x00007fe30c4fa131:   cmp    %r10,%rax
                 0x00007fe30c4fa134:   jne    0x00007fe30bf85080           ;   {runtime_call ic_miss_stub}
                 0x00007fe30c4fa13a:   xchg   %ax,%ax
                 0x00007fe30c4fa13c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007fe30c4fa140:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007fe30c4fa147:   push   %rbp
   0.01%         0x00007fe30c4fa148:   sub    $0x30,%rsp
                 0x00007fe30c4fa14c:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007fe30c4fa154:   jne    0x00007fe30c4fa24a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@-1 (line 103)
   0.00%         0x00007fe30c4fa15a:   mov    %rsi,%r10
                 0x00007fe30c4fa15d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                 0x00007fe30c4fa161:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fe30c4fa221
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
   0.00%         0x00007fe30c4fa166:   test   %ebx,%ebx
          ╭      0x00007fe30c4fa168:   jbe    0x00007fe30c4fa1f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          │      0x00007fe30c4fa16e:   mov    %ebx,%r11d
          │      0x00007fe30c4fa171:   dec    %r11d
          │      0x00007fe30c4fa174:   cmp    %ebx,%r11d
          │╭     0x00007fe30c4fa177:   jae    0x00007fe30c4fa1f6
   0.01%  ││     0x00007fe30c4fa17d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          ││     0x00007fe30c4fa181:   xor    %ebp,%ebp
          ││     0x00007fe30c4fa183:   xor    %r11d,%r11d
          ││     0x00007fe30c4fa186:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007fe30c4fa18b:   mov    %ebx,0x10(%rsp)
          ││     0x00007fe30c4fa18f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007fe30c4fa194:   jmp    0x00007fe30c4fa1a9
          │││    0x00007fe30c4fa196:   data16 nopw 0x0(%rax,%rax,1)
          │││↗   0x00007fe30c4fa1a0:   mov    (%rsp),%r8
   0.14%  ││││   0x00007fe30c4fa1a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   0.38%  ││↘│   0x00007fe30c4fa1a9:   mov    0x10(%r8,%rbp,4),%r11d
   2.79%  ││ │   0x00007fe30c4fa1ae:   mov    %r8,(%rsp)
   0.00%  ││ │   0x00007fe30c4fa1b2:   mov    %r11,%rdx
   0.12%  ││ │   0x00007fe30c4fa1b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   0.47%  ││ │   0x00007fe30c4fa1b9:   mov    0x8(%rsp),%rsi
   2.74%  ││ │   0x00007fe30c4fa1be:   nop
   0.00%  ││ │   0x00007fe30c4fa1bf:   call   0x00007fe30c4f7800           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {optimized virtual_call}
   0.46%  ││ │   0x00007fe30c4fa1c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {other}
   2.86%  ││ │   0x00007fe30c4fa1cc:   mov    0x14(%rsp),%r10d
   0.11%  ││ │   0x00007fe30c4fa1d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   0.43%  ││ │   0x00007fe30c4fa1d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   2.87%  ││ │   0x00007fe30c4fa1d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007fe30c4fa1da:   jl     0x00007fe30c4fa1a0
   0.00%  ││     0x00007fe30c4fa1dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.01%  ││  ↗  0x00007fe30c4fa1df:   add    $0x30,%rsp
   0.01%  ││  │  0x00007fe30c4fa1e3:   pop    %rbp
   0.02%  ││  │  0x00007fe30c4fa1e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fe30c4fa1eb:   ja     0x00007fe30c4fa234
   0.01%  ││  │  0x00007fe30c4fa1f1:   ret    
          ↘│  │  0x00007fe30c4fa1f2:   xor    %eax,%eax
           │  ╰  0x00007fe30c4fa1f4:   jmp    0x00007fe30c4fa1df
           ↘     0x00007fe30c4fa1f6:   mov    $0xffffff76,%esi
                 0x00007fe30c4fa1fb:   mov    %r10,%rbp
                 0x00007fe30c4fa1fe:   mov    %ebx,0x4(%rsp)
                 0x00007fe30c4fa202:   mov    %r9d,0x8(%rsp)
                 0x00007fe30c4fa207:   call   0x00007fe30bf8af00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  13.47%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.92%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 661 
  23.27%           c2, level 4  java.lang.String::equals, version 2, compile id 319 
  13.47%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 666 
   0.34%     [kernel.kallsyms]  native_read_msr 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.17%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.08%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 702 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   1.24%  <...other 235 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.92%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 661 
  23.27%           c2, level 4  java.lang.String::equals, version 2, compile id 319 
  13.47%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 666 
   0.34%     [kernel.kallsyms]  native_read_msr 
   0.28%     [kernel.kallsyms]  entry_SYSCALL_64 
   0.17%     [kernel.kallsyms]  __free_one_page 
   0.15%     [kernel.kallsyms]  __mod_lruvec_state 
   0.15%     [kernel.kallsyms]  syscall_enter_from_user_mode 
   0.14%     [kernel.kallsyms]  release_pages 
   0.13%     [kernel.kallsyms]  page_remove_rmap 
   0.11%     [kernel.kallsyms]  zap_pte_range 
   0.10%     [kernel.kallsyms]  free_unref_page_list 
   0.10%     [kernel.kallsyms]  asm_sysvec_apic_timer_interrupt 
   0.08%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 702 
   0.07%     [kernel.kallsyms]  __mod_node_page_state 
   0.07%     [kernel.kallsyms]  __mod_zone_page_state 
   0.07%     [kernel.kallsyms]  __rcu_read_unlock 
   0.06%     [kernel.kallsyms]  __mod_memcg_lruvec_state 
   0.05%     [kernel.kallsyms]  lock_page_memcg 
   0.05%     [kernel.kallsyms]  __rcu_read_lock 
   1.24%  <...other 231 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.74%           c2, level 4
   2.86%     [kernel.kallsyms]
   0.20%             libjvm.so
   0.14%             libc.so.6
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%                [vdso]
   0.00%                kvm.ko
   0.00%         perf-6354.map
   0.00%              r8152.ko
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:24:49

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
StringSwitchBenchmark.chained_ifs                      3  avgt    5   5.072 ± 0.160  ns/op
StringSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                      6  avgt    5  10.152 ± 0.314  ns/op
StringSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     12  avgt    5  31.146 ± 0.200  ns/op
StringSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     24  avgt    5  53.063 ± 0.209  ns/op
StringSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               3  avgt    5  12.177 ± 0.186  ns/op
StringSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               6  avgt    5  22.145 ± 0.454  ns/op
StringSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              12  avgt    5  21.970 ± 1.777  ns/op
StringSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              24  avgt    5  22.511 ± 0.209  ns/op
StringSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                3  avgt    5  12.383 ± 0.303  ns/op
StringSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                6  avgt    5  22.149 ± 1.207  ns/op
StringSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               12  avgt    5  21.521 ± 0.840  ns/op
StringSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               24  avgt    5  24.338 ± 0.711  ns/op
StringSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
