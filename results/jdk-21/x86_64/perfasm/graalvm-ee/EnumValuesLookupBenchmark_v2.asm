# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
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
# Warmup Iteration   1: 143.125 ns/op
# Warmup Iteration   2: 167.320 ns/op
# Warmup Iteration   3: 111.327 ns/op
# Warmup Iteration   4: 105.411 ns/op
# Warmup Iteration   5: 105.418 ns/op
Iteration   1: 105.477 ns/op
Iteration   2: 105.305 ns/op
Iteration   3: 106.063 ns/op
Iteration   4: 104.906 ns/op
Iteration   5: 106.885 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  105.727 ±(99.9%) 2.963 ns/op [Average]
  (min, avg, max) = (104.906, 105.727, 106.885), stdev = 0.770
  CI (99.9%): [102.764, 108.690] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 225903 total address lines.
Perf output processed (skipped 81.811 seconds):
 Column 1: cycles (49803 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1066

                      0x00007f76aadb2b59:   mov    %rax,%rbp
                      0x00007f76aadb2b5c:   mov    %edi,%r13d
                      0x00007f76aadb2b5f:   nop
                      0x00007f76aadb2b60:   call   0x00007f76aa912e80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                      0x00007f76aadb2b65:   nop
                      0x00007f76aadb2b66:   test   %eax,%eax
          ╭           0x00007f76aadb2b68:   jne    0x00007f76aadb2cc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 147)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.00%  │           0x00007f76aadb2b6e:   mov    %r14d,%r10d
          │           0x00007f76aadb2b71:   shl    $0x3,%r10                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 73)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.97%  │           0x00007f76aadb2b75:   mov    %r10,0x8(%rsp)               ; ImmutableOopMap {rbp=Oop r10=Oop r11=Oop r14=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │                                                                     ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 147)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.01%  │           0x00007f76aadb2b7a:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f76aadb3267
   0.00%  │           0x00007f76aadb2b82:   test   %r13d,%r13d
          │           0x00007f76aadb2b85:   je     0x00007f76aadb2d20           ;* unwind (locked if synchronized)
          │                                                                     ; - java.lang.String::equals@-3
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          │           0x00007f76aadb2b8b:   mov    $0x1,%r10d
   0.92%  │           0x00007f76aadb2b91:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%  │           0x00007f76aadb2b9c:   data16 data16 xchg %ax,%ax
  19.02%  │    ↗↗↗    0x00007f76aadb2ba0:   cmp    $0x29,%r10d
          │    │││    0x00007f76aadb2ba4:   jae    0x00007f76aadb314e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 146)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.03%  │    │││    0x00007f76aadb2baa:   mov    0x10(%r11,%r10,4),%eax       ; ImmutableOopMap {rax=NarrowOop rbp=Oop r11=Oop r14=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │    │││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.93%  │    │││    0x00007f76aadb2baf:   mov    0x18(,%rax,8),%esi           ; implicit exception: dispatches to 0x00007f76aadb328d
          │    │││                                                              ; ImmutableOopMap {rax=NarrowOop rbp=Oop rsi=NarrowOop r11=Oop r14=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │    │││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 146)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          │    │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.07%  │    │││    0x00007f76aadb2bb6:   movsbl 0x10(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f76aadb32b0
  19.20%  │    │││    0x00007f76aadb2bbe:   mov    0x14(,%rsi,8),%ecx
   0.03%  │    │││    0x00007f76aadb2bc5:   cmp    %r14d,%esi
          │╭   │││    0x00007f76aadb2bc8:   je     0x00007f76aadb2cbf           ;* unwind (locked if synchronized)
          ││   │││                                                              ; - java.lang.String::equals@-3
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.88%  ││   │││    0x00007f76aadb2bce:   mov    %r10d,%r9d
   0.01%  ││   │││    0x00007f76aadb2bd1:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 146)
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
  17.73%  ││   │││    0x00007f76aadb2bd4:   cmp    %bl,%dl
          ││╭  │││    0x00007f76aadb2bd6:   jne    0x00007f76aadb2c3a
   0.06%  │││  │││    0x00007f76aadb2bdc:   nopl   0x0(%rax)
   0.94%  │││  │││    0x00007f76aadb2be0:   test   %ecx,%ecx
          │││  │││    0x00007f76aadb2be2:   je     0x00007f76aadb2df1
   0.05%  │││  │││    0x00007f76aadb2be8:   cmp    0xc(,%rcx,8),%r13d
   0.00%  │││╭ │││    0x00007f76aadb2bf0:   jne    0x00007f76aadb2c45
   0.04%  ││││ │││    0x00007f76aadb2bf6:   mov    %eax,0x4(%rsp)
   0.92%  ││││ │││    0x00007f76aadb2bfa:   shl    $0x3,%rcx
   0.00%  ││││ │││    0x00007f76aadb2bfe:   mov    %rbp,%rsi
          ││││ │││    0x00007f76aadb2c01:   mov    $0x10,%rdx
   0.01%  ││││ │││    0x00007f76aadb2c08:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          ││││ │││                                                              ; - java.lang.String::equals@-3
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││││ │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.98%  ││││ │││    0x00007f76aadb2c0f:   mov    %r9d,%r11d
   0.00%  ││││ │││    0x00007f76aadb2c12:   mov    %r13d,%r9d
          ││││ │││    0x00007f76aadb2c15:   call   0x00007f76aa912e80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.00%  ││││ │││    0x00007f76aadb2c1a:   nop
   0.01%  ││││ │││    0x00007f76aadb2c1b:   nopl   0x0(%rax,%rax,1)
   0.98%  ││││ │││    0x00007f76aadb2c20:   test   %eax,%eax
          ││││╭│││    0x00007f76aadb2c22:   jne    0x00007f76aadb2c4d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 147)
          ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.00%  ││││││││    0x00007f76aadb2c28:   mov    %r11d,%r10d
   0.01%  ││││││││    0x00007f76aadb2c2b:   movabs $0x62a930fe0,%r11            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x000000062a930fe0})}
   0.01%  │││││╰││    0x00007f76aadb2c35:   jmp    0x00007f76aadb2ba0
          ││↘││ ││    0x00007f76aadb2c3a:   mov    %r9d,%r10d
          ││ ││ ││    0x00007f76aadb2c3d:   data16 xchg %ax,%ax
          ││ ││ ╰│    0x00007f76aadb2c40:   jmp    0x00007f76aadb2ba0
  18.60%  ││ ↘│  │    0x00007f76aadb2c45:   mov    %r9d,%r10d
   0.06%  ││  │  ╰    0x00007f76aadb2c48:   jmp    0x00007f76aadb2ba0
          ││  ↘   ↗   0x00007f76aadb2c4d:   mov    0x4(%rsp),%eax
   0.01%  ││      │   0x00007f76aadb2c51:   shl    $0x3,%rax                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 146)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          ││      │   0x00007f76aadb2c55:   mov    0x30(%rsp),%rsi              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 148)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.98%  ││      │↗  0x00007f76aadb2c5a:   mov    0x40(%rsp),%r10
          ││      ││  0x00007f76aadb2c5f:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@26 (line 237)
          ││      ││  0x00007f76aadb2c62:   cmpb   $0x0,0x94(%rsi)
   0.00%  ││      ││  0x00007f76aadb2c69:   jne    0x00007f76aadb2da5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@33 (line 238)
   0.95%  ││      ││  0x00007f76aadb2c6f:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││      ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@33 (line 238)
          ││      ││  0x00007f76aadb2c76:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││      ││  0x00007f76aadb2c79:   mov    %r10,0x40(%rsp)
          ││      ││  0x00007f76aadb2c7e:   movabs $0x62a930fe0,%r11            ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
          ││      ││                                                            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x000000062a930fe0})}
   0.87%  ││      ││  0x00007f76aadb2c88:   mov    0x20(%rsp),%rbx
          ││      ││  0x00007f76aadb2c8d:   mov    0x10(%r11),%esi              ; ImmutableOopMap {rbx=Oop rsi=NarrowOop r11=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││      ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
          ││      ││  0x00007f76aadb2c91:   mov    0x18(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007f76aadb32d3
          ││      ││                                                            ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rsi=NarrowOop r11=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          ││      ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@13 (line 236)
   0.00%  ││      ││  0x00007f76aadb2c98:   movsbl 0x10(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f76aadb32f6
   0.92%  ││      ││  0x00007f76aadb2ca1:   mov    0x14(,%rcx,8),%r9d           ;* unwind (locked if synchronized)
          ││      ││                                                            ; - java.lang.String::equals@-3
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          ││      ││  0x00007f76aadb2ca9:   mov    0x14(%rbx),%r14d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 73)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          ││      ││  0x00007f76aadb2cad:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 146)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
          ││      ││  0x00007f76aadb2cb1:   cmp    %ecx,%r14d
          ││      ││  0x00007f76aadb2cb4:   jne    0x00007f76aadb2ae0
          ││      ││  0x00007f76aadb2cba:   jmp    0x00007f76aadb2ce0           ;* unwind (locked if synchronized)
          ││      ││                                                            ; - java.lang.String::equals@-3
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
   0.00%  │↘      ││  0x00007f76aadb2cbf:   mov    %eax,0x4(%rsp)
   0.89%  │       ╰│  0x00007f76aadb2cc3:   jmp    0x00007f76aadb2c4d
          ↘        │  0x00007f76aadb2cc5:   mov    0x10(%rsp),%rax
                   │  0x00007f76aadb2cca:   mov    0x30(%rsp),%rsi
                   ╰  0x00007f76aadb2ccf:   jmp    0x00007f76aadb2c5a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@31 (line 148)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 73)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub@17 (line 236)
                      0x00007f76aadb2cd1:   data16 data16 nopw 0x0(%rax,%rax,1)
                      0x00007f76aadb2cdc:   data16 data16 xchg %ax,%ax          ;* unwind (locked if synchronized)
                                                                                ; - java.lang.String::equals@-3
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 147)
....................................................................................................
  87.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1066
   2.98%                        <unknown>
   2.77%                        <unknown>
   2.03%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1066
   1.87%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1066
   1.02%                        <unknown>
   0.19%                kernel  [unknown]
   0.12%                kernel  [unknown]
   0.10%                kernel  [unknown]
   0.09%                kernel  [unknown]
   0.07%                kernel  [unknown]
   0.06%                kernel  [unknown]
   0.04%                kernel  [unknown]
   0.04%             libjvm.so  fileStream::write
   0.03%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libjvm.so  ElfSymbolTable::lookup
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   1.37%  <...other 516 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.03%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 1066
   6.81%                        <unknown>
   1.60%                kernel  [unknown]
   0.04%             libjvm.so  fileStream::write
   0.02%             libjvm.so  ElfSymbolTable::lookup
   0.02%             libc.so.6  __vfprintf_internal
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libjvm.so  xmlStream::write_text
   0.02%        hsdis-amd64.so  print_insn
   0.01%             libjvm.so  defaultStream::write
   0.01%             libc.so.6  __memmove_avx_unaligned_erms
   0.01%             libc.so.6  __GI___libc_write
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer
   0.01%             libjvm.so  VMError::is_error_reported
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5
   0.01%             libjvm.so  readConfiguration0
   0.01%   libjvmcicompiler.so  org.graalvm.compiler.hotspot.HotSpotForeignCallLinkageImpl::createCallingConvention
   0.01%             libjvm.so  defaultStream::hold
   0.01%             libc.so.6  __strcmp_avx2
   0.34%  <...other 141 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.03%        jvmci, level 4
   6.81%
   1.60%                kernel
   0.24%             libjvm.so
   0.13%   libjvmcicompiler.so
   0.11%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 1
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 240.187 ns/op
# Warmup Iteration   2: 242.388 ns/op
# Warmup Iteration   3: 149.052 ns/op
# Warmup Iteration   4: 147.707 ns/op
# Warmup Iteration   5: 149.201 ns/op
Iteration   1: 147.565 ns/op
Iteration   2: 147.819 ns/op
Iteration   3: 148.102 ns/op
Iteration   4: 148.203 ns/op
Iteration   5: 149.546 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  148.247 ±(99.9%) 2.957 ns/op [Average]
  (min, avg, max) = (147.565, 148.247, 149.546), stdev = 0.768
  CI (99.9%): [145.290, 151.205] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 222813 total address lines.
Perf output processed (skipped 79.812 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1071

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
                   0x00007feaaedaa04f:   mov    %r13d,%r9d
                   0x00007feaaedaa052:   call   0x00007feaae910500           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
                   0x00007feaaedaa057:   nop
                   0x00007feaaedaa058:   test   %eax,%eax
                   0x00007feaaedaa05a:   jne    0x00007feaaedaa335           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.65%           0x00007feaaedaa060:   mov    0x1c(%rsp),%r10d
                   0x00007feaaedaa065:   mov    %r10d,%edi
   0.04%           0x00007feaaedaa068:   shl    $0x3,%rdi                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.63%           0x00007feaaedaa06c:   mov    %rdi,0x10(%rsp)              ; ImmutableOopMap {rdi=Oop r10=NarrowOop r11=Oop [16]=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.03%           0x00007feaaedaa071:   mov    0xc(,%rbx,8),%ebx            ; implicit exception: dispatches to 0x00007feaaedaa8bc
                   0x00007feaaedaa078:   mov    0x1b8(%r15),%rsi
   0.03%           0x00007feaaedaa07f:   lea    0xb8(%rsi),%rdx
   0.58%           0x00007feaaedaa086:   cmp    0x1c8(%r15),%rdx
                   0x00007feaaedaa08d:   ja     0x00007feaaedaa3c0
   0.02%           0x00007feaaedaa093:   mov    %rdx,0x1b8(%r15)
   0.00%           0x00007feaaedaa09a:   prefetchw 0x178(%rsi)
   0.04%           0x00007feaaedaa0a1:   prefetchw 0x1b8(%rsi)
   0.67%           0x00007feaaedaa0a8:   prefetchw 0x1f8(%rsi)
   0.26%           0x00007feaaedaa0af:   prefetchw 0x238(%rsi)               ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 81)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 137)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.18%           0x00007feaaedaa0b6:   movq   $0x1,(%rsi)
   0.04%           0x00007feaaedaa0bd:   movl   $0x102a4b8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.55%           0x00007feaaedaa0c4:   movl   $0x29,0xc(%rsi)
   0.04%           0x00007feaaedaa0cb:   movl   $0xc1880157,0x10(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400ab8})}
   0.02%           0x00007feaaedaa0d2:   movl   $0xc1880776,0x14(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403bb0})}
   0.04%           0x00007feaaedaa0d9:   movl   $0xc1880772,0x18(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403b90})}
   1.01%           0x00007feaaedaa0e0:   movl   $0xc188076e,0x1c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403b70})}
   0.35%           0x00007feaaedaa0e7:   movl   $0xc188076a,0x20(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403b50})}
   0.12%           0x00007feaaedaa0ee:   movl   $0xc1880766,0x24(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403b30})}
   0.39%           0x00007feaaedaa0f5:   movl   $0xc1880762,0x28(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403b10})}
   0.28%           0x00007feaaedaa0fc:   movl   $0xc188075e,0x2c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403af0})}
   0.24%           0x00007feaaedaa103:   movl   $0xc188075a,0x30(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403ad0})}
   0.06%           0x00007feaaedaa10a:   movl   $0xc1880756,0x34(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403ab0})}
   0.97%           0x00007feaaedaa111:   movl   $0xc1880752,0x38(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403a90})}
   0.10%           0x00007feaaedaa118:   movl   $0xc188074e,0x3c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403a70})}
   0.09%           0x00007feaaedaa11f:   movl   $0xc188074a,0x40(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403a50})}
   0.14%           0x00007feaaedaa126:   movl   $0xc1880746,0x44(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403a30})}
   0.49%           0x00007feaaedaa12d:   movl   $0xc1880742,0x48(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403a10})}
   0.22%           0x00007feaaedaa134:   movl   $0xc188073e,0x4c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4039f0})}
   0.20%           0x00007feaaedaa13b:   movl   $0xc188073a,0x50(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4039d0})}
   0.53%           0x00007feaaedaa142:   movl   $0xc1880736,0x54(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4039b0})}
   0.61%           0x00007feaaedaa149:   movl   $0xc1880732,0x58(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403990})}
   0.60%           0x00007feaaedaa150:   movl   $0xc188072e,0x5c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403970})}
   0.69%           0x00007feaaedaa157:   movl   $0xc188072a,0x60(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403950})}
   0.61%           0x00007feaaedaa15e:   movl   $0xc1880726,0x64(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403930})}
   0.58%           0x00007feaaedaa165:   movl   $0xc1880722,0x68(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403910})}
   0.64%           0x00007feaaedaa16c:   movl   $0xc188071e,0x6c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4038f0})}
   0.67%           0x00007feaaedaa173:   movl   $0xc188071a,0x70(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4038d0})}
   0.66%           0x00007feaaedaa17a:   movl   $0xc1880716,0x74(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c4038b0})}
   0.66%           0x00007feaaedaa181:   movl   $0xc1880712,0x78(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403890})}
   0.69%           0x00007feaaedaa188:   movl   $0xc188070e,0x7c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c403870})}
   0.64%           0x00007feaaedaa18f:   movl   $0xc18801fe,0x80(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400ff0})}
   0.66%           0x00007feaaedaa199:   movl   $0xc18801fa,0x84(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400fd0})}
   0.66%           0x00007feaaedaa1a3:   movl   $0xc18801f6,0x88(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400fb0})}
   0.60%           0x00007feaaedaa1ad:   movl   $0xc18801f2,0x8c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400f90})}
   0.71%           0x00007feaaedaa1b7:   movl   $0xc18801ee,0x90(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400f70})}
   0.60%           0x00007feaaedaa1c1:   movl   $0xc18801ea,0x94(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400f50})}
   0.66%           0x00007feaaedaa1cb:   movl   $0xc18801e6,0x98(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400f30})}
   0.69%           0x00007feaaedaa1d5:   movl   $0xc18801e2,0x9c(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400f10})}
   0.60%           0x00007feaaedaa1df:   movl   $0xc18801de,0xa0(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400ef0})}
   0.67%           0x00007feaaedaa1e9:   movl   $0xc18801da,0xa4(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400ed0})}
   0.60%           0x00007feaaedaa1f3:   movl   $0xc18801d6,0xa8(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400eb0})}
   0.68%           0x00007feaaedaa1fd:   movl   $0xc18801d2,0xac(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400e90})}
   0.72%           0x00007feaaedaa207:   movl   $0xc18801ce,0xb0(%rsi)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000060c400e70})}
   0.66%           0x00007feaaedaa211:   test   %ebx,%ebx
                   0x00007feaaedaa213:   je     0x00007feaaedaa354           ;* unwind (locked if synchronized)
                                                                             ; - java.lang.String::equals@-3
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.00%           0x00007feaaedaa219:   mov    $0x1,%r8d
                   0x00007feaaedaa21f:   nop
  10.88%      ↗↗↗  0x00007feaaedaa220:   cmp    $0x29,%r8d
              │││  0x00007feaaedaa224:   jae    0x00007feaaedaa7bb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 137)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.65%      │││  0x00007feaaedaa22a:   mov    0x10(%rsi,%r8,4),%edx        ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r10=NarrowOop r11=Oop [16]=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
              │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
              │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.27%      │││  0x00007feaaedaa22f:   mov    0x18(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007feaaedaa8df
              │││                                                            ; ImmutableOopMap {rcx=NarrowOop rdx=NarrowOop rsi=Oop r10=NarrowOop r11=Oop [16]=Oop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
              │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
              │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 137)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   2.52%      │││  0x00007feaaedaa236:   movsbl 0x10(,%rcx,8),%r9d           ; implicit exception: dispatches to 0x00007feaaedaa902
  11.20%      │││  0x00007feaaedaa23f:   mov    0x14(,%rcx,8),%eax           ;* unwind (locked if synchronized)
              │││                                                            ; - java.lang.String::equals@-3
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.70%      │││  0x00007feaaedaa246:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 137)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.30%      │││  0x00007feaaedaa24a:   cmp    %r10d,%ecx
          ╭   │││  0x00007feaaedaa24d:   je     0x00007feaaedaa2d5           ;* unwind (locked if synchronized)
          │   │││                                                            ; - java.lang.String::equals@-3
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   2.40%  │   │││  0x00007feaaedaa253:   mov    %r8d,%ecx
  10.44%  │   │││  0x00007feaaedaa256:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 137)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.68%  │   │││  0x00007feaaedaa258:   nopl   0x0(%rax,%rax,1)
   0.27%  │   │││  0x00007feaaedaa260:   cmp    %bpl,%r9b
          │╭  │││  0x00007feaaedaa263:   jne    0x00007feaaedaa2c5
   3.21%  ││  │││  0x00007feaaedaa269:   test   %eax,%eax
          ││  │││  0x00007feaaedaa26b:   je     0x00007feaaedaa77b
  10.34%  ││  │││  0x00007feaaedaa271:   cmp    0xc(,%rax,8),%ebx
          ││╭ │││  0x00007feaaedaa278:   jne    0x00007feaaedaa2cd
   1.49%  │││ │││  0x00007feaaedaa27e:   mov    %rdx,0x8(%rsp)
   0.01%  │││ │││  0x00007feaaedaa283:   shl    $0x3,%rax
   0.01%  │││ │││  0x00007feaaedaa287:   mov    %rsi,%r9
   0.30%  │││ │││  0x00007feaaedaa28a:   mov    %r11,%rsi
   0.41%  │││ │││  0x00007feaaedaa28d:   mov    $0x10,%rdx
   0.00%  │││ │││  0x00007feaaedaa294:   mov    %ecx,%r14d
   0.00%  │││ │││  0x00007feaaedaa297:   mov    %rax,%rcx
   0.23%  │││ │││  0x00007feaaedaa29a:   mov    $0x10,%r8                    ;* unwind (locked if synchronized)
          │││ │││                                                            ; - java.lang.String::equals@-3
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
          │││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.42%  │││ │││  0x00007feaaedaa2a1:   mov    %r9,%r13
          │││ │││  0x00007feaaedaa2a4:   mov    %ebx,%r9d
   0.00%  │││ │││  0x00007feaaedaa2a7:   call   0x00007feaae910500           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.01%  │││ │││  0x00007feaaedaa2ac:   nop
   0.28%  │││ │││  0x00007feaaedaa2ad:   test   %eax,%eax
          │││╭│││  0x00007feaaedaa2af:   jne    0x00007feaaedaa32e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 138)
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.35%  │││││││  0x00007feaaedaa2b5:   mov    %r14d,%r8d
   0.00%  │││││││  0x00007feaaedaa2b8:   mov    %r13,%rsi
   0.01%  │││││││  0x00007feaaedaa2bb:   mov    0x1c(%rsp),%r10d
   0.67%  ││││╰││  0x00007feaaedaa2c0:   jmp    0x00007feaaedaa220
          │↘││ ││  0x00007feaaedaa2c5:   mov    %ecx,%r8d
          │ ││ ╰│  0x00007feaaedaa2c8:   jmp    0x00007feaaedaa220
   1.63%  │ ↘│  │  0x00007feaaedaa2cd:   mov    %ecx,%r8d
   2.06%  │  │  ╰  0x00007feaaedaa2d0:   jmp    0x00007feaaedaa220           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 137)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.05%  ↘  │     0x00007feaaedaa2d5:   mov    0x40(%rsp),%rsi              ;* unwind (locked if synchronized)
             │                                                               ; - org.openjdk.jmh.infra.Blackhole::consume@-3
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@20 (line 236)
   0.64%     │     0x00007feaaedaa2da:   mov    0x48(%rsp),%r10
   0.00%     │     0x00007feaaedaa2df:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@26 (line 237)
   0.00%     │     0x00007feaaedaa2e2:   cmpb   $0x0,0x94(%rsi)
   0.05%     │     0x00007feaaedaa2e9:   jne    0x00007feaaedaa3fb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@33 (line 238)
   0.63%     │     0x00007feaaedaa2ef:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
             │                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@33 (line 238)
             │     0x00007feaaedaa2f6:   test   %eax,(%r11)                  ;   {poll}
   0.00%     │     0x00007feaaedaa2f9:   mov    %r10,0x48(%rsp)
   0.03%     │     0x00007feaaedaa2fe:   mov    0x20(%rsp),%rbx              ;*aload {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@13 (line 236)
   0.62%     │     0x00007feaaedaa303:   mov    0x30(%rsp),%r10
             │     0x00007feaaedaa308:   mov    0x18(%rbx),%ebp              ; ImmutableOopMap {rbp=NarrowOop r10=Oop [32]=Oop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
             │                                                               ;*aload {reexecute=1 rethrow=0 return_oop=0}
             │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@13 (line 236)
   0.00%     │     0x00007feaaedaa30b:   movsbl 0x10(,%rbp,8),%r13d          ; implicit exception: dispatches to 0x00007feaaedaa925
   0.06%     │     0x00007feaaedaa314:   mov    0x14(,%rbp,8),%r14d          ;* unwind (locked if synchronized)
             │                                                               ; - java.lang.String::equals@-3
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.60%     │     0x00007feaaedaa31c:   mov    0x14(%r10),%r11d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 78)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
   0.00%     │     0x00007feaaedaa320:   cmp    %ebp,%r11d
             │     0x00007feaaedaa323:   jne    0x00007feaaeda9fe0
             │     0x00007feaaedaa329:   jmp    0x00007feaaedaa340           ;* unwind (locked if synchronized)
             │                                                               ; - java.lang.String::equals@-3
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 138)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 78)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub@17 (line 236)
             ↘     0x00007feaaedaa32e:   mov    0x8(%rsp),%rdx
                   0x00007feaaedaa333:   jmp    0x00007feaaedaa2d5
....................................................................................................
  89.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1071
   2.35%                        <unknown>
   1.72%                        <unknown>
   1.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1071
   0.66%                        <unknown>
   0.27%                kernel  [unknown]
   0.25%                kernel  [unknown]
   0.15%                kernel  [unknown]
   0.15%                kernel  [unknown]
   0.14%             libjvm.so  HeapRegionManager::par_iterate
   0.11%                kernel  [unknown]
   0.10%             libc.so.6  __memset_avx2_unaligned_erms
   0.08%             libjvm.so  SpinPause
   0.05%             libjvm.so  HeapRegionClaimer::claim_region
   0.04%                kernel  [unknown]
   0.04%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.03%             libjvm.so  ElfSymbolTable::lookup
   0.03%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   3.31%  <...other 996 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.47%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1071
   5.08%                        <unknown>
   2.59%                kernel  [unknown]
   0.14%             libjvm.so  HeapRegionManager::par_iterate
   0.10%             libc.so.6  __memset_avx2_unaligned_erms
   0.08%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.08%             libjvm.so  SpinPause
   0.05%             libjvm.so  HeapRegionClaimer::claim_region
   0.03%             libjvm.so  ElfSymbolTable::lookup
   0.03%                [vdso]  [unknown]
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.03%             libjvm.so  fileStream::write
   0.02%             libc.so.6  __vfprintf_internal
   0.02%             libjvm.so  InstanceKlass::allocate_objArray
   0.02%             libjvm.so  G1CardSet::reset_table_scanner
   0.02%             libjvm.so  ObjArrayAllocator::initialize
   0.02%        hsdis-amd64.so  print_insn
   0.02%             libjvm.so  G1FromCardCache::clear
   0.02%             libjvm.so  WorkerThread::run
   1.13%  <...other 301 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  90.47%        jvmci, level 4
   5.08%
   2.59%                kernel
   1.37%             libjvm.so
   0.36%             libc.so.6
   0.03%           interpreter
   0.03%                [vdso]
   0.03%  ld-linux-x86-64.so.2
   0.02%        hsdis-amd64.so
   0.01%         perf-6607.map
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:04:36

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
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  105.727 ± 2.963  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  148.247 ± 2.957  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN            ---
