# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 41.858 ns/op
# Warmup Iteration   2: 40.728 ns/op
# Warmup Iteration   3: 41.522 ns/op
# Warmup Iteration   4: 40.861 ns/op
# Warmup Iteration   5: 41.092 ns/op
Iteration   1: 40.932 ns/op
Iteration   2: 41.018 ns/op
Iteration   3: 40.915 ns/op
Iteration   4: 40.845 ns/op
Iteration   5: 41.024 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check":
  40.947 ±(99.9%) 0.290 ns/op [Average]
  (min, avg, max) = (40.845, 40.947, 41.024), stdev = 0.075
  CI (99.9%): [40.657, 41.237] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 113882 total address lines.
Perf output processed (skipped 55.766 seconds):
 Column 1: cycles (50608 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 483 

               # {method} {0x00007f737f87e330} &apos;instanceof_type_check&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f73b0f3b2a0:   mov    0x8(%rsi),%r10d
               0x00007f73b0f3b2a4:   movabs $0x800000000,%r11
               0x00007f73b0f3b2ae:   add    %r11,%r10
               0x00007f73b0f3b2b1:   cmp    %r10,%rax
               0x00007f73b0f3b2b4:   jne    0x00007f73b09d2d80           ;   {runtime_call ic_miss_stub}
               0x00007f73b0f3b2ba:   xchg   %ax,%ax
               0x00007f73b0f3b2bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.95%       0x00007f73b0f3b2c0:   mov    %eax,-0x14000(%rsp)
   2.48%       0x00007f73b0f3b2c7:   push   %rbp
               0x00007f73b0f3b2c8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@-1 (line 65)
   0.00%       0x00007f73b0f3b2cc:   mov    0xc(%rsi),%r10d              ;*getfield obj {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@1 (line 65)
   0.93%       0x00007f73b0f3b2d0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f73b0f3b334
   0.43%       0x00007f73b0f3b2d5:   movabs $0x800015658,%rax            ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f73b0f3b2df:   movabs $0x800000000,%rsi
               0x00007f73b0f3b2e9:   add    %r8,%rsi
   1.01%       0x00007f73b0f3b2ec:   mov    0x20(%rsi),%r11
   4.66%       0x00007f73b0f3b2f0:   cmp    %rax,%r11
          ╭    0x00007f73b0f3b2f3:   je     0x00007f73b0f3b326
   0.90%  │    0x00007f73b0f3b2f5:   mov    0x28(%rsi),%rdi
          │    0x00007f73b0f3b2f9:   mov    (%rdi),%ecx
   2.77%  │    0x00007f73b0f3b2fb:   add    $0x8,%rdi
          │    0x00007f73b0f3b2ff:   test   %rax,%rax
  20.67%  │    0x00007f73b0f3b302:   repnz scas %es:(%rdi),%rax
  33.18%  │╭   0x00007f73b0f3b305:   jne    0x00007f73b0f3b30f
          ││   0x00007f73b0f3b30b:   mov    %rax,0x20(%rsi)
   9.22%  │↘╭  0x00007f73b0f3b30f:   je     0x00007f73b0f3b326
          │ │  0x00007f73b0f3b311:   xor    %eax,%eax
          │ │  0x00007f73b0f3b313:   add    $0x10,%rsp
          │ │  0x00007f73b0f3b317:   pop    %rbp
   5.53%  │ │  0x00007f73b0f3b318:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │ │  0x00007f73b0f3b31f:   ja     0x00007f73b0f3b340
   1.88%  │ │  0x00007f73b0f3b325:   ret                                 ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::closeNotAutoCloseable@1 (line 71)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 65)
          ↘ ↘  0x00007f73b0f3b326:   mov    $0xffffff45,%esi
               0x00007f73b0f3b32b:   mov    %r10d,%ebp
               0x00007f73b0f3b32e:   nop
               0x00007f73b0f3b32f:   call   0x00007f73b09d8600           ; ImmutableOopMap {rbp=NarrowOop }
                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::closeNotAutoCloseable@4 (line 71)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check@4 (line 65)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  84.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 517 

              0x00007f73b0f3e8a6:   mov    0x38(%rsp),%r10
              0x00007f73b0f3e8ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f73b0f3e95c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@30 (line 234)
              0x00007f73b0f3e8b3:   mov    $0x1,%ebp
              0x00007f73b0f3e8b8:   test   %r11d,%r11d
          ╭   0x00007f73b0f3e8bb:   jne    0x00007f73b0f3e8ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          │   0x00007f73b0f3e8bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
   1.00%  │↗  0x00007f73b0f3e8c0:   mov    0x40(%rsp),%rsi
          ││  0x00007f73b0f3e8c5:   xchg   %ax,%ax
          ││  0x00007f73b0f3e8c7:   call   0x00007f73b09d3080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual instanceof_type_check {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   0.91%  ││  0x00007f73b0f3e8cc:   mov    0x38(%rsp),%r10
   8.13%  ││  0x00007f73b0f3e8d1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   3.59%  ││  0x00007f73b0f3e8d9:   mov    0x348(%r15),%r11
          ││  0x00007f73b0f3e8e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
          ││  0x00007f73b0f3e8e4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f73b0f3e8e7:   test   %r10d,%r10d
          │╰  0x00007f73b0f3e8ea:   je     0x00007f73b0f3e8c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@36 (line 235)
          ↘   0x00007f73b0f3e8ec:   movabs $0x7f73c4ebdd10,%r10
              0x00007f73b0f3e8f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  13.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  84.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 483 
  13.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 517 
   0.73%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.67%  <...other 205 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckBenchmark::instanceof_type_check, version 2, compile id 483 
  13.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 517 
   1.56%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  os::PlatformMonitor::wait 
   0.01%        libc-2.31.so  [unknown] 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%        libc-2.31.so  malloc_hook_ini 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  __strcasecmp_l_sse42 
   0.00%           libjvm.so  os::dll_address_to_function_name 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __vfwprintf_internal 
   0.08%  <...other 40 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.24%         c2, level 4
   1.56%              kernel
   0.09%           libjvm.so
   0.03%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:49

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

Benchmark                                              Mode  Cnt   Score   Error  Units
TypeCheckBenchmark.instanceof_type_check       avgt    5  40.947 ± 0.290  ns/op
TypeCheckBenchmark.instanceof_type_check:·asm  avgt          NaN            ---
