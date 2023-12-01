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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 53.083 ns/op
# Warmup Iteration   2: 55.749 ns/op
# Warmup Iteration   3: 55.502 ns/op
# Warmup Iteration   4: 55.781 ns/op
# Warmup Iteration   5: 55.825 ns/op
Iteration   1: 55.731 ns/op
Iteration   2: 55.669 ns/op
Iteration   3: 55.781 ns/op
Iteration   4: 55.887 ns/op
Iteration   5: 55.808 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  55.775 ±(99.9%) 0.316 ns/op [Average]
  (min, avg, max) = (55.669, 55.775, 55.887), stdev = 0.082
  CI (99.9%): [55.459, 56.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 227266 total address lines.
Perf output processed (skipped 60.663 seconds):
 Column 1: cycles (50673 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1069

                     # {method} {0x00007f9b43479c28} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007f9bb6d9c240:   mov    0x8(%rsi),%r10d
                     0x00007f9bb6d9c244:   movabs $0x7f9b47000000,%r12
                     0x00007f9bb6d9c24e:   add    %r12,%r10
                     0x00007f9bb6d9c251:   xor    %r12,%r12
                     0x00007f9bb6d9c254:   cmp    %r10,%rax
                     0x00007f9bb6d9c257:   jne    0x00007f9bb66f9080           ;   {runtime_call ic_miss_stub}
                     0x00007f9bb6d9c25d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   0.03%             0x00007f9bb6d9c260:   mov    %eax,-0x14000(%rsp)
   0.95%             0x00007f9bb6d9c267:   sub    $0x28,%rsp
   0.01%             0x00007f9bb6d9c26b:   nop
                     0x00007f9bb6d9c26c:   cmpl   $0x1,0x20(%r15)
   0.04%             0x00007f9bb6d9c274:   jne    0x00007f9bb6d9c76d
   0.82%             0x00007f9bb6d9c27a:   mov    %rbp,0x20(%rsp)
   0.02%             0x00007f9bb6d9c27f:   mov    0x14(%rsi),%r11d
   0.01%             0x00007f9bb6d9c283:   movabs $0x62a931048,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x000000062a931048})}
   0.03%             0x00007f9bb6d9c28d:   test   %r11d,%r11d
                     0x00007f9bb6d9c290:   je     0x00007f9bb6d9c473           ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.72%             0x00007f9bb6d9c296:   mov    0x14(,%r11,8),%edx           ; ImmutableOopMap {rdx=NarrowOop rbx=Oop rsi=Oop r11=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   0.14%             0x00007f9bb6d9c29e:   mov    0xc(,%rdx,8),%ebp            ; implicit exception: dispatches to 0x00007f9bb6d9c791
   0.36%             0x00007f9bb6d9c2a5:   movsbl 0x10(,%r11,8),%r13d          ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%             0x00007f9bb6d9c2ae:   mov    %r11d,%r14d
   0.71%             0x00007f9bb6d9c2b1:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
   0.01%             0x00007f9bb6d9c2b5:   mov    %r14,0x10(%rsp)
   0.07%             0x00007f9bb6d9c2ba:   nopw   0x0(%rax,%rax,1)
                     0x00007f9bb6d9c2c0:   test   %ebp,%ebp
   0.00%  ╭          0x00007f9bb6d9c2c2:   je     0x00007f9bb6d9c3b7
   0.75%  │          0x00007f9bb6d9c2c8:   shl    $0x3,%rdx                    ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │          0x00007f9bb6d9c2cc:   mov    %rdx,0x8(%rsp)
   0.08%  │          0x00007f9bb6d9c2d1:   mov    $0x0,%r10d
   0.01%  │          0x00007f9bb6d9c2d7:   nopw   0x0(%rax,%rax,1)
  18.09%  │    ↗↗↗   0x00007f9bb6d9c2e0:   cmp    $0x29,%r10d
          │    │││   0x00007f9bb6d9c2e4:   jae    0x00007f9bb6d9c42c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.10%  │    │││   0x00007f9bb6d9c2ea:   mov    0x10(%rbx,%r10,4),%edi       ; ImmutableOopMap {rdx=Oop rbx=Oop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.11%  │    │││   0x00007f9bb6d9c2ef:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007f9bb6d9c7b4
          │    │││                                                             ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.40%  │    │││   0x00007f9bb6d9c2f6:   movsbl 0x10(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007f9bb6d9c7d7
  19.52%  │    │││   0x00007f9bb6d9c2fe:   mov    0x14(,%rsi,8),%r8d
   0.14%  │    │││   0x00007f9bb6d9c306:   cmp    %r11d,%esi
          │╭   │││   0x00007f9bb6d9c309:   je     0x00007f9bb6d9c3b1           ;* unwind (locked if synchronized)
          ││   │││                                                             ; - java.lang.String::equals@-3
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  ││   │││   0x00007f9bb6d9c30f:   mov    %r10d,%eax
   0.00%  ││   │││   0x00007f9bb6d9c312:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  17.35%  ││   │││   0x00007f9bb6d9c314:   cmp    %r13b,%cl
          ││╭  │││   0x00007f9bb6d9c317:   jne    0x00007f9bb6d9c375
   0.55%  │││  │││   0x00007f9bb6d9c31d:   data16 xchg %ax,%ax
   0.04%  │││  │││   0x00007f9bb6d9c320:   test   %r8d,%r8d
          │││  │││   0x00007f9bb6d9c323:   je     0x00007f9bb6d9c454
   0.41%  │││  │││   0x00007f9bb6d9c329:   cmp    0xc(,%r8,8),%ebp
   0.01%  │││╭ │││   0x00007f9bb6d9c331:   jne    0x00007f9bb6d9c37d
   1.03%  ││││ │││   0x00007f9bb6d9c337:   mov    %edi,0x4(%rsp)
   0.01%  ││││ │││   0x00007f9bb6d9c33b:   shl    $0x3,%r8
   0.00%  ││││ │││   0x00007f9bb6d9c33f:   mov    %rdx,%rsi
   0.77%  ││││ │││   0x00007f9bb6d9c342:   mov    $0x10,%rdx
   0.04%  ││││ │││   0x00007f9bb6d9c349:   mov    %r8,%rcx
   0.00%  ││││ │││   0x00007f9bb6d9c34c:   mov    $0x10,%r8
   0.00%  ││││ │││   0x00007f9bb6d9c353:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││││ │││                                                             ; - java.lang.String::equals@-3
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.74%  ││││ │││   0x00007f9bb6d9c356:   mov    %eax,%r14d
   0.07%  ││││ │││   0x00007f9bb6d9c359:   call   0x00007f9bb6910580           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.14%  ││││ │││   0x00007f9bb6d9c35e:   nop
          ││││ │││   0x00007f9bb6d9c35f:   nop
   0.00%  ││││ │││   0x00007f9bb6d9c360:   test   %eax,%eax
   0.00%  ││││╭│││   0x00007f9bb6d9c362:   jne    0x00007f9bb6d9c385
   0.73%  ││││││││   0x00007f9bb6d9c368:   mov    %r14d,%r10d
   0.07%  ││││││││   0x00007f9bb6d9c36b:   mov    0x8(%rsp),%rdx
   0.07%  │││││╰││   0x00007f9bb6d9c370:   jmp    0x00007f9bb6d9c2e0
          ││↘││ ││   0x00007f9bb6d9c375:   mov    %eax,%r10d
          ││ ││ ╰│   0x00007f9bb6d9c378:   jmp    0x00007f9bb6d9c2e0
  20.08%  ││ ↘│  │   0x00007f9bb6d9c37d:   mov    %eax,%r10d
   0.12%  ││  │  ╰   0x00007f9bb6d9c380:   jmp    0x00007f9bb6d9c2e0
   0.87%  ││  ↘   ↗  0x00007f9bb6d9c385:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││      │  0x00007f9bb6d9c389:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││      │  0x00007f9bb6d9c38d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
          ││      │  0x00007f9bb6d9c390:   mov    0x20(%rsp),%rbp
   0.84%  ││      │  0x00007f9bb6d9c395:   add    $0x28,%rsp
          ││      │  0x00007f9bb6d9c399:   nopl   0x0(%rax)
   0.01%  ││      │  0x00007f9bb6d9c3a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││      │  0x00007f9bb6d9c3a7:   ja     0x00007f9bb6d9c77d
   0.01%  ││      │  0x00007f9bb6d9c3ad:   vzeroupper
   0.85%  ││      │  0x00007f9bb6d9c3b0:   ret
   0.00%  │↘      │  0x00007f9bb6d9c3b1:   mov    %edi,0x4(%rsp)
   0.01%  │       ╰  0x00007f9bb6d9c3b5:   jmp    0x00007f9bb6d9c385           ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ↘          0x00007f9bb6d9c3b7:   mov    $0x0,%r10d
                     0x00007f9bb6d9c3bd:   data16 xchg %ax,%ax
                     0x00007f9bb6d9c3c0:   cmp    $0x29,%r10d
                     0x00007f9bb6d9c3c4:   jae    0x00007f9bb6d9c42c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                     0x00007f9bb6d9c3ca:   mov    0x10(%rbx,%r10,4),%r8d       ; ImmutableOopMap {rbx=Oop r8=NarrowOop r11=NarrowOop [16]=Oop }
....................................................................................................
  88.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.01%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1069
   3.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 5, compile id 1096
   2.48%                        <unknown>
   1.68%                        <unknown>
   1.56%                        <unknown>
   0.20%                kernel  [unknown]
   0.18%                kernel  [unknown]
   0.17%                kernel  [unknown]
   0.10%                kernel  [unknown]
   0.09%                kernel  [unknown]
   0.05%                kernel  [unknown]
   0.05%                kernel  [unknown]
   0.04%                kernel  [unknown]
   0.04%             libjvm.so  ElfSymbolTable::lookup
   0.04%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.03%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   1.62%  <...other 526 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.01%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1069
   5.86%                        <unknown>
   3.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 5, compile id 1096
   2.13%                kernel  [unknown]
   0.04%             libjvm.so  ElfSymbolTable::lookup
   0.02%             libc.so.6  __vfprintf_internal
   0.02%             libjvm.so  fileStream::write
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.01%             libc.so.6  __GI___libc_write
   0.01%             libc.so.6  syscall
   0.01%        hsdis-amd64.so  print_insn
   0.01%             libjvm.so  defaultStream::write
   0.01%             libjvm.so  defaultStream::hold
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer
   0.01%             libc.so.6  __strchr_avx2
   0.01%             libc.so.6  _IO_fwrite
   0.01%           interpreter  method entry point (kind = zerolocals)
   0.01%             libjvm.so  xmlStream::write_text
   0.01%             libjvm.so  stringStream::write
   0.21%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.58%        jvmci, level 4
   5.86%
   2.13%                kernel
   0.22%             libjvm.so
   0.12%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 70.042 ns/op
# Warmup Iteration   2: 68.374 ns/op
# Warmup Iteration   3: 68.348 ns/op
# Warmup Iteration   4: 68.678 ns/op
# Warmup Iteration   5: 68.409 ns/op
Iteration   1: 68.544 ns/op
Iteration   2: 68.322 ns/op
Iteration   3: 68.354 ns/op
Iteration   4: 68.451 ns/op
Iteration   5: 68.432 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  68.420 ±(99.9%) 0.336 ns/op [Average]
  (min, avg, max) = (68.322, 68.420, 68.544), stdev = 0.087
  CI (99.9%): [68.085, 68.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 226334 total address lines.
Perf output processed (skipped 60.607 seconds):
 Column 1: cycles (50696 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1051

                  # {method} {0x00007f5e4f479cf8} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                  #           [sp+0x30]  (sp of caller)
                  0x00007f5ec2d9d140:   mov    0x8(%rsi),%r10d
                  0x00007f5ec2d9d144:   movabs $0x7f5e53000000,%r12
                  0x00007f5ec2d9d14e:   add    %r12,%r10
                  0x00007f5ec2d9d151:   xor    %r12,%r12
                  0x00007f5ec2d9d154:   cmp    %r10,%rax
                  0x00007f5ec2d9d157:   jne    0x00007f5ec26f9080           ;   {runtime_call ic_miss_stub}
                  0x00007f5ec2d9d15d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.05%          0x00007f5ec2d9d160:   mov    %eax,-0x14000(%rsp)
   0.46%          0x00007f5ec2d9d167:   sub    $0x28,%rsp
   0.01%          0x00007f5ec2d9d16b:   nop
   0.07%          0x00007f5ec2d9d16c:   cmpl   $0x1,0x20(%r15)
   0.52%          0x00007f5ec2d9d174:   jne    0x00007f5ec2d9d597
   0.02%          0x00007f5ec2d9d17a:   mov    %rbp,0x20(%rsp)
   0.01%          0x00007f5ec2d9d17f:   mov    %rsi,%r10
   0.06%          0x00007f5ec2d9d182:   mov    0x14(%r10),%r11d             ; ImmutableOopMap {r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
   0.61%          0x00007f5ec2d9d186:   mov    0x14(,%r11,8),%r8d           ; implicit exception: dispatches to 0x00007f5ec2d9d5e6
   0.07%          0x00007f5ec2d9d18e:   movsbl 0x10(,%r11,8),%ebx           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
                  0x00007f5ec2d9d197:   mov    0xc(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007f5ec2d9d60d
   0.24%          0x00007f5ec2d9d19f:   mov    0x1b8(%r15),%rsi
   0.38%          0x00007f5ec2d9d1a6:   lea    0xb8(%rsi),%rdx
                  0x00007f5ec2d9d1ad:   cmp    0x1c8(%r15),%rdx
                  0x00007f5ec2d9d1b4:   ja     0x00007f5ec2d9d4e2
   0.00%          0x00007f5ec2d9d1ba:   mov    %rdx,0x1b8(%r15)
   0.16%          0x00007f5ec2d9d1c1:   prefetchw 0x178(%rsi)
   0.42%          0x00007f5ec2d9d1c8:   prefetchw 0x1b8(%rsi)
   0.17%          0x00007f5ec2d9d1cf:   prefetchw 0x1f8(%rsi)
   0.15%          0x00007f5ec2d9d1d6:   prefetchw 0x238(%rsi)
   0.34%          0x00007f5ec2d9d1dd:   movq   $0x1,(%rsi)
   0.42%          0x00007f5ec2d9d1e4:   movl   $0x102a4b8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.00%          0x00007f5ec2d9d1eb:   movl   $0x29,0xc(%rsi)              ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%          0x00007f5ec2d9d1f2:   mov    %rsi,%r13
   0.15%          0x00007f5ec2d9d1f5:   movl   $0xc5525f37,0x10(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92f9b8})}
   0.44%          0x00007f5ec2d9d1fd:   movl   $0xc5525f47,0x14(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fa38})}
   0.01%          0x00007f5ec2d9d205:   movl   $0xc5525f59,0x18(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fac8})}
   0.02%          0x00007f5ec2d9d20d:   movl   $0xc5525f6b,0x1c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fb58})}
   0.17%          0x00007f5ec2d9d215:   movl   $0xc5525f7b,0x20(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fbd8})}
   0.40%          0x00007f5ec2d9d21d:   movl   $0xc5525f8b,0x24(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fc58})}
   0.08%          0x00007f5ec2d9d225:   movl   $0xc5525f95,0x28(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fca8})}
   0.02%          0x00007f5ec2d9d22d:   movl   $0xc5525fa5,0x2c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fd28})}
   0.67%          0x00007f5ec2d9d235:   movl   $0xc5525fb5,0x30(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fda8})}
   0.05%          0x00007f5ec2d9d23d:   movl   $0xc5525fc7,0x34(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92fe38})}
   0.04%          0x00007f5ec2d9d245:   movl   $0xc5525fd7,0x38(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92feb8})}
   0.46%          0x00007f5ec2d9d24d:   movl   $0xc5525fe7,0x3c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ff38})}
   0.34%          0x00007f5ec2d9d255:   movl   $0xc5525ff7,0x40(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a92ffb8})}
   0.52%          0x00007f5ec2d9d25d:   movl   $0xc5526007,0x44(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930038})}
   0.52%          0x00007f5ec2d9d265:   movl   $0xc5526017,0x48(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9300b8})}
   0.55%          0x00007f5ec2d9d26d:   movl   $0xc5526027,0x4c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930138})}
   0.57%          0x00007f5ec2d9d275:   movl   $0xc5526037,0x50(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9301b8})}
   0.54%          0x00007f5ec2d9d27d:   movl   $0xc5526047,0x54(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930238})}
   0.48%          0x00007f5ec2d9d285:   movl   $0xc5526057,0x58(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9302b8})}
   0.57%          0x00007f5ec2d9d28d:   movl   $0xc5526067,0x5c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930338})}
   0.57%          0x00007f5ec2d9d295:   movl   $0xc5526077,0x60(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9303b8})}
   0.54%          0x00007f5ec2d9d29d:   movl   $0xc5526087,0x64(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930438})}
   0.54%          0x00007f5ec2d9d2a5:   movl   $0xc5526099,0x68(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9304c8})}
   0.51%          0x00007f5ec2d9d2ad:   movl   $0xc55260ab,0x6c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930558})}
   0.62%          0x00007f5ec2d9d2b5:   movl   $0xc55260bd,0x70(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9305e8})}
   0.57%          0x00007f5ec2d9d2bd:   movl   $0xc55260cd,0x74(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930668})}
   0.50%          0x00007f5ec2d9d2c5:   movl   $0xc55260dd,0x78(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9306e8})}
   0.57%          0x00007f5ec2d9d2cd:   movl   $0xc55260ed,0x7c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930768})}
   0.56%          0x00007f5ec2d9d2d5:   movl   $0xc55260ff,0x80(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a9307f8})}
   0.47%          0x00007f5ec2d9d2e0:   movl   $0xc5526111,0x84(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930888})}
   0.56%          0x00007f5ec2d9d2eb:   movl   $0xc5526121,0x88(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930908})}
   0.58%          0x00007f5ec2d9d2f6:   movl   $0xc5526131,0x8c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930988})}
   0.57%          0x00007f5ec2d9d301:   movl   $0xc5526141,0x90(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930a08})}
   0.57%          0x00007f5ec2d9d30c:   movl   $0xc5526151,0x94(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930a88})}
   0.54%          0x00007f5ec2d9d317:   movl   $0xc5526161,0x98(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930b08})}
   0.57%          0x00007f5ec2d9d322:   movl   $0xc5526171,0x9c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930b88})}
   0.60%          0x00007f5ec2d9d32d:   movl   $0xc5526181,0xa0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930c08})}
   0.54%          0x00007f5ec2d9d338:   movl   $0xc5526193,0xa4(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930c98})}
   0.57%          0x00007f5ec2d9d343:   movl   $0xc55261a5,0xa8(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930d28})}
   0.58%          0x00007f5ec2d9d34e:   movl   $0xc55261b5,0xac(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930da8})}
   0.54%          0x00007f5ec2d9d359:   movl   $0xc55261c7,0xb0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x000000062a930e38})}
   0.58%          0x00007f5ec2d9d364:   mov    %r11d,%r14d
   0.00%          0x00007f5ec2d9d367:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
                  0x00007f5ec2d9d36b:   mov    %r14,0x10(%rsp)
   0.58%          0x00007f5ec2d9d370:   test   %ebp,%ebp
                  0x00007f5ec2d9d372:   je     0x00007f5ec2d9d476
   0.00%          0x00007f5ec2d9d378:   shl    $0x3,%r8                     ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                  0x00007f5ec2d9d37c:   mov    %r8,0x8(%rsp)
   0.62%          0x00007f5ec2d9d381:   mov    $0x0,%r10d
   0.01%          0x00007f5ec2d9d387:   nopw   0x0(%rax,%rax,1)
   7.20%     ↗↗↗  0x00007f5ec2d9d390:   cmp    $0x29,%r10d
             │││  0x00007f5ec2d9d394:   jae    0x00007f5ec2d9d531           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%     │││  0x00007f5ec2d9d39a:   mov    0x10(%r13,%r10,4),%esi       ; ImmutableOopMap {rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.56%     │││  0x00007f5ec2d9d39f:   mov    0x18(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f5ec2d9d630
             │││                                                            ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.80%     │││  0x00007f5ec2d9d3a6:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f5ec2d9d653
   8.87%     │││  0x00007f5ec2d9d3ae:   mov    0x14(,%rdx,8),%r9d           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.06%     │││  0x00007f5ec2d9d3b6:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.04%     │││  0x00007f5ec2d9d3ba:   nopw   0x0(%rax,%rax,1)
   4.55%     │││  0x00007f5ec2d9d3c0:   cmp    %r11d,%edx
             │││  0x00007f5ec2d9d3c3:   je     0x00007f5ec2d9d459           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   7.57%     │││  0x00007f5ec2d9d3c9:   mov    %r10d,%edi
   0.04%     │││  0x00007f5ec2d9d3cc:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.05%     │││  0x00007f5ec2d9d3ce:   cmp    %bl,%cl
          ╭  │││  0x00007f5ec2d9d3d0:   jne    0x00007f5ec2d9d42b
   4.92%  │  │││  0x00007f5ec2d9d3d6:   test   %r9d,%r9d
          │  │││  0x00007f5ec2d9d3d9:   je     0x00007f5ec2d9d559
   9.60%  │  │││  0x00007f5ec2d9d3df:   nop
   0.06%  │  │││  0x00007f5ec2d9d3e0:   cmp    0xc(,%r9,8),%ebp
          │╭ │││  0x00007f5ec2d9d3e8:   jne    0x00007f5ec2d9d433
   0.09%  ││ │││  0x00007f5ec2d9d3ee:   mov    %rsi,(%rsp)
   0.55%  ││ │││  0x00007f5ec2d9d3f2:   shl    $0x3,%r9
          ││ │││  0x00007f5ec2d9d3f6:   mov    %r8,%rsi
          ││ │││  0x00007f5ec2d9d3f9:   mov    $0x10,%rdx
   0.02%  ││ │││  0x00007f5ec2d9d400:   mov    %r9,%rcx
   0.51%  ││ │││  0x00007f5ec2d9d403:   mov    $0x10,%r8
          ││ │││  0x00007f5ec2d9d40a:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││ │││                                                            ; - java.lang.String::equals@-3
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││ │││  0x00007f5ec2d9d40d:   mov    %edi,%r14d
   0.01%  ││ │││  0x00007f5ec2d9d410:   call   0x00007f5ec290fe80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.04%  ││ │││  0x00007f5ec2d9d415:   nop
   0.48%  ││ │││  0x00007f5ec2d9d416:   test   %eax,%eax
          ││╭│││  0x00007f5ec2d9d418:   jne    0x00007f5ec2d9d43b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││││││  0x00007f5ec2d9d41e:   mov    %r14d,%r10d
          ││││││  0x00007f5ec2d9d421:   mov    0x8(%rsp),%r8
   0.58%  │││╰││  0x00007f5ec2d9d426:   jmp    0x00007f5ec2d9d390
          ↘││ ││  0x00007f5ec2d9d42b:   mov    %edi,%r10d
           ││ ╰│  0x00007f5ec2d9d42e:   jmp    0x00007f5ec2d9d390
   8.77%   ↘│  │  0x00007f5ec2d9d433:   mov    %edi,%r10d
   4.28%    │  ╰  0x00007f5ec2d9d436:   jmp    0x00007f5ec2d9d390
            ↘     0x00007f5ec2d9d43b:   mov    (%rsp),%rax                  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@7 (line 81)
                  0x00007f5ec2d9d43f:   mov    0x20(%rsp),%rbp
                  0x00007f5ec2d9d444:   add    $0x28,%rsp
                  0x00007f5ec2d9d448:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f5ec2d9d44f:   ja     0x00007f5ec2d9d5a7
                  0x00007f5ec2d9d455:   vzeroupper
                  0x00007f5ec2d9d458:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
....................................................................................................
  87.93%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.93%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1051
   2.21%                        <unknown>
   1.86%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1091
   1.66%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1051
   1.20%                        <unknown>
   0.54%                        <unknown>
   0.24%                kernel  [unknown]
   0.18%                kernel  [unknown]
   0.17%             libjvm.so  HeapRegionManager::par_iterate
   0.14%                kernel  [unknown]
   0.13%                kernel  [unknown]
   0.13%                kernel  [unknown]
   0.09%             libc.so.6  __memset_avx2_unaligned_erms
   0.08%                kernel  [unknown]
   0.06%             libjvm.so  SpinPause
   0.04%             libjvm.so  ElfSymbolTable::lookup
   0.04%             libjvm.so  HeapRegionClaimer::claim_region
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.03%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region
   0.03%                kernel  [unknown]
   3.23%  <...other 938 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1051
   4.07%                        <unknown>
   2.56%                kernel  [unknown]
   1.86%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 1091
   0.17%             libjvm.so  HeapRegionManager::par_iterate
   0.10%             libc.so.6  __memset_avx2_unaligned_erms
   0.06%             libjvm.so  WeakProcessor::Task::work<G1STWIsAliveClosure, G1KeepAliveClosure>
   0.06%             libjvm.so  SpinPause
   0.04%             libjvm.so  ElfSymbolTable::lookup
   0.04%             libjvm.so  HeapRegionClaimer::claim_region
   0.03%             libjvm.so  InstanceKlass::allocate_objArray
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.03%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region
   0.03%                [vdso]  [unknown]
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.03%             libc.so.6  __vfprintf_internal
   0.02%             libjvm.so  InstanceKlass::array_klass
   0.02%             libc.so.6  pthread_mutex_trylock@@GLIBC_2.34
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr
   0.02%             libjvm.so  xmlStream::write_text
   1.18%  <...other 343 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.45%        jvmci, level 4
   4.07%
   2.56%                kernel
   1.33%             libjvm.so
   0.36%             libc.so.6
   0.11%   libjvmcicompiler.so
   0.03%           interpreter
   0.03%                [vdso]
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%         perf-7819.map
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:48

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

Benchmark                                         Mode  Cnt   Score   Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  55.775 ± 0.316  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt          NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  68.420 ± 0.336  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt          NaN            ---
