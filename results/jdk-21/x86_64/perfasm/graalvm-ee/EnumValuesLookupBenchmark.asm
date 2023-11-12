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
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 966 

                     # {method} {0x00007fa78047c030} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007fa806d812c0:   mov    0x8(%rsi),%r10d
                     0x00007fa806d812c4:   movabs $0x7fa78b000000,%r12
                     0x00007fa806d812ce:   add    %r12,%r10
                     0x00007fa806d812d1:   xor    %r12,%r12
                     0x00007fa806d812d4:   cmp    %r10,%rax
                     0x00007fa806d812d7:   jne    0x00007fa806764080           ;   {runtime_call ic_miss_stub}
                     0x00007fa806d812dd:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   0.51%             0x00007fa806d812e0:   mov    %eax,-0x14000(%rsp)
   0.25%             0x00007fa806d812e7:   sub    $0x28,%rsp
   0.55%             0x00007fa806d812eb:   nop
                     0x00007fa806d812ec:   cmpl   $0x1,0x20(%r15)
   0.11%             0x00007fa806d812f4:   jne    0x00007fa806d817ed
   0.31%             0x00007fa806d812fa:   mov    %rbp,0x20(%rsp)
   0.28%             0x00007fa806d812ff:   mov    0x14(%rsi),%r11d
                     0x00007fa806d81303:   movabs $0x7fef3ae50,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007fef3ae50})}
   0.07%             0x00007fa806d8130d:   test   %r11d,%r11d
                     0x00007fa806d81310:   je     0x00007fa806d814f3           ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.33%             0x00007fa806d81316:   mov    0x14(,%r11,8),%edx           ; ImmutableOopMap {rdx=NarrowOop rbx=Oop rsi=Oop r11=NarrowOop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@0 (line 75)
   1.45%             0x00007fa806d8131e:   mov    0xc(,%rdx,8),%ebp            ; implicit exception: dispatches to 0x00007fa806d81811
   3.07%             0x00007fa806d81325:   movsbl 0x10(,%r11,8),%r13d          ;* unwind (locked if synchronized)
                                                                               ; - java.lang.String::equals@-3
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                     0x00007fa806d8132e:   mov    %r11d,%r14d
                     0x00007fa806d81331:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
                     0x00007fa806d81335:   mov    %r14,0x10(%rsp)
   0.70%             0x00007fa806d8133a:   nopw   0x0(%rax,%rax,1)
                     0x00007fa806d81340:   test   %ebp,%ebp
          ╭          0x00007fa806d81342:   je     0x00007fa806d81437
          │          0x00007fa806d81348:   shl    $0x3,%rdx                    ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │          0x00007fa806d8134c:   mov    %rdx,0x8(%rsp)
   0.71%  │          0x00007fa806d81351:   mov    $0x0,%r10d
          │          0x00007fa806d81357:   nopw   0x0(%rax,%rax,1)
  13.84%  │    ↗↗↗   0x00007fa806d81360:   cmp    $0x29,%r10d
          │    │││   0x00007fa806d81364:   jae    0x00007fa806d814ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.15%  │    │││   0x00007fa806d8136a:   mov    0x10(%rbx,%r10,4),%edi       ; ImmutableOopMap {rdx=Oop rbx=Oop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.61%  │    │││   0x00007fa806d8136f:   mov    0x18(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007fa806d81834
          │    │││                                                             ; ImmutableOopMap {rdx=Oop rbx=Oop rsi=NarrowOop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@9 (line 149)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   2.95%  │    │││   0x00007fa806d81376:   movsbl 0x10(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007fa806d81857
  17.51%  │    │││   0x00007fa806d8137e:   mov    0x14(,%rsi,8),%r8d
          │    │││   0x00007fa806d81386:   cmp    %r11d,%esi
          │╭   │││   0x00007fa806d81389:   je     0x00007fa806d81431           ;* unwind (locked if synchronized)
          ││   │││                                                             ; - java.lang.String::equals@-3
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.20%  ││   │││   0x00007fa806d8138f:   mov    %r10d,%eax
          ││   │││   0x00007fa806d81392:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  14.57%  ││   │││   0x00007fa806d81394:   cmp    %r13b,%cl
          ││╭  │││   0x00007fa806d81397:   jne    0x00007fa806d813f5
   0.77%  │││  │││   0x00007fa806d8139d:   data16 xchg %ax,%ax
   0.35%  │││  │││   0x00007fa806d813a0:   test   %r8d,%r8d
          │││  │││   0x00007fa806d813a3:   je     0x00007fa806d814d4
   0.66%  │││  │││   0x00007fa806d813a9:   cmp    0xc(,%r8,8),%ebp
          │││╭ │││   0x00007fa806d813b1:   jne    0x00007fa806d813fd
   1.89%  ││││ │││   0x00007fa806d813b7:   mov    %edi,0x4(%rsp)
          ││││ │││   0x00007fa806d813bb:   shl    $0x3,%r8
          ││││ │││   0x00007fa806d813bf:   mov    %rdx,%rsi
   0.06%  ││││ │││   0x00007fa806d813c2:   mov    $0x10,%rdx
   0.67%  ││││ │││   0x00007fa806d813c9:   mov    %r8,%rcx
          ││││ │││   0x00007fa806d813cc:   mov    $0x10,%r8
          ││││ │││   0x00007fa806d813d3:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││││ │││                                                             ; - java.lang.String::equals@-3
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  ││││ │││   0x00007fa806d813d6:   mov    %eax,%r14d
   0.57%  ││││ │││   0x00007fa806d813d9:   call   0x00007fa8068edd80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.62%  ││││ │││   0x00007fa806d813de:   nop
          ││││ │││   0x00007fa806d813df:   nop
          ││││ │││   0x00007fa806d813e0:   test   %eax,%eax
          ││││╭│││   0x00007fa806d813e2:   jne    0x00007fa806d81405
   0.05%  ││││││││   0x00007fa806d813e8:   mov    %r14d,%r10d
   0.66%  ││││││││   0x00007fa806d813eb:   mov    0x8(%rsp),%rdx
   0.95%  │││││╰││   0x00007fa806d813f0:   jmp    0x00007fa806d81360
          ││↘││ ││   0x00007fa806d813f5:   mov    %eax,%r10d
          ││ ││ ╰│   0x00007fa806d813f8:   jmp    0x00007fa806d81360
  17.36%  ││ ↘│  │   0x00007fa806d813fd:   mov    %eax,%r10d
          ││  │  ╰   0x00007fa806d81400:   jmp    0x00007fa806d81360
   0.65%  ││  ↘   ↗  0x00007fa806d81405:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.04%  ││      │  0x00007fa806d81409:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││      │  0x00007fa806d8140d:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@7 (line 75)
          ││      │  0x00007fa806d81410:   mov    0x20(%rsp),%rbp
   0.69%  ││      │  0x00007fa806d81415:   add    $0x28,%rsp
          ││      │  0x00007fa806d81419:   nopl   0x0(%rax)
          ││      │  0x00007fa806d81420:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││      │  0x00007fa806d81427:   ja     0x00007fa806d817fd
   0.01%  ││      │  0x00007fa806d8142d:   vzeroupper 
   0.62%  ││      │  0x00007fa806d81430:   ret    
   0.02%  │↘      │  0x00007fa806d81431:   mov    %edi,0x4(%rsp)
   0.06%  │       ╰  0x00007fa806d81435:   jmp    0x00007fa806d81405           ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ↘          0x00007fa806d81437:   mov    $0x0,%r10d
                     0x00007fa806d8143d:   data16 xchg %ax,%ax
                     0x00007fa806d81440:   cmp    $0x29,%r10d
                     0x00007fa806d81444:   jae    0x00007fa806d814ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@11 (line 149)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                     0x00007fa806d8144a:   mov    0x10(%rbx,%r10,4),%r8d       ; ImmutableOopMap {rbx=Oop r8=NarrowOop r11=NarrowOop [16]=Oop }
....................................................................................................
  84.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 966 
   9.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 992 
   1.96%                       <unknown> 
   1.35%                       <unknown> 
   0.71%                       <unknown> 
   0.51%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.81%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 966 
   9.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 992 
   4.05%                       <unknown> 
   1.58%               kernel  [unknown] 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.16%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.08%       jvmci, level 4
   4.05%                     
   1.58%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
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
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 

                  # {method} {0x00007f92dc47c100} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                  #           [sp+0x30]  (sp of caller)
                  0x00007f9362d82f40:   mov    0x8(%rsi),%r10d
                  0x00007f9362d82f44:   movabs $0x7f92e7000000,%r12
                  0x00007f9362d82f4e:   add    %r12,%r10
                  0x00007f9362d82f51:   xor    %r12,%r12
                  0x00007f9362d82f54:   cmp    %r10,%rax
                  0x00007f9362d82f57:   jne    0x00007f9362764080           ;   {runtime_call ic_miss_stub}
                  0x00007f9362d82f5d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.05%          0x00007f9362d82f60:   mov    %eax,-0x14000(%rsp)
   0.50%          0x00007f9362d82f67:   sub    $0x28,%rsp
   0.05%          0x00007f9362d82f6b:   nop
                  0x00007f9362d82f6c:   cmpl   $0x1,0x20(%r15)
   0.51%          0x00007f9362d82f74:   jne    0x00007f9362d83397
   0.26%          0x00007f9362d82f7a:   mov    %rbp,0x20(%rsp)
   0.04%          0x00007f9362d82f7f:   mov    %rsi,%r10
   0.00%          0x00007f9362d82f82:   mov    0x14(%r10),%r11d             ; ImmutableOopMap {r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
   0.29%          0x00007f9362d82f86:   mov    0x14(,%r11,8),%r8d           ; implicit exception: dispatches to 0x00007f9362d833e6
   1.60%          0x00007f9362d82f8e:   movsbl 0x10(,%r11,8),%ebx           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@0 (line 81)
                  0x00007f9362d82f97:   mov    0xc(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007f9362d8340d
   2.75%          0x00007f9362d82f9f:   mov    0x1b8(%r15),%rsi
   0.01%          0x00007f9362d82fa6:   lea    0xb8(%rsi),%rdx
                  0x00007f9362d82fad:   cmp    0x1c8(%r15),%rdx
                  0x00007f9362d82fb4:   ja     0x00007f9362d832e2
                  0x00007f9362d82fba:   mov    %rdx,0x1b8(%r15)
   0.58%          0x00007f9362d82fc1:   prefetchw 0x178(%rsi)
   0.01%          0x00007f9362d82fc8:   prefetchw 0x1b8(%rsi)
   0.20%          0x00007f9362d82fcf:   prefetchw 0x1f8(%rsi)
   0.25%          0x00007f9362d82fd6:   prefetchw 0x238(%rsi)
   0.80%          0x00007f9362d82fdd:   movq   $0x1,(%rsi)
   0.01%          0x00007f9362d82fe4:   movl   $0x102afb8,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
                  0x00007f9362d82feb:   movl   $0x29,0xc(%rsi)              ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@0 (line 84)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%          0x00007f9362d82ff2:   mov    %rsi,%r13
   0.55%          0x00007f9362d82ff5:   movl   $0xffde7305,0x10(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39828})}
   0.01%          0x00007f9362d82ffd:   movl   $0xffde7315,0x14(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef398a8})}
   0.01%          0x00007f9362d83005:   movl   $0xffde7327,0x18(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39938})}
   0.04%          0x00007f9362d8300d:   movl   $0xffde7339,0x1c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef399c8})}
   0.54%          0x00007f9362d83015:   movl   $0xffde7349,0x20(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39a48})}
   0.56%          0x00007f9362d8301d:   movl   $0xffde7359,0x24(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39ac8})}
   1.42%          0x00007f9362d83025:   movl   $0xffde7363,0x28(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39b18})}
   0.03%          0x00007f9362d8302d:   movl   $0xffde7373,0x2c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39b98})}
   0.25%          0x00007f9362d83035:   movl   $0xffde7383,0x30(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39c18})}
   0.60%          0x00007f9362d8303d:   movl   $0xffde7395,0x34(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39ca8})}
   0.24%          0x00007f9362d83045:   movl   $0xffde73a5,0x38(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39d28})}
   0.01%          0x00007f9362d8304d:   movl   $0xffde73b5,0x3c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39da8})}
   0.78%          0x00007f9362d83055:   movl   $0xffde73c5,0x40(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39e28})}
   0.28%          0x00007f9362d8305d:   movl   $0xffde73d5,0x44(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39ea8})}
   0.53%          0x00007f9362d83065:   movl   $0xffde73e5,0x48(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39f28})}
   0.50%          0x00007f9362d8306d:   movl   $0xffde73f5,0x4c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef39fa8})}
   0.56%          0x00007f9362d83075:   movl   $0xffde7405,0x50(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a028})}
   0.48%          0x00007f9362d8307d:   movl   $0xffde7415,0x54(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a0a8})}
   0.54%          0x00007f9362d83085:   movl   $0xffde7425,0x58(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a128})}
   0.53%          0x00007f9362d8308d:   movl   $0xffde7435,0x5c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a1a8})}
   0.53%          0x00007f9362d83095:   movl   $0xffde7445,0x60(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a228})}
   0.52%          0x00007f9362d8309d:   movl   $0xffde7455,0x64(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a2a8})}
   0.48%          0x00007f9362d830a5:   movl   $0xffde7467,0x68(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a338})}
   0.49%          0x00007f9362d830ad:   movl   $0xffde7479,0x6c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a3c8})}
   0.62%          0x00007f9362d830b5:   movl   $0xffde748b,0x70(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a458})}
   0.53%          0x00007f9362d830bd:   movl   $0xffde749b,0x74(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a4d8})}
   0.54%          0x00007f9362d830c5:   movl   $0xffde74ab,0x78(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a558})}
   0.58%          0x00007f9362d830cd:   movl   $0xffde74bb,0x7c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a5d8})}
   0.57%          0x00007f9362d830d5:   movl   $0xffde74cd,0x80(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a668})}
   0.51%          0x00007f9362d830e0:   movl   $0xffde74df,0x84(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a6f8})}
   0.58%          0x00007f9362d830eb:   movl   $0xffde74ef,0x88(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a778})}
   0.59%          0x00007f9362d830f6:   movl   $0xffde74ff,0x8c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a7f8})}
   0.49%          0x00007f9362d83101:   movl   $0xffde750f,0x90(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a878})}
   0.53%          0x00007f9362d8310c:   movl   $0xffde751f,0x94(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a8f8})}
   0.53%          0x00007f9362d83117:   movl   $0xffde752f,0x98(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a978})}
   0.52%          0x00007f9362d83122:   movl   $0xffde753f,0x9c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3a9f8})}
   0.50%          0x00007f9362d8312d:   movl   $0xffde754f,0xa0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3aa78})}
   0.53%          0x00007f9362d83138:   movl   $0xffde7561,0xa4(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3ab08})}
   0.56%          0x00007f9362d83143:   movl   $0xffde7573,0xa8(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3ab98})}
   0.50%          0x00007f9362d8314e:   movl   $0xffde7583,0xac(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3ac18})}
   0.56%          0x00007f9362d83159:   movl   $0xffde7595,0xb0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;{0x00000007fef3aca8})}
   0.51%          0x00007f9362d83164:   mov    %r11d,%r14d
                  0x00007f9362d83167:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
                  0x00007f9362d8316b:   mov    %r14,0x10(%rsp)
   0.57%          0x00007f9362d83170:   test   %ebp,%ebp
                  0x00007f9362d83172:   je     0x00007f9362d83276
   0.00%          0x00007f9362d83178:   shl    $0x3,%r8                     ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                  0x00007f9362d8317c:   mov    %r8,0x8(%rsp)
   0.54%          0x00007f9362d83181:   mov    $0x0,%r10d
   0.00%          0x00007f9362d83187:   nopw   0x0(%rax,%rax,1)
   7.00%     ↗↗↗  0x00007f9362d83190:   cmp    $0x29,%r10d
             │││  0x00007f9362d83194:   jae    0x00007f9362d83331           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
             │││  0x00007f9362d8319a:   mov    0x10(%r13,%r10,4),%esi       ; ImmutableOopMap {rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.58%     │││  0x00007f9362d8319f:   mov    0x18(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f9362d83430
             │││                                                            ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@9 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.61%     │││  0x00007f9362d831a6:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f9362d83453
   7.34%     │││  0x00007f9362d831ae:   mov    0x14(,%rdx,8),%r9d           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%     │││  0x00007f9362d831b6:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.59%     │││  0x00007f9362d831ba:   nopw   0x0(%rax,%rax,1)
   4.48%     │││  0x00007f9362d831c0:   cmp    %r11d,%edx
             │││  0x00007f9362d831c3:   je     0x00007f9362d83259           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   7.32%     │││  0x00007f9362d831c9:   mov    %r10d,%edi
   0.00%     │││  0x00007f9362d831cc:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.52%     │││  0x00007f9362d831ce:   cmp    %bl,%cl
          ╭  │││  0x00007f9362d831d0:   jne    0x00007f9362d8322b
   4.14%  │  │││  0x00007f9362d831d6:   test   %r9d,%r9d
          │  │││  0x00007f9362d831d9:   je     0x00007f9362d83359
   9.94%  │  │││  0x00007f9362d831df:   nop
   0.00%  │  │││  0x00007f9362d831e0:   cmp    0xc(,%r9,8),%ebp
          │╭ │││  0x00007f9362d831e8:   jne    0x00007f9362d83233
   0.06%  ││ │││  0x00007f9362d831ee:   mov    %rsi,(%rsp)
   0.56%  ││ │││  0x00007f9362d831f2:   shl    $0x3,%r9
          ││ │││  0x00007f9362d831f6:   mov    %r8,%rsi
          ││ │││  0x00007f9362d831f9:   mov    $0x10,%rdx
   0.02%  ││ │││  0x00007f9362d83200:   mov    %r9,%rcx
   0.55%  ││ │││  0x00007f9362d83203:   mov    $0x10,%r8
          ││ │││  0x00007f9362d8320a:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││ │││                                                            ; - java.lang.String::equals@-3
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││ │││  0x00007f9362d8320d:   mov    %edi,%r14d
   0.01%  ││ │││  0x00007f9362d83210:   call   0x00007f93628edb80           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.02%  ││ │││  0x00007f9362d83215:   nop
   0.53%  ││ │││  0x00007f9362d83216:   test   %eax,%eax
          ││╭│││  0x00007f9362d83218:   jne    0x00007f9362d8323b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││││││  0x00007f9362d8321e:   mov    %r14d,%r10d
          ││││││  0x00007f9362d83221:   mov    0x8(%rsp),%r8
   0.51%  │││╰││  0x00007f9362d83226:   jmp    0x00007f9362d83190
          ↘││ ││  0x00007f9362d8322b:   mov    %edi,%r10d
           ││ ╰│  0x00007f9362d8322e:   jmp    0x00007f9362d83190
   7.40%   ↘│  │  0x00007f9362d83233:   mov    %edi,%r10d
   4.14%    │  ╰  0x00007f9362d83236:   jmp    0x00007f9362d83190
            ↘     0x00007f9362d8323b:   mov    (%rsp),%rax                  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@7 (line 81)
                  0x00007f9362d8323f:   mov    0x20(%rsp),%rbp
                  0x00007f9362d83244:   add    $0x28,%rsp
                  0x00007f9362d83248:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f9362d8324f:   ja     0x00007f9362d833a7
                  0x00007f9362d83255:   vzeroupper 
                  0x00007f9362d83258:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@11 (line 140)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
....................................................................................................
  89.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 
   2.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 998 
   2.32%                      <unknown> 
   1.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 
   1.17%                      <unknown> 
   0.53%                      <unknown> 
   0.29%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   1.58%  <...other 428 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 962 
   4.17%                      <unknown> 
   2.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 998 
   1.32%              kernel  [unknown] 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  G1CardSet::clear 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.59%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.50%      jvmci, level 4
   4.17%                    
   1.32%              kernel
   0.73%           libjvm.so
   0.19%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
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
