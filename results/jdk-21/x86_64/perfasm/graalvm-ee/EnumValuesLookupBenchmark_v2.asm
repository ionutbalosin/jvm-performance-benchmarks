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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 119.813 ns/op
# Warmup Iteration   2: 115.414 ns/op
# Warmup Iteration   3: 113.308 ns/op
# Warmup Iteration   4: 113.938 ns/op
# Warmup Iteration   5: 113.053 ns/op
Iteration   1: 113.363 ns/op
Iteration   2: 128.320 ns/op
Iteration   3: 138.667 ns/op
Iteration   4: 115.700 ns/op
Iteration   5: 117.902 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  122.790 ±(99.9%) 40.646 ns/op [Average]
  (min, avg, max) = (113.363, 122.790, 138.667), stdev = 10.556
  CI (99.9%): [82.145, 163.436] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 220850 total address lines.
Perf output processed (skipped 81.687 seconds):
 Column 1: cycles (50923 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1032 

                     # {method} {0x00007fa323479c28} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007fa3aada22c0:   mov    0x8(%rsi),%r10d
                     0x00007fa3aada22c4:   movabs $0x7fa327000000,%r12
                     0x00007fa3aada22ce:   add    %r12,%r10
                     0x00007fa3aada22d1:   xor    %r12,%r12
                     0x00007fa3aada22d4:   cmp    %r10,%rax
                     0x00007fa3aada22d7:   jne    0x00007fa3aa6f9080           ;   {runtime_call ic_miss_stub}
                     0x00007fa3aada22dd:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   0.02%             0x00007fa3aada22e0:   mov    %eax,-0x14000(%rsp)
   0.84%             0x00007fa3aada22e7:   sub    $0x28,%rsp
   0.02%             0x00007fa3aada22eb:   nop
   0.00%             0x00007fa3aada22ec:   cmpl   $0x1,0x20(%r15)
   0.02%             0x00007fa3aada22f4:   jne    0x00007fa3aada27ed
   0.80%             0x00007fa3aada22fa:   mov    %rbp,0x20(%rsp)
   0.01%             0x00007fa3aada22ff:   mov    0x14(%rsi),%r11d
   0.00%             0x00007fa3aada2303:   movabs $0x7fed3af88,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007fed3af88})}
   0.02%             0x00007fa3aada230d:   test   %r11d,%r11d
                     0x00007fa3aada2310:   je     0x00007fa3aada24f3           ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.77%             0x00007fa3aada2316:   mov    0x14(,%r11,8),%edx           ; ImmutableOopMap {rdx=NarrowOop rbx=Oop rsi=Oop r11=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   0.06%             0x00007fa3aada231e:   mov    0xc(,%rdx,8),%ebp            ; implicit exception: dispatches to 0x00007fa3aada2811
   0.23%             0x00007fa3aada2325:   movsbl 0x10(,%r11,8),%r13d          ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%             0x00007fa3aada232e:   mov    %r11d,%r14d
   0.89%             0x00007fa3aada2331:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
   0.00%             0x00007fa3aada2335:   mov    %r14,0x10(%rsp)
   0.05%             0x00007fa3aada233a:   nopw   0x0(%rax,%rax,1)
   0.00%             0x00007fa3aada2340:   test   %ebp,%ebp
          ╭          0x00007fa3aada2342:   je     0x00007fa3aada2437
   0.74%  │          0x00007fa3aada2348:   shl    $0x3,%rdx                    ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │          0x00007fa3aada234c:   mov    %rdx,0x8(%rsp)
   0.05%  │          0x00007fa3aada2351:   mov    $0x0,%r10d
          │          0x00007fa3aada2357:   nopw   0x0(%rax,%rax,1)
  18.76%  │    ↗↗↗   0x00007fa3aada2360:   cmp    $0x29,%r10d
          │    │││   0x00007fa3aada2364:   jae    0x00007fa3aada24ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.06%  │    │││   0x00007fa3aada236a:   mov    0x10(%rbx,%r10,4),%edi       ; ImmutableOopMap {rdx=Oop rbx=Oop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.04%  │    │││   0x00007fa3aada236f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007fa3aada2834
          │    │││                                                             ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.27%  │    │││   0x00007fa3aada2376:   movsbl 0x10(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007fa3aada2857
  19.36%  │    │││   0x00007fa3aada237e:   mov    0x14(,%rsi,8),%r8d
   0.10%  │    │││   0x00007fa3aada2386:   cmp    %r11d,%esi
          │╭   │││   0x00007fa3aada2389:   je     0x00007fa3aada2431           ;* unwind (locked if synchronized)
          ││   │││                                                             ; - java.lang.String::equals@-3
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││   │││   0x00007fa3aada238f:   mov    %r10d,%eax
   0.00%  ││   │││   0x00007fa3aada2392:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  17.62%  ││   │││   0x00007fa3aada2394:   cmp    %r13b,%cl
          ││╭  │││   0x00007fa3aada2397:   jne    0x00007fa3aada23f5
   0.28%  │││  │││   0x00007fa3aada239d:   data16 xchg %ax,%ax
   0.02%  │││  │││   0x00007fa3aada23a0:   test   %r8d,%r8d
          │││  │││   0x00007fa3aada23a3:   je     0x00007fa3aada24d4
   0.20%  │││  │││   0x00007fa3aada23a9:   cmp    0xc(,%r8,8),%ebp
          │││╭ │││   0x00007fa3aada23b1:   jne    0x00007fa3aada23fd
   0.85%  ││││ │││   0x00007fa3aada23b7:   mov    %edi,0x4(%rsp)
          ││││ │││   0x00007fa3aada23bb:   shl    $0x3,%r8
   0.00%  ││││ │││   0x00007fa3aada23bf:   mov    %rdx,%rsi
   0.83%  ││││ │││   0x00007fa3aada23c2:   mov    $0x10,%rdx
   0.03%  ││││ │││   0x00007fa3aada23c9:   mov    %r8,%rcx
   0.00%  ││││ │││   0x00007fa3aada23cc:   mov    $0x10,%r8
          ││││ │││   0x00007fa3aada23d3:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││││ │││                                                             ; - java.lang.String::equals@-3
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.86%  ││││ │││   0x00007fa3aada23d6:   mov    %eax,%r14d
   0.03%  ││││ │││   0x00007fa3aada23d9:   call   0x00007fa3aa912000           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.07%  ││││ │││   0x00007fa3aada23de:   nop
          ││││ │││   0x00007fa3aada23df:   nop
          ││││ │││   0x00007fa3aada23e0:   test   %eax,%eax
          ││││╭│││   0x00007fa3aada23e2:   jne    0x00007fa3aada2405
   0.84%  ││││││││   0x00007fa3aada23e8:   mov    %r14d,%r10d
   0.05%  ││││││││   0x00007fa3aada23eb:   mov    0x8(%rsp),%rdx
   0.04%  │││││╰││   0x00007fa3aada23f0:   jmp    0x00007fa3aada2360
          ││↘││ ││   0x00007fa3aada23f5:   mov    %eax,%r10d
          ││ ││ ╰│   0x00007fa3aada23f8:   jmp    0x00007fa3aada2360
  18.73%  ││ ↘│  │   0x00007fa3aada23fd:   mov    %eax,%r10d
   0.09%  ││  │  ╰   0x00007fa3aada2400:   jmp    0x00007fa3aada2360
   0.86%  ││  ↘   ↗  0x00007fa3aada2405:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││      │  0x00007fa3aada2409:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││      │  0x00007fa3aada240d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
          ││      │  0x00007fa3aada2410:   mov    0x20(%rsp),%rbp
   0.93%  ││      │  0x00007fa3aada2415:   add    $0x28,%rsp
          ││      │  0x00007fa3aada2419:   nopl   0x0(%rax)
   0.00%  ││      │  0x00007fa3aada2420:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││      │  0x00007fa3aada2427:   ja     0x00007fa3aada27fd
   0.00%  ││      │  0x00007fa3aada242d:   vzeroupper 
   0.82%  ││      │  0x00007fa3aada2430:   ret    
   0.00%  │↘      │  0x00007fa3aada2431:   mov    %edi,0x4(%rsp)
   0.00%  │       ╰  0x00007fa3aada2435:   jmp    0x00007fa3aada2405           ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ↘          0x00007fa3aada2437:   mov    $0x0,%r10d
                     0x00007fa3aada243d:   data16 xchg %ax,%ax
                     0x00007fa3aada2440:   cmp    $0x29,%r10d
                     0x00007fa3aada2444:   jae    0x00007fa3aada24ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                     0x00007fa3aada244a:   mov    0x10(%rbx,%r10,4),%r8d       ; ImmutableOopMap {rbx=Oop r8=NarrowOop r11=NarrowOop [16]=Oop }
....................................................................................................
  86.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.31%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1032 
   6.09%                        <unknown> 
   3.55%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 5, compile id 1051 
   0.39%                kernel  [unknown] 
   0.38%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.86%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.31%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 1032 
   6.30%                        <unknown> 
   3.55%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 5, compile id 1051 
   3.29%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  HighResTimeSampler::take_sample 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __GI___pthread_mutex_unlock_usercnt 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  _IO_fwrite 
   0.24%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.86%        jvmci, level 4
   6.30%                      
   3.29%                kernel
   0.30%             libjvm.so
   0.15%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%           c1, level 3
   0.00%      Unknown, level 0
   0.00%         perf-9615.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 208.223 ns/op
# Warmup Iteration   2: 210.302 ns/op
# Warmup Iteration   3: 200.426 ns/op
# Warmup Iteration   4: 195.126 ns/op
# Warmup Iteration   5: 189.079 ns/op
Iteration   1: 188.900 ns/op
Iteration   2: 191.933 ns/op
Iteration   3: 190.612 ns/op
Iteration   4: 187.075 ns/op
Iteration   5: 189.524 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  189.609 ±(99.9%) 7.032 ns/op [Average]
  (min, avg, max) = (187.075, 189.609, 191.933), stdev = 1.826
  CI (99.9%): [182.577, 196.641] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 227363 total address lines.
Perf output processed (skipped 83.764 seconds):
 Column 1: cycles (51374 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044 

                         # {method} {0x00007f0f43479cf8} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                         #           [sp+0x30]  (sp of caller)
                         0x00007f0fcad9cfc0:   mov    0x8(%rsi),%r10d
                         0x00007f0fcad9cfc4:   movabs $0x7f0f47000000,%r12
                         0x00007f0fcad9cfce:   add    %r12,%r10
                         0x00007f0fcad9cfd1:   xor    %r12,%r12
                         0x00007f0fcad9cfd4:   cmp    %r10,%rax
                         0x00007f0fcad9cfd7:   jne    0x00007f0fca6f9080           ;   {runtime_call ic_miss_stub}
                         0x00007f0fcad9cfdd:   data16 xchg %ax,%ax
                       [Verified Entry Point]
   0.01%                 0x00007f0fcad9cfe0:   mov    %eax,-0x14000(%rsp)
   0.59%                 0x00007f0fcad9cfe7:   sub    $0x28,%rsp
   0.00%                 0x00007f0fcad9cfeb:   nop
   0.01%                 0x00007f0fcad9cfec:   cmpl   $0x1,0x20(%r15)
   0.54%                 0x00007f0fcad9cff4:   jne    0x00007f0fcad9d417
   0.00%                 0x00007f0fcad9cffa:   mov    %rbp,0x20(%rsp)
   0.01%                 0x00007f0fcad9cfff:   mov    %rsi,%r10
   0.01%                 0x00007f0fcad9d002:   mov    0x14(%r10),%r11d             ; ImmutableOopMap {r10=Oop r11=NarrowOop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
   0.54%                 0x00007f0fcad9d006:   mov    0x14(,%r11,8),%r8d           ; implicit exception: dispatches to 0x00007f0fcad9d466
   0.04%                 0x00007f0fcad9d00e:   movsbl 0x10(,%r11,8),%ebx           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
   0.00%                 0x00007f0fcad9d017:   mov    0xc(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007f0fcad9d48d
   0.18%                 0x00007f0fcad9d01f:   mov    0x1b8(%r15),%rsi
   0.44%                 0x00007f0fcad9d026:   lea    0xb8(%rsi),%rdx
                         0x00007f0fcad9d02d:   cmp    0x1c8(%r15),%rdx
          ╭              0x00007f0fcad9d034:   ja     0x00007f0fcad9d362
          │              0x00007f0fcad9d03a:   mov    %rdx,0x1b8(%r15)
   0.08%  │              0x00007f0fcad9d041:   prefetchw 0x178(%rsi)
   0.45%  │              0x00007f0fcad9d048:   prefetchw 0x1b8(%rsi)
   0.17%  │              0x00007f0fcad9d04f:   prefetchw 0x1f8(%rsi)
   0.19%  │              0x00007f0fcad9d056:   prefetchw 0x238(%rsi)
   0.29%  │              0x00007f0fcad9d05d:   movq   $0x1,(%rsi)
   0.44%  │              0x00007f0fcad9d064:   movl   $0x102a6c0,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.00%  │              0x00007f0fcad9d06b:   movl   $0x29,0xc(%rsi)              ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  │              0x00007f0fcad9d072:   mov    %rsi,%r13
   0.08%  │              0x00007f0fcad9d075:   movl   $0xffda732c,0x10(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39960})}
   0.48%  │              0x00007f0fcad9d07d:   movl   $0xffda733c,0x14(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed399e0})}
   0.01%  │              0x00007f0fcad9d085:   movl   $0xffda734e,0x18(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39a70})}
   0.01%  │              0x00007f0fcad9d08d:   movl   $0xffda7360,0x1c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39b00})}
   0.13%  │              0x00007f0fcad9d095:   movl   $0xffda7370,0x20(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39b80})}
   0.43%  │              0x00007f0fcad9d09d:   movl   $0xffda7380,0x24(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39c00})}
   0.10%  │              0x00007f0fcad9d0a5:   movl   $0xffda738a,0x28(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39c50})}
   0.04%  │              0x00007f0fcad9d0ad:   movl   $0xffda739a,0x2c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39cd0})}
   0.66%  │              0x00007f0fcad9d0b5:   movl   $0xffda73aa,0x30(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39d50})}
   0.07%  │              0x00007f0fcad9d0bd:   movl   $0xffda73bc,0x34(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39de0})}
   0.05%  │              0x00007f0fcad9d0c5:   movl   $0xffda73cc,0x38(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39e60})}
   0.48%  │              0x00007f0fcad9d0cd:   movl   $0xffda73dc,0x3c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39ee0})}
   0.34%  │              0x00007f0fcad9d0d5:   movl   $0xffda73ec,0x40(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39f60})}
   0.54%  │              0x00007f0fcad9d0dd:   movl   $0xffda73fc,0x44(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed39fe0})}
   0.47%  │              0x00007f0fcad9d0e5:   movl   $0xffda740c,0x48(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a060})}
   0.54%  │              0x00007f0fcad9d0ed:   movl   $0xffda741c,0x4c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a0e0})}
   0.53%  │              0x00007f0fcad9d0f5:   movl   $0xffda742c,0x50(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a160})}
   0.55%  │              0x00007f0fcad9d0fd:   movl   $0xffda743c,0x54(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a1e0})}
   0.53%  │              0x00007f0fcad9d105:   movl   $0xffda744c,0x58(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a260})}
   0.50%  │              0x00007f0fcad9d10d:   movl   $0xffda745c,0x5c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a2e0})}
   0.55%  │              0x00007f0fcad9d115:   movl   $0xffda746c,0x60(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a360})}
   0.58%  │              0x00007f0fcad9d11d:   movl   $0xffda747c,0x64(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a3e0})}
   0.52%  │              0x00007f0fcad9d125:   movl   $0xffda748e,0x68(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a470})}
   0.54%  │              0x00007f0fcad9d12d:   movl   $0xffda74a0,0x6c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a500})}
   0.62%  │              0x00007f0fcad9d135:   movl   $0xffda74b2,0x70(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a590})}
   0.56%  │              0x00007f0fcad9d13d:   movl   $0xffda74c2,0x74(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a610})}
   0.53%  │              0x00007f0fcad9d145:   movl   $0xffda74d2,0x78(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a690})}
   0.61%  │              0x00007f0fcad9d14d:   movl   $0xffda74e2,0x7c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a710})}
   0.54%  │              0x00007f0fcad9d155:   movl   $0xffda74f4,0x80(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a7a0})}
   0.61%  │              0x00007f0fcad9d160:   movl   $0xffda7506,0x84(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a830})}
   0.54%  │              0x00007f0fcad9d16b:   movl   $0xffda7516,0x88(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a8b0})}
   0.53%  │              0x00007f0fcad9d176:   movl   $0xffda7526,0x8c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a930})}
   0.55%  │              0x00007f0fcad9d181:   movl   $0xffda7536,0x90(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3a9b0})}
   0.52%  │              0x00007f0fcad9d18c:   movl   $0xffda7546,0x94(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3aa30})}
   0.56%  │              0x00007f0fcad9d197:   movl   $0xffda7556,0x98(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3aab0})}
   0.55%  │              0x00007f0fcad9d1a2:   movl   $0xffda7566,0x9c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ab30})}
   0.54%  │              0x00007f0fcad9d1ad:   movl   $0xffda7576,0xa0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3abb0})}
   0.57%  │              0x00007f0fcad9d1b8:   movl   $0xffda7588,0xa4(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ac40})}
   0.55%  │              0x00007f0fcad9d1c3:   movl   $0xffda759a,0xa8(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3acd0})}
   0.51%  │              0x00007f0fcad9d1ce:   movl   $0xffda75aa,0xac(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ad50})}
   0.56%  │              0x00007f0fcad9d1d9:   movl   $0xffda75bc,0xb0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fed3ade0})}
   0.59%  │              0x00007f0fcad9d1e4:   mov    %r11d,%r14d
   0.00%  │              0x00007f0fcad9d1e7:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
   0.00%  │              0x00007f0fcad9d1eb:   mov    %r14,0x10(%rsp)
   0.56%  │              0x00007f0fcad9d1f0:   test   %ebp,%ebp
          │╭             0x00007f0fcad9d1f2:   je     0x00007f0fcad9d2f6
   0.00%  ││             0x00007f0fcad9d1f8:   shl    $0x3,%r8                     ;* unwind (locked if synchronized)
          ││                                                                       ; - java.lang.String::equals@-3
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││             0x00007f0fcad9d1fc:   mov    %r8,0x8(%rsp)
   0.58%  ││             0x00007f0fcad9d201:   mov    $0x0,%r10d
   0.00%  ││             0x00007f0fcad9d207:   nopw   0x0(%rax,%rax,1)
   7.28%  ││    ↗↗↗      0x00007f0fcad9d210:   cmp    $0x29,%r10d
          ││    │││      0x00007f0fcad9d214:   jae    0x00007f0fcad9d3b1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  ││    │││      0x00007f0fcad9d21a:   mov    0x10(%r13,%r10,4),%esi       ; ImmutableOopMap {rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
          ││    │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││    │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.63%  ││    │││      0x00007f0fcad9d21f:   mov    0x18(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f0fcad9d4b0
          ││    │││                                                                ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
          ││    │││                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││    │││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.57%  ││    │││      0x00007f0fcad9d226:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f0fcad9d4d3
   8.68%  ││    │││      0x00007f0fcad9d22e:   mov    0x14(,%rdx,8),%r9d           ;* unwind (locked if synchronized)
          ││    │││                                                                ; - java.lang.String::equals@-3
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.07%  ││    │││      0x00007f0fcad9d236:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          ││    │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.04%  ││    │││      0x00007f0fcad9d23a:   nopw   0x0(%rax,%rax,1)
   4.71%  ││    │││      0x00007f0fcad9d240:   cmp    %r11d,%edx
          ││╭   │││      0x00007f0fcad9d243:   je     0x00007f0fcad9d2d9           ;* unwind (locked if synchronized)
          │││   │││                                                                ; - java.lang.String::equals@-3
          │││   │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││   │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   7.18%  │││   │││      0x00007f0fcad9d249:   mov    %r10d,%edi
   0.03%  │││   │││      0x00007f0fcad9d24c:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││   │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
          │││   │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%  │││   │││      0x00007f0fcad9d24e:   cmp    %bl,%cl
          │││╭  │││      0x00007f0fcad9d250:   jne    0x00007f0fcad9d2ab
   4.98%  ││││  │││      0x00007f0fcad9d256:   test   %r9d,%r9d
          ││││  │││      0x00007f0fcad9d259:   je     0x00007f0fcad9d3d9
   9.45%  ││││  │││      0x00007f0fcad9d25f:   nop
   0.05%  ││││  │││      0x00007f0fcad9d260:   cmp    0xc(,%r9,8),%ebp
          ││││╭ │││      0x00007f0fcad9d268:   jne    0x00007f0fcad9d2b3
   0.06%  │││││ │││      0x00007f0fcad9d26e:   mov    %rsi,(%rsp)
   0.53%  │││││ │││      0x00007f0fcad9d272:   shl    $0x3,%r9
          │││││ │││      0x00007f0fcad9d276:   mov    %r8,%rsi
          │││││ │││      0x00007f0fcad9d279:   mov    $0x10,%rdx
   0.02%  │││││ │││      0x00007f0fcad9d280:   mov    %r9,%rcx
   0.54%  │││││ │││      0x00007f0fcad9d283:   mov    $0x10,%r8
          │││││ │││      0x00007f0fcad9d28a:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          │││││ │││                                                                ; - java.lang.String::equals@-3
          │││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││││ │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │││││ │││      0x00007f0fcad9d28d:   mov    %edi,%r14d
   0.02%  │││││ │││      0x00007f0fcad9d290:   call   0x00007f0fca910680           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.02%  │││││ │││      0x00007f0fcad9d295:   nop
   0.59%  │││││ │││      0x00007f0fcad9d296:   test   %eax,%eax
          │││││╭│││      0x00007f0fcad9d298:   jne    0x00007f0fcad9d2bb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          │││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%  │││││││││      0x00007f0fcad9d29e:   mov    %r14d,%r10d
          │││││││││      0x00007f0fcad9d2a1:   mov    0x8(%rsp),%r8
   0.57%  ││││││╰││      0x00007f0fcad9d2a6:   jmp    0x00007f0fcad9d210
          │││↘││ ││      0x00007f0fcad9d2ab:   mov    %edi,%r10d
          │││ ││ ╰│      0x00007f0fcad9d2ae:   jmp    0x00007f0fcad9d210
   8.59%  │││ ↘│  │      0x00007f0fcad9d2b3:   mov    %edi,%r10d
   4.11%  │││  │  ╰      0x00007f0fcad9d2b6:   jmp    0x00007f0fcad9d210
          │││  ↘         0x00007f0fcad9d2bb:   mov    (%rsp),%rax                  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@7 (line 81)
          │││            0x00007f0fcad9d2bf:   mov    0x20(%rsp),%rbp
          │││            0x00007f0fcad9d2c4:   add    $0x28,%rsp
          │││            0x00007f0fcad9d2c8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││            0x00007f0fcad9d2cf:   ja     0x00007f0fcad9d427
          │││            0x00007f0fcad9d2d5:   vzeroupper 
          │││            0x00007f0fcad9d2d8:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
          │││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.48%  ││↘      ↗     0x00007f0fcad9d2d9:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@7 (line 81)
   0.01%  ││       │     0x00007f0fcad9d2dc:   mov    0x20(%rsp),%rbp
   0.05%  ││       │     0x00007f0fcad9d2e1:   add    $0x28,%rsp
   0.02%  ││       │     0x00007f0fcad9d2e5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││       │     0x00007f0fcad9d2ec:   ja     0x00007f0fcad9d43b
   0.52%  ││       │     0x00007f0fcad9d2f2:   vzeroupper 
   0.58%  ││       │     0x00007f0fcad9d2f5:   ret                                 ;* unwind (locked if synchronized)
          ││       │                                                               ; - java.lang.String::equals@-3
          ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │↘       │     0x00007f0fcad9d2f6:   mov    $0x0,%r10d
          │        │     0x00007f0fcad9d2fc:   nopl   0x0(%rax)
          │        │ ↗↗  0x00007f0fcad9d300:   cmp    $0x29,%r10d
          │        │ ││  0x00007f0fcad9d304:   jae    0x00007f0fcad9d3b1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │        │ ││  0x00007f0fcad9d30a:   mov    0x10(%r13,%r10,4),%esi       ; ImmutableOopMap {rsi=NarrowOop r11=NarrowOop r13=Oop [16]=Oop }
          │        │ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │        │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │        │ ││  0x00007f0fcad9d30f:   mov    0x18(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f0fcad9d4f6
          │        │ ││                                                            ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r11=NarrowOop r13=Oop [16]=Oop }
          │        │ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │        │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │        │ ││  0x00007f0fcad9d316:   movsbl 0x10(,%rdx,8),%eax           ; implicit exception: dispatches to 0x00007f0fcad9d519
          │        │ ││  0x00007f0fcad9d31e:   mov    0x14(,%rdx,8),%r8d           ;* unwind (locked if synchronized)
          │        │ ││                                                            ; - java.lang.String::equals@-3
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │        │ ││  0x00007f0fcad9d326:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │        │ ││  0x00007f0fcad9d32a:   cmp    %r11d,%edx
          │        ╰ ││  0x00007f0fcad9d32d:   je     0x00007f0fcad9d2d9           ;* unwind (locked if synchronized)
          │          ││                                                            ; - java.lang.String::equals@-3
          │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │          ││  0x00007f0fcad9d32f:   mov    %r10d,%edx
          │          ││  0x00007f0fcad9d332:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
          │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │          ││  0x00007f0fcad9d334:   cmp    %bl,%al
          │         ╭││  0x00007f0fcad9d336:   jne    0x00007f0fcad9d35d
          │         │││  0x00007f0fcad9d33c:   nopl   0x0(%rax)
          │         │││  0x00007f0fcad9d340:   test   %r8d,%r8d
          │         │││  0x00007f0fcad9d343:   je     0x00007f0fcad9d3f8
          │         │││  0x00007f0fcad9d349:   cmpl   $0x0,0xc(,%r8,8)
          │         │││  0x00007f0fcad9d352:   je     0x00007f0fcad9d388           ;* unwind (locked if synchronized)
          │         │││                                                            ; - java.lang.String::equals@-3
          │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │         │││  0x00007f0fcad9d358:   mov    %edx,%r10d
          │         │╰│  0x00007f0fcad9d35b:   jmp    0x00007f0fcad9d300
          │         ↘ │  0x00007f0fcad9d35d:   mov    %edx,%r10d
          │           ╰  0x00007f0fcad9d360:   jmp    0x00007f0fcad9d300
   0.00%  ↘              0x00007f0fcad9d362:   movabs $0x7f0f4802a6c0,%rsi         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.00%                 0x00007f0fcad9d36c:   mov    $0x29,%edx
                         0x00007f0fcad9d371:   call   0x00007f0fca90f700           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
                                                                                   ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                         0x00007f0fcad9d376:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
                         0x00007f0fcad9d37e:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f0fcad9d53c
                         0x00007f0fcad9d380:   mov    %rax,%r13
                         0x00007f0fcad9d383:   jmp    0x00007f0fcad9d075           ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  88.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044 
   3.77%                        <unknown> 
   1.82%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1080 
   0.61%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::~G1ClearCardTableTask 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  stringStream::~stringStream 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%             libjvm.so  G1CardSet::is_empty 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%             libc.so.6  __memset_avx2_unaligned_erms 
   3.29%  <...other 439 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 1044 
   4.32%                kernel  [unknown] 
   3.86%                        <unknown> 
   1.82%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 1080 
   0.11%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::~G1ClearCardTableTask 
   0.09%             libjvm.so  stringStream::~stringStream 
   0.08%             libjvm.so  G1CardSet::is_empty 
   0.08%             libc.so.6  __memset_avx2_unaligned_erms 
   0.06%             libjvm.so  HeapRegionManager::par_iterate 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  FreeListAllocator::reset 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libjvm.so  InstanceKlass::allocate_objArray 
   0.03%             libjvm.so  G1FromCardCache::clear 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  G1CardSetMemoryManager::flush 
   0.91%  <...other 190 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.12%        jvmci, level 4
   4.32%                kernel
   3.86%                      
   1.25%             libjvm.so
   0.33%             libc.so.6
   0.05%        hsdis-amd64.so
   0.02%           interpreter
   0.02%                [vdso]
   0.02%  ld-linux-x86-64.so.2
   0.00%      Unknown, level 0
   0.00%         perf-9746.map
   0.00%           c1, level 3
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:40

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

Benchmark                                         Mode  Cnt    Score    Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  122.790 ± 40.646  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN             ---
EnumValuesLookupBenchmark.enum_values             avgt    5  189.609 ±  7.032  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN             ---
