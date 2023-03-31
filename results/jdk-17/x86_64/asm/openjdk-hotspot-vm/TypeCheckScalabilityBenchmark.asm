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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = false)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.800 ns/op
# Warmup Iteration   2: 6.945 ns/op
# Warmup Iteration   3: 7.752 ns/op
# Warmup Iteration   4: 6.694 ns/op
# Warmup Iteration   5: 6.587 ns/op
Iteration   1: 6.590 ns/op
Iteration   2: 6.593 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.575 ns/op
Iteration   5: 6.582 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  6.583 ±(99.9%) 0.032 ns/op [Average]
  (min, avg, max) = (6.575, 6.583, 6.593), stdev = 0.008
  CI (99.9%): [6.551, 6.615] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 117637 total address lines.
Perf output processed (skipped 55.707 seconds):
 Column 1: cycles (50889 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 516 

              0x00007fc8b8f67ca6:   mov    0x38(%rsp),%r10
              0x00007fc8b8f67cab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fc8b8f67d5c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@30 (line 188)
              0x00007fc8b8f67cb3:   mov    $0x1,%ebp
              0x00007fc8b8f67cb8:   test   %r11d,%r11d
          ╭   0x00007fc8b8f67cbb:   jne    0x00007fc8b8f67cec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          │   0x00007fc8b8f67cbd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 189)
   0.01%  │↗  0x00007fc8b8f67cc0:   mov    0x40(%rsp),%rsi
   5.82%  ││  0x00007fc8b8f67cc5:   xchg   %ax,%ax
          ││  0x00007fc8b8f67cc7:   call   0x00007fc8b89fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  63.16%  ││  0x00007fc8b8f67ccc:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007fc8b8f67cd1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   0.02%  ││  0x00007fc8b8f67cd9:   mov    0x348(%r15),%r11
   5.62%  ││  0x00007fc8b8f67ce0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007fc8b8f67ce4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fc8b8f67ce7:   test   %r10d,%r10d
          │╰  0x00007fc8b8f67cea:   je     0x00007fc8b8f67cc0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 189)
          ↘   0x00007fc8b8f67cec:   movabs $0x7fc8cd801d10,%r10
              0x00007fc8b8f67cf6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@37 (line 189)
              0x00007fc8b8f67cf9:   mov    0x30(%rsp),%r10
....................................................................................................
  74.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 481 

              # {method} {0x00007fc87fc74c00} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007fc8b8f64520:   mov    0x8(%rsi),%r10d
              0x00007fc8b8f64524:   movabs $0x800000000,%r11
              0x00007fc8b8f6452e:   add    %r11,%r10
              0x00007fc8b8f64531:   cmp    %r10,%rax
              0x00007fc8b8f64534:   jne    0x00007fc8b89fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fc8b8f6453a:   xchg   %ax,%ax
              0x00007fc8b8f6453c:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.00%      0x00007fc8b8f64540:   mov    %eax,-0x14000(%rsp)
   5.93%      0x00007fc8b8f64547:   push   %rbp
              0x00007fc8b8f64548:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@-1 (line 95)
   5.67%      0x00007fc8b8f6454c:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
   0.01%  ╭   0x00007fc8b8f64550:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fc8b8f64590
   0.12%  │   0x00007fc8b8f64555:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc8b8f64560:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007fc8b8f64567:   jne    0x00007fc8b8f64581
   5.56%  ││  0x00007fc8b8f64569:   mov    $0x1,%eax
          ││  0x00007fc8b8f6456e:   add    $0x20,%rsp
          ││  0x00007fc8b8f64572:   pop    %rbp
          ││  0x00007fc8b8f64573:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fc8b8f6457a:   ja     0x00007fc8b8f645a0
   5.77%  ││  0x00007fc8b8f64580:   ret    
          │↘  0x00007fc8b8f64581:   mov    $0xffffffde,%esi
          │   0x00007fc8b8f64586:   mov    %r10d,%ebp
          │   0x00007fc8b8f64589:   xchg   %ax,%ax
          │   0x00007fc8b8f6458b:   call   0x00007fc8b8a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007fc8b8f64590:   mov    $0xffffff45,%esi
              0x00007fc8b8f64595:   mov    %r10d,(%rsp)
....................................................................................................
  23.06%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 516 
  23.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 481 
   0.79%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 282 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 516 
  23.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 481 
   1.98%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _int_malloc 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  outputStream::update_position 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.69%         c2, level 4
   1.98%              kernel
   0.11%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.00%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1
# Parameters: (typePollution = true)

# Run progress: 8.33% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 35.834 ns/op
# Warmup Iteration   2: 34.491 ns/op
# Warmup Iteration   3: 35.385 ns/op
# Warmup Iteration   4: 34.623 ns/op
# Warmup Iteration   5: 34.620 ns/op
Iteration   1: 34.595 ns/op
Iteration   2: 34.613 ns/op
Iteration   3: 34.580 ns/op
Iteration   4: 34.977 ns/op
Iteration   5: 34.490 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1":
  34.651 ±(99.9%) 0.724 ns/op [Average]
  (min, avg, max) = (34.490, 34.651, 34.977), stdev = 0.188
  CI (99.9%): [33.926, 35.375] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_1:·asm":
PrintAssembly processed: 115820 total address lines.
Perf output processed (skipped 55.645 seconds):
 Column 1: cycles (50823 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 477 

                      # {method} {0x00007f050d074c00} &apos;is_duplicated_1&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
                      #           [sp+0x30]  (sp of caller)
                      0x00007f051cf64820:   mov    0x8(%rsi),%r10d
                      0x00007f051cf64824:   movabs $0x800000000,%r11
                      0x00007f051cf6482e:   add    %r11,%r10
                      0x00007f051cf64831:   cmp    %r10,%rax
                      0x00007f051cf64834:   jne    0x00007f051c9fbd80           ;   {runtime_call ic_miss_stub}
                      0x00007f051cf6483a:   xchg   %ax,%ax
                      0x00007f051cf6483c:   nopl   0x0(%rax)
                    [Verified Entry Point]
   1.11%              0x00007f051cf64840:   mov    %eax,-0x14000(%rsp)
   2.38%              0x00007f051cf64847:   push   %rbp
                      0x00007f051cf64848:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@-1 (line 95)
   0.27%              0x00007f051cf6484c:   mov    0x10(%rsi),%r11d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@1 (line 95)
   0.77%  ╭           0x00007f051cf64850:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f051cf64924
   0.21%  │           0x00007f051cf64855:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
   0.21%  │           0x00007f051cf6485f:   movabs $0x800000000,%rsi
          │           0x00007f051cf64869:   add    %r10,%rsi
   0.77%  │           0x00007f051cf6486c:   mov    0x20(%rsi),%r10
   5.22%  │           0x00007f051cf64870:   cmp    %rax,%r10
          │╭          0x00007f051cf64873:   jne    0x00007f051cf648b3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
   0.54%  ││   ↗      0x00007f051cf64875:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          ││   │      0x00007f051cf6487f:   nop
          ││   │      0x00007f051cf64880:   cmp    %rax,%r10
          ││╭  │      0x00007f051cf64883:   jne    0x00007f051cf648dc
   0.49%  │││  │ ↗    0x00007f051cf64889:   lea    (%r12,%r11,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          │││  │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │││  │ │    0x00007f051cf6488d:   mov    0x8(%rbp),%r11d
   3.17%  │││  │ │    0x00007f051cf64891:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          │││╭ │ │    0x00007f051cf64898:   jne    0x00007f051cf64908           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ││││ │ │    0x00007f051cf6489e:   xor    %eax,%eax                    ;*synchronization entry
          ││││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          ││││ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          ││││ │ │ ↗  0x00007f051cf648a0:   add    $0x20,%rsp
          ││││ │ │ │  0x00007f051cf648a4:   pop    %rbp
   3.56%  ││││ │ │ │  0x00007f051cf648a5:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││││ │ │ │  0x00007f051cf648ac:   ja     0x00007f051cf64934
   1.07%  ││││ │ │ │  0x00007f051cf648b2:   ret    
   0.50%  │↘││ │ │ │  0x00007f051cf648b3:   mov    0x28(%rsi),%rdi
          │ ││ │ │ │  0x00007f051cf648b7:   mov    (%rdi),%ecx
   1.69%  │ ││ │ │ │  0x00007f051cf648b9:   add    $0x8,%rdi
          │ ││ │ │ │  0x00007f051cf648bd:   test   %rax,%rax
          │ ││ │ │ │  0x00007f051cf648c0:   repnz scas %es:(%rdi),%rax
  20.88%  │ ││╭│ │ │  0x00007f051cf648c3:   jne    0x00007f051cf648cd
   3.68%  │ ││││ │ │  0x00007f051cf648c9:   mov    %rax,0x20(%rsi)
   2.32%  │ ││↘╰ │ │  0x00007f051cf648cd:   je     0x00007f051cf64875
          │ ││   │ │  0x00007f051cf648cf:   mov    $0xffffffde,%esi
          │ ││   │ │  0x00007f051cf648d4:   mov    %r11d,%ebp
          │ ││   │ │  0x00007f051cf648d7:   call   0x00007f051ca01600           ; ImmutableOopMap {rbp=NarrowOop }
          │ ││   │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │ ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │ ││   │ │                                                            ;   {runtime_call UncommonTrapBlob}
   0.55%  │ ↘│   │ │  0x00007f051cf648dc:   mov    0x28(%rsi),%rdi
   0.01%  │  │   │ │  0x00007f051cf648e0:   mov    (%rdi),%ecx
   1.05%  │  │   │ │  0x00007f051cf648e2:   add    $0x8,%rdi
          │  │   │ │  0x00007f051cf648e6:   test   %rax,%rax
   2.04%  │  │   │ │  0x00007f051cf648e9:   repnz scas %es:(%rdi),%rax
  20.11%  │  │  ╭│ │  0x00007f051cf648ec:   jne    0x00007f051cf648f6
   3.31%  │  │  ││ │  0x00007f051cf648f2:   mov    %rax,0x20(%rsi)
   2.58%  │  │  ↘╰ │  0x00007f051cf648f6:   je     0x00007f051cf64889
          │  │     │  0x00007f051cf648f8:   mov    $0xffffffde,%esi
          │  │     │  0x00007f051cf648fd:   mov    %r11d,%ebp
          │  │     │  0x00007f051cf64900:   data16 xchg %ax,%ax
          │  │     │  0x00007f051cf64903:   call   0x00007f051ca01600           ; ImmutableOopMap {rbp=NarrowOop }
          │  │     │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │  │     │                                                            ;   {runtime_call UncommonTrapBlob}
   1.07%  │  ↘     │  0x00007f051cf64908:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │       ╭│  0x00007f051cf6490f:   jne    0x00007f051cf64918
   1.08%  │       ││  0x00007f051cf64911:   mov    $0x1,%eax
          │       │╰  0x00007f051cf64916:   jmp    0x00007f051cf648a0
          │       ↘   0x00007f051cf64918:   mov    $0xffffffc6,%esi
          │           0x00007f051cf6491d:   xchg   %ax,%ax
          │           0x00007f051cf6491f:   call   0x00007f051ca01600           ; ImmutableOopMap {rbp=Oop }
          │                                                                     ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1@4 (line 95)
          │                                                                     ;   {runtime_call UncommonTrapBlob}
          ↘           0x00007f051cf64924:   mov    $0xffffff45,%esi
                      0x00007f051cf64929:   mov    %r11d,(%rsp)
....................................................................................................
  80.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 511 

              0x00007f051cf67ca6:   mov    0x38(%rsp),%r10
              0x00007f051cf67cab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f051cf67d5c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@30 (line 188)
              0x00007f051cf67cb3:   mov    $0x1,%ebp
              0x00007f051cf67cb8:   test   %r11d,%r11d
          ╭   0x00007f051cf67cbb:   jne    0x00007f051cf67cec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          │   0x00007f051cf67cbd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 189)
   1.34%  │↗  0x00007f051cf67cc0:   mov    0x40(%rsp),%rsi
          ││  0x00007f051cf67cc5:   xchg   %ax,%ax
          ││  0x00007f051cf67cc7:   call   0x00007f051c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
   1.09%  ││  0x00007f051cf67ccc:   mov    0x38(%rsp),%r10
   9.35%  ││  0x00007f051cf67cd1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
   5.41%  ││  0x00007f051cf67cd9:   mov    0x348(%r15),%r11
          ││  0x00007f051cf67ce0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@33 (line 188)
          ││  0x00007f051cf67ce4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f051cf67ce7:   test   %r10d,%r10d
          │╰  0x00007f051cf67cea:   je     0x00007f051cf67cc0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub@36 (line 189)
          ↘   0x00007f051cf67cec:   movabs $0x7f0534b5ad10,%r10
              0x00007f051cf67cf6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 477 
  17.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 511 
   0.93%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.72%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_1, version 2, compile id 477 
  17.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_1_jmhTest::is_duplicated_1_avgt_jmhStub, version 6, compile id 511 
   1.87%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%           libjvm.so  outputStream::update_position 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.87%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%     perf-112624.map
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = false)

# Run progress: 16.67% complete, ETA 00:18:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.802 ns/op
# Warmup Iteration   2: 6.926 ns/op
# Warmup Iteration   3: 7.759 ns/op
# Warmup Iteration   4: 6.612 ns/op
# Warmup Iteration   5: 6.608 ns/op
Iteration   1: 6.606 ns/op
Iteration   2: 6.602 ns/op
Iteration   3: 6.610 ns/op
Iteration   4: 6.608 ns/op
Iteration   5: 6.609 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  6.607 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (6.602, 6.607, 6.610), stdev = 0.003
  CI (99.9%): [6.594, 6.620] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 116403 total address lines.
Perf output processed (skipped 55.739 seconds):
 Column 1: cycles (100393 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 531 

              0x00007f0e18f681a6:   mov    0x38(%rsp),%r10
              0x00007f0e18f681ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f0e18f6825c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@30 (line 188)
              0x00007f0e18f681b3:   mov    $0x1,%ebp
              0x00007f0e18f681b8:   test   %r11d,%r11d
          ╭   0x00007f0e18f681bb:   jne    0x00007f0e18f681ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
          │   0x00007f0e18f681bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@36 (line 189)
   0.05%  │↗  0x00007f0e18f681c0:   mov    0x40(%rsp),%rsi
   5.61%  ││  0x00007f0e18f681c5:   xchg   %ax,%ax
          ││  0x00007f0e18f681c7:   call   0x00007f0e189fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  63.48%  ││  0x00007f0e18f681cc:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007f0e18f681d1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
   0.20%  ││  0x00007f0e18f681d9:   mov    0x348(%r15),%r11
   5.74%  ││  0x00007f0e18f681e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@33 (line 188)
          ││  0x00007f0e18f681e4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f0e18f681e7:   test   %r10d,%r10d
          │╰  0x00007f0e18f681ea:   je     0x00007f0e18f681c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@36 (line 189)
          ↘   0x00007f0e18f681ec:   movabs $0x7f0e2f872d10,%r10
              0x00007f0e18f681f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub@37 (line 189)
              0x00007f0e18f681f9:   mov    0x30(%rsp),%r10
....................................................................................................
  75.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 489 

              # {method} {0x00007f0df9c74cd8} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f0e18f63520:   mov    0x8(%rsi),%r10d
              0x00007f0e18f63524:   movabs $0x800000000,%r11
              0x00007f0e18f6352e:   add    %r11,%r10
              0x00007f0e18f63531:   cmp    %r10,%rax
              0x00007f0e18f63534:   jne    0x00007f0e189fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f0e18f6353a:   xchg   %ax,%ax
              0x00007f0e18f6353c:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.07%      0x00007f0e18f63540:   mov    %eax,-0x14000(%rsp)
   5.83%      0x00007f0e18f63547:   push   %rbp
              0x00007f0e18f63548:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@-1 (line 102)
   5.75%      0x00007f0e18f6354c:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   0.05%  ╭   0x00007f0e18f63550:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f0e18f63590
   0.68%  │   0x00007f0e18f63555:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0e18f63560:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007f0e18f63567:   jne    0x00007f0e18f63581
   5.74%  ││  0x00007f0e18f63569:   mov    $0x1,%eax
          ││  0x00007f0e18f6356e:   add    $0x20,%rsp
          ││  0x00007f0e18f63572:   pop    %rbp
          ││  0x00007f0e18f63573:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f0e18f6357a:   ja     0x00007f0e18f635a0
   5.83%  ││  0x00007f0e18f63580:   ret    
          │↘  0x00007f0e18f63581:   mov    $0xffffffde,%esi
          │   0x00007f0e18f63586:   mov    %r10d,%ebp
          │   0x00007f0e18f63589:   xchg   %ax,%ax
          │   0x00007f0e18f6358b:   call   0x00007f0e18a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007f0e18f63590:   mov    $0xffffff45,%esi
              0x00007f0e18f63595:   mov    %r10d,(%rsp)
....................................................................................................
  23.96%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 531 
  23.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 489 
   0.23%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.47%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 531 
  23.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 489 
   0.76%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  fileStream::write 
   0.00%         interpreter  ifeq  153 ifeq  
   0.00%           libjvm.so  PerfLongVariant::sample 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock_usercnt 
   0.00%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.09%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.04%         c2, level 4
   0.76%              kernel
   0.08%           libjvm.so
   0.03%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%     perf-112679.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 2 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2
# Parameters: (typePollution = true)

# Run progress: 25.00% complete, ETA 00:16:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 69.831 ns/op
# Warmup Iteration   2: 72.728 ns/op
# Warmup Iteration   3: 70.512 ns/op
# Warmup Iteration   4: 64.237 ns/op
# Warmup Iteration   5: 64.243 ns/op
Iteration   1: 64.237 ns/op
Iteration   2: 66.907 ns/op
Iteration   3: 69.877 ns/op
Iteration   4: 68.128 ns/op
Iteration   5: 68.126 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2":
  67.455 ±(99.9%) 8.037 ns/op [Average]
  (min, avg, max) = (64.237, 67.455, 69.877), stdev = 2.087
  CI (99.9%): [59.418, 75.492] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_2:·asm":
PrintAssembly processed: 112308 total address lines.
Perf output processed (skipped 55.570 seconds):
 Column 1: cycles (100817 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 462 

                     # {method} {0x00007fcf45874cd8} &apos;is_duplicated_2&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007fcf64f64420:   mov    0x8(%rsi),%r10d
                     0x00007fcf64f64424:   movabs $0x800000000,%r11
                     0x00007fcf64f6442e:   add    %r11,%r10
                     0x00007fcf64f64431:   cmp    %r10,%rax
                     0x00007fcf64f64434:   jne    0x00007fcf649fbd80           ;   {runtime_call ic_miss_stub}
                     0x00007fcf64f6443a:   xchg   %ax,%ax
                     0x00007fcf64f6443c:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.55%             0x00007fcf64f64440:   mov    %eax,-0x14000(%rsp)
   1.36%             0x00007fcf64f64447:   push   %rbp
                     0x00007fcf64f64448:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@-1 (line 102)
   0.10%             0x00007fcf64f6444c:   mov    0x10(%rsi),%r11d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@1 (line 102)
   0.44%             0x00007fcf64f64450:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fcf64f64538
   0.51%             0x00007fcf64f64455:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                     0x00007fcf64f6445f:   movabs $0x800000000,%rsi
                     0x00007fcf64f64469:   add    %r10,%rsi
   0.57%             0x00007fcf64f6446c:   mov    0x20(%rsi),%r10
   2.92%             0x00007fcf64f64470:   cmp    %rax,%r10
          ╭          0x00007fcf64f64473:   jne    0x00007fcf64f644d2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.35%  │     ↗    0x00007fcf64f64479:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │     │    0x00007fcf64f64483:   cmp    %rax,%r10
          │╭    │    0x00007fcf64f64486:   jne    0x00007fcf64f644fc
          ││    │ ↗  0x00007fcf64f6448c:   lea    (%r12,%r11,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.24%  ││    │ │  0x00007fcf64f64490:   mov    0x8(%rbp),%r11d
   1.75%  ││    │ │  0x00007fcf64f64494:   nopl   0x0(%rax,%rax,1)
          ││    │ │  0x00007fcf64f6449c:   data16 data16 xchg %ax,%ax
          ││    │ │  0x00007fcf64f644a0:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭   │ │  0x00007fcf64f644a7:   je     0x00007fcf64f644bd
   0.56%  │││   │ │  0x00007fcf64f644a9:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││╭  │ │  0x00007fcf64f644b0:   jne    0x00007fcf64f6452c           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
   0.63%  ││││  │ │  0x00007fcf64f644b6:   mov    $0x1,%eax
          ││││╭ │ │  0x00007fcf64f644bb:   jmp    0x00007fcf64f644bf
          ││↘││ │ │  0x00007fcf64f644bd:   xor    %eax,%eax                    ;*synchronization entry
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
          ││ │↘ │ │  0x00007fcf64f644bf:   add    $0x20,%rsp
          ││ │  │ │  0x00007fcf64f644c3:   pop    %rbp
   1.95%  ││ │  │ │  0x00007fcf64f644c4:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││ │  │ │  0x00007fcf64f644cb:   ja     0x00007fcf64f64548
   1.08%  ││ │  │ │  0x00007fcf64f644d1:   ret    
   0.28%  ↘│ │  │ │  0x00007fcf64f644d2:   mov    0x28(%rsi),%rdi
  23.12%   │ │  │ │  0x00007fcf64f644d6:   mov    (%rdi),%ecx
   1.53%   │ │  │ │  0x00007fcf64f644d8:   add    $0x8,%rdi
           │ │  │ │  0x00007fcf64f644dc:   test   %rax,%rax
           │ │  │ │  0x00007fcf64f644df:   repnz scas %es:(%rdi),%rax
  10.67%   │ │ ╭│ │  0x00007fcf64f644e2:   jne    0x00007fcf64f644ec
   1.87%   │ │ ││ │  0x00007fcf64f644e8:   mov    %rax,0x20(%rsi)
   1.21%   │ │ ↘╰ │  0x00007fcf64f644ec:   je     0x00007fcf64f64479
           │ │    │  0x00007fcf64f644ee:   mov    $0xffffffde,%esi
           │ │    │  0x00007fcf64f644f3:   mov    %r11d,%ebp
           │ │    │  0x00007fcf64f644f6:   nop
           │ │    │  0x00007fcf64f644f7:   call   0x00007fcf64a01600           ; ImmutableOopMap {rbp=NarrowOop }
           │ │    │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
           │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
   0.23%   ↘ │    │  0x00007fcf64f644fc:   mov    0x28(%rsi),%rdi
  22.06%     │    │  0x00007fcf64f64500:   mov    (%rdi),%ecx
   1.53%     │    │  0x00007fcf64f64502:   add    $0x8,%rdi
   0.00%     │    │  0x00007fcf64f64506:   test   %rax,%rax
   1.12%     │    │  0x00007fcf64f64509:   repnz scas %es:(%rdi),%rax
  10.42%     │   ╭│  0x00007fcf64f6450c:   jne    0x00007fcf64f64516
   1.82%     │   ││  0x00007fcf64f64512:   mov    %rax,0x20(%rsi)
   1.21%     │   ↘╰  0x00007fcf64f64516:   je     0x00007fcf64f6448c
             │       0x00007fcf64f6451c:   mov    $0xffffffde,%esi
             │       0x00007fcf64f64521:   mov    %r11d,%ebp
             │       0x00007fcf64f64524:   data16 xchg %ax,%ax
             │       0x00007fcf64f64527:   call   0x00007fcf64a01600           ; ImmutableOopMap {rbp=NarrowOop }
             │                                                                 ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2@4 (line 102)
             │                                                                 ;   {runtime_call UncommonTrapBlob}
             ↘       0x00007fcf64f6452c:   mov    $0xffffffc6,%esi
                     0x00007fcf64f64531:   xchg   %ax,%ax
....................................................................................................
  90.09%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 462 
   8.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 502 
   0.71%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.37%  <...other 215 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_2, version 2, compile id 462 
   8.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_2_jmhTest::is_duplicated_2_avgt_jmhStub, version 6, compile id 502 
   1.25%              kernel  [unknown] 
   0.02%        libc-2.31.so  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  LIRGenerator::move_to_phi 
   0.04%  <...other 44 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.63%         c2, level 4
   1.25%              kernel
   0.05%           libjvm.so
   0.04%        libc-2.31.so
   0.01%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = false)

# Run progress: 33.33% complete, ETA 00:14:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.815 ±(99.9%) 0.256 ns/op
# Warmup Iteration   2: 6.871 ±(99.9%) 0.354 ns/op
# Warmup Iteration   3: 7.821 ±(99.9%) 0.027 ns/op
# Warmup Iteration   4: 6.578 ±(99.9%) 0.095 ns/op
# Warmup Iteration   5: 6.721 ±(99.9%) 0.119 ns/op
Iteration   1: 6.576 ±(99.9%) 0.001 ns/op
Iteration   2: 6.577 ±(99.9%) 0.018 ns/op
Iteration   3: 6.576 ±(99.9%) 0.039 ns/op
Iteration   4: 6.708 ±(99.9%) 0.110 ns/op
Iteration   5: 6.576 ±(99.9%) 0.029 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  6.602 ±(99.9%) 0.228 ns/op [Average]
  (min, avg, max) = (6.576, 6.602, 6.708), stdev = 0.059
  CI (99.9%): [6.375, 6.830] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 120224 total address lines.
Perf output processed (skipped 55.613 seconds):
 Column 1: cycles (150095 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 513 

              0x00007fd380f68926:   mov    0x38(%rsp),%r10
              0x00007fd380f6892b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fd380f689dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@30 (line 188)
              0x00007fd380f68933:   mov    $0x1,%ebp
              0x00007fd380f68938:   test   %r11d,%r11d
          ╭   0x00007fd380f6893b:   jne    0x00007fd380f6896c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
          │   0x00007fd380f6893d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@36 (line 189)
   2.34%  │↗  0x00007fd380f68940:   mov    0x40(%rsp),%rsi
   4.59%  ││  0x00007fd380f68945:   xchg   %ax,%ax
          ││  0x00007fd380f68947:   call   0x00007fd3809fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  53.53%  ││  0x00007fd380f6894c:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007fd380f68951:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
   9.77%  ││  0x00007fd380f68959:   mov    0x348(%r15),%r11
   4.65%  ││  0x00007fd380f68960:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@33 (line 188)
          ││  0x00007fd380f68964:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fd380f68967:   test   %r10d,%r10d
          │╰  0x00007fd380f6896a:   je     0x00007fd380f68940           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@36 (line 189)
          ↘   0x00007fd380f6896c:   movabs $0x7fd398c89d10,%r10
              0x00007fd380f68976:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub@37 (line 189)
              0x00007fd380f68979:   mov    0x30(%rsp),%r10
....................................................................................................
  74.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 465 

              # {method} {0x00007fd371074db0} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007fd380f63e20:   mov    0x8(%rsi),%r10d
              0x00007fd380f63e24:   movabs $0x800000000,%r11
              0x00007fd380f63e2e:   add    %r11,%r10
              0x00007fd380f63e31:   cmp    %r10,%rax
              0x00007fd380f63e34:   jne    0x00007fd3809fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fd380f63e3a:   xchg   %ax,%ax
              0x00007fd380f63e3c:   nopl   0x0(%rax)
            [Verified Entry Point]
   1.16%      0x00007fd380f63e40:   mov    %eax,-0x14000(%rsp)
   4.69%      0x00007fd380f63e47:   push   %rbp
              0x00007fd380f63e48:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@-1 (line 109)
   5.76%      0x00007fd380f63e4c:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   0.02%  ╭   0x00007fd380f63e50:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fd380f63e90
   0.07%  │   0x00007fd380f63e55:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.10%  │   0x00007fd380f63e60:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007fd380f63e67:   jne    0x00007fd380f63e81
   4.65%  ││  0x00007fd380f63e69:   mov    $0x1,%eax
          ││  0x00007fd380f63e6e:   add    $0x20,%rsp
          ││  0x00007fd380f63e72:   pop    %rbp
   2.32%  ││  0x00007fd380f63e73:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fd380f63e7a:   ja     0x00007fd380f63ea0
   4.71%  ││  0x00007fd380f63e80:   ret    
          │↘  0x00007fd380f63e81:   mov    $0xffffffde,%esi
          │   0x00007fd380f63e86:   mov    %r10d,%ebp
          │   0x00007fd380f63e89:   xchg   %ax,%ax
          │   0x00007fd380f63e8b:   call   0x00007fd380a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007fd380f63e90:   mov    $0xffffff45,%esi
              0x00007fd380f63e95:   mov    %r10d,(%rsp)
....................................................................................................
  24.48%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 513 
  24.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 465 
   0.18%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_AverageTime, version 2, compile id 510 
   0.28%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 513 
  24.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 465 
   0.50%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_AverageTime, version 2, compile id 510 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  [unknown] 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  event_to_env 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           libjvm.so  nmethod::print_code_comment_on 
   0.00%           libjvm.so  PhaseChaitin::Split 
   0.07%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.36%         c2, level 4
   0.50%              kernel
   0.08%           libjvm.so
   0.02%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 3 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3
# Parameters: (typePollution = true)

# Run progress: 41.67% complete, ETA 00:12:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 103.428 ±(99.9%) 196.224 ns/op
# Warmup Iteration   2: 98.842 ±(99.9%) 168.889 ns/op
# Warmup Iteration   3: 94.502 ±(99.9%) 1.887 ns/op
# Warmup Iteration   4: 102.689 ±(99.9%) 182.869 ns/op
# Warmup Iteration   5: 100.287 ±(99.9%) 1.087 ns/op
Iteration   1: 100.305 ±(99.9%) 0.937 ns/op
Iteration   2: 102.643 ±(99.9%) 178.904 ns/op
Iteration   3: 98.824 ±(99.9%) 168.390 ns/op
Iteration   4: 98.816 ±(99.9%) 167.250 ns/op
Iteration   5: 102.471 ±(99.9%) 174.744 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3":
  100.612 ±(99.9%) 7.229 ns/op [Average]
  (min, avg, max) = (98.816, 100.612, 102.643), stdev = 1.877
  CI (99.9%): [93.383, 107.841] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_3:·asm":
PrintAssembly processed: 118186 total address lines.
Perf output processed (skipped 55.704 seconds):
 Column 1: cycles (150113 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 469 

                     # {method} {0x00007f2fa5874db0} &apos;is_duplicated_3&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007f2fc4f64d20:   mov    0x8(%rsi),%r10d
                     0x00007f2fc4f64d24:   movabs $0x800000000,%r11
                     0x00007f2fc4f64d2e:   add    %r11,%r10
                     0x00007f2fc4f64d31:   cmp    %r10,%rax
                     0x00007f2fc4f64d34:   jne    0x00007f2fc49fbd80           ;   {runtime_call ic_miss_stub}
                     0x00007f2fc4f64d3a:   xchg   %ax,%ax
                     0x00007f2fc4f64d3c:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.39%             0x00007f2fc4f64d40:   mov    %eax,-0x14000(%rsp)
   0.89%             0x00007f2fc4f64d47:   push   %rbp
                     0x00007f2fc4f64d48:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@-1 (line 109)
   0.06%             0x00007f2fc4f64d4c:   mov    0x10(%rsi),%r11d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@1 (line 109)
   0.33%             0x00007f2fc4f64d50:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f2fc4f64e38
   0.33%             0x00007f2fc4f64d55:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                     0x00007f2fc4f64d5f:   movabs $0x800000000,%rsi
                     0x00007f2fc4f64d69:   add    %r10,%rsi
   0.40%             0x00007f2fc4f64d6c:   mov    0x20(%rsi),%r10
   1.85%             0x00007f2fc4f64d70:   cmp    %rax,%r10
          ╭          0x00007f2fc4f64d73:   jne    0x00007f2fc4f64dd2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.26%  │     ↗    0x00007f2fc4f64d79:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │     │    0x00007f2fc4f64d83:   cmp    %rax,%r10
          │╭    │    0x00007f2fc4f64d86:   jne    0x00007f2fc4f64dfc
          ││    │ ↗  0x00007f2fc4f64d8c:   lea    (%r12,%r11,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.20%  ││    │ │  0x00007f2fc4f64d90:   mov    0x8(%rbp),%r11d
   1.22%  ││    │ │  0x00007f2fc4f64d94:   nopl   0x0(%rax,%rax,1)
          ││    │ │  0x00007f2fc4f64d9c:   data16 data16 xchg %ax,%ax
          ││    │ │  0x00007f2fc4f64da0:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭   │ │  0x00007f2fc4f64da7:   je     0x00007f2fc4f64dbd
   0.38%  │││   │ │  0x00007f2fc4f64da9:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││╭  │ │  0x00007f2fc4f64db0:   jne    0x00007f2fc4f64e2c           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
   0.39%  ││││  │ │  0x00007f2fc4f64db6:   mov    $0x1,%eax
          ││││╭ │ │  0x00007f2fc4f64dbb:   jmp    0x00007f2fc4f64dbf
          ││↘││ │ │  0x00007f2fc4f64dbd:   xor    %eax,%eax                    ;*synchronization entry
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
          ││ │↘ │ │  0x00007f2fc4f64dbf:   add    $0x20,%rsp
          ││ │  │ │  0x00007f2fc4f64dc3:   pop    %rbp
   1.40%  ││ │  │ │  0x00007f2fc4f64dc4:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││ │  │ │  0x00007f2fc4f64dcb:   ja     0x00007f2fc4f64e48
   0.76%  ││ │  │ │  0x00007f2fc4f64dd1:   ret    
   0.17%  ↘│ │  │ │  0x00007f2fc4f64dd2:   mov    0x28(%rsi),%rdi
  31.06%   │ │  │ │  0x00007f2fc4f64dd6:   mov    (%rdi),%ecx
   1.04%   │ │  │ │  0x00007f2fc4f64dd8:   add    $0x8,%rdi
           │ │  │ │  0x00007f2fc4f64ddc:   test   %rax,%rax
           │ │  │ │  0x00007f2fc4f64ddf:   repnz scas %es:(%rdi),%rax
   7.30%   │ │ ╭│ │  0x00007f2fc4f64de2:   jne    0x00007f2fc4f64dec
   1.24%   │ │ ││ │  0x00007f2fc4f64de8:   mov    %rax,0x20(%rsi)
   0.83%   │ │ ↘╰ │  0x00007f2fc4f64dec:   je     0x00007f2fc4f64d79
           │ │    │  0x00007f2fc4f64dee:   mov    $0xffffffde,%esi
           │ │    │  0x00007f2fc4f64df3:   mov    %r11d,%ebp
           │ │    │  0x00007f2fc4f64df6:   nop
           │ │    │  0x00007f2fc4f64df7:   call   0x00007f2fc4a01600           ; ImmutableOopMap {rbp=NarrowOop }
           │ │    │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
           │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
   0.14%   ↘ │    │  0x00007f2fc4f64dfc:   mov    0x28(%rsi),%rdi
  31.63%     │    │  0x00007f2fc4f64e00:   mov    (%rdi),%ecx
   1.02%     │    │  0x00007f2fc4f64e02:   add    $0x8,%rdi
             │    │  0x00007f2fc4f64e06:   test   %rax,%rax
   0.77%     │    │  0x00007f2fc4f64e09:   repnz scas %es:(%rdi),%rax
   7.58%     │   ╭│  0x00007f2fc4f64e0c:   jne    0x00007f2fc4f64e16
   1.27%     │   ││  0x00007f2fc4f64e12:   mov    %rax,0x20(%rsi)
   0.88%     │   ↘╰  0x00007f2fc4f64e16:   je     0x00007f2fc4f64d8c
             │       0x00007f2fc4f64e1c:   mov    $0xffffffde,%esi
             │       0x00007f2fc4f64e21:   mov    %r11d,%ebp
             │       0x00007f2fc4f64e24:   data16 xchg %ax,%ax
             │       0x00007f2fc4f64e27:   call   0x00007f2fc4a01600           ; ImmutableOopMap {rbp=NarrowOop }
             │                                                                 ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3@4 (line 109)
             │                                                                 ;   {runtime_call UncommonTrapBlob}
             ↘       0x00007f2fc4f64e2c:   mov    $0xffffffc6,%esi
                     0x00007f2fc4f64e31:   xchg   %ax,%ax
....................................................................................................
  93.78%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 469 
   5.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 507 
   0.14%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_AverageTime, version 2, compile id 518 
   0.00%              kernel  [unknown] 
   0.29%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_3, version 2, compile id 469 
   5.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_avgt_jmhStub, version 6, compile id 507 
   0.51%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  [unknown] 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_3_jmhTest::is_duplicated_3_AverageTime, version 2, compile id 518 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  stringStream::write 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%      hsdis-amd64.so  decode_instructions_virtual 
   0.07%  <...other 100 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.36%         c2, level 4
   0.51%              kernel
   0.07%           libjvm.so
   0.02%        libc-2.31.so
   0.01%                    
   0.01%         c1, level 3
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = false)

# Run progress: 50.00% complete, ETA 00:10:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.783 ±(99.9%) 0.016 ns/op
# Warmup Iteration   2: 6.891 ±(99.9%) 0.259 ns/op
# Warmup Iteration   3: 7.780 ±(99.9%) 0.275 ns/op
# Warmup Iteration   4: 6.583 ±(99.9%) 0.058 ns/op
# Warmup Iteration   5: 6.577 ±(99.9%) 0.006 ns/op
Iteration   1: 6.576 ±(99.9%) 0.011 ns/op
Iteration   2: 6.581 ±(99.9%) 0.053 ns/op
Iteration   3: 6.576 ±(99.9%) 0.008 ns/op
Iteration   4: 6.576 ±(99.9%) 0.009 ns/op
Iteration   5: 6.580 ±(99.9%) 0.068 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  6.578 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (6.576, 6.578, 6.581), stdev = 0.002
  CI (99.9%): [6.569, 6.587] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 123951 total address lines.
Perf output processed (skipped 55.831 seconds):
 Column 1: cycles (199639 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 512 

              0x00007fc934f6a6a6:   mov    0x38(%rsp),%r10
              0x00007fc934f6a6ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fc934f6a75c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@30 (line 188)
              0x00007fc934f6a6b3:   mov    $0x1,%ebp
              0x00007fc934f6a6b8:   test   %r11d,%r11d
          ╭   0x00007fc934f6a6bb:   jne    0x00007fc934f6a6ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
          │   0x00007fc934f6a6bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@36 (line 189)
   0.02%  │↗  0x00007fc934f6a6c0:   mov    0x40(%rsp),%rsi
   5.79%  ││  0x00007fc934f6a6c5:   xchg   %ax,%ax
   0.00%  ││  0x00007fc934f6a6c7:   call   0x00007fc9349fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_4 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  64.23%  ││  0x00007fc934f6a6cc:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007fc934f6a6d1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
   0.09%  ││  0x00007fc934f6a6d9:   mov    0x348(%r15),%r11
   5.85%  ││  0x00007fc934f6a6e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@33 (line 188)
          ││  0x00007fc934f6a6e4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fc934f6a6e7:   test   %r10d,%r10d
          │╰  0x00007fc934f6a6ea:   je     0x00007fc934f6a6c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@36 (line 189)
          ↘   0x00007fc934f6a6ec:   movabs $0x7fc949139d10,%r10
              0x00007fc934f6a6f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub@37 (line 189)
              0x00007fc934f6a6f9:   mov    0x30(%rsp),%r10
....................................................................................................
  75.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 466 

              # {method} {0x00007fc8fb874e88} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007fc934f65820:   mov    0x8(%rsi),%r10d
              0x00007fc934f65824:   movabs $0x800000000,%r11
              0x00007fc934f6582e:   add    %r11,%r10
              0x00007fc934f65831:   cmp    %r10,%rax
              0x00007fc934f65834:   jne    0x00007fc9349fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fc934f6583a:   xchg   %ax,%ax
              0x00007fc934f6583c:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.03%      0x00007fc934f65840:   mov    %eax,-0x14000(%rsp)
   5.85%      0x00007fc934f65847:   push   %rbp
              0x00007fc934f65848:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@-1 (line 116)
   5.88%      0x00007fc934f6584c:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   0.02%  ╭   0x00007fc934f65850:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fc934f65890
   0.11%  │   0x00007fc934f65855:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc934f65860:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007fc934f65867:   jne    0x00007fc934f65881
   5.80%  ││  0x00007fc934f65869:   mov    $0x1,%eax
          ││  0x00007fc934f6586e:   add    $0x20,%rsp
          ││  0x00007fc934f65872:   pop    %rbp
          ││  0x00007fc934f65873:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007fc934f6587a:   ja     0x00007fc934f658a0
   5.81%  ││  0x00007fc934f65880:   ret    
          │↘  0x00007fc934f65881:   mov    $0xffffffde,%esi
          │   0x00007fc934f65886:   mov    %r10d,%ebp
          │   0x00007fc934f65889:   xchg   %ax,%ax
          │   0x00007fc934f6588b:   call   0x00007fc934a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007fc934f65890:   mov    $0xffffff45,%esi
              0x00007fc934f65895:   mov    %r10d,(%rsp)
....................................................................................................
  23.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 512 
  23.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 466 
   0.07%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.29%  <...other 347 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 5, compile id 512 
  23.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 466 
   0.43%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  [unknown] 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_AverageTime, version 5, compile id 529 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%        libc-2.31.so  _int_malloc 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  stringStream::write 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.49%         c2, level 4
   0.43%              kernel
   0.04%           libjvm.so
   0.03%        libc-2.31.so
   0.01%                    
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%     perf-112904.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 4 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4
# Parameters: (typePollution = true)

# Run progress: 58.33% complete, ETA 00:09:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 132.922 ±(99.9%) 19.760 ns/op
# Warmup Iteration   2: 123.672 ±(99.9%) 32.402 ns/op
# Warmup Iteration   3: 128.231 ±(99.9%) 21.228 ns/op
# Warmup Iteration   4: 129.304 ±(99.9%) 20.749 ns/op
# Warmup Iteration   5: 129.404 ±(99.9%) 21.243 ns/op
Iteration   1: 124.404 ±(99.9%) 20.787 ns/op
Iteration   2: 127.481 ±(99.9%) 28.068 ns/op
Iteration   3: 132.329 ±(99.9%) 20.959 ns/op
Iteration   4: 132.322 ±(99.9%) 20.384 ns/op
Iteration   5: 129.398 ±(99.9%) 20.037 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4":
  129.187 ±(99.9%) 12.992 ns/op [Average]
  (min, avg, max) = (124.404, 129.187, 132.329), stdev = 3.374
  CI (99.9%): [116.195, 142.179] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_4:·asm":
PrintAssembly processed: 122733 total address lines.
Perf output processed (skipped 55.779 seconds):
 Column 1: cycles (199763 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 499 

                     # {method} {0x00007f6797c74e88} &apos;is_duplicated_4&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007f67d0f667a0:   mov    0x8(%rsi),%r10d
                     0x00007f67d0f667a4:   movabs $0x800000000,%r11
                     0x00007f67d0f667ae:   add    %r11,%r10
                     0x00007f67d0f667b1:   cmp    %r10,%rax
                     0x00007f67d0f667b4:   jne    0x00007f67d09fbd80           ;   {runtime_call ic_miss_stub}
                     0x00007f67d0f667ba:   xchg   %ax,%ax
                     0x00007f67d0f667bc:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.30%             0x00007f67d0f667c0:   mov    %eax,-0x14000(%rsp)
   0.80%             0x00007f67d0f667c7:   push   %rbp
                     0x00007f67d0f667c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@-1 (line 116)
   0.03%             0x00007f67d0f667cc:   mov    0x10(%rsi),%r11d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@1 (line 116)
   0.26%             0x00007f67d0f667d0:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f67d0f668b8
   0.10%             0x00007f67d0f667d5:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                     0x00007f67d0f667df:   movabs $0x800000000,%rsi
                     0x00007f67d0f667e9:   add    %r10,%rsi
   0.29%             0x00007f67d0f667ec:   mov    0x20(%rsi),%r10
   1.46%             0x00007f67d0f667f0:   cmp    %rax,%r10
          ╭          0x00007f67d0f667f3:   jne    0x00007f67d0f66852           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.14%  │     ↗    0x00007f67d0f667f9:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │     │    0x00007f67d0f66803:   cmp    %rax,%r10
          │╭    │    0x00007f67d0f66806:   jne    0x00007f67d0f6687c
          ││    │ ↗  0x00007f67d0f6680c:   lea    (%r12,%r11,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.15%  ││    │ │  0x00007f67d0f66810:   mov    0x8(%rbp),%r11d
   0.96%  ││    │ │  0x00007f67d0f66814:   nopl   0x0(%rax,%rax,1)
          ││    │ │  0x00007f67d0f6681c:   data16 data16 xchg %ax,%ax
          ││    │ │  0x00007f67d0f66820:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭   │ │  0x00007f67d0f66827:   je     0x00007f67d0f6683d
   0.32%  │││   │ │  0x00007f67d0f66829:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││╭  │ │  0x00007f67d0f66830:   jne    0x00007f67d0f668ac           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
   0.31%  ││││  │ │  0x00007f67d0f66836:   mov    $0x1,%eax
          ││││╭ │ │  0x00007f67d0f6683b:   jmp    0x00007f67d0f6683f
          ││↘││ │ │  0x00007f67d0f6683d:   xor    %eax,%eax                    ;*synchronization entry
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
          ││ │↘ │ │  0x00007f67d0f6683f:   add    $0x20,%rsp
          ││ │  │ │  0x00007f67d0f66843:   pop    %rbp
   1.04%  ││ │  │ │  0x00007f67d0f66844:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││ │  │ │  0x00007f67d0f6684b:   ja     0x00007f67d0f668c8
   0.55%  ││ │  │ │  0x00007f67d0f66851:   ret    
   0.13%  ↘│ │  │ │  0x00007f67d0f66852:   mov    0x28(%rsi),%rdi
  36.07%   │ │  │ │  0x00007f67d0f66856:   mov    (%rdi),%ecx
   0.78%   │ │  │ │  0x00007f67d0f66858:   add    $0x8,%rdi
           │ │  │ │  0x00007f67d0f6685c:   test   %rax,%rax
           │ │  │ │  0x00007f67d0f6685f:   repnz scas %es:(%rdi),%rax
   5.64%   │ │ ╭│ │  0x00007f67d0f66862:   jne    0x00007f67d0f6686c
   1.07%   │ │ ││ │  0x00007f67d0f66868:   mov    %rax,0x20(%rsi)
   0.63%   │ │ ↘╰ │  0x00007f67d0f6686c:   je     0x00007f67d0f667f9
           │ │    │  0x00007f67d0f6686e:   mov    $0xffffffde,%esi
           │ │    │  0x00007f67d0f66873:   mov    %r11d,%ebp
           │ │    │  0x00007f67d0f66876:   nop
           │ │    │  0x00007f67d0f66877:   call   0x00007f67d0a01600           ; ImmutableOopMap {rbp=NarrowOop }
           │ │    │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
           │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
   0.14%   ↘ │    │  0x00007f67d0f6687c:   mov    0x28(%rsi),%rdi
  35.46%     │    │  0x00007f67d0f66880:   mov    (%rdi),%ecx
   0.79%     │    │  0x00007f67d0f66882:   add    $0x8,%rdi
             │    │  0x00007f67d0f66886:   test   %rax,%rax
   0.59%     │    │  0x00007f67d0f66889:   repnz scas %es:(%rdi),%rax
   5.45%     │   ╭│  0x00007f67d0f6688c:   jne    0x00007f67d0f66896
   1.01%     │   ││  0x00007f67d0f66892:   mov    %rax,0x20(%rsi)
   0.66%     │   ↘╰  0x00007f67d0f66896:   je     0x00007f67d0f6680c
             │       0x00007f67d0f6689c:   mov    $0xffffffde,%esi
             │       0x00007f67d0f668a1:   mov    %r11d,%ebp
             │       0x00007f67d0f668a4:   data16 xchg %ax,%ax
             │       0x00007f67d0f668a7:   call   0x00007f67d0a01600           ; ImmutableOopMap {rbp=NarrowOop }
             │                                                                 ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4@4 (line 116)
             │                                                                 ;   {runtime_call UncommonTrapBlob}
             ↘       0x00007f67d0f668ac:   mov    $0xffffffc6,%esi
                     0x00007f67d0f668b1:   xchg   %ax,%ax
....................................................................................................
  95.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 499 
   4.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 544 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.34%  <...other 390 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_4, version 2, compile id 499 
   4.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_4_jmhTest::is_duplicated_4_avgt_jmhStub, version 6, compile id 544 
   0.45%              kernel  [unknown] 
   0.01%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%                      <unknown> 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  outputStream::update_position 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%         interpreter  goto  167 goto  
   0.00%           libjvm.so  outputStream::print 
   0.05%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.44%         c2, level 4
   0.45%              kernel
   0.05%           libjvm.so
   0.03%        libc-2.31.so
   0.01%         interpreter
   0.01%                    
   0.01%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = false)

# Run progress: 66.67% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.846 ±(99.9%) 0.041 ns/op
# Warmup Iteration   2: 6.886 ±(99.9%) 0.039 ns/op
# Warmup Iteration   3: 7.800 ±(99.9%) 0.031 ns/op
# Warmup Iteration   4: 6.586 ±(99.9%) 0.030 ns/op
# Warmup Iteration   5: 6.591 ±(99.9%) 0.050 ns/op
Iteration   1: 6.586 ±(99.9%) 0.026 ns/op
Iteration   2: 6.589 ±(99.9%) 0.014 ns/op
Iteration   3: 6.590 ±(99.9%) 0.066 ns/op
Iteration   4: 6.594 ±(99.9%) 0.082 ns/op
Iteration   5: 6.594 ±(99.9%) 0.061 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  6.591 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (6.586, 6.591, 6.594), stdev = 0.003
  CI (99.9%): [6.577, 6.604] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 125750 total address lines.
Perf output processed (skipped 55.750 seconds):
 Column 1: cycles (250583 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 526 

              0x00007f7e68f687a6:   mov    0x38(%rsp),%r10
              0x00007f7e68f687ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f7e68f6885c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@30 (line 188)
              0x00007f7e68f687b3:   mov    $0x1,%ebp
              0x00007f7e68f687b8:   test   %r11d,%r11d
          ╭   0x00007f7e68f687bb:   jne    0x00007f7e68f687ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
          │   0x00007f7e68f687bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@36 (line 189)
   0.07%  │↗  0x00007f7e68f687c0:   mov    0x40(%rsp),%rsi
   5.82%  ││  0x00007f7e68f687c5:   xchg   %ax,%ax
          ││  0x00007f7e68f687c7:   call   0x00007f7e689fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_5 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  63.47%  ││  0x00007f7e68f687cc:   mov    0x38(%rsp),%r10
          ││  0x00007f7e68f687d1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
   0.29%  ││  0x00007f7e68f687d9:   mov    0x348(%r15),%r11
   5.70%  ││  0x00007f7e68f687e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@33 (line 188)
          ││  0x00007f7e68f687e4:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f7e68f687e7:   test   %r10d,%r10d
          │╰  0x00007f7e68f687ea:   je     0x00007f7e68f687c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@36 (line 189)
          ↘   0x00007f7e68f687ec:   movabs $0x7f7e7e781d10,%r10
              0x00007f7e68f687f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@37 (line 189)
              0x00007f7e68f687f9:   mov    0x30(%rsp),%r10
              0x00007f7e68f687fe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@40 (line 189)
              0x00007f7e68f68802:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub@46 (line 190)
....................................................................................................
  75.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 472 

              # {method} {0x00007f7e49074f60} &apos;is_duplicated_5&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f7e68f62da0:   mov    0x8(%rsi),%r10d
              0x00007f7e68f62da4:   movabs $0x800000000,%r11
              0x00007f7e68f62dae:   add    %r11,%r10
              0x00007f7e68f62db1:   cmp    %r10,%rax
              0x00007f7e68f62db4:   jne    0x00007f7e689fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f7e68f62dba:   xchg   %ax,%ax
              0x00007f7e68f62dbc:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.07%      0x00007f7e68f62dc0:   mov    %eax,-0x14000(%rsp)
   5.83%      0x00007f7e68f62dc7:   push   %rbp
              0x00007f7e68f62dc8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@-1 (line 123)
   5.84%      0x00007f7e68f62dcc:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@1 (line 123)
   0.07%  ╭   0x00007f7e68f62dd0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f7e68f62e10
   0.31%  │   0x00007f7e68f62dd5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7e68f62de0:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007f7e68f62de7:   jne    0x00007f7e68f62e01
   5.73%  ││  0x00007f7e68f62de9:   mov    $0x1,%eax
          ││  0x00007f7e68f62dee:   add    $0x20,%rsp
          ││  0x00007f7e68f62df2:   pop    %rbp
          ││  0x00007f7e68f62df3:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f7e68f62dfa:   ja     0x00007f7e68f62e20
   5.92%  ││  0x00007f7e68f62e00:   ret    
          │↘  0x00007f7e68f62e01:   mov    $0xffffffde,%esi
          │   0x00007f7e68f62e06:   mov    %r10d,%ebp
          │   0x00007f7e68f62e09:   xchg   %ax,%ax
          │   0x00007f7e68f62e0b:   call   0x00007f7e68a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007f7e68f62e10:   mov    $0xffffff45,%esi
              0x00007f7e68f62e15:   mov    %r10d,(%rsp)
....................................................................................................
  23.78%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 526 
  23.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 472 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.59%  <...other 702 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 526 
  23.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 472 
   0.63%              kernel  [unknown] 
   0.02%        libc-2.31.so  [unknown] 
   0.02%                      <unknown> 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 3, compile id 555 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.11%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.12%         c2, level 4
   0.63%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.02%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 5 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5
# Parameters: (typePollution = true)

# Run progress: 75.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 177.868 ±(99.9%) 148.045 ns/op
# Warmup Iteration   2: 168.055 ±(99.9%) 94.440 ns/op
# Warmup Iteration   3: 170.527 ±(99.9%) 133.181 ns/op
# Warmup Iteration   4: 169.446 ±(99.9%) 128.875 ns/op
# Warmup Iteration   5: 169.500 ±(99.9%) 125.063 ns/op
Iteration   1: 171.729 ±(99.9%) 133.969 ns/op
Iteration   2: 170.284 ±(99.9%) 133.324 ns/op
Iteration   3: 169.432 ±(99.9%) 133.510 ns/op
Iteration   4: 168.975 ±(99.9%) 102.423 ns/op
Iteration   5: 169.703 ±(99.9%) 125.768 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5":
  170.025 ±(99.9%) 4.097 ns/op [Average]
  (min, avg, max) = (168.975, 170.025, 171.729), stdev = 1.064
  CI (99.9%): [165.927, 174.122] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_5:·asm":
PrintAssembly processed: 122285 total address lines.
Perf output processed (skipped 55.670 seconds):
 Column 1: cycles (249844 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 468 

               # {method} {0x00007fe591874f60} &apos;is_duplicated_5&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
               #           [sp+0x30]  (sp of caller)
               0x00007fe5b0f63420:   mov    0x8(%rsi),%r10d
               0x00007fe5b0f63424:   movabs $0x800000000,%r11
               0x00007fe5b0f6342e:   add    %r11,%r10
               0x00007fe5b0f63431:   cmp    %r10,%rax
               0x00007fe5b0f63434:   jne    0x00007fe5b09fbd80           ;   {runtime_call ic_miss_stub}
               0x00007fe5b0f6343a:   xchg   %ax,%ax
               0x00007fe5b0f6343c:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.23%       0x00007fe5b0f63440:   mov    %eax,-0x14000(%rsp)
   0.69%       0x00007fe5b0f63447:   push   %rbp
               0x00007fe5b0f63448:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@-1 (line 123)
   0.01%       0x00007fe5b0f6344c:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@1 (line 123)
   0.23%       0x00007fe5b0f63450:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fe5b0f635a4
   0.28%       0x00007fe5b0f63455:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
               0x00007fe5b0f6345f:   movabs $0x800000000,%rsi
               0x00007fe5b0f63469:   add    %r8,%rsi
   0.23%       0x00007fe5b0f6346c:   mov    0x20(%rsi),%r11
   1.23%       0x00007fe5b0f63470:   cmp    %rax,%r11
          ╭    0x00007fe5b0f63473:   jne    0x00007fe5b0f634b3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.13%  │ ↗  0x00007fe5b0f63475:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │ │  0x00007fe5b0f6347f:   nop
          │ │  0x00007fe5b0f63480:   cmp    %rax,%r11
          │ │  0x00007fe5b0f63483:   jne    0x00007fe5b0f634fc
   0.12%  │ │  0x00007fe5b0f63489:   lea    (%r12,%r10,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │ │  0x00007fe5b0f6348d:   mov    0x8(%rbp),%r11d
   0.70%  │ │  0x00007fe5b0f63491:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          │ │  0x00007fe5b0f63498:   jne    0x00007fe5b0f6352c           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │ │  0x00007fe5b0f6349e:   xor    %eax,%eax                    ;*synchronization entry
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │ │  0x00007fe5b0f634a0:   add    $0x20,%rsp
   0.48%  │ │  0x00007fe5b0f634a4:   pop    %rbp
   0.37%  │ │  0x00007fe5b0f634a5:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │ │  0x00007fe5b0f634ac:   ja     0x00007fe5b0f635b4
   0.45%  │ │  0x00007fe5b0f634b2:   ret    
   0.12%  ↘ │  0x00007fe5b0f634b3:   mov    0x28(%rsi),%rdi
  39.62%    │  0x00007fe5b0f634b7:   mov    (%rdi),%ecx
   0.64%    │  0x00007fe5b0f634b9:   add    $0x8,%rdi
            │  0x00007fe5b0f634bd:   test   %rax,%rax
            │  0x00007fe5b0f634c0:   repnz scas %es:(%rdi),%rax
   4.36%   ╭│  0x00007fe5b0f634c3:   jne    0x00007fe5b0f634cd
   0.79%   ││  0x00007fe5b0f634c9:   mov    %rax,0x20(%rsi)
   0.50%   ↘╰  0x00007fe5b0f634cd:   je     0x00007fe5b0f63475
               0x00007fe5b0f634cf:   cmpb   $0x0,0x38(%r15)
               0x00007fe5b0f634d4:   jne    0x00007fe5b0f63545
               0x00007fe5b0f634da:   movabs $0x7feb00800,%r10            ;   {oop(a &apos;java/lang/ClassCastException&apos;{0x00000007feb00800})}
               0x00007fe5b0f634e4:   mov    %r12d,0x14(%r10)             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
               0x00007fe5b0f634e8:   movabs $0x7feb00800,%rsi            ;   {oop(a &apos;java/lang/ClassCastException&apos;{0x00000007feb00800})}
               0x00007fe5b0f634f2:   add    $0x20,%rsp
               0x00007fe5b0f634f6:   pop    %rbp
               0x00007fe5b0f634f7:   jmp    0x00007fe5b0aafc00           ;   {runtime_call _rethrow_Java}
....................................................................................................
  51.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 468 

               0x00007fe5b0f634cf:   cmpb   $0x0,0x38(%r15)
          ╭    0x00007fe5b0f634d4:   jne    0x00007fe5b0f63545
          │ ↗  0x00007fe5b0f634da:   movabs $0x7feb00800,%r10            ;   {oop(a &apos;java/lang/ClassCastException&apos;{0x00000007feb00800})}
          │ │  0x00007fe5b0f634e4:   mov    %r12d,0x14(%r10)             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │ │  0x00007fe5b0f634e8:   movabs $0x7feb00800,%rsi            ;   {oop(a &apos;java/lang/ClassCastException&apos;{0x00000007feb00800})}
          │ │  0x00007fe5b0f634f2:   add    $0x20,%rsp
          │ │  0x00007fe5b0f634f6:   pop    %rbp
          │ │  0x00007fe5b0f634f7:   jmp    0x00007fe5b0aafc00           ;   {runtime_call _rethrow_Java}
   0.11%  │ │  0x00007fe5b0f634fc:   mov    0x28(%rsi),%rdi
  37.50%  │ │  0x00007fe5b0f63500:   mov    (%rdi),%ecx
   0.62%  │ │  0x00007fe5b0f63502:   add    $0x8,%rdi
          │ │  0x00007fe5b0f63506:   test   %rax,%rax
   0.47%  │ │  0x00007fe5b0f63509:   repnz scas %es:(%rdi),%rax
   4.27%  │╭│  0x00007fe5b0f6350c:   jne    0x00007fe5b0f63516
   0.79%  │││  0x00007fe5b0f63512:   mov    %rax,0x20(%rsi)
   0.53%  │↘│  0x00007fe5b0f63516:   je     0x00007fe5b0f63489
          │ │  0x00007fe5b0f6351c:   mov    $0xffffffde,%esi
          │ │  0x00007fe5b0f63521:   mov    %r10d,%ebp
          │ │  0x00007fe5b0f63524:   data16 xchg %ax,%ax
          │ │  0x00007fe5b0f63527:   call   0x00007fe5b0a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │ │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
          │ │                                                            ;   {runtime_call UncommonTrapBlob}
   0.24%  │ │  0x00007fe5b0f6352c:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │ │  0x00007fe5b0f63533:   jne    0x00007fe5b0f6359a           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5@4 (line 123)
   0.24%  │ │  0x00007fe5b0f63539:   mov    $0x1,%eax
          │ │  0x00007fe5b0f6353e:   xchg   %ax,%ax
          │ │  0x00007fe5b0f63540:   jmp    0x00007fe5b0f634a0
          ↘ │  0x00007fe5b0f63545:   movabs $0x7feb00800,%r10            ;   {oop(a &apos;java/lang/ClassCastException&apos;{0x00000007feb00800})}
            │  0x00007fe5b0f6354f:   mov    0x14(%r10),%r10d
            │  0x00007fe5b0f63553:   test   %r10d,%r10d
            ╰  0x00007fe5b0f63556:   je     0x00007fe5b0f634da
               0x00007fe5b0f6355c:   mov    0x20(%r15),%r11
               0x00007fe5b0f63560:   mov    %r10,%rdi
....................................................................................................
  44.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 468 
  44.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 468 
   3.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 519 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.48%  <...other 632 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_5, version 2, compile id 468 
   3.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_avgt_jmhStub, version 6, compile id 519 
   0.52%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_5_jmhTest::is_duplicated_5_AverageTime, version 2, compile id 540 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%           libjvm.so  PhaseChaitin::Split 
   0.00%           libjvm.so  fileStream::write 
   0.09%  <...other 180 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.29%         c2, level 4
   0.52%              kernel
   0.09%           libjvm.so
   0.05%        libc-2.31.so
   0.01%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = false)

# Run progress: 83.33% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.806 ±(99.9%) 0.047 ns/op
# Warmup Iteration   2: 6.869 ±(99.9%) 0.117 ns/op
# Warmup Iteration   3: 8.080 ±(99.9%) 0.070 ns/op
# Warmup Iteration   4: 6.659 ±(99.9%) 0.142 ns/op
# Warmup Iteration   5: 6.635 ±(99.9%) 0.137 ns/op
Iteration   1: 6.605 ±(99.9%) 0.049 ns/op
Iteration   2: 6.608 ±(99.9%) 0.052 ns/op
Iteration   3: 6.646 ±(99.9%) 0.147 ns/op
Iteration   4: 6.639 ±(99.9%) 0.162 ns/op
Iteration   5: 6.602 ±(99.9%) 0.054 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  6.620 ±(99.9%) 0.080 ns/op [Average]
  (min, avg, max) = (6.602, 6.620, 6.646), stdev = 0.021
  CI (99.9%): [6.540, 6.700] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 126763 total address lines.
Perf output processed (skipped 55.859 seconds):
 Column 1: cycles (298256 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 5, compile id 521 

              0x00007f78d4f69c26:   mov    0x38(%rsp),%r10
              0x00007f78d4f69c2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f78d4f69cdc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@30 (line 188)
              0x00007f78d4f69c33:   mov    $0x1,%ebp
              0x00007f78d4f69c38:   test   %r11d,%r11d
          ╭   0x00007f78d4f69c3b:   jne    0x00007f78d4f69c6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
          │   0x00007f78d4f69c3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@36 (line 189)
   0.00%  │↗  0x00007f78d4f69c40:   mov    0x40(%rsp),%rsi
   5.82%  ││  0x00007f78d4f69c45:   xchg   %ax,%ax
          ││  0x00007f78d4f69c47:   call   0x00007f78d49fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual is_duplicated_6 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
  64.35%  ││  0x00007f78d4f69c4c:   mov    0x38(%rsp),%r10
          ││  0x00007f78d4f69c51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
   0.00%  ││  0x00007f78d4f69c59:   mov    0x348(%r15),%r11
   5.91%  ││  0x00007f78d4f69c60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@33 (line 188)
          ││  0x00007f78d4f69c64:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f78d4f69c67:   test   %r10d,%r10d
          │╰  0x00007f78d4f69c6a:   je     0x00007f78d4f69c40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@36 (line 189)
          ↘   0x00007f78d4f69c6c:   movabs $0x7f78e95dbd10,%r10
              0x00007f78d4f69c76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@37 (line 189)
              0x00007f78d4f69c79:   mov    0x30(%rsp),%r10
              0x00007f78d4f69c7e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@40 (line 189)
              0x00007f78d4f69c82:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub@46 (line 190)
....................................................................................................
  76.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 473 

              # {method} {0x00007f789bc75038} &apos;is_duplicated_6&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f78d4f641a0:   mov    0x8(%rsi),%r10d
              0x00007f78d4f641a4:   movabs $0x800000000,%r11
              0x00007f78d4f641ae:   add    %r11,%r10
              0x00007f78d4f641b1:   cmp    %r10,%rax
              0x00007f78d4f641b4:   jne    0x00007f78d49fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f78d4f641ba:   xchg   %ax,%ax
              0x00007f78d4f641bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.00%      0x00007f78d4f641c0:   mov    %eax,-0x14000(%rsp)
   5.89%      0x00007f78d4f641c7:   push   %rbp
   0.00%      0x00007f78d4f641c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@-1 (line 130)
   5.85%      0x00007f78d4f641cc:   mov    0x10(%rsi),%r10d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@1 (line 130)
   0.00%  ╭   0x00007f78d4f641d0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f78d4f64210
   0.01%  │   0x00007f78d4f641d5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f78d4f641e0:   cmp    $0xc26dd8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │╭  0x00007f78d4f641e7:   jne    0x00007f78d4f64201
   5.83%  ││  0x00007f78d4f641e9:   mov    $0x1,%eax
          ││  0x00007f78d4f641ee:   add    $0x20,%rsp
          ││  0x00007f78d4f641f2:   pop    %rbp
   0.00%  ││  0x00007f78d4f641f3:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f78d4f641fa:   ja     0x00007f78d4f64220
   5.81%  ││  0x00007f78d4f64200:   ret    
          │↘  0x00007f78d4f64201:   mov    $0xffffffde,%esi
          │   0x00007f78d4f64206:   mov    %r10d,%ebp
          │   0x00007f78d4f64209:   xchg   %ax,%ax
          │   0x00007f78d4f6420b:   call   0x00007f78d4a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007f78d4f64210:   mov    $0xffffff45,%esi
              0x00007f78d4f64215:   mov    %r10d,(%rsp)
....................................................................................................
  23.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 5, compile id 521 
  23.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 473 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 538 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.34%  <...other 499 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 5, compile id 521 
  23.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 473 
   0.42%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 5, compile id 538 
   0.01%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  handle_amd 
   0.04%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.48%         c2, level 4
   0.42%              kernel
   0.04%        libc-2.31.so
   0.04%           libjvm.so
   0.01%                    
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%  libpthread-2.31.so
   0.00%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 6 threads, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6
# Parameters: (typePollution = true)

# Run progress: 91.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 219.354 ±(99.9%) 166.487 ns/op
# Warmup Iteration   2: 217.858 ±(99.9%) 164.599 ns/op
# Warmup Iteration   3: 218.475 ±(99.9%) 164.395 ns/op
# Warmup Iteration   4: 218.274 ±(99.9%) 165.960 ns/op
# Warmup Iteration   5: 217.103 ±(99.9%) 162.358 ns/op
Iteration   1: 216.999 ±(99.9%) 162.220 ns/op
Iteration   2: 217.344 ±(99.9%) 162.875 ns/op
Iteration   3: 216.611 ±(99.9%) 161.010 ns/op
Iteration   4: 217.175 ±(99.9%) 162.705 ns/op
Iteration   5: 217.854 ±(99.9%) 165.257 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6":
  217.196 ±(99.9%) 1.761 ns/op [Average]
  (min, avg, max) = (216.611, 217.196, 217.854), stdev = 0.457
  CI (99.9%): [215.436, 218.957] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark.is_duplicated_6:·asm":
PrintAssembly processed: 128857 total address lines.
Perf output processed (skipped 56.154 seconds):
 Column 1: cycles (298089 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 492 

                     # {method} {0x00007fafb1c75038} &apos;is_duplicated_6&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark&apos;
                     #           [sp+0x30]  (sp of caller)
                     0x00007fafd0f656a0:   mov    0x8(%rsi),%r10d
                     0x00007fafd0f656a4:   movabs $0x800000000,%r11
                     0x00007fafd0f656ae:   add    %r11,%r10
                     0x00007fafd0f656b1:   cmp    %r10,%rax
                     0x00007fafd0f656b4:   jne    0x00007fafd09fbd80           ;   {runtime_call ic_miss_stub}
                     0x00007fafd0f656ba:   xchg   %ax,%ax
                     0x00007fafd0f656bc:   nopl   0x0(%rax)
                   [Verified Entry Point]
   0.20%             0x00007fafd0f656c0:   mov    %eax,-0x14000(%rsp)
   0.59%             0x00007fafd0f656c7:   push   %rbp
                     0x00007fafd0f656c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@-1 (line 130)
   0.00%             0x00007fafd0f656cc:   mov    0x10(%rsi),%r11d             ;*getfield msg {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@1 (line 130)
   0.20%             0x00007fafd0f656d0:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fafd0f657b8
   0.02%             0x00007fafd0f656d5:   movabs $0x800c269d8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$Context&apos;)}
                     0x00007fafd0f656df:   movabs $0x800000000,%rsi
                     0x00007fafd0f656e9:   add    %r10,%rsi
   0.20%             0x00007fafd0f656ec:   mov    0x20(%rsi),%r10
   1.01%             0x00007fafd0f656f0:   cmp    %rax,%r10
          ╭          0x00007fafd0f656f3:   jne    0x00007fafd0f65752           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.09%  │     ↗    0x00007fafd0f656f9:   movabs $0x800c26bd8,%rax            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$InternalContext&apos;)}
          │     │    0x00007fafd0f65703:   cmp    %rax,%r10
          │╭    │    0x00007fafd0f65706:   jne    0x00007fafd0f6577c
          ││    │ ↗  0x00007fafd0f6570c:   lea    (%r12,%r11,8),%rbp           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.11%  ││    │ │  0x00007fafd0f65710:   mov    0x8(%rbp),%r11d
   0.71%  ││    │ │  0x00007fafd0f65714:   nopl   0x0(%rax,%rax,1)
          ││    │ │  0x00007fafd0f6571c:   data16 data16 xchg %ax,%ax
          ││    │ │  0x00007fafd0f65720:   cmp    $0xc26dd8,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$NonDuplicatedContext&apos;)}
          ││╭   │ │  0x00007fafd0f65727:   je     0x00007fafd0f6573d
   0.21%  │││   │ │  0x00007fafd0f65729:   cmp    $0xc27000,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckScalabilityBenchmark$DuplicatedContext&apos;)}
          │││╭  │ │  0x00007fafd0f65730:   jne    0x00007fafd0f657ac           ;*invokeinterface isDuplicated {reexecute=0 rethrow=0 return_oop=0}
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@12 (line 137)
          ││││  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
   0.20%  ││││  │ │  0x00007fafd0f65736:   mov    $0x1,%eax
          ││││╭ │ │  0x00007fafd0f6573b:   jmp    0x00007fafd0f6573f
          ││↘││ │ │  0x00007fafd0f6573d:   xor    %eax,%eax                    ;*synchronization entry
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@-1 (line 136)
          ││ ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
          ││ │↘ │ │  0x00007fafd0f6573f:   add    $0x20,%rsp
          ││ │  │ │  0x00007fafd0f65743:   pop    %rbp
   0.71%  ││ │  │ │  0x00007fafd0f65744:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││ │  │ │  0x00007fafd0f6574b:   ja     0x00007fafd0f657c8
   0.40%  ││ │  │ │  0x00007fafd0f65751:   ret    
   0.10%  ↘│ │  │ │  0x00007fafd0f65752:   mov    0x28(%rsi),%rdi
  40.01%   │ │  │ │  0x00007fafd0f65756:   mov    (%rdi),%ecx
   0.52%   │ │  │ │  0x00007fafd0f65758:   add    $0x8,%rdi
           │ │  │ │  0x00007fafd0f6575c:   test   %rax,%rax
           │ │  │ │  0x00007fafd0f6575f:   repnz scas %es:(%rdi),%rax
   3.75%   │ │ ╭│ │  0x00007fafd0f65762:   jne    0x00007fafd0f6576c
   0.68%   │ │ ││ │  0x00007fafd0f65768:   mov    %rax,0x20(%rsi)
   0.42%   │ │ ↘╰ │  0x00007fafd0f6576c:   je     0x00007fafd0f656f9
           │ │    │  0x00007fafd0f6576e:   mov    $0xffffffde,%esi
           │ │    │  0x00007fafd0f65773:   mov    %r11d,%ebp
           │ │    │  0x00007fafd0f65776:   nop
           │ │    │  0x00007fafd0f65777:   call   0x00007fafd0a01600           ; ImmutableOopMap {rbp=NarrowOop }
           │ │    │                                                            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@4 (line 136)
           │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
           │ │    │                                                            ;   {runtime_call UncommonTrapBlob}
   0.10%   ↘ │    │  0x00007fafd0f6577c:   mov    0x28(%rsi),%rdi
  40.53%     │    │  0x00007fafd0f65780:   mov    (%rdi),%ecx
   0.56%     │    │  0x00007fafd0f65782:   add    $0x8,%rdi
             │    │  0x00007fafd0f65786:   test   %rax,%rax
   0.38%     │    │  0x00007fafd0f65789:   repnz scas %es:(%rdi),%rax
   3.65%     │   ╭│  0x00007fafd0f6578c:   jne    0x00007fafd0f65796
   0.67%     │   ││  0x00007fafd0f65792:   mov    %rax,0x20(%rsi)
   0.42%     │   ↘╰  0x00007fafd0f65796:   je     0x00007fafd0f6570c
             │       0x00007fafd0f6579c:   mov    $0xffffffde,%esi
             │       0x00007fafd0f657a1:   mov    %r11d,%ebp
             │       0x00007fafd0f657a4:   data16 xchg %ax,%ax
             │       0x00007fafd0f657a7:   call   0x00007fafd0a01600           ; ImmutableOopMap {rbp=NarrowOop }
             │                                                                 ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::isDuplicated@9 (line 137)
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6@4 (line 130)
             │                                                                 ;   {runtime_call UncommonTrapBlob}
             ↘       0x00007fafd0f657ac:   mov    $0xffffffc6,%esi
                     0x00007fafd0f657b1:   xchg   %ax,%ax
....................................................................................................
  96.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 492 
   2.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 548 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%              kernel  [unknown] 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%              kernel  [unknown] 
   0.00%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 3, compile id 568 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.49%  <...other 757 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckScalabilityBenchmark::is_duplicated_6, version 2, compile id 492 
   2.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_avgt_jmhStub, version 6, compile id 548 
   0.53%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckScalabilityBenchmark_is_duplicated_6_jmhTest::is_duplicated_6_AverageTime, version 3, compile id 568 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  outputStream::update_position 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%           libjvm.so  fileStream::flush 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  fileStream::write 
   0.09%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.27%         c2, level 4
   0.53%              kernel
   0.10%           libjvm.so
   0.04%        libc-2.31.so
   0.03%                    
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%         interpreter
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:51

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

Benchmark                                           (typePollution)  Mode  Cnt    Score    Error  Units
TypeCheckScalabilityBenchmark.is_duplicated_1                 false  avgt    5    6.583 ±  0.032  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_1                  true  avgt    5   34.651 ±  0.724  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_1:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                 false  avgt    5    6.607 ±  0.013  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_2                  true  avgt    5   67.455 ±  8.037  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_2:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                 false  avgt    5    6.602 ±  0.228  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_3                  true  avgt    5  100.612 ±  7.229  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_3:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                 false  avgt    5    6.578 ±  0.009  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_4                  true  avgt    5  129.187 ± 12.992  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_4:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                 false  avgt    5    6.591 ±  0.013  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_5                  true  avgt    5  170.025 ±  4.097  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_5:·asm             true  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                 false  avgt    5    6.620 ±  0.080  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm            false  avgt           NaN             ---
TypeCheckScalabilityBenchmark.is_duplicated_6                  true  avgt    5  217.196 ±  1.761  ns/op
TypeCheckScalabilityBenchmark.is_duplicated_6:·asm             true  avgt           NaN             ---
