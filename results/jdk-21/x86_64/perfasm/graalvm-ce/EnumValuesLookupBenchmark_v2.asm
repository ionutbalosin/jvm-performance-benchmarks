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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 109.436 ns/op
# Warmup Iteration   2: 106.968 ns/op
# Warmup Iteration   3: 106.825 ns/op
# Warmup Iteration   4: 105.370 ns/op
# Warmup Iteration   5: 104.993 ns/op
Iteration   1: 105.698 ns/op
Iteration   2: 107.711 ns/op
Iteration   3: 104.518 ns/op
Iteration   4: 103.924 ns/op
Iteration   5: 107.819 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  105.934 ±(99.9%) 6.891 ns/op [Average]
  (min, avg, max) = (103.924, 105.934, 107.819), stdev = 1.790
  CI (99.9%): [99.043, 112.825] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 214870 total address lines.
Perf output processed (skipped 83.147 seconds):
 Column 1: cycles (50988 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1062 

                           # {method} {0x00007f4a7b479c28} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                           #           [sp+0x30]  (sp of caller)
                           0x00007f4b031946a0:   mov    0x8(%rsi),%r10d
                           0x00007f4b031946a4:   movabs $0x7f4a7f000000,%r12
                           0x00007f4b031946ae:   add    %r12,%r10
                           0x00007f4b031946b1:   xor    %r12,%r12
                           0x00007f4b031946b4:   cmp    %r10,%rax
                           0x00007f4b031946b7:   jne    0x00007f4b02af9080           ;   {runtime_call ic_miss_stub}
                           0x00007f4b031946bd:   data16 xchg %ax,%ax
                         [Verified Entry Point]
   0.94%                   0x00007f4b031946c0:   mov    %eax,-0x14000(%rsp)
   0.02%                   0x00007f4b031946c7:   sub    $0x28,%rsp
   0.99%                   0x00007f4b031946cb:   nop
   0.00%                   0x00007f4b031946cc:   cmpl   $0x1,0x20(%r15)
                           0x00007f4b031946d4:   jne    0x00007f4b03194962
   0.01%                   0x00007f4b031946da:   mov    %rbp,0x20(%rsp)
   1.02%                   0x00007f4b031946df:   movabs $0x7fed3af88,%r11            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007fed3af88})}
   0.00%                   0x00007f4b031946e9:   mov    0x10(%r11),%edx              ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r11=Oop }
                                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   0.00%                   0x00007f4b031946ed:   mov    0x18(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f4b03194986
                                                                                     ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rsi=Oop r11=Oop }
                                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   0.03%                   0x00007f4b031946f4:   movsbl 0x10(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f4b031949ad
   0.98%                   0x00007f4b031946fd:   mov    0x14(,%rcx,8),%r9d           ;* unwind (locked if synchronized)
                                                                                     ; - java.lang.String::equals@-3
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%                   0x00007f4b03194705:   mov    0x14(%rsi),%ebx              ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
   0.00%                   0x00007f4b03194708:   mov    %edx,%ebp
   0.00%                   0x00007f4b0319470a:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.95%                   0x00007f4b0319470e:   cmp    %ecx,%ebx
                           0x00007f4b03194710:   je     0x00007f4b031948ab
   0.00%                   0x00007f4b03194716:   test   %ebx,%ebx
          ╭                0x00007f4b03194718:   je     0x00007f4b03194795
          │                0x00007f4b0319471e:   xchg   %ax,%ax
   0.00%  │                0x00007f4b03194720:   cmp    0x10(,%rbx,8),%r8b
          │╭               0x00007f4b03194728:   jne    0x00007f4b03194795           ;* unwind (locked if synchronized)
          ││                                                                         ; - java.lang.String::equals@-3
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.00%  ││               0x00007f4b0319472e:   mov    0x14(,%rbx,8),%edx           ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rbp=Oop rsi=Oop r9=NarrowOop r11=Oop }
          ││                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   0.00%  ││               0x00007f4b03194735:   mov    0xc(,%rdx,8),%ecx            ; implicit exception: dispatches to 0x00007f4b031949d0
   0.01%  ││               0x00007f4b0319473c:   nopl   0x0(%rax)
   0.91%  ││               0x00007f4b03194740:   test   %r9d,%r9d
          ││               0x00007f4b03194743:   je     0x00007f4b0319493f
   0.00%  ││               0x00007f4b03194749:   mov    0xc(,%r9,8),%r10d
   0.05%  ││               0x00007f4b03194751:   cmp    %ecx,%r10d
          ││╭              0x00007f4b03194754:   jne    0x00007f4b03194795
          │││              0x00007f4b0319475a:   nopw   0x0(%rax,%rax,1)
          │││              0x00007f4b03194760:   test   %ecx,%ecx
          │││              0x00007f4b03194762:   je     0x00007f4b031948b0
          │││              0x00007f4b03194768:   shl    $0x3,%rdx
          │││              0x00007f4b0319476c:   shl    $0x3,%r9
          │││              0x00007f4b03194770:   mov    %rdx,%rsi
          │││              0x00007f4b03194773:   mov    $0x10,%rdx
          │││              0x00007f4b0319477a:   mov    %r9,%rcx
          │││              0x00007f4b0319477d:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │││                                                                        ; - java.lang.String::equals@-3
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │││              0x00007f4b03194784:   mov    %r10d,%r9d
          │││              0x00007f4b03194787:   call   0x00007f4b02d0fb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
          │││              0x00007f4b0319478c:   nop
          │││              0x00007f4b0319478d:   test   %eax,%eax
          │││╭             0x00007f4b0319478f:   jne    0x00007f4b031948a6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  ↘↘↘│             0x00007f4b03194795:   mov    %ebx,%r13d
   0.89%     │             0x00007f4b03194798:   shl    $0x3,%r13                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
   0.00%     │             0x00007f4b0319479c:   mov    %r13,0x10(%rsp)
             │             0x00007f4b031947a1:   test   %ebx,%ebx
             │             0x00007f4b031947a3:   je     0x00007f4b031948b5           ;* unwind (locked if synchronized)
             │                                                                       ; - java.lang.String::equals@-3
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%     │             0x00007f4b031947a9:   mov    0x14(,%rbx,8),%esi           ; ImmutableOopMap {rbx=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r13=Oop [16]=Oop }
             │                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.01%     │             0x00007f4b031947b0:   mov    0xc(,%rsi,8),%r14d           ; implicit exception: dispatches to 0x00007f4b031949f3
   0.00%     │             0x00007f4b031947b8:   movsbl 0x10(,%rbx,8),%ebp
             │             0x00007f4b031947c0:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
             │                                                                       ; - java.lang.String::equals@-3
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%     │             0x00007f4b031947c4:   mov    %rsi,0x8(%rsp)
   0.91%     │             0x00007f4b031947c9:   mov    $0x1,%r10d
             │             0x00007f4b031947cf:   nop
   9.81%     │     ↗↗↗     0x00007f4b031947d0:   cmp    $0x29,%r10d
             │     │││     0x00007f4b031947d4:   jge    0x00007f4b03194917           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
             │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.05%     │     │││     0x00007f4b031947da:   mov    0x10(%r11,%r10,4),%edi       ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
             │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
             │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.99%     │     │││     0x00007f4b031947df:   mov    0x18(,%rdi,8),%edx           ; implicit exception: dispatches to 0x00007f4b03194a16
             │     │││                                                               ; ImmutableOopMap {rdx=NarrowOop rbx=NarrowOop rsi=Oop rdi=NarrowOop r11=Oop [8]=Oop [16]=Oop }
             │     │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │     │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
             │     │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   9.85%     │     │││     0x00007f4b031947e6:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f4b03194a39
   9.85%     │     │││     0x00007f4b031947ee:   mov    0x14(,%rdx,8),%r8d
   0.04%     │     │││     0x00007f4b031947f6:   cmp    %ebx,%edx
             │╭    │││     0x00007f4b031947f8:   je     0x00007f4b0319489a           ;* unwind (locked if synchronized)
             ││    │││                                                               ; - java.lang.String::equals@-3
             ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.91%     ││    │││     0x00007f4b031947fe:   mov    %r10d,%eax
   9.56%     ││    │││     0x00007f4b03194801:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
             ││    │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   8.73%     ││    │││     0x00007f4b03194803:   cmp    %bpl,%cl
             ││╭   │││     0x00007f4b03194806:   jne    0x00007f4b03194865           ; ImmutableOopMap {rbx=NarrowOop rsi=Oop rdi=NarrowOop r8=NarrowOop r11=Oop [8]=Oop [16]=Oop }
             │││   │││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││   │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
             │││   │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.04%     │││   │││     0x00007f4b0319480c:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f4b03194a5c
   1.50%     │││   │││     0x00007f4b03194814:   cmp    %r14d,%r9d
             │││╭  │││     0x00007f4b03194817:   jne    0x00007f4b0319486d
   0.02%     ││││  │││     0x00007f4b0319481d:   data16 xchg %ax,%ax
             ││││  │││     0x00007f4b03194820:   test   %r14d,%r14d
             ││││╭ │││     0x00007f4b03194823:   je     0x00007f4b031948a0
   0.00%     │││││ │││     0x00007f4b03194829:   mov    %edi,0x4(%rsp)
   0.96%     │││││ │││     0x00007f4b0319482d:   shl    $0x3,%r8
   0.04%     │││││ │││     0x00007f4b03194831:   mov    %rsi,%r10
   0.00%     │││││ │││     0x00007f4b03194834:   mov    $0x10,%rdx
             │││││ │││     0x00007f4b0319483b:   mov    %r8,%rcx
   0.91%     │││││ │││     0x00007f4b0319483e:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
             │││││ │││                                                               ; - java.lang.String::equals@-3
             │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             │││││ │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%     │││││ │││     0x00007f4b03194845:   mov    %eax,%r13d
             │││││ │││     0x00007f4b03194848:   call   0x00007f4b02d0fb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.02%     │││││ │││     0x00007f4b0319484d:   nop
             │││││ │││     0x00007f4b0319484e:   test   %eax,%eax
             │││││╭│││     0x00007f4b03194850:   jne    0x00007f4b03194875           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
             │││││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.91%     │││││││││     0x00007f4b03194856:   mov    %r13d,%r10d
   0.00%     │││││││││     0x00007f4b03194859:   mov    0x8(%rsp),%rsi
   0.04%     │││││││││     0x00007f4b0319485e:   xchg   %ax,%ax
   0.94%     ││││││╰││     0x00007f4b03194860:   jmp    0x00007f4b031947d0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
             ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
             ││││││ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
             ││↘│││ ││     0x00007f4b03194865:   mov    %eax,%r10d
             ││ │││ ╰│     0x00007f4b03194868:   jmp    0x00007f4b031947d0
   9.66%     ││ ↘││  │     0x00007f4b0319486d:   mov    %eax,%r10d
   8.42%     ││  ││  ╰     0x00007f4b03194870:   jmp    0x00007f4b031947d0           ;* unwind (locked if synchronized)
             ││  ││                                                                  ; - java.lang.String::equals@-3
             ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             ││  ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.95%     ││  │↘   ↗↗   0x00007f4b03194875:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
             ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%     ││  │    ││   0x00007f4b03194879:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
             ││  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%     ││  │    ││↗  0x00007f4b0319487d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
             ││  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
   0.00%     ││  │    │││  0x00007f4b03194880:   mov    0x20(%rsp),%rbp
   0.98%     ││  │    │││  0x00007f4b03194885:   add    $0x28,%rsp
             ││  │    │││  0x00007f4b03194889:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%     ││  │    │││  0x00007f4b03194890:   ja     0x00007f4b03194972
   0.01%     ││  │    │││  0x00007f4b03194896:   vzeroupper 
   1.00%     ││  │    │││  0x00007f4b03194899:   ret    
   0.00%     │↘  │    │││  0x00007f4b0319489a:   mov    %edi,0x4(%rsp)
   0.00%     │   │    ╰││  0x00007f4b0319489e:   jmp    0x00007f4b03194875
             │   ↘     ││  0x00007f4b031948a0:   mov    %edi,0x4(%rsp)
             │         ╰│  0x00007f4b031948a4:   jmp    0x00007f4b03194875           ;* unwind (locked if synchronized)
             │          │                                                            ; - java.lang.String::equals@-3
             │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
             │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
             ↘          │  0x00007f4b031948a6:   mov    %rbp,%rdi
                        ╰  0x00007f4b031948a9:   jmp    0x00007f4b0319487d           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 151)
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                           0x00007f4b031948ab:   mov    %rbp,%rdi
....................................................................................................
  86.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1062 
   6.83%                        <unknown> 
   2.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1096 
   0.48%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.83%  <...other 409 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1062 
   7.18%                        <unknown> 
   3.33%                kernel  [unknown] 
   2.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1096 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  printf_to_env 
   0.26%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.96%        jvmci, level 4
   7.18%                      
   3.33%                kernel
   0.27%             libjvm.so
   0.18%             libc.so.6
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%         perf-9286.map
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 211.225 ns/op
# Warmup Iteration   2: 200.843 ns/op
# Warmup Iteration   3: 197.429 ns/op
# Warmup Iteration   4: 194.659 ns/op
# Warmup Iteration   5: 200.071 ns/op
Iteration   1: 199.255 ns/op
Iteration   2: 199.195 ns/op
Iteration   3: 199.604 ns/op
Iteration   4: 200.272 ns/op
Iteration   5: 199.683 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  199.602 ±(99.9%) 1.658 ns/op [Average]
  (min, avg, max) = (199.195, 199.602, 200.272), stdev = 0.431
  CI (99.9%): [197.944, 201.260] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 211494 total address lines.
Perf output processed (skipped 80.511 seconds):
 Column 1: cycles (51114 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1031 

                                    speculations   [0x00007ff82b195838,0x00007ff82b195880] = 72
                                    JVMCI data     [0x00007ff82b195880,0x00007ff82b195898] = 24
                                   [Disassembly]
                                   --------------------------------------------------------------------------------
                                   [Constant Pool (empty)]
                                   --------------------------------------------------------------------------------
                                   [Verified Entry Point]
                                     # {method} {0x00007ff7a34e4ed8} &apos;fromValues&apos; &apos;(Ljava/lang/String;)Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;
                                     # parm0:    rsi:rsi   = &apos;java/lang/String&apos;
                                     #           [sp+0x30]  (sp of caller)
   0.55%                             0x00007ff82b194980:   mov    %eax,-0x14000(%rsp)
   0.01%                             0x00007ff82b194987:   sub    $0x28,%rsp
                                     0x00007ff82b19498b:   nop
   0.54%                             0x00007ff82b19498c:   cmpl   $0x1,0x20(%r15)
   0.01%                             0x00007ff82b194994:   jne    0x00007ff82b194ff0
   0.01%                             0x00007ff82b19499a:   mov    %rbp,0x20(%rsp)
   0.01%                             0x00007ff82b19499f:   mov    %rsi,%r11
   0.56%                             0x00007ff82b1949a2:   movabs $0x7fed39960,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39960})}
   0.00%                             0x00007ff82b1949ac:   mov    0x18(%rbx),%esi              ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r11=Oop }
                                                                                               ;*invokestatic values {reexecute=1 rethrow=0 return_oop=0}
                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
   0.06%                             0x00007ff82b1949af:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007ff82b195014
   0.09%                             0x00007ff82b1949b7:   mov    0x14(,%rsi,8),%ecx           ;* unwind (locked if synchronized)
                                                                                               ; - java.lang.String::equals@-3
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.50%                             0x00007ff82b1949be:   shl    $0x3,%rsi                    ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
                                     0x00007ff82b1949c2:   cmp    %r11,%rsi
          ╭                          0x00007ff82b1949c5:   je     0x00007ff82b194d0e
          │                          0x00007ff82b1949cb:   mov    %r11,0x10(%rsp)
   0.02%  │                          0x00007ff82b1949d0:   test   %r11,%r11
          │╭                         0x00007ff82b1949d3:   je     0x00007ff82b194a3a
   0.54%  ││                         0x00007ff82b1949d9:   nopl   0x0(%rax)
   0.00%  ││                         0x00007ff82b1949e0:   cmp    0x10(%r11),%dl
          ││╭                        0x00007ff82b1949e4:   jne    0x00007ff82b194a3a           ;* unwind (locked if synchronized)
          │││                                                                                  ; - java.lang.String::equals@-3
          │││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││                        0x00007ff82b1949ea:   mov    0x14(%r11),%esi              ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rsi=NarrowOop r11=Oop [16]=Oop }
          │││                                                                                  ;*invokestatic values {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
   0.02%  │││                        0x00007ff82b1949ee:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007ff82b195037
   0.56%  │││                        0x00007ff82b1949f5:   test   %ecx,%ecx
          │││                        0x00007ff82b1949f7:   je     0x00007ff82b194f85
   0.00%  │││                        0x00007ff82b1949fd:   mov    0xc(,%rcx,8),%r9d
   0.04%  │││                        0x00007ff82b194a05:   cmp    %edx,%r9d
          │││╭                       0x00007ff82b194a08:   jne    0x00007ff82b194a3a
          ││││                       0x00007ff82b194a0e:   test   %edx,%edx
          ││││╭                      0x00007ff82b194a10:   je     0x00007ff82b194d13
          │││││                      0x00007ff82b194a16:   shl    $0x3,%rsi
          │││││                      0x00007ff82b194a1a:   shl    $0x3,%rcx
          │││││                      0x00007ff82b194a1e:   mov    $0x10,%rdx                   ;* unwind (locked if synchronized)
          │││││                                                                                ; - java.lang.String::equals@-3
          │││││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││││                      0x00007ff82b194a25:   mov    $0x10,%r8
          │││││                      0x00007ff82b194a2c:   call   0x00007ff82ac5c180           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
          │││││                      0x00007ff82b194a31:   nop
          │││││                      0x00007ff82b194a32:   test   %eax,%eax
          │││││╭                     0x00007ff82b194a34:   jne    0x00007ff82b194d09           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
   0.04%  │↘↘↘││                     0x00007ff82b194a3a:   nopw   0x0(%rax,%rax,1)
   0.54%  │   ││                     0x00007ff82b194a40:   test   %r11,%r11
          │   ││╭                    0x00007ff82b194a43:   je     0x00007ff82b194d18           ;* unwind (locked if synchronized)
          │   │││                                                                              ; - java.lang.String::equals@-3
          │   │││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │   │││                    0x00007ff82b194a49:   mov    0x14(%r11),%r10d             ; ImmutableOopMap {r10=NarrowOop r11=Oop [16]=Oop }
          │   │││                                                                              ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │   │││                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │   │││                    0x00007ff82b194a4d:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007ff82b19505a
   0.05%  │   │││                    0x00007ff82b194a55:   mov    0x1b8(%r15),%rsi
   0.56%  │   │││                    0x00007ff82b194a5c:   lea    0xb8(%rsi),%rdx
          │   │││                    0x00007ff82b194a63:   cmp    0x1c8(%r15),%rdx
          │   │││╭                   0x00007ff82b194a6a:   ja     0x00007ff82b194d9a
          │   ││││                   0x00007ff82b194a70:   mov    %rdx,0x1b8(%r15)
   0.04%  │   ││││                   0x00007ff82b194a77:   prefetchw 0x178(%rsi)
   0.45%  │   ││││                   0x00007ff82b194a7e:   prefetchw 0x1b8(%rsi)
   0.05%  │   ││││                   0x00007ff82b194a85:   prefetchw 0x1f8(%rsi)
   0.08%  │   ││││                   0x00007ff82b194a8c:   prefetchw 0x238(%rsi)
   0.19%  │   ││││                   0x00007ff82b194a93:   movq   $0x1,(%rsi)
   0.46%  │   ││││                   0x00007ff82b194a9a:   movl   $0x102a6c0,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.00%  │   ││││                   0x00007ff82b194aa1:   movl   $0x29,0xc(%rsi)
   0.00%  │   ││││                   0x00007ff82b194aa8:   mov    $0x10,%rdx
   0.04%  │   ││││╭                  0x00007ff82b194aaf:   jmp    0x00007ff82b194acc
          │   │││││                  0x00007ff82b194ab4:   nopl   0x0(%rax,%rax,1)
          │   │││││                  0x00007ff82b194abc:   data16 data16 xchg %ax,%ax
  11.63%  │   │││││↗                 0x00007ff82b194ac0:   movq   $0x0,(%rsi,%rdx,1)
   0.11%  │   ││││││                 0x00007ff82b194ac8:   lea    0x8(%rdx),%rdx
   0.54%  │   ││││↘│                 0x00007ff82b194acc:   cmp    $0xb8,%rdx
          │   ││││ ╰                 0x00007ff82b194ad3:   jb     0x00007ff82b194ac0           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
          │   ││││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
   0.00%  │   ││││                   0x00007ff82b194ad5:   mov    %rsi,%rbp
   0.51%  │   ││││                   0x00007ff82b194ad8:   movl   $0xffda75bc,0xb0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ade0})}
   0.02%  │   ││││                   0x00007ff82b194ae2:   movl   $0xffda75aa,0xac(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ad50})}
   0.02%  │   ││││                   0x00007ff82b194aec:   movl   $0xffda759a,0xa8(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3acd0})}
   0.00%  │   ││││                   0x00007ff82b194af6:   movl   $0xffda7588,0xa4(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ac40})}
   0.49%  │   ││││                   0x00007ff82b194b00:   movl   $0xffda7576,0xa0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3abb0})}
   0.02%  │   ││││                   0x00007ff82b194b0a:   movl   $0xffda7566,0x9c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ab30})}
   0.02%  │   ││││                   0x00007ff82b194b14:   movl   $0xffda7556,0x98(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3aab0})}
   0.02%  │   ││││                   0x00007ff82b194b1e:   movl   $0xffda7546,0x94(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3aa30})}
   0.54%  │   ││││                   0x00007ff82b194b28:   movl   $0xffda7536,0x90(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a9b0})}
   0.02%  │   ││││                   0x00007ff82b194b32:   movl   $0xffda7526,0x8c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a930})}
   0.03%  │   ││││                   0x00007ff82b194b3c:   movl   $0xffda7516,0x88(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a8b0})}
   0.02%  │   ││││                   0x00007ff82b194b46:   movl   $0xffda7506,0x84(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a830})}
   0.59%  │   ││││                   0x00007ff82b194b50:   movl   $0xffda74f4,0x80(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a7a0})}
   0.02%  │   ││││                   0x00007ff82b194b5a:   movl   $0xffda74e2,0x7c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a710})}
   0.03%  │   ││││                   0x00007ff82b194b61:   movl   $0xffda74d2,0x78(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a690})}
   0.01%  │   ││││                   0x00007ff82b194b68:   movl   $0xffda74c2,0x74(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a610})}
   0.49%  │   ││││                   0x00007ff82b194b6f:   movl   $0xffda74b2,0x70(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a590})}
   0.03%  │   ││││                   0x00007ff82b194b76:   movl   $0xffda74a0,0x6c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a500})}
   0.05%  │   ││││                   0x00007ff82b194b7d:   movl   $0xffda748e,0x68(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a470})}
   0.04%  │   ││││                   0x00007ff82b194b84:   movl   $0xffda747c,0x64(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a3e0})}
   0.50%  │   ││││                   0x00007ff82b194b8b:   movl   $0xffda746c,0x60(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a360})}
   0.04%  │   ││││                   0x00007ff82b194b92:   movl   $0xffda745c,0x5c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a2e0})}
   0.05%  │   ││││                   0x00007ff82b194b99:   movl   $0xffda744c,0x58(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a260})}
   0.05%  │   ││││                   0x00007ff82b194ba0:   movl   $0xffda743c,0x54(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a1e0})}
   0.61%  │   ││││                   0x00007ff82b194ba7:   movl   $0xffda742c,0x50(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a160})}
   0.07%  │   ││││                   0x00007ff82b194bae:   movl   $0xffda741c,0x4c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a0e0})}
   0.09%  │   ││││                   0x00007ff82b194bb5:   movl   $0xffda740c,0x48(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a060})}
   0.49%  │   ││││                   0x00007ff82b194bbc:   movl   $0xffda73fc,0x44(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39fe0})}
   0.56%  │   ││││                   0x00007ff82b194bc3:   movl   $0xffda73ec,0x40(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39f60})}
   0.53%  │   ││││                   0x00007ff82b194bca:   movl   $0xffda73dc,0x3c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39ee0})}
   0.50%  │   ││││                   0x00007ff82b194bd1:   movl   $0xffda73cc,0x38(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39e60})}
   0.53%  │   ││││                   0x00007ff82b194bd8:   movl   $0xffda73bc,0x34(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39de0})}
   0.52%  │   ││││                   0x00007ff82b194bdf:   movl   $0xffda73aa,0x30(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39d50})}
   0.50%  │   ││││                   0x00007ff82b194be6:   movl   $0xffda739a,0x2c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39cd0})}
   0.45%  │   ││││                   0x00007ff82b194bed:   movl   $0xffda738a,0x28(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39c50})}
   0.45%  │   ││││                   0x00007ff82b194bf4:   movl   $0xffda7380,0x24(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39c00})}
   0.52%  │   ││││                   0x00007ff82b194bfb:   movl   $0xffda7370,0x20(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39b80})}
   0.57%  │   ││││                   0x00007ff82b194c02:   movl   $0xffda7360,0x1c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39b00})}
   0.59%  │   ││││                   0x00007ff82b194c09:   movl   $0xffda734e,0x18(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39a70})}
   0.52%  │   ││││                   0x00007ff82b194c10:   movl   $0xffda733c,0x14(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed399e0})}
   0.56%  │   ││││                   0x00007ff82b194c17:   movl   $0xffda732c,0x10(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39960})}
   0.59%  │   ││││                   0x00007ff82b194c1e:   movsbl 0x10(%r11),%r13d
   0.06%  │   ││││                   0x00007ff82b194c23:   mov    %r10d,%r14d
   0.01%  │   ││││                   0x00007ff82b194c26:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │   ││││                                                                             ; - java.lang.String::equals@-3
          │   ││││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.02%  │   ││││                   0x00007ff82b194c2a:   mov    $0x1,%r10d
  10.71%  │   ││││       ↗↗↗         0x00007ff82b194c30:   cmp    $0x29,%r10d
          │   ││││       │││         0x00007ff82b194c34:   jge    0x00007ff82b194fa8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││││       │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
   0.02%  │   ││││       │││         0x00007ff82b194c3a:   mov    0x10(%rbp,%r10,4),%edi       ; ImmutableOopMap {rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │   ││││       │││                                                                   ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   ││││       │││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   0.58%  │   ││││       │││         0x00007ff82b194c3f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007ff82b19507d
          │   ││││       │││                                                                   ; ImmutableOopMap {rbp=Oop rsi=NarrowOop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │   ││││       │││                                                                   ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   ││││       │││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   1.97%  │   ││││       │││         0x00007ff82b194c46:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007ff82b1950a0
  12.97%  │   ││││       │││         0x00007ff82b194c4e:   mov    0x14(,%rsi,8),%ecx           ;* unwind (locked if synchronized)
          │   ││││       │││                                                                   ; - java.lang.String::equals@-3
          │   ││││       │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.03%  │   ││││       │││         0x00007ff82b194c55:   shl    $0x3,%rsi                    ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          │   ││││       │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
   0.54%  │   ││││       │││         0x00007ff82b194c59:   nopl   0x0(%rax)
   0.01%  │   ││││       │││         0x00007ff82b194c60:   cmp    %r11,%rsi
          │   ││││  ╭    │││         0x00007ff82b194c63:   je     0x00007ff82b194cfd           ;* unwind (locked if synchronized)
          │   ││││  │    │││                                                                   ; - java.lang.String::equals@-3
          │   ││││  │    │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
  10.42%  │   ││││  │    │││         0x00007ff82b194c69:   mov    %r10d,%eax
   0.03%  │   ││││  │    │││         0x00007ff82b194c6c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  │    │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
   0.58%  │   ││││  │    │││         0x00007ff82b194c6e:   cmp    %r13b,%dl
          │   ││││  │╭   │││         0x00007ff82b194c71:   jne    0x00007ff82b194cc8           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │   ││││  ││   │││                                                                   ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   ││││  ││   │││                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
   0.01%  │   ││││  ││   │││         0x00007ff82b194c77:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007ff82b1950c3
  12.39%  │   ││││  ││   │││         0x00007ff82b194c7f:   nop
   0.03%  │   ││││  ││   │││         0x00007ff82b194c80:   cmp    %ebx,%r9d
          │   ││││  ││╭  │││         0x00007ff82b194c83:   jne    0x00007ff82b194cd0
   0.51%  │   ││││  │││  │││         0x00007ff82b194c89:   test   %ebx,%ebx
          │   ││││  │││╭ │││         0x00007ff82b194c8b:   je     0x00007ff82b194d03
   0.00%  │   ││││  ││││ │││         0x00007ff82b194c91:   mov    %edi,0xc(%rsp)
   0.01%  │   ││││  ││││ │││         0x00007ff82b194c95:   shl    $0x3,%rcx
   0.00%  │   ││││  ││││ │││         0x00007ff82b194c99:   mov    %r14,%rsi
   0.57%  │   ││││  ││││ │││         0x00007ff82b194c9c:   mov    $0x10,%rdx
          │   ││││  ││││ │││         0x00007ff82b194ca3:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │   ││││  ││││ │││                                                                   ; - java.lang.String::equals@-3
          │   ││││  ││││ │││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.00%  │   ││││  ││││ │││         0x00007ff82b194caa:   mov    %eax,%r11d
   0.01%  │   ││││  ││││ │││         0x00007ff82b194cad:   call   0x00007ff82ac5c180           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.50%  │   ││││  ││││ │││         0x00007ff82b194cb2:   nop
          │   ││││  ││││ │││         0x00007ff82b194cb3:   test   %eax,%eax
          │   ││││  ││││╭│││         0x00007ff82b194cb5:   jne    0x00007ff82b194cd8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  ││││││││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │   ││││  ││││││││         0x00007ff82b194cbb:   mov    %r11d,%r10d
          │   ││││  ││││││││         0x00007ff82b194cbe:   mov    0x10(%rsp),%r11
   0.48%  │   ││││  │││││╰││         0x00007ff82b194cc3:   jmp    0x00007ff82b194c30           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  │││││ ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │   ││││  │↘│││ ││         0x00007ff82b194cc8:   mov    %eax,%r10d
          │   ││││  │ │││ ╰│         0x00007ff82b194ccb:   jmp    0x00007ff82b194c30
   0.68%  │   ││││  │ ↘││  │         0x00007ff82b194cd0:   mov    %eax,%r10d
   0.01%  │   ││││  │  ││  ╰         0x00007ff82b194cd3:   jmp    0x00007ff82b194c30           ;* unwind (locked if synchronized)
          │   ││││  │  ││                                                                      ; - java.lang.String::equals@-3
          │   ││││  │  ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
   0.50%  │   ││││  │  │↘   ↗↗       0x00007ff82b194cd8:   mov    0xc(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  │  │    ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
   0.01%  │   ││││  │  │    ││       0x00007ff82b194cdc:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  │  │    ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
   0.01%  │   ││││  │  │    ││↗↗↗    0x00007ff82b194ce0:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │   ││││  │  │    │││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@33 (line 142)
          │   ││││  │  │    │││││    0x00007ff82b194ce3:   mov    0x20(%rsp),%rbp
   0.55%  │   ││││  │  │    │││││    0x00007ff82b194ce8:   add    $0x28,%rsp
          │   ││││  │  │    │││││    0x00007ff82b194cec:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   ││││  │  │    │││││    0x00007ff82b194cf3:   ja     0x00007ff82b195000
   0.01%  │   ││││  │  │    │││││    0x00007ff82b194cf9:   vzeroupper 
   0.49%  │   ││││  │  │    │││││    0x00007ff82b194cfc:   ret    
   0.57%  │   ││││  ↘  │    │││││    0x00007ff82b194cfd:   mov    %edi,0xc(%rsp)
   0.03%  │   ││││     │    ╰││││    0x00007ff82b194d01:   jmp    0x00007ff82b194cd8
          │   ││││     ↘     ││││    0x00007ff82b194d03:   mov    %edi,0xc(%rsp)
          │   ││││           ╰│││    0x00007ff82b194d07:   jmp    0x00007ff82b194cd8           ;* unwind (locked if synchronized)
          │   ││││            │││                                                              ; - java.lang.String::equals@-3
          │   ││││            │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │   │↘││            │││    0x00007ff82b194d09:   mov    %rbx,%rdi
          │   │ ││            ╰││    0x00007ff82b194d0c:   jmp    0x00007ff82b194ce0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││             ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@31 (line 142)
          ↘   │ ││             ││    0x00007ff82b194d0e:   mov    %rbx,%rdi
              │ ││             ╰│    0x00007ff82b194d11:   jmp    0x00007ff82b194ce0
              ↘ ││              │    0x00007ff82b194d13:   mov    %rbx,%rdi
                ││              ╰    0x00007ff82b194d16:   jmp    0x00007ff82b194ce0           ;* unwind (locked if synchronized)
                ││                                                                             ; - java.lang.String::equals@-3
                ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                ↘│                   0x00007ff82b194d18:   mov    0x1b8(%r15),%r10
                 │                   0x00007ff82b194d1f:   lea    0xb8(%r10),%rsi
                 │                   0x00007ff82b194d26:   cmp    0x1c8(%r15),%rsi
                 │                   0x00007ff82b194d2d:   ja     0x00007ff82b194f5e
                 │                   0x00007ff82b194d33:   mov    %rsi,0x1b8(%r15)
                 │                   0x00007ff82b194d3a:   prefetchw 0x178(%r10)
                 │                   0x00007ff82b194d42:   prefetchw 0x1b8(%r10)
                 │                   0x00007ff82b194d4a:   prefetchw 0x1f8(%r10)
                 │                   0x00007ff82b194d52:   prefetchw 0x238(%r10)
                 │                   0x00007ff82b194d5a:   movq   $0x1,(%r10)
                 │                   0x00007ff82b194d61:   movl   $0x102a6c0,0x8(%r10)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
                 │                   0x00007ff82b194d69:   movl   $0x29,0xc(%r10)
                 │                   0x00007ff82b194d71:   mov    $0x10,%rsi
                 │               ╭   0x00007ff82b194d78:   jmp    0x00007ff82b194d8c
                 │               │   0x00007ff82b194d7d:   data16 xchg %ax,%ax
                 │               │↗  0x00007ff82b194d80:   movq   $0x0,(%r10,%rsi,1)
                 │               ││  0x00007ff82b194d88:   lea    0x8(%rsi),%rsi               ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
                 │               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
                 │               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                 │               ↘│  0x00007ff82b194d8c:   cmp    $0xb8,%rsi
                 │                ╰  0x00007ff82b194d93:   jb     0x00007ff82b194d80
                 │                   0x00007ff82b194d95:   jmp    0x00007ff82b194dc5
   0.00%         ↘                   0x00007ff82b194d9a:   movabs $0x7ff7a802a6c0,%rsi         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
                                     0x00007ff82b194da4:   mov    $0x29,%edx
                                     0x00007ff82b194da9:   call   0x00007ff82ad0f300           ; ImmutableOopMap {r10=NarrowOop [16]=Oop }
                                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
                                                                                               ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                                     0x00007ff82b194dae:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=NarrowOop [16]=Oop }
                                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
                                     0x00007ff82b194db6:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007ff82b1950e6
                                     0x00007ff82b194db8:   mov    %rax,%rbp
....................................................................................................
  85.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1031 
   4.88%                        <unknown> 
   2.63%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1033 
   1.84%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1072 
   0.34%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%             libc.so.6  __memset_avx2_unaligned_erms 
   0.10%                kernel  [unknown] 
   0.10%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%             libjvm.so  HeapRegionManager::par_iterate 
   0.08%                kernel  [unknown] 
   0.08%             libjvm.so  G1CardSet::is_empty 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.49%  <...other 397 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1031 
   4.98%                        <unknown> 
   3.16%                kernel  [unknown] 
   2.63%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1033 
   1.84%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1072 
   0.12%             libc.so.6  __memset_avx2_unaligned_erms 
   0.10%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%             libjvm.so  HeapRegionManager::par_iterate 
   0.08%             libjvm.so  G1CardSet::is_empty 
   0.05%             libjvm.so  JVMCIRuntime::new_array_common 
   0.05%             libjvm.so  ObjArrayAllocator::initialize 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  G1FromCardCache::clear 
   0.03%             libjvm.so  stringStream::~stringStream 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  FreeListAllocator::reset 
   0.03%                [vdso]  [unknown] 
   0.02%             libjvm.so  InstanceKlass::allocate_objArray 
   0.02%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%             libjvm.so  defaultStream::hold 
   0.79%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.36%        jvmci, level 4
   4.98%                      
   3.16%                kernel
   1.11%             libjvm.so
   0.30%             libc.so.6
   0.03%  ld-linux-x86-64.so.2
   0.03%                [vdso]
   0.02%           interpreter
   0.02%        hsdis-amd64.so
   0.00%           c1, level 2
   0.00%         perf-9389.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:38

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

Benchmark                                         Mode  Cnt    Score   Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  105.934 ± 6.891  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  199.602 ± 1.658  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN            ---
