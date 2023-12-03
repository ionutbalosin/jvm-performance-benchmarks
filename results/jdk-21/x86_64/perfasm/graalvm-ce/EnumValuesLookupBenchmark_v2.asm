# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions
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
# Warmup Iteration   1: 113.405 ns/op
# Warmup Iteration   2: 106.332 ns/op
# Warmup Iteration   3: 98.115 ns/op
# Warmup Iteration   4: 172.400 ns/op
# Warmup Iteration   5: 172.544 ns/op
Iteration   1: 172.426 ns/op
Iteration   2: 172.488 ns/op
Iteration   3: 172.654 ns/op
Iteration   4: 172.541 ns/op
Iteration   5: 173.645 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  172.751 ±(99.9%) 1.951 ns/op [Average]
  (min, avg, max) = (172.426, 172.751, 173.645), stdev = 0.507
  CI (99.9%): [170.800, 174.702] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 215095 total address lines.
Perf output processed (skipped 82.074 seconds):
 Column 1: cycles (49985 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1077

                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
                       0x00007f32db19b308:   data16 data16 nopw 0x0(%rax,%rax,1)
                       0x00007f32db19b313:   data16 data16 xchg %ax,%ax
                       0x00007f32db19b317:   nopw   0x0(%rax,%rax,1)             ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 147)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
                  ↗    0x00007f32db19b320:   mov    0x14(,%r14,8),%esi           ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r11=Oop r14=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
                  │                                                              ;*aload {reexecute=1 rethrow=0 return_oop=0}
                  │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
   0.57%          │    0x00007f32db19b328:   mov    0xc(,%rsi,8),%edi            ; implicit exception: dispatches to 0x00007f32db19b636
   3.01%          │    0x00007f32db19b32f:   movsbl 0x10(,%r14,8),%eax
   0.00%          │    0x00007f32db19b338:   mov    %eax,0x3c(%rsp)
                  │    0x00007f32db19b33c:   shl    $0x3,%rsi                    ;* unwind (locked if synchronized)
                  │                                                              ; - java.lang.String::equals@-3
                  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
                  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
                  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
                  │    0x00007f32db19b340:   mov    $0x0,%r10d
   0.64%          │    0x00007f32db19b346:   data16 nopw 0x0(%rax,%rax,1)
  12.16%       ↗↗↗│    0x00007f32db19b350:   cmp    $0x29,%r10d
               ││││    0x00007f32db19b354:   jge    0x00007f32db19b516           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 146)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.01%       ││││    0x00007f32db19b35a:   mov    0x10(%r11,%r10,4),%r8d       ; ImmutableOopMap {rsi=Oop r8=NarrowOop r11=Oop r14=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
               ││││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
               ││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.01%       ││││    0x00007f32db19b35f:   mov    0x18(,%r8,8),%ecx            ; implicit exception: dispatches to 0x00007f32db19b659
               ││││                                                              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r11=Oop r14=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
               ││││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
               ││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
               ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.66%       ││││    0x00007f32db19b367:   movsbl 0x10(,%rcx,8),%ebx           ; implicit exception: dispatches to 0x00007f32db19b67c
  12.25%       ││││    0x00007f32db19b36f:   mov    0x14(,%rcx,8),%r13d
   0.02%       ││││    0x00007f32db19b377:   cmp    %r14d,%ecx
          ╭    ││││    0x00007f32db19b37a:   je     0x00007f32db19b45f           ;* unwind (locked if synchronized)
          │    ││││                                                              ; - java.lang.String::equals@-3
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.00%  │    ││││    0x00007f32db19b380:   mov    %r10d,%ecx
   0.68%  │    ││││    0x00007f32db19b383:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 146)
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │    ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
  11.67%  │    ││││    0x00007f32db19b385:   cmp    %al,%bl
          │╭   ││││    0x00007f32db19b387:   jne    0x00007f32db19b3ee           ; ImmutableOopMap {rsi=Oop r8=NarrowOop r11=Oop r13=NarrowOop r14=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          ││   ││││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││   ││││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
          ││   ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││   ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.01%  ││   ││││    0x00007f32db19b38d:   mov    0xc(,%r13,8),%ebx            ; implicit exception: dispatches to 0x00007f32db19b69f
  34.01%  ││   ││││    0x00007f32db19b395:   cmp    %edi,%ebx
          ││╭  ││││    0x00007f32db19b397:   jne    0x00007f32db19b3f6
   0.55%  │││  ││││    0x00007f32db19b39d:   data16 xchg %ax,%ax
          │││  ││││    0x00007f32db19b3a0:   test   %edi,%edi
          │││╭ ││││    0x00007f32db19b3a2:   je     0x00007f32db19b466
          ││││ ││││    0x00007f32db19b3a8:   mov    %r8d,0x4(%rsp)
          ││││ ││││    0x00007f32db19b3ad:   shl    $0x3,%r13
   0.58%  ││││ ││││    0x00007f32db19b3b1:   mov    %rsi,%r9
          ││││ ││││    0x00007f32db19b3b4:   mov    $0x10,%rdx
          ││││ ││││    0x00007f32db19b3bb:   mov    %ecx,%ebp
          ││││ ││││    0x00007f32db19b3bd:   mov    %r13,%rcx
   0.58%  ││││ ││││    0x00007f32db19b3c0:   mov    $0x10,%r8
          ││││ ││││    0x00007f32db19b3c7:   mov    %r9,%r13
          ││││ ││││    0x00007f32db19b3ca:   mov    %ebx,%r9d                    ;* unwind (locked if synchronized)
          ││││ ││││                                                              ; - java.lang.String::equals@-3
          ││││ ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          ││││ ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││││ ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          ││││ ││││    0x00007f32db19b3cd:   mov    %edi,%ebx
   0.58%  ││││ ││││    0x00007f32db19b3cf:   call   0x00007f32dac59c00           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.54%  ││││ ││││    0x00007f32db19b3d4:   nop
          ││││ ││││    0x00007f32db19b3d5:   test   %eax,%eax
          ││││╭││││    0x00007f32db19b3d7:   jne    0x00007f32db19b3fe           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 147)
          │││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.00%  │││││││││    0x00007f32db19b3dd:   mov    %ebp,%r10d
   0.00%  │││││││││    0x00007f32db19b3e0:   mov    %r13,%rsi
   0.54%  │││││││││    0x00007f32db19b3e3:   mov    0x3c(%rsp),%eax
          │││││││││    0x00007f32db19b3e7:   mov    %ebx,%edi
          │││││╰│││    0x00007f32db19b3e9:   jmp    0x00007f32db19b350           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
          │││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          │↘│││ │││    0x00007f32db19b3ee:   mov    %ecx,%r10d
          │ │││ ╰││    0x00007f32db19b3f1:   jmp    0x00007f32db19b350
  11.39%  │ ↘││  ││    0x00007f32db19b3f6:   mov    %ecx,%r10d
   0.11%  │  ││  ╰│    0x00007f32db19b3f9:   jmp    0x00007f32db19b350           ;* unwind (locked if synchronized)
          │  ││   │                                                              ; - java.lang.String::equals@-3
          │  ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          │  ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │  ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.62%  │  │↘   │↗↗  0x00007f32db19b3fe:   mov    0x4(%rsp),%r8d               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 147)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          │  │    │││  0x00007f32db19b403:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 146)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          │  │    │││  0x00007f32db19b407:   mov    0x28(%rsp),%rsi              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 148)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          │  │    │││  0x00007f32db19b40c:   mov    0x40(%rsp),%r10
   0.56%  │  │    │││  0x00007f32db19b411:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@26 (line 237)
   0.00%  │  │    │││  0x00007f32db19b414:   nopl   0x0(%rax,%rax,1)
          │  │    │││  0x00007f32db19b41c:   data16 data16 xchg %ax,%ax
          │  │    │││  0x00007f32db19b420:   cmpb   $0x0,0x94(%rsi)
   0.60%  │  │    │││  0x00007f32db19b427:   jne    0x00007f32db19b4d4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@33 (line 238)
          │  │    │││  0x00007f32db19b42d:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r11=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │  │    │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@33 (line 238)
          │  │    │││  0x00007f32db19b434:   test   %eax,(%r8)                   ;   {poll}
   0.00%  │  │    │││  0x00007f32db19b437:   mov    %r10,0x40(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
   0.57%  │  │    │││  0x00007f32db19b43c:   mov    0x18(%rsp),%rbx
          │  │    │││  0x00007f32db19b441:   mov    0x14(%rbx),%r14d
          │  │    │││  0x00007f32db19b445:   mov    %r14d,%r10d
   0.00%  │  │    │││  0x00007f32db19b448:   shl    $0x3,%r10                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 73)
          │  │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.56%  │  │    │││  0x00007f32db19b44c:   mov    %r10,0x8(%rsp)
   0.00%  │  │    │││  0x00007f32db19b451:   test   %r14d,%r14d
          │  │    ╰││  0x00007f32db19b454:   jne    0x00007f32db19b320
          │  │     ││  0x00007f32db19b45a:   jmp    0x00007f32db19b480
   0.00%  ↘  │     ││  0x00007f32db19b45f:   mov    %r8d,0x4(%rsp)
             │     ╰│  0x00007f32db19b464:   jmp    0x00007f32db19b3fe
             ↘      │  0x00007f32db19b466:   mov    %r8d,0x4(%rsp)
                    ╰  0x00007f32db19b46b:   jmp    0x00007f32db19b3fe
                       0x00007f32db19b46d:   data16 data16 nopw 0x0(%rax,%rax,1)
                       0x00007f32db19b478:   data16 data16 xchg %ax,%ax
                       0x00007f32db19b47c:   nopl   0x0(%rax)                    ;* unwind (locked if synchronized)
                                                                                 ; - java.lang.String::equals@-3
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
....................................................................................................
  93.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1077
   1.82%                        <unknown>
   1.78%                        <unknown>
   0.87%                        <unknown>
   0.21%                kernel  [unknown]
   0.11%                kernel  [unknown]
   0.09%                kernel  [unknown]
   0.09%                kernel  [unknown]
   0.08%                kernel  [unknown]
   0.07%                kernel  [unknown]
   0.04%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.02%             libjvm.so  ElfSymbolTable::lookup
   0.02%                kernel  [unknown]
   0.02%             libjvm.so  fileStream::write
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libjvm.so  xmlStream::write_text
   0.01%                kernel  [unknown]
   0.01%                kernel  [unknown]
   0.01%                kernel  [unknown]
   1.20%  <...other 455 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1077
   4.50%                        <unknown>
   1.43%                kernel  [unknown]
   0.03%             libjvm.so  xmlStream::write_text
   0.03%             libc.so.6  __vfprintf_internal
   0.02%             libjvm.so  ElfSymbolTable::lookup
   0.02%             libjvm.so  fileStream::write
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.01%        hsdis-amd64.so  print_insn
   0.01%             libjvm.so  defaultStream::write
   0.01%             libc.so.6  _IO_fwrite
   0.01%             libc.so.6  __GI___libc_write
   0.01%             libc.so.6  __strchrnul_avx2
   0.01%             libjvm.so  MethodMatcher::matches
   0.01%             libc.so.6  __strchr_avx2
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5
   0.01%             libc.so.6  _IO_default_xsputn
   0.01%             libjvm.so  RelocIterator::initialize
   0.01%           interpreter  method entry point (kind = zerolocals)
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr
   0.35%  <...other 160 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.48%        jvmci, level 4
   4.50%
   1.43%                kernel
   0.22%             libjvm.so
   0.15%   libjvmcicompiler.so
   0.14%             libc.so.6
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 2
   0.00%         perf-9095.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 198.261 ns/op
# Warmup Iteration   2: 180.135 ns/op
# Warmup Iteration   3: 176.606 ns/op
# Warmup Iteration   4: 176.225 ns/op
# Warmup Iteration   5: 175.964 ns/op
Iteration   1: 175.539 ns/op
Iteration   2: 175.913 ns/op
Iteration   3: 176.275 ns/op
Iteration   4: 176.160 ns/op
Iteration   5: 176.445 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  176.066 ±(99.9%) 1.358 ns/op [Average]
  (min, avg, max) = (175.539, 176.066, 176.445), stdev = 0.353
  CI (99.9%): [174.709, 177.424] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 212190 total address lines.
Perf output processed (skipped 78.084 seconds):
 Column 1: cycles (50650 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1036

                           0x00007fe7df18f21a:   shl    $0x3,%rcx
                           0x00007fe7df18f21e:   mov    $0x10,%rdx                   ;* unwind (locked if synchronized)
                                                                                     ; - java.lang.String::equals@-3
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
                           0x00007fe7df18f225:   mov    $0x10,%r8
                           0x00007fe7df18f22c:   call   0x00007fe7ded0fb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                           0x00007fe7df18f231:   nop
                           0x00007fe7df18f232:   test   %eax,%eax
          ╭                0x00007fe7df18f234:   jne    0x00007fe7df18f509           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
   0.01%  │                0x00007fe7df18f23a:   nopw   0x0(%rax,%rax,1)
          │                0x00007fe7df18f240:   test   %r11,%r11
          │                0x00007fe7df18f243:   je     0x00007fe7df18f518           ;* unwind (locked if synchronized)
          │                                                                          ; - java.lang.String::equals@-3
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
          │                0x00007fe7df18f249:   mov    0x14(%r11),%r10d             ; ImmutableOopMap {r10=NarrowOop r11=Oop [16]=Oop }
          │                                                                          ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
   0.53%  │                0x00007fe7df18f24d:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007fe7df18f85a
   0.01%  │                0x00007fe7df18f255:   mov    0x1b8(%r15),%rsi
   0.00%  │                0x00007fe7df18f25c:   lea    0xb8(%rsi),%rdx
          │                0x00007fe7df18f263:   cmp    0x1c8(%r15),%rdx
          │                0x00007fe7df18f26a:   ja     0x00007fe7df18f59a
   0.54%  │                0x00007fe7df18f270:   mov    %rdx,0x1b8(%r15)
   0.02%  │                0x00007fe7df18f277:   prefetchw 0x178(%rsi)
          │                0x00007fe7df18f27e:   prefetchw 0x1b8(%rsi)
   0.03%  │                0x00007fe7df18f285:   prefetchw 0x1f8(%rsi)
   0.72%  │                0x00007fe7df18f28c:   prefetchw 0x238(%rsi)
   0.05%  │                0x00007fe7df18f293:   movq   $0x1,(%rsi)
   0.00%  │                0x00007fe7df18f29a:   movl   $0x102a4b8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.01%  │                0x00007fe7df18f2a1:   movl   $0x29,0xc(%rsi)
   0.56%  │                0x00007fe7df18f2a8:   mov    $0x10,%rdx
          │╭               0x00007fe7df18f2af:   jmp    0x00007fe7df18f2cc
          ││               0x00007fe7df18f2b4:   nopl   0x0(%rax,%rax,1)
          ││               0x00007fe7df18f2bc:   data16 data16 xchg %ax,%ax
  11.92%  ││↗              0x00007fe7df18f2c0:   movq   $0x0,(%rsi,%rdx,1)
   0.06%  │││              0x00007fe7df18f2c8:   lea    0x8(%rdx),%rdx
   0.02%  │↘│              0x00007fe7df18f2cc:   cmp    $0xb8,%rdx
          │ ╰              0x00007fe7df18f2d3:   jb     0x00007fe7df18f2c0           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 81)
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 137)
   0.00%  │                0x00007fe7df18f2d5:   mov    %rsi,%rbp
   0.54%  │                0x00007fe7df18f2d8:   movl   $0xc55261cd,0xb0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930e68})}
   0.01%  │                0x00007fe7df18f2e2:   movl   $0xc55261bb,0xac(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930dd8})}
   0.00%  │                0x00007fe7df18f2ec:   movl   $0xc55261ab,0xa8(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930d58})}
          │                0x00007fe7df18f2f6:   movl   $0xc5526199,0xa4(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930cc8})}
   0.56%  │                0x00007fe7df18f300:   movl   $0xc5526187,0xa0(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930c38})}
   0.01%  │                0x00007fe7df18f30a:   movl   $0xc5526177,0x9c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930bb8})}
   0.00%  │                0x00007fe7df18f314:   movl   $0xc5526167,0x98(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930b38})}
   0.00%  │                0x00007fe7df18f31e:   movl   $0xc5526157,0x94(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930ab8})}
   0.56%  │                0x00007fe7df18f328:   movl   $0xc5526147,0x90(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930a38})}
   0.02%  │                0x00007fe7df18f332:   movl   $0xc5526137,0x8c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9309b8})}
   0.01%  │                0x00007fe7df18f33c:   movl   $0xc5526127,0x88(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930938})}
   0.01%  │                0x00007fe7df18f346:   movl   $0xc5526117,0x84(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9308b8})}
   0.60%  │                0x00007fe7df18f350:   movl   $0xc5526105,0x80(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930828})}
   0.01%  │                0x00007fe7df18f35a:   movl   $0xc55260f3,0x7c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930798})}
   0.02%  │                0x00007fe7df18f361:   movl   $0xc55260e3,0x78(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930718})}
   0.01%  │                0x00007fe7df18f368:   movl   $0xc55260d3,0x74(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930698})}
   0.58%  │                0x00007fe7df18f36f:   movl   $0xc55260c3,0x70(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930618})}
   0.01%  │                0x00007fe7df18f376:   movl   $0xc55260b1,0x6c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930588})}
   0.02%  │                0x00007fe7df18f37d:   movl   $0xc552609f,0x68(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9304f8})}
   0.03%  │                0x00007fe7df18f384:   movl   $0xc552608d,0x64(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930468})}
   0.60%  │                0x00007fe7df18f38b:   movl   $0xc552607d,0x60(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9303e8})}
   0.02%  │                0x00007fe7df18f392:   movl   $0xc552606d,0x5c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930368})}
   0.05%  │                0x00007fe7df18f399:   movl   $0xc552605d,0x58(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9302e8})}
   0.03%  │                0x00007fe7df18f3a0:   movl   $0xc552604d,0x54(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930268})}
   0.62%  │                0x00007fe7df18f3a7:   movl   $0xc552603d,0x50(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9301e8})}
   0.04%  │                0x00007fe7df18f3ae:   movl   $0xc552602d,0x4c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930168})}
   0.12%  │                0x00007fe7df18f3b5:   movl   $0xc552601d,0x48(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9300e8})}
   0.13%  │                0x00007fe7df18f3bc:   movl   $0xc552600d,0x44(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930068})}
   0.56%  │                0x00007fe7df18f3c3:   movl   $0xc5525ffd,0x40(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ffe8})}
   0.50%  │                0x00007fe7df18f3ca:   movl   $0xc5525fed,0x3c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ff68})}
   0.57%  │                0x00007fe7df18f3d1:   movl   $0xc5525fdd,0x38(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fee8})}
   0.49%  │                0x00007fe7df18f3d8:   movl   $0xc5525fcd,0x34(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fe68})}
   0.62%  │                0x00007fe7df18f3df:   movl   $0xc5525fbb,0x30(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fdd8})}
   0.57%  │                0x00007fe7df18f3e6:   movl   $0xc5525fab,0x2c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fd58})}
   0.52%  │                0x00007fe7df18f3ed:   movl   $0xc5525f9b,0x28(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fcd8})}
   0.48%  │                0x00007fe7df18f3f4:   movl   $0xc5525f91,0x24(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fc88})}
   0.55%  │                0x00007fe7df18f3fb:   movl   $0xc5525f81,0x20(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fc08})}
   0.56%  │                0x00007fe7df18f402:   movl   $0xc5525f71,0x1c(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fb88})}
   0.51%  │                0x00007fe7df18f409:   movl   $0xc5525f5f,0x18(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92faf8})}
   0.53%  │                0x00007fe7df18f410:   movl   $0xc5525f4d,0x14(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fa68})}
   0.54%  │                0x00007fe7df18f417:   movl   $0xc5525f3d,0x10(%rbp)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92f9e8})}
   0.50%  │                0x00007fe7df18f41e:   movsbl 0x10(%r11),%r13d
   0.04%  │                0x00007fe7df18f423:   mov    %r10d,%r14d
          │                0x00007fe7df18f426:   shl    $0x3,%r14                    ;* unwind (locked if synchronized)
          │                                                                          ; - java.lang.String::equals@-3
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
   0.01%  │                0x00007fe7df18f42a:   mov    $0x1,%r10d
  11.10%  │       ↗↗↗      0x00007fe7df18f430:   cmp    $0x29,%r10d
          │       │││      0x00007fe7df18f434:   jge    0x00007fe7df18f7a8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 137)
   0.01%  │       │││      0x00007fe7df18f43a:   mov    0x10(%rbp,%r10,4),%edi       ; ImmutableOopMap {rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
   0.60%  │       │││      0x00007fe7df18f43f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007fe7df18f87d
          │       │││                                                                ; ImmutableOopMap {rbp=Oop rsi=NarrowOop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │       │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
   2.48%  │       │││      0x00007fe7df18f446:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007fe7df18f8a0
  13.72%  │       │││      0x00007fe7df18f44e:   mov    0x14(,%rsi,8),%ecx           ;* unwind (locked if synchronized)
          │       │││                                                                ; - java.lang.String::equals@-3
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
   0.01%  │       │││      0x00007fe7df18f455:   shl    $0x3,%rsi                    ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 138)
   0.53%  │       │││      0x00007fe7df18f459:   nopl   0x0(%rax)
   0.01%  │       │││      0x00007fe7df18f460:   cmp    %r11,%rsi
          │  ╭    │││      0x00007fe7df18f463:   je     0x00007fe7df18f4fd           ;* unwind (locked if synchronized)
          │  │    │││                                                                ; - java.lang.String::equals@-3
          │  │    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
  11.09%  │  │    │││      0x00007fe7df18f469:   mov    %r10d,%eax
   0.01%  │  │    │││      0x00007fe7df18f46c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 137)
   0.51%  │  │    │││      0x00007fe7df18f46e:   cmp    %r13b,%dl
          │  │╭   │││      0x00007fe7df18f471:   jne    0x00007fe7df18f4c8           ; ImmutableOopMap {rcx=NarrowOop rbp=Oop rdi=NarrowOop r11=Oop r14=Oop [16]=Oop }
          │  ││   │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││   │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
   0.01%  │  ││   │││      0x00007fe7df18f477:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007fe7df18f8c3
  12.79%  │  ││   │││      0x00007fe7df18f47f:   nop
   0.00%  │  ││   │││      0x00007fe7df18f480:   cmp    %ebx,%r9d
          │  ││╭  │││      0x00007fe7df18f483:   jne    0x00007fe7df18f4d0
   0.55%  │  │││  │││      0x00007fe7df18f489:   test   %ebx,%ebx
          │  │││╭ │││      0x00007fe7df18f48b:   je     0x00007fe7df18f503
   0.00%  │  ││││ │││      0x00007fe7df18f491:   mov    %edi,0xc(%rsp)
   0.01%  │  ││││ │││      0x00007fe7df18f495:   shl    $0x3,%rcx
          │  ││││ │││      0x00007fe7df18f499:   mov    %r14,%rsi
   0.59%  │  ││││ │││      0x00007fe7df18f49c:   mov    $0x10,%rdx
          │  ││││ │││      0x00007fe7df18f4a3:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │  ││││ │││                                                                ; - java.lang.String::equals@-3
          │  ││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
   0.00%  │  ││││ │││      0x00007fe7df18f4aa:   mov    %eax,%r11d
   0.00%  │  ││││ │││      0x00007fe7df18f4ad:   call   0x00007fe7ded0fb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.54%  │  ││││ │││      0x00007fe7df18f4b2:   nop
          │  ││││ │││      0x00007fe7df18f4b3:   test   %eax,%eax
          │  ││││╭│││      0x00007fe7df18f4b5:   jne    0x00007fe7df18f4d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
          │  ││││││││      0x00007fe7df18f4bb:   mov    %r11d,%r10d
   0.00%  │  ││││││││      0x00007fe7df18f4be:   mov    0x10(%rsp),%r11
   0.49%  │  │││││╰││      0x00007fe7df18f4c3:   jmp    0x00007fe7df18f430           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
          │  │↘│││ ││      0x00007fe7df18f4c8:   mov    %eax,%r10d
          │  │ │││ ╰│      0x00007fe7df18f4cb:   jmp    0x00007fe7df18f430
   0.62%  │  │ ↘││  │      0x00007fe7df18f4d0:   mov    %eax,%r10d
   0.01%  │  │  ││  ╰      0x00007fe7df18f4d3:   jmp    0x00007fe7df18f430           ;* unwind (locked if synchronized)
          │  │  ││                                                                   ; - java.lang.String::equals@-3
          │  │  ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
   0.50%  │  │  │↘   ↗↗    0x00007fe7df18f4d8:   mov    0xc(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
   0.01%  │  │  │    ││    0x00007fe7df18f4dc:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 137)
   0.00%  │  │  │    ││↗↗  0x00007fe7df18f4e0:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │  │  │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@33 (line 139)
          │  │  │    ││││  0x00007fe7df18f4e3:   mov    0x20(%rsp),%rbp
   0.55%  │  │  │    ││││  0x00007fe7df18f4e8:   add    $0x28,%rsp
   0.00%  │  │  │    ││││  0x00007fe7df18f4ec:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  │    ││││  0x00007fe7df18f4f3:   ja     0x00007fe7df18f800
   0.01%  │  │  │    ││││  0x00007fe7df18f4f9:   vzeroupper
   0.57%  │  │  │    ││││  0x00007fe7df18f4fc:   ret
   0.53%  │  ↘  │    ││││  0x00007fe7df18f4fd:   mov    %edi,0xc(%rsp)
   0.02%  │     │    ╰│││  0x00007fe7df18f501:   jmp    0x00007fe7df18f4d8
          │     ↘     │││  0x00007fe7df18f503:   mov    %edi,0xc(%rsp)
          │           ╰││  0x00007fe7df18f507:   jmp    0x00007fe7df18f4d8           ;* unwind (locked if synchronized)
          │            ││                                                            ; - java.lang.String::equals@-3
          │            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
          ↘            ││  0x00007fe7df18f509:   mov    %rbx,%rdi
                       ╰│  0x00007fe7df18f50c:   jmp    0x00007fe7df18f4e0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@31 (line 139)
                        │  0x00007fe7df18f50e:   mov    %rbx,%rdi
                        ╰  0x00007fe7df18f511:   jmp    0x00007fe7df18f4e0
                           0x00007fe7df18f513:   mov    %rbx,%rdi
....................................................................................................
  84.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1036
   3.50%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1036
   2.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1072
   2.36%                        <unknown>
   2.28%                        <unknown>
   0.63%                        <unknown>
   0.16%                kernel  [unknown]
   0.11%             libjvm.so  HeapRegionManager::par_iterate
   0.10%                kernel  [unknown]
   0.10%                kernel  [unknown]
   0.10%                kernel  [unknown]
   0.10%                kernel  [unknown]
   0.08%             libc.so.6  __memset_avx2_unaligned_erms
   0.08%                kernel  [unknown]
   0.05%             libjvm.so  ElfSymbolTable::lookup
   0.04%             libjvm.so  SpinPause
   0.03%                kernel  [unknown]
   0.03%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.03%                kernel  [unknown]
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr
   2.79%  <...other 833 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues, version 2, compile id 1036
   5.41%                        <unknown>
   2.81%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1072
   2.10%                kernel  [unknown]
   0.11%             libjvm.so  HeapRegionManager::par_iterate
   0.09%             libc.so.6  __memset_avx2_unaligned_erms
   0.06%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.05%             libjvm.so  ElfSymbolTable::lookup
   0.04%             libjvm.so  SpinPause
   0.03%                [vdso]  [unknown]
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr
   0.03%             libjvm.so  fileStream::write
   0.02%             libc.so.6  __vfprintf_internal
   0.02%             libc.so.6  __new_sem_wait_slow64.constprop.0
   0.02%             libjvm.so  G1CardSet::reset_table_scanner
   0.02%             libjvm.so  HeapRegionClaimer::claim_region
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.02%             libc.so.6  __GI___libc_write
   0.02%        hsdis-amd64.so  print_insn
   1.01%  <...other 320 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  90.88%        jvmci, level 4
   5.41%
   2.10%                kernel
   1.04%             libjvm.so
   0.31%             libc.so.6
   0.12%   libjvmcicompiler.so
   0.03%                [vdso]
   0.03%           interpreter
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%           c1, level 2
   0.00%         perf-9479.map
   0.00%          runtime stub
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:04:33

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
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  172.751 ± 1.951  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  176.066 ± 1.358  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN            ---
