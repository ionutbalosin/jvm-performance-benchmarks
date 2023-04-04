# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.866 ns/op
# Warmup Iteration   2: 24.753 ns/op
# Warmup Iteration   3: 24.831 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline":
  24.752 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.749, 24.755] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 191823 total address lines.
Perf output processed (skipped 58.592 seconds):
 Column 1: cycles (50953 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 731 

                0x00007f483affc100:   mov    0x8(%rsi),%r10d
                0x00007f483affc104:   movabs $0x800000000,%r12
                0x00007f483affc10e:   add    %r12,%r10
                0x00007f483affc111:   xor    %r12,%r12
                0x00007f483affc114:   cmp    %r10,%rax
                0x00007f483affc117:   jne    0x00007f48334ff780           ;   {runtime_call ic_miss_stub}
                0x00007f483affc11d:   nop
                0x00007f483affc11e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f483affc120:   mov    %eax,-0x14000(%rsp)
   1.66%        0x00007f483affc127:   sub    $0x18,%rsp
                0x00007f483affc12b:   mov    %rbp,0x10(%rsp)
                0x00007f483affc130:   mov    %rsi,%r11
   1.56%        0x00007f483affc133:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   4.78%        0x00007f483affc136:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@1 (line 209)
                0x00007f483affc13a:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
                0x00007f483affc13e:   mov    %eax,%r9d
                0x00007f483affc141:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
   1.48%        0x00007f483affc144:   test   $0x2,%r10
          ╭     0x00007f483affc14b:   jne    0x00007f483affc1cc
          │     0x00007f483affc151:   or     $0x1,%r10
          │     0x00007f483affc155:   mov    %r10,(%r8)
   3.06%  │     0x00007f483affc158:   mov    %r10,%rax
          │     0x00007f483affc15b:   lock cmpxchg %r8,(%r11)
  27.01%  │     0x00007f483affc160:   cmp    %r10,%rax
          │╭    0x00007f483affc163:   jne    0x00007f483affc1f8           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
          ││ ↗  0x00007f483affc169:   lea    (%rsp),%r10
   1.52%  ││ │  0x00007f483affc16d:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          ││ │  0x00007f483affc170:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@13 (line 212)
          ││ │  0x00007f483affc174:   test   %rsi,%rsi
          ││╭│  0x00007f483affc177:   je     0x00007f483affc19b
          ││││  0x00007f483affc17d:   mov    (%r11),%rcx
  18.20%  ││││  0x00007f483affc180:   test   $0x2,%rcx
          ││││  0x00007f483affc187:   jne    0x00007f483affc219
   1.54%  ││││  0x00007f483affc18d:   mov    %r10,%rax
          ││││  0x00007f483affc190:   lock cmpxchg %rsi,(%r11)
  24.53%  ││││  0x00007f483affc195:   jne    0x00007f483affc271           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          ││↘│  0x00007f483affc19b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@16 (line 212)
   1.45%  ││ │  0x00007f483affc19e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@23 (line 213)
          ││ │  0x00007f483affc1a1:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@30 (line 214)
          ││ │  0x00007f483affc1a4:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@37 (line 215)
          ││ │  0x00007f483affc1a7:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@44 (line 216)
   1.61%  ││ │  0x00007f483affc1aa:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@51 (line 217)
          ││ │  0x00007f483affc1ad:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@58 (line 218)
          ││ │  0x00007f483affc1b0:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@65 (line 219)
          ││ │  0x00007f483affc1b3:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@78 (line 222)
   1.60%  ││ │  0x00007f483affc1b6:   mov    0x10(%rsp),%rbp
          ││ │  0x00007f483affc1bb:   add    $0x18,%rsp
          ││ │  0x00007f483affc1bf:   mov    0x348(%r15),%rcx
          ││ │  0x00007f483affc1c6:   test   %eax,(%rcx)                  ;   {poll_return}
   1.51%  ││ │  0x00007f483affc1c8:   vzeroupper 
   1.54%  ││ │  0x00007f483affc1cb:   ret    
          ↘│ │  0x00007f483affc1cc:   movq   $0x3,(%r8)
           │ │  0x00007f483affc1d3:   mov    0x3e(%r10),%rsi
           │ │  0x00007f483affc1d7:   test   %rsi,%rsi
           │ │  0x00007f483affc1da:   jne    0x00007f483affc25e
           │ │  0x00007f483affc1e0:   mov    $0x0,%rax
           │ │  0x00007f483affc1e7:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007f483affc1ed:   je     0x00007f483affc169
           │    0x00007f483affc1f3:   jmp    0x00007f483affc24d
           ↘    0x00007f483affc1f8:   sub    %rsp,%rax
                0x00007f483affc1fb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.06%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 731 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 754 
   1.01%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 731 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 754 
   2.01%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  _int_memalign 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  gethostbyaddr 
   0.00%            libjvm.so  G1ServiceThread::sleep_before_next_cycle 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.15%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.66%       jvmci, level 4
   2.01%               kernel
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.984 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.805 ns/op
# Warmup Iteration   4: 24.753 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls":
  24.751 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (24.751, 24.751, 24.752), stdev = 0.001
  CI (99.9%): [24.750, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 194462 total address lines.
Perf output processed (skipped 58.489 seconds):
 Column 1: cycles (50650 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 735 

                0x00007f8aeeffb980:   mov    0x8(%rsi),%r10d
                0x00007f8aeeffb984:   movabs $0x800000000,%r12
                0x00007f8aeeffb98e:   add    %r12,%r10
                0x00007f8aeeffb991:   xor    %r12,%r12
                0x00007f8aeeffb994:   cmp    %r10,%rax
                0x00007f8aeeffb997:   jne    0x00007f8ae74ff780           ;   {runtime_call ic_miss_stub}
                0x00007f8aeeffb99d:   nop
                0x00007f8aeeffb99e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f8aeeffb9a0:   mov    %eax,-0x14000(%rsp)
   1.63%        0x00007f8aeeffb9a7:   sub    $0x18,%rsp
                0x00007f8aeeffb9ab:   mov    %rbp,0x10(%rsp)
                0x00007f8aeeffb9b0:   mov    %rsi,%r11
   1.49%        0x00007f8aeeffb9b3:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   4.47%        0x00007f8aeeffb9b6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 124)
                0x00007f8aeeffb9ba:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
                0x00007f8aeeffb9be:   mov    %eax,%r9d
                0x00007f8aeeffb9c1:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
   1.47%        0x00007f8aeeffb9c4:   test   $0x2,%r10
          ╭     0x00007f8aeeffb9cb:   jne    0x00007f8aeeffba4c
          │     0x00007f8aeeffb9d1:   or     $0x1,%r10
          │     0x00007f8aeeffb9d5:   mov    %r10,(%r8)
   3.12%  │     0x00007f8aeeffb9d8:   mov    %r10,%rax
          │     0x00007f8aeeffb9db:   lock cmpxchg %r8,(%r11)
  27.82%  │     0x00007f8aeeffb9e0:   cmp    %r10,%rax
          │╭    0x00007f8aeeffb9e3:   jne    0x00007f8aeeffba78           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
          ││ ↗  0x00007f8aeeffb9e9:   lea    (%rsp),%r10
   1.61%  ││ │  0x00007f8aeeffb9ed:   mov    (%r10),%rsi                  ;*synchronization entry
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
   0.00%  ││ │  0x00007f8aeeffb9f0:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
          ││ │  0x00007f8aeeffb9f4:   test   %rsi,%rsi
          ││╭│  0x00007f8aeeffb9f7:   je     0x00007f8aeeffba1b
          ││││  0x00007f8aeeffb9fd:   mov    (%r11),%rcx
  18.49%  ││││  0x00007f8aeeffba00:   test   $0x2,%rcx
          ││││  0x00007f8aeeffba07:   jne    0x00007f8aeeffba99
   1.47%  ││││  0x00007f8aeeffba0d:   mov    %r10,%rax
          ││││  0x00007f8aeeffba10:   lock cmpxchg %rsi,(%r11)
  24.25%  ││││  0x00007f8aeeffba15:   jne    0x00007f8aeeffbaf1           ;*synchronization entry
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││↘│  0x00007f8aeeffba1b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   1.55%  ││ │  0x00007f8aeeffba1e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@15 (line 127)
          ││ │  0x00007f8aeeffba21:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@21 (line 128)
          ││ │  0x00007f8aeeffba24:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@27 (line 129)
          ││ │  0x00007f8aeeffba27:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@33 (line 130)
   1.44%  ││ │  0x00007f8aeeffba2a:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@39 (line 131)
          ││ │  0x00007f8aeeffba2d:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@45 (line 132)
          ││ │  0x00007f8aeeffba30:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││ │  0x00007f8aeeffba33:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 135)
   1.51%  ││ │  0x00007f8aeeffba36:   mov    0x10(%rsp),%rbp
   0.00%  ││ │  0x00007f8aeeffba3b:   add    $0x18,%rsp
          ││ │  0x00007f8aeeffba3f:   mov    0x348(%r15),%rcx
          ││ │  0x00007f8aeeffba46:   test   %eax,(%rcx)                  ;   {poll_return}
   1.53%  ││ │  0x00007f8aeeffba48:   vzeroupper 
   1.61%  ││ │  0x00007f8aeeffba4b:   ret    
          ↘│ │  0x00007f8aeeffba4c:   movq   $0x3,(%r8)
           │ │  0x00007f8aeeffba53:   mov    0x3e(%r10),%rsi
           │ │  0x00007f8aeeffba57:   test   %rsi,%rsi
           │ │  0x00007f8aeeffba5a:   jne    0x00007f8aeeffbade
           │ │  0x00007f8aeeffba60:   mov    $0x0,%rax
           │ │  0x00007f8aeeffba67:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007f8aeeffba6d:   je     0x00007f8aeeffb9e9
           │    0x00007f8aeeffba73:   jmp    0x00007f8aeeffbacd
           ↘    0x00007f8aeeffba78:   sub    %rsp,%rax
                0x00007f8aeeffba7b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 735 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 761 
   0.52%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 735 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 761 
   1.68%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%  libjvmcicompiler.so  Utf8_utf8ToString_361bc2ada70006cd90381541cdcf04dcc19466ed 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  non-virtual thunk to SubstitutionResolver::visit(Instruction**) 
   0.00%         libc-2.31.so  __strncpy_sse2_unaligned 
   0.00%            libjvm.so  methodHandle::~methodHandle 
   0.09%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%       jvmci, level 4
   1.68%               kernel
   0.09%            libjvm.so
   0.07%         libc-2.31.so
   0.05%                     
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%       perf-28941.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.003 ns/op
# Warmup Iteration   2: 24.755 ns/op
# Warmup Iteration   3: 24.826 ns/op
# Warmup Iteration   4: 24.754 ns/op
# Warmup Iteration   5: 24.756 ns/op
Iteration   1: 24.753 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  24.752 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.748, 24.757] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 189865 total address lines.
Perf output processed (skipped 58.441 seconds):
 Column 1: cycles (50655 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 727 

               #           [sp+0x20]  (sp of caller)
               0x00007fcc3effb020:   mov    0x8(%rsi),%r10d
               0x00007fcc3effb024:   movabs $0x800000000,%r12
               0x00007fcc3effb02e:   add    %r12,%r10
               0x00007fcc3effb031:   xor    %r12,%r12
               0x00007fcc3effb034:   cmp    %r10,%rax
               0x00007fcc3effb037:   jne    0x00007fcc374ff780           ;   {runtime_call ic_miss_stub}
               0x00007fcc3effb03d:   nop
               0x00007fcc3effb03e:   xchg   %ax,%ax
             [Verified Entry Point]
   1.49%       0x00007fcc3effb040:   mov    %eax,-0x14000(%rsp)
               0x00007fcc3effb047:   sub    $0x18,%rsp
   0.00%       0x00007fcc3effb04b:   mov    %rbp,0x10(%rsp)
   1.49%       0x00007fcc3effb050:   mov    %rsi,%r11
               0x00007fcc3effb053:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 141)
               0x00007fcc3effb057:   mov    %eax,%r8d
               0x00007fcc3effb05a:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 141)
   1.45%       0x00007fcc3effb05d:   data16 xchg %ax,%ax
               0x00007fcc3effb060:   cmp    $0x21,%r8d
               0x00007fcc3effb064:   jl     0x00007fcc3effb2b5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 144)
               0x00007fcc3effb06a:   mov    (%r11),%r10
   6.12%       0x00007fcc3effb06d:   lea    (%rsp),%r9
               0x00007fcc3effb071:   test   $0x2,%r10
          ╭    0x00007fcc3effb078:   jne    0x00007fcc3effb156
   1.55%  │    0x00007fcc3effb07e:   or     $0x1,%r10
          │    0x00007fcc3effb082:   mov    %r10,(%r9)
   3.04%  │    0x00007fcc3effb085:   mov    %r10,%rax
          │    0x00007fcc3effb088:   lock cmpxchg %r9,(%r11)
  27.84%  │    0x00007fcc3effb08d:   cmp    %r10,%rax
          │    0x00007fcc3effb090:   jne    0x00007fcc3effb185           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
          │ ↗  0x00007fcc3effb096:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   1.62%  │ │  0x00007fcc3effb09a:   mov    %r8d,%eax
          │ │  0x00007fcc3effb09d:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
          │ │  0x00007fcc3effb0a0:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0a3:   jl     0x00007fcc3effb2d1           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
          │ │  0x00007fcc3effb0a9:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
   1.58%  │ │  0x00007fcc3effb0ac:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0af:   jl     0x00007fcc3effb2ac           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
          │ │  0x00007fcc3effb0b5:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
          │ │  0x00007fcc3effb0b8:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007fcc3effb0c0:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0c3:   jl     0x00007fcc3effb29a           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
   1.51%  │ │  0x00007fcc3effb0c9:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
          │ │  0x00007fcc3effb0cc:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0cf:   jl     0x00007fcc3effb269           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
          │ │  0x00007fcc3effb0d5:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
          │ │  0x00007fcc3effb0d8:   nopl   0x0(%rax,%rax,1)
   1.59%  │ │  0x00007fcc3effb0e0:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0e3:   jl     0x00007fcc3effb2a3           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 159)
          │ │  0x00007fcc3effb0e9:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
          │ │  0x00007fcc3effb0ec:   cmp    $0x21,%eax
          │ │  0x00007fcc3effb0ef:   jl     0x00007fcc3effb291           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 162)
          │ │  0x00007fcc3effb0f5:   mov    %eax,%ecx
   1.62%  │ │  0x00007fcc3effb0f7:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
          │ │  0x00007fcc3effb0fa:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007fcc3effb100:   cmp    $0x21,%ecx
          │ │  0x00007fcc3effb103:   jl     0x00007fcc3effb288           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 165)
          │ │  0x00007fcc3effb109:   lea    (%rsp),%r10
   1.57%  │ │  0x00007fcc3effb10d:   mov    (%r10),%rsi
          │ │  0x00007fcc3effb110:   test   %rsi,%rsi
          │╭│  0x00007fcc3effb113:   je     0x00007fcc3effb13b
          │││  0x00007fcc3effb119:   mov    (%r11),%r8
  10.78%  │││  0x00007fcc3effb11c:   nopl   0x0(%rax)
          │││  0x00007fcc3effb120:   test   $0x2,%r8
          │││  0x00007fcc3effb127:   jne    0x00007fcc3effb1a5
   1.58%  │││  0x00007fcc3effb12d:   mov    %r10,%rax
          │││  0x00007fcc3effb130:   lock cmpxchg %rsi,(%r11)
  24.25%  │││  0x00007fcc3effb135:   jne    0x00007fcc3effb1fc           ;*synchronization entry
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   0.00%  │↘│  0x00007fcc3effb13b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   1.51%  │ │  0x00007fcc3effb13e:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 169)
          │ │  0x00007fcc3effb140:   mov    0x10(%rsp),%rbp
          │ │  0x00007fcc3effb145:   add    $0x18,%rsp
   0.00%  │ │  0x00007fcc3effb149:   mov    0x348(%r15),%rcx
   1.55%  │ │  0x00007fcc3effb150:   test   %eax,(%rcx)                  ;   {poll_return}
          │ │  0x00007fcc3effb152:   vzeroupper 
   1.53%  │ │  0x00007fcc3effb155:   ret    
          ↘ │  0x00007fcc3effb156:   movq   $0x3,(%r9)
            │  0x00007fcc3effb15d:   mov    0x3e(%r10),%rsi
            │  0x00007fcc3effb161:   test   %rsi,%rsi
            │  0x00007fcc3effb164:   jne    0x00007fcc3effb1eb
            │  0x00007fcc3effb16a:   mov    $0x0,%rax
            │  0x00007fcc3effb171:   lock cmpxchg %r15,0x3e(%r10)
            ╰  0x00007fcc3effb177:   je     0x00007fcc3effb096
               0x00007fcc3effb17d:   data16 xchg %ax,%ax
               0x00007fcc3effb180:   jmp    0x00007fcc3effb1d9
               0x00007fcc3effb185:   sub    %rsp,%rax
....................................................................................................
  93.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 727 
   4.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 752 
   0.53%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.76%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 727 
   4.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 752 
   1.51%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  clock_gettime@plt 
   0.00%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%            libjvm.so  G1Analytics::predict_young_other_time_ms 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.23%       jvmci, level 4
   1.51%               kernel
   0.13%            libjvm.so
   0.05%         libc-2.31.so
   0.02%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%       perf-29001.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.988 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.809 ns/op
# Warmup Iteration   4: 24.753 ns/op
# Warmup Iteration   5: 24.753 ns/op
Iteration   1: 24.754 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 26.042 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  25.011 ±(99.9%) 2.220 ns/op [Average]
  (min, avg, max) = (24.752, 25.011, 26.042), stdev = 0.577
  CI (99.9%): [22.790, 27.231] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 197359 total address lines.
Perf output processed (skipped 58.778 seconds):
 Column 1: cycles (50910 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 735 

               #           [sp+0x20]  (sp of caller)
               0x00007fe81aff91a0:   mov    0x8(%rsi),%r10d
               0x00007fe81aff91a4:   movabs $0x800000000,%r12
               0x00007fe81aff91ae:   add    %r12,%r10
               0x00007fe81aff91b1:   xor    %r12,%r12
               0x00007fe81aff91b4:   cmp    %r10,%rax
               0x00007fe81aff91b7:   jne    0x00007fe8134ff780           ;   {runtime_call ic_miss_stub}
               0x00007fe81aff91bd:   nop
               0x00007fe81aff91be:   xchg   %ax,%ax
             [Verified Entry Point]
   1.17%       0x00007fe81aff91c0:   mov    %eax,-0x14000(%rsp)
   0.31%       0x00007fe81aff91c7:   sub    $0x18,%rsp
               0x00007fe81aff91cb:   mov    %rbp,0x10(%rsp)
   1.30%       0x00007fe81aff91d0:   mov    %rsi,%r11
   0.30%       0x00007fe81aff91d3:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 175)
               0x00007fe81aff91d7:   mov    %eax,%r8d
               0x00007fe81aff91da:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 175)
   1.15%       0x00007fe81aff91dd:   data16 xchg %ax,%ax
   0.28%       0x00007fe81aff91e0:   cmp    $0x21,%r8d
               0x00007fe81aff91e4:   jl     0x00007fe81aff9406           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 178)
               0x00007fe81aff91ea:   mov    (%r11),%r10
   4.72%       0x00007fe81aff91ed:   lea    (%rsp),%r9
               0x00007fe81aff91f1:   test   $0x2,%r10
          ╭    0x00007fe81aff91f8:   jne    0x00007fe81aff92d6
   1.51%  │    0x00007fe81aff91fe:   or     $0x1,%r10
          │    0x00007fe81aff9202:   mov    %r10,(%r9)
   2.38%  │    0x00007fe81aff9205:   mov    %r10,%rax
          │    0x00007fe81aff9208:   lock cmpxchg %r9,(%r11)
  27.29%  │    0x00007fe81aff920d:   cmp    %r10,%rax
          │    0x00007fe81aff9210:   jne    0x00007fe81aff9305           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
          │ ↗  0x00007fe81aff9216:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   1.51%  │ │  0x00007fe81aff921a:   mov    %r8d,%eax
          │ │  0x00007fe81aff921d:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
          │ │  0x00007fe81aff9220:   cmp    $0x21,%eax
          │ │  0x00007fe81aff9223:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 180)
   0.00%  │ │  0x00007fe81aff9229:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
   1.57%  │ │  0x00007fe81aff922c:   cmp    $0x21,%eax
          │ │  0x00007fe81aff922f:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 182)
          │ │  0x00007fe81aff9235:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
          │ │  0x00007fe81aff9238:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007fe81aff9240:   cmp    $0x21,%eax
          │ │  0x00007fe81aff9243:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
   1.53%  │ │  0x00007fe81aff9249:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
          │ │  0x00007fe81aff924c:   cmp    $0x21,%eax
          │ │  0x00007fe81aff924f:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
          │ │  0x00007fe81aff9255:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
   0.00%  │ │  0x00007fe81aff9258:   nopl   0x0(%rax,%rax,1)
   1.57%  │ │  0x00007fe81aff9260:   cmp    $0x21,%eax
          │ │  0x00007fe81aff9263:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
          │ │  0x00007fe81aff9269:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
          │ │  0x00007fe81aff926c:   cmp    $0x21,%eax
          │ │  0x00007fe81aff926f:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 190)
          │ │  0x00007fe81aff9275:   mov    %eax,%ecx
   1.53%  │ │  0x00007fe81aff9277:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
          │ │  0x00007fe81aff927a:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007fe81aff9280:   cmp    $0x21,%ecx
          │ │  0x00007fe81aff9283:   jl     0x00007fe81aff93e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 192)
   0.00%  │ │  0x00007fe81aff9289:   lea    (%rsp),%r10
   1.45%  │ │  0x00007fe81aff928d:   mov    (%r10),%rsi
          │ │  0x00007fe81aff9290:   test   %rsi,%rsi
          │╭│  0x00007fe81aff9293:   je     0x00007fe81aff92bb
          │││  0x00007fe81aff9299:   mov    (%r11),%r8
  10.67%  │││  0x00007fe81aff929c:   nopl   0x0(%rax)
          │││  0x00007fe81aff92a0:   test   $0x2,%r8
          │││  0x00007fe81aff92a7:   jne    0x00007fe81aff9325
   1.49%  │││  0x00007fe81aff92ad:   mov    %r10,%rax
          │││  0x00007fe81aff92b0:   lock cmpxchg %rsi,(%r11)
  24.04%  │││  0x00007fe81aff92b5:   jne    0x00007fe81aff937c           ;*synchronization entry
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
          │↘│  0x00007fe81aff92bb:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   1.51%  │ │  0x00007fe81aff92be:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 203)
          │ │  0x00007fe81aff92c0:   mov    0x10(%rsp),%rbp
          │ │  0x00007fe81aff92c5:   add    $0x18,%rsp
          │ │  0x00007fe81aff92c9:   mov    0x348(%r15),%rcx
   1.53%  │ │  0x00007fe81aff92d0:   test   %eax,(%rcx)                  ;   {poll_return}
          │ │  0x00007fe81aff92d2:   vzeroupper 
   1.46%  │ │  0x00007fe81aff92d5:   ret    
          ↘ │  0x00007fe81aff92d6:   movq   $0x3,(%r9)
            │  0x00007fe81aff92dd:   mov    0x3e(%r10),%rsi
            │  0x00007fe81aff92e1:   test   %rsi,%rsi
            │  0x00007fe81aff92e4:   jne    0x00007fe81aff936b
            │  0x00007fe81aff92ea:   mov    $0x0,%rax
            │  0x00007fe81aff92f1:   lock cmpxchg %r15,0x3e(%r10)
            ╰  0x00007fe81aff92f7:   je     0x00007fe81aff9216
               0x00007fe81aff92fd:   data16 xchg %ax,%ax
               0x00007fe81aff9300:   jmp    0x00007fe81aff9359
               0x00007fe81aff9305:   sub    %rsp,%rax
....................................................................................................
  90.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 735 
   7.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 758 
   1.08%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.81%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 735 
   7.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 758 
   2.14%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::print 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%       jvmci, level 4
   2.14%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 121.809 ns/op
# Warmup Iteration   2: 121.375 ns/op
# Warmup Iteration   3: 122.350 ns/op
# Warmup Iteration   4: 121.288 ns/op
# Warmup Iteration   5: 120.560 ns/op
Iteration   1: 121.324 ns/op
Iteration   2: 121.267 ns/op
Iteration   3: 121.046 ns/op
Iteration   4: 121.245 ns/op
Iteration   5: 120.618 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized":
  121.100 ±(99.9%) 1.113 ns/op [Average]
  (min, avg, max) = (120.618, 121.100, 121.324), stdev = 0.289
  CI (99.9%): [119.987, 122.214] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 195561 total address lines.
Perf output processed (skipped 58.649 seconds):
 Column 1: cycles (50679 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 

            0x00007fc1faff9640:   mov    0x8(%rsi),%r10d
            0x00007fc1faff9644:   movabs $0x800000000,%r12
            0x00007fc1faff964e:   add    %r12,%r10
            0x00007fc1faff9651:   xor    %r12,%r12
            0x00007fc1faff9654:   cmp    %r10,%rax
            0x00007fc1faff9657:   jne    0x00007fc1f34ff780           ;   {runtime_call ic_miss_stub}
            0x00007fc1faff965d:   nop
            0x00007fc1faff965e:   xchg   %ax,%ax
          [Verified Entry Point]
            0x00007fc1faff9660:   mov    %eax,-0x14000(%rsp)
   0.29%    0x00007fc1faff9667:   sub    $0x58,%rsp
            0x00007fc1faff966b:   mov    %rbp,0x50(%rsp)
            0x00007fc1faff9670:   mov    %rsi,%r11
   0.33%    0x00007fc1faff9673:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   1.68%    0x00007fc1faff9676:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 83)
            0x00007fc1faff967a:   lea    0x40(%rsp),%r8               ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
            0x00007fc1faff967f:   mov    %eax,%r9d
            0x00007fc1faff9682:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 83)
   0.33%    0x00007fc1faff9685:   test   $0x2,%r10
            0x00007fc1faff968c:   jne    0x00007fc1faff9ac5
            0x00007fc1faff9692:   or     $0x1,%r10
            0x00007fc1faff9696:   mov    %r10,(%r8)
   0.68%    0x00007fc1faff9699:   mov    %r10,%rax
            0x00007fc1faff969c:   lock cmpxchg %r8,(%r11)
   5.70%    0x00007fc1faff96a1:   cmp    %r10,%rax
            0x00007fc1faff96a4:   jne    0x00007fc1faff9be5           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
            0x00007fc1faff96aa:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 87)
   4.07%    0x00007fc1faff96ad:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@13 (line 86)
            0x00007fc1faff96b1:   lea    0x8(%rsp),%r8
            0x00007fc1faff96b6:   data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff96c0:   test   $0x2,%r10
            0x00007fc1faff96c7:   jne    0x00007fc1faff9a65
   0.30%    0x00007fc1faff96cd:   or     $0x1,%r10
            0x00007fc1faff96d1:   mov    %r10,(%r8)
   0.67%    0x00007fc1faff96d4:   mov    %r10,%rax
            0x00007fc1faff96d7:   lock cmpxchg %r8,(%r11)
   7.17%    0x00007fc1faff96dc:   nopl   0x0(%rax)
            0x00007fc1faff96e0:   cmp    %r10,%rax
            0x00007fc1faff96e3:   jne    0x00007fc1faff9c25           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 87)
            0x00007fc1faff96e9:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
   3.47%    0x00007fc1faff96ec:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@24 (line 88)
            0x00007fc1faff96f0:   lea    0x10(%rsp),%r8
            0x00007fc1faff96f5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9700:   test   $0x2,%r10
            0x00007fc1faff9707:   jne    0x00007fc1faff9b25
   0.30%    0x00007fc1faff970d:   or     $0x1,%r10
            0x00007fc1faff9711:   mov    %r10,(%r8)
   0.64%    0x00007fc1faff9714:   mov    %r10,%rax
            0x00007fc1faff9717:   lock cmpxchg %r8,(%r11)
....................................................................................................
  24.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 

            0x00007fc1faff96e3:   jne    0x00007fc1faff9c25           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 87)
            0x00007fc1faff96e9:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
   3.47%    0x00007fc1faff96ec:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@24 (line 88)
            0x00007fc1faff96f0:   lea    0x10(%rsp),%r8
            0x00007fc1faff96f5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9700:   test   $0x2,%r10
            0x00007fc1faff9707:   jne    0x00007fc1faff9b25
   0.30%    0x00007fc1faff970d:   or     $0x1,%r10
            0x00007fc1faff9711:   mov    %r10,(%r8)
   0.64%    0x00007fc1faff9714:   mov    %r10,%rax
            0x00007fc1faff9717:   lock cmpxchg %r8,(%r11)
   6.82%    0x00007fc1faff971c:   nopl   0x0(%rax)
            0x00007fc1faff9720:   cmp    %r10,%rax
            0x00007fc1faff9723:   jne    0x00007fc1faff9ba5           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
            0x00007fc1faff9729:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
   3.37%    0x00007fc1faff972c:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@36 (line 90)
            0x00007fc1faff9730:   lea    0x18(%rsp),%r8
            0x00007fc1faff9735:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9740:   test   $0x2,%r10
            0x00007fc1faff9747:   jne    0x00007fc1faff9a2f
   0.27%    0x00007fc1faff974d:   or     $0x1,%r10
            0x00007fc1faff9751:   mov    %r10,(%r8)
   0.55%    0x00007fc1faff9754:   mov    %r10,%rax
            0x00007fc1faff9757:   lock cmpxchg %r8,(%r11)
....................................................................................................
  11.13%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 

            0x00007fc1faff9723:   jne    0x00007fc1faff9ba5           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
            0x00007fc1faff9729:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
   3.37%    0x00007fc1faff972c:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@36 (line 90)
            0x00007fc1faff9730:   lea    0x18(%rsp),%r8
            0x00007fc1faff9735:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9740:   test   $0x2,%r10
            0x00007fc1faff9747:   jne    0x00007fc1faff9a2f
   0.27%    0x00007fc1faff974d:   or     $0x1,%r10
            0x00007fc1faff9751:   mov    %r10,(%r8)
   0.55%    0x00007fc1faff9754:   mov    %r10,%rax
            0x00007fc1faff9757:   lock cmpxchg %r8,(%r11)
   6.71%    0x00007fc1faff975c:   nopl   0x0(%rax)
            0x00007fc1faff9760:   cmp    %r10,%rax
            0x00007fc1faff9763:   jne    0x00007fc1faff9c45           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
            0x00007fc1faff9769:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 93)
   3.37%    0x00007fc1faff976c:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@48 (line 92)
            0x00007fc1faff9770:   lea    0x20(%rsp),%r8
            0x00007fc1faff9775:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9780:   test   $0x2,%r10
            0x00007fc1faff9787:   jne    0x00007fc1faff9b51
   0.29%    0x00007fc1faff978d:   or     $0x1,%r10
            0x00007fc1faff9791:   mov    %r10,(%r8)
   0.63%    0x00007fc1faff9794:   mov    %r10,%rax
            0x00007fc1faff9797:   lock cmpxchg %r8,(%r11)
....................................................................................................
  10.91%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 

            0x00007fc1faff9763:   jne    0x00007fc1faff9c45           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
            0x00007fc1faff9769:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 93)
   3.37%    0x00007fc1faff976c:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@48 (line 92)
            0x00007fc1faff9770:   lea    0x20(%rsp),%r8
            0x00007fc1faff9775:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff9780:   test   $0x2,%r10
            0x00007fc1faff9787:   jne    0x00007fc1faff9b51
   0.29%    0x00007fc1faff978d:   or     $0x1,%r10
            0x00007fc1faff9791:   mov    %r10,(%r8)
   0.63%    0x00007fc1faff9794:   mov    %r10,%rax
            0x00007fc1faff9797:   lock cmpxchg %r8,(%r11)
   5.99%    0x00007fc1faff979c:   nopl   0x0(%rax)
   0.00%    0x00007fc1faff97a0:   cmp    %r10,%rax
            0x00007fc1faff97a3:   jne    0x00007fc1faff9c05           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 93)
            0x00007fc1faff97a9:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 95)
   3.42%    0x00007fc1faff97ac:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@60 (line 94)
            0x00007fc1faff97b0:   lea    0x28(%rsp),%r8
            0x00007fc1faff97b5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fc1faff97c0:   test   $0x2,%r10
            0x00007fc1faff97c7:   jne    0x00007fc1faff9af1
   0.33%    0x00007fc1faff97cd:   or     $0x1,%r10
            0x00007fc1faff97d1:   mov    %r10,(%r8)
   0.63%    0x00007fc1faff97d4:   mov    %r10,%rax
            0x00007fc1faff97d7:   lock cmpxchg %r8,(%r11)
....................................................................................................
  10.33%  <total for region 4>

....[Hottest Regions]...............................................................................
  24.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
  11.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
  10.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
  10.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   9.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   9.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   7.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   6.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   2.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   1.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 762 
   0.43%               kernel  [unknown] 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   1.08%  <...other 292 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 738 
   1.48%               kernel  [unknown] 
   0.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 762 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.13%  <...other 59 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.19%       jvmci, level 4
   1.48%               kernel
   0.15%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%       perf-29119.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 131.278 ns/op
# Warmup Iteration   2: 130.237 ns/op
# Warmup Iteration   3: 131.396 ns/op
# Warmup Iteration   4: 130.751 ns/op
# Warmup Iteration   5: 130.520 ns/op
Iteration   1: 130.382 ns/op
Iteration   2: 130.155 ns/op
Iteration   3: 130.361 ns/op
Iteration   4: 130.348 ns/op
Iteration   5: 130.999 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls":
  130.449 ±(99.9%) 1.235 ns/op [Average]
  (min, avg, max) = (130.155, 130.449, 130.999), stdev = 0.321
  CI (99.9%): [129.214, 131.684] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 197882 total address lines.
Perf output processed (skipped 58.652 seconds):
 Column 1: cycles (51041 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 

             #           [sp+0x70]  (sp of caller)
             0x00007fc082ffb260:   mov    0x8(%rsi),%r10d
             0x00007fc082ffb264:   movabs $0x800000000,%r12
             0x00007fc082ffb26e:   add    %r12,%r10
             0x00007fc082ffb271:   xor    %r12,%r12
             0x00007fc082ffb274:   cmp    %r10,%rax
             0x00007fc082ffb277:   jne    0x00007fc07b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007fc082ffb27d:   nop
             0x00007fc082ffb27e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.29%  ↗  0x00007fc082ffb280:   mov    %eax,-0x14000(%rsp)
   0.24%  │  0x00007fc082ffb287:   sub    $0x68,%rsp
   0.35%  │  0x00007fc082ffb28b:   mov    %rbp,0x60(%rsp)
          │  0x00007fc082ffb290:   mov    %edx,%r11d
   0.29%  │  0x00007fc082ffb293:   mov    (%rsi),%r10
   1.49%  │  0x00007fc082ffb296:   lea    0x50(%rsp),%r8
          │  0x00007fc082ffb29b:   nopl   0x0(%rax,%rax,1)
          │  0x00007fc082ffb2a0:   test   $0x2,%r10
          │  0x00007fc082ffb2a7:   jne    0x00007fc082ffb7b4
   0.64%  │  0x00007fc082ffb2ad:   or     $0x1,%r10
          │  0x00007fc082ffb2b1:   mov    %r10,(%r8)
   1.13%  │  0x00007fc082ffb2b4:   mov    %r10,%rax
          │  0x00007fc082ffb2b7:   lock cmpxchg %r8,(%rsi)
  10.56%  │  0x00007fc082ffb2bc:   nopl   0x0(%rax)
          │  0x00007fc082ffb2c0:   cmp    %r10,%rax
          │  0x00007fc082ffb2c3:   jne    0x00007fc082ffb7e6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
   0.28%  │  0x00007fc082ffb2c9:   test   %ecx,%ecx
          │  0x00007fc082ffb2cb:   je     0x00007fc082ffb5e5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │  0x00007fc082ffb2d1:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   6.81%  │  0x00007fc082ffb2d4:   mov    0x14(%rsi),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │  0x00007fc082ffb2d8:   lea    0x48(%rsp),%r9
          │  0x00007fc082ffb2dd:   data16 xchg %ax,%ax
          │  0x00007fc082ffb2e0:   test   $0x2,%r10
          │  0x00007fc082ffb2e7:   jne    0x00007fc082ffb805
   0.56%  │  0x00007fc082ffb2ed:   or     $0x1,%r10
          │  0x00007fc082ffb2f1:   mov    %r10,(%r9)
   1.12%  │  0x00007fc082ffb2f4:   mov    %r10,%rax
          │  0x00007fc082ffb2f7:   lock cmpxchg %r9,(%rsi)
   9.98%  │  0x00007fc082ffb2fc:   nopl   0x0(%rax)
          │  0x00007fc082ffb300:   cmp    %r10,%rax
          │  0x00007fc082ffb303:   jne    0x00007fc082ffb845           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb309:   cmp    $0x1,%ecx
          │  0x00007fc082ffb30c:   je     0x00007fc082ffb635           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.55%  │  0x00007fc082ffb312:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   5.80%  │  0x00007fc082ffb315:   mov    0x14(%rsi),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb319:   lea    0x30(%rsp),%rbx
          │  0x00007fc082ffb31e:   xchg   %ax,%ax
          │  0x00007fc082ffb320:   test   $0x2,%r10
          │  0x00007fc082ffb327:   jne    0x00007fc082ffb86c
   0.59%  │  0x00007fc082ffb32d:   or     $0x1,%r10
          │  0x00007fc082ffb331:   mov    %r10,(%rbx)
   1.20%  │  0x00007fc082ffb334:   mov    %r10,%rax
          │  0x00007fc082ffb337:   lock cmpxchg %rbx,(%rsi)
  10.64%  │  0x00007fc082ffb33c:   nopl   0x0(%rax)
          │  0x00007fc082ffb340:   cmp    %r10,%rax
          │  0x00007fc082ffb343:   jne    0x00007fc082ffb8a8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb349:   cmp    $0x2,%ecx
          │  0x00007fc082ffb34c:   je     0x00007fc082ffb673           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb352:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   2.42%  │  0x00007fc082ffb355:   mov    0x14(%rsi),%ebx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb358:   lea    0x40(%rsp),%rdi
          │  0x00007fc082ffb35d:   data16 xchg %ax,%ax
          │  0x00007fc082ffb360:   test   $0x2,%r10
          │  0x00007fc082ffb367:   jne    0x00007fc082ffb8dc
   0.25%  │  0x00007fc082ffb36d:   or     $0x1,%r10
          │  0x00007fc082ffb371:   mov    %r10,(%rdi)
   0.45%  │  0x00007fc082ffb374:   mov    %r10,%rax
          │  0x00007fc082ffb377:   lock cmpxchg %rdi,(%rsi)
   4.29%  │  0x00007fc082ffb37c:   nopl   0x0(%rax)
          │  0x00007fc082ffb380:   cmp    %r10,%rax
          │  0x00007fc082ffb383:   jne    0x00007fc082ffb925           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb389:   cmp    $0x3,%ecx
          │  0x00007fc082ffb38c:   je     0x00007fc082ffb6c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb392:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   2.48%  │  0x00007fc082ffb395:   mov    0x14(%rsi),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb398:   lea    0x38(%rsp),%rdx
          │  0x00007fc082ffb39d:   data16 xchg %ax,%ax
          │  0x00007fc082ffb3a0:   test   $0x2,%r10
          │  0x00007fc082ffb3a7:   jne    0x00007fc082ffb95c
   0.24%  │  0x00007fc082ffb3ad:   or     $0x1,%r10
          │  0x00007fc082ffb3b1:   mov    %r10,(%rdx)
   0.51%  │  0x00007fc082ffb3b4:   mov    %r10,%rax
          │  0x00007fc082ffb3b7:   lock cmpxchg %rdx,(%rsi)
   4.95%  │  0x00007fc082ffb3bc:   nopl   0x0(%rax)
          │  0x00007fc082ffb3c0:   cmp    %r10,%rax
          │  0x00007fc082ffb3c3:   jne    0x00007fc082ffb9a5           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb3c9:   cmp    $0x4,%ecx
          │  0x00007fc082ffb3cc:   je     0x00007fc082ffb70e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.28%  │  0x00007fc082ffb3d2:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   2.38%  │  0x00007fc082ffb3d5:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb3d8:   lea    0x28(%rsp),%rdx
          │  0x00007fc082ffb3dd:   data16 xchg %ax,%ax
          │  0x00007fc082ffb3e0:   test   $0x2,%r10
          │  0x00007fc082ffb3e7:   jne    0x00007fc082ffb9dc
   0.28%  │  0x00007fc082ffb3ed:   or     $0x1,%r10
          │  0x00007fc082ffb3f1:   mov    %r10,(%rdx)
   0.58%  │  0x00007fc082ffb3f4:   mov    %r10,%rax
          │  0x00007fc082ffb3f7:   lock cmpxchg %rdx,(%rsi)
   4.82%  │  0x00007fc082ffb3fc:   nopl   0x0(%rax)
          │  0x00007fc082ffb400:   cmp    %r10,%rax
          │  0x00007fc082ffb403:   jne    0x00007fc082ffba25           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb409:   cmp    $0x5,%ecx
          │  0x00007fc082ffb40c:   je     0x00007fc082ffb765           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.29%  │  0x00007fc082ffb412:   mov    %ebp,0x14(%rsp)
          │  0x00007fc082ffb416:   mov    %edi,0x18(%rsp)
          │  0x00007fc082ffb41a:   mov    %ebx,0x1c(%rsp)
          │  0x00007fc082ffb41e:   mov    %r9d,0x20(%rsp)
   0.27%  │  0x00007fc082ffb423:   mov    %r8d,0x24(%rsp)
          │  0x00007fc082ffb428:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb42c:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb42f:   mov    %rsi,%rax
   0.28%  │  0x00007fc082ffb432:   mov    %r11d,%edx                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │  0x00007fc082ffb435:   mov    %r10d,0x10(%rsp)
          │  0x00007fc082ffb43a:   mov    %rax,0x8(%rsp)
          │  0x00007fc082ffb43f:   nop
   0.24%  │  0x00007fc082ffb440:   data16 xchg %ax,%ax
          ╰  0x00007fc082ffb443:   call   0x00007fc082ffb280           ; ImmutableOopMap {[8]=Oop }
                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ;   {optimized virtual_call}
   0.36%     0x00007fc082ffb448:   nop
             0x00007fc082ffb449:   mov    %eax,%r11d                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
             0x00007fc082ffb44c:   lea    0x28(%rsp),%r10
   0.39%     0x00007fc082ffb451:   mov    (%r10),%rsi
             0x00007fc082ffb454:   test   %rsi,%rsi
             0x00007fc082ffb457:   je     0x00007fc082ffb5da
             0x00007fc082ffb45d:   mov    0x8(%rsp),%r13
             0x00007fc082ffb462:   mov    0x0(%r13),%r8
             0x00007fc082ffb466:   test   $0x2,%r8
             0x00007fc082ffb46d:   jne    0x00007fc082ffbb6d
             0x00007fc082ffb473:   mov    %r10,%rax
             0x00007fc082ffb476:   lock cmpxchg %rsi,0x0(%r13)
             0x00007fc082ffb47c:   nopl   0x0(%rax)
             0x00007fc082ffb480:   jne    0x00007fc082ffbfba           ;*synchronization entry
....................................................................................................
  78.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  78.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   7.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   1.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   1.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 728 
   1.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   1.09%               kernel  [unknown] 
   0.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 755 
   0.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   0.14%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   1.16%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 727 
   2.12%               kernel  [unknown] 
   1.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 728 
   0.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 755 
   0.05%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  os::elapsed_counter 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.49%       jvmci, level 4
   2.12%               kernel
   0.16%            libjvm.so
   0.10%         libc-2.31.so
   0.05%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.00%          c1, level 1
   0.00%          c1, level 3
   0.00%           ld-2.31.so
   0.00%       perf-29186.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:07

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

Benchmark                                                     Mode  Cnt    Score   Error  Units
LockCoarseningBenchmark.baseline                              avgt    5   24.752 ± 0.003  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt           NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5   24.751 ± 0.001  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt           NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5   24.752 ± 0.004  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt           NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5   25.011 ± 2.220  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt           NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  121.100 ± 1.113  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt           NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5  130.449 ± 1.235  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt           NaN            ---
