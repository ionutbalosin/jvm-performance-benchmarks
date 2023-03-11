# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 26.804 ns/op
# Warmup Iteration   2: 24.753 ns/op
# Warmup Iteration   3: 24.836 ns/op
# Warmup Iteration   4: 24.753 ns/op
# Warmup Iteration   5: 24.753 ns/op
Iteration   1: 24.750 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline":
  24.752 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (24.750, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.747, 24.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 190002 total address lines.
Perf output processed (skipped 58.595 seconds):
 Column 1: cycles (51099 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 727 

                0x00007fcf0eb1b880:   mov    0x8(%rsi),%r10d
                0x00007fcf0eb1b884:   movabs $0x800000000,%r12
                0x00007fcf0eb1b88e:   add    %r12,%r10
                0x00007fcf0eb1b891:   xor    %r12,%r12
                0x00007fcf0eb1b894:   cmp    %r10,%rax
                0x00007fcf0eb1b897:   jne    0x00007fcf0701e780           ;   {runtime_call ic_miss_stub}
                0x00007fcf0eb1b89d:   nop
                0x00007fcf0eb1b89e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007fcf0eb1b8a0:   mov    %eax,-0x14000(%rsp)
   1.51%        0x00007fcf0eb1b8a7:   sub    $0x18,%rsp
                0x00007fcf0eb1b8ab:   mov    %rbp,0x10(%rsp)
                0x00007fcf0eb1b8b0:   mov    %rsi,%r11
   1.56%        0x00007fcf0eb1b8b3:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   4.44%        0x00007fcf0eb1b8b6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@1 (line 209)
                0x00007fcf0eb1b8ba:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
                0x00007fcf0eb1b8be:   mov    %eax,%r9d
                0x00007fcf0eb1b8c1:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
   1.40%        0x00007fcf0eb1b8c4:   test   $0x2,%r10
          ╭     0x00007fcf0eb1b8cb:   jne    0x00007fcf0eb1b94c
          │     0x00007fcf0eb1b8d1:   or     $0x1,%r10
          │     0x00007fcf0eb1b8d5:   mov    %r10,(%r8)
   2.98%  │     0x00007fcf0eb1b8d8:   mov    %r10,%rax
          │     0x00007fcf0eb1b8db:   lock cmpxchg %r8,(%r11)
  26.85%  │     0x00007fcf0eb1b8e0:   cmp    %r10,%rax
          │╭    0x00007fcf0eb1b8e3:   jne    0x00007fcf0eb1b978           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
          ││ ↗  0x00007fcf0eb1b8e9:   lea    (%rsp),%r10
   1.48%  ││ │  0x00007fcf0eb1b8ed:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          ││ │  0x00007fcf0eb1b8f0:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@13 (line 212)
          ││ │  0x00007fcf0eb1b8f4:   test   %rsi,%rsi
          ││╭│  0x00007fcf0eb1b8f7:   je     0x00007fcf0eb1b91b
          ││││  0x00007fcf0eb1b8fd:   mov    (%r11),%rcx
  18.53%  ││││  0x00007fcf0eb1b900:   test   $0x2,%rcx
          ││││  0x00007fcf0eb1b907:   jne    0x00007fcf0eb1b995
   1.56%  ││││  0x00007fcf0eb1b90d:   mov    %r10,%rax
          ││││  0x00007fcf0eb1b910:   lock cmpxchg %rsi,(%r11)
  25.01%  ││││  0x00007fcf0eb1b915:   jne    0x00007fcf0eb1b9eb           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          ││↘│  0x00007fcf0eb1b91b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@16 (line 212)
   1.49%  ││ │  0x00007fcf0eb1b91e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@23 (line 213)
          ││ │  0x00007fcf0eb1b921:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@30 (line 214)
          ││ │  0x00007fcf0eb1b924:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@37 (line 215)
          ││ │  0x00007fcf0eb1b927:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@44 (line 216)
   1.47%  ││ │  0x00007fcf0eb1b92a:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@51 (line 217)
          ││ │  0x00007fcf0eb1b92d:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@58 (line 218)
          ││ │  0x00007fcf0eb1b930:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@65 (line 219)
          ││ │  0x00007fcf0eb1b933:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@78 (line 222)
   1.50%  ││ │  0x00007fcf0eb1b936:   mov    0x10(%rsp),%rbp
          ││ │  0x00007fcf0eb1b93b:   add    $0x18,%rsp
          ││ │  0x00007fcf0eb1b93f:   mov    0x348(%r15),%rcx
          ││ │  0x00007fcf0eb1b946:   test   %eax,(%rcx)                  ;   {poll_return}
   1.50%  ││ │  0x00007fcf0eb1b948:   vzeroupper 
   1.55%  ││ │  0x00007fcf0eb1b94b:   ret    
          ↘│ │  0x00007fcf0eb1b94c:   movq   $0x3,(%r8)
           │ │  0x00007fcf0eb1b953:   mov    0x3e(%r10),%rsi
           │ │  0x00007fcf0eb1b957:   test   %rsi,%rsi
           │ │  0x00007fcf0eb1b95a:   jne    0x00007fcf0eb1b9da
           │ │  0x00007fcf0eb1b960:   mov    $0x0,%rax
           │ │  0x00007fcf0eb1b967:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007fcf0eb1b96d:   je     0x00007fcf0eb1b8e9
           │    0x00007fcf0eb1b973:   jmp    0x00007fcf0eb1b9c9
           ↘    0x00007fcf0eb1b978:   sub    %rsp,%rax
                0x00007fcf0eb1b97b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  92.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 727 
   4.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 749 
   1.53%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.65%  <...other 252 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 727 
   4.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 749 
   2.32%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  event_to_env 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  os::elapsedTime 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.10%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.39%       jvmci, level 4
   2.32%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.991 ns/op
# Warmup Iteration   2: 24.823 ns/op
# Warmup Iteration   3: 24.754 ns/op
# Warmup Iteration   4: 24.753 ns/op
# Warmup Iteration   5: 24.753 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.753 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.768 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls":
  24.755 ±(99.9%) 0.027 ns/op [Average]
  (min, avg, max) = (24.751, 24.755, 24.768), stdev = 0.007
  CI (99.9%): [24.728, 24.782] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 188156 total address lines.
Perf output processed (skipped 58.564 seconds):
 Column 1: cycles (50441 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 724 

                0x00007f83eab19b00:   mov    0x8(%rsi),%r10d
                0x00007f83eab19b04:   movabs $0x800000000,%r12
                0x00007f83eab19b0e:   add    %r12,%r10
                0x00007f83eab19b11:   xor    %r12,%r12
                0x00007f83eab19b14:   cmp    %r10,%rax
                0x00007f83eab19b17:   jne    0x00007f83e301e780           ;   {runtime_call ic_miss_stub}
                0x00007f83eab19b1d:   nop
                0x00007f83eab19b1e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f83eab19b20:   mov    %eax,-0x14000(%rsp)
   1.34%        0x00007f83eab19b27:   sub    $0x18,%rsp
                0x00007f83eab19b2b:   mov    %rbp,0x10(%rsp)
                0x00007f83eab19b30:   mov    %rsi,%r11
   1.67%        0x00007f83eab19b33:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   4.55%        0x00007f83eab19b36:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 124)
                0x00007f83eab19b3a:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
                0x00007f83eab19b3e:   mov    %eax,%r9d
                0x00007f83eab19b41:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
   1.56%        0x00007f83eab19b44:   test   $0x2,%r10
          ╭     0x00007f83eab19b4b:   jne    0x00007f83eab19bcc
          │     0x00007f83eab19b51:   or     $0x1,%r10
          │     0x00007f83eab19b55:   mov    %r10,(%r8)
   3.00%  │     0x00007f83eab19b58:   mov    %r10,%rax
          │     0x00007f83eab19b5b:   lock cmpxchg %r8,(%r11)
  27.16%  │     0x00007f83eab19b60:   cmp    %r10,%rax
          │╭    0x00007f83eab19b63:   jne    0x00007f83eab19bf8           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
          ││ ↗  0x00007f83eab19b69:   lea    (%rsp),%r10
   1.58%  ││ │  0x00007f83eab19b6d:   mov    (%r10),%rsi                  ;*synchronization entry
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││ │  0x00007f83eab19b70:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
          ││ │  0x00007f83eab19b74:   test   %rsi,%rsi
          ││╭│  0x00007f83eab19b77:   je     0x00007f83eab19b9b
          ││││  0x00007f83eab19b7d:   mov    (%r11),%rcx
  18.77%  ││││  0x00007f83eab19b80:   test   $0x2,%rcx
          ││││  0x00007f83eab19b87:   jne    0x00007f83eab19c15
   1.49%  ││││  0x00007f83eab19b8d:   mov    %r10,%rax
          ││││  0x00007f83eab19b90:   lock cmpxchg %rsi,(%r11)
  25.02%  ││││  0x00007f83eab19b95:   jne    0x00007f83eab19c6b           ;*synchronization entry
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││↘│  0x00007f83eab19b9b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   1.67%  ││ │  0x00007f83eab19b9e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@15 (line 127)
          ││ │  0x00007f83eab19ba1:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@21 (line 128)
          ││ │  0x00007f83eab19ba4:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@27 (line 129)
          ││ │  0x00007f83eab19ba7:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@33 (line 130)
   1.57%  ││ │  0x00007f83eab19baa:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@39 (line 131)
          ││ │  0x00007f83eab19bad:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@45 (line 132)
          ││ │  0x00007f83eab19bb0:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││ │  0x00007f83eab19bb3:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 135)
   1.51%  ││ │  0x00007f83eab19bb6:   mov    0x10(%rsp),%rbp
          ││ │  0x00007f83eab19bbb:   add    $0x18,%rsp
          ││ │  0x00007f83eab19bbf:   mov    0x348(%r15),%rcx
          ││ │  0x00007f83eab19bc6:   test   %eax,(%rcx)                  ;   {poll_return}
   1.60%  ││ │  0x00007f83eab19bc8:   vzeroupper 
   1.52%  ││ │  0x00007f83eab19bcb:   ret    
          ↘│ │  0x00007f83eab19bcc:   movq   $0x3,(%r8)
           │ │  0x00007f83eab19bd3:   mov    0x3e(%r10),%rsi
           │ │  0x00007f83eab19bd7:   test   %rsi,%rsi
           │ │  0x00007f83eab19bda:   jne    0x00007f83eab19c5a
           │ │  0x00007f83eab19be0:   mov    $0x0,%rax
           │ │  0x00007f83eab19be7:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007f83eab19bed:   je     0x00007f83eab19b69
           │    0x00007f83eab19bf3:   jmp    0x00007f83eab19c49
           ↘    0x00007f83eab19bf8:   sub    %rsp,%rax
                0x00007f83eab19bfb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  94.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 724 
   4.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 739 
   0.28%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.65%  <...other 231 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 724 
   4.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 739 
   1.12%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%            libjvm.so  os::elapsedTime 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.63%       jvmci, level 4
   1.12%               kernel
   0.10%            libjvm.so
   0.07%         libc-2.31.so
   0.02%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.029 ns/op
# Warmup Iteration   2: 24.967 ns/op
# Warmup Iteration   3: 24.751 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.754 ns/op
Iteration   3: 24.754 ns/op
Iteration   4: 24.753 ns/op
Iteration   5: 24.754 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  24.753 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (24.752, 24.753, 24.754), stdev = 0.001
  CI (99.9%): [24.749, 24.758] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 189585 total address lines.
Perf output processed (skipped 58.563 seconds):
 Column 1: cycles (50846 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 719 

               #           [sp+0x20]  (sp of caller)
               0x00007f8c86b19ca0:   mov    0x8(%rsi),%r10d
               0x00007f8c86b19ca4:   movabs $0x800000000,%r12
               0x00007f8c86b19cae:   add    %r12,%r10
               0x00007f8c86b19cb1:   xor    %r12,%r12
               0x00007f8c86b19cb4:   cmp    %r10,%rax
               0x00007f8c86b19cb7:   jne    0x00007f8c7f01e780           ;   {runtime_call ic_miss_stub}
               0x00007f8c86b19cbd:   nop
               0x00007f8c86b19cbe:   xchg   %ax,%ax
             [Verified Entry Point]
   1.57%       0x00007f8c86b19cc0:   mov    %eax,-0x14000(%rsp)
               0x00007f8c86b19cc7:   sub    $0x18,%rsp
   0.01%       0x00007f8c86b19ccb:   mov    %rbp,0x10(%rsp)
   1.50%       0x00007f8c86b19cd0:   mov    %rsi,%r11
               0x00007f8c86b19cd3:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 141)
               0x00007f8c86b19cd7:   mov    %eax,%r8d
   0.00%       0x00007f8c86b19cda:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 141)
   1.51%       0x00007f8c86b19cdd:   data16 xchg %ax,%ax
               0x00007f8c86b19ce0:   cmp    $0x21,%r8d
               0x00007f8c86b19ce4:   jl     0x00007f8c86b19f34           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 144)
               0x00007f8c86b19cea:   mov    (%r11),%r10
   5.94%       0x00007f8c86b19ced:   lea    (%rsp),%r9
               0x00007f8c86b19cf1:   test   $0x2,%r10
          ╭    0x00007f8c86b19cf8:   jne    0x00007f8c86b19dd6
   1.47%  │    0x00007f8c86b19cfe:   or     $0x1,%r10
          │    0x00007f8c86b19d02:   mov    %r10,(%r9)
   3.00%  │    0x00007f8c86b19d05:   mov    %r10,%rax
          │    0x00007f8c86b19d08:   lock cmpxchg %r9,(%r11)
  27.31%  │    0x00007f8c86b19d0d:   cmp    %r10,%rax
          │    0x00007f8c86b19d10:   jne    0x00007f8c86b19e05           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
          │ ↗  0x00007f8c86b19d16:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   1.52%  │ │  0x00007f8c86b19d1a:   mov    %r8d,%eax
          │ │  0x00007f8c86b19d1d:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
          │ │  0x00007f8c86b19d20:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d23:   jl     0x00007f8c86b19f50           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
          │ │  0x00007f8c86b19d29:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
   1.52%  │ │  0x00007f8c86b19d2c:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d2f:   jl     0x00007f8c86b19f2b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
          │ │  0x00007f8c86b19d35:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
          │ │  0x00007f8c86b19d38:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007f8c86b19d40:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d43:   jl     0x00007f8c86b19f18           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
   1.62%  │ │  0x00007f8c86b19d49:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
          │ │  0x00007f8c86b19d4c:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d4f:   jl     0x00007f8c86b19ee6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
          │ │  0x00007f8c86b19d55:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
          │ │  0x00007f8c86b19d58:   nopl   0x0(%rax,%rax,1)
   1.46%  │ │  0x00007f8c86b19d60:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d63:   jl     0x00007f8c86b19f22           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 159)
          │ │  0x00007f8c86b19d69:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
          │ │  0x00007f8c86b19d6c:   cmp    $0x21,%eax
          │ │  0x00007f8c86b19d6f:   jl     0x00007f8c86b19f0f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 162)
          │ │  0x00007f8c86b19d75:   mov    %eax,%ecx
   1.54%  │ │  0x00007f8c86b19d77:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
          │ │  0x00007f8c86b19d7a:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007f8c86b19d80:   cmp    $0x21,%ecx
          │ │  0x00007f8c86b19d83:   jl     0x00007f8c86b19f06           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 165)
          │ │  0x00007f8c86b19d89:   lea    (%rsp),%r10
   1.51%  │ │  0x00007f8c86b19d8d:   mov    (%r10),%rsi
          │ │  0x00007f8c86b19d90:   test   %rsi,%rsi
          │╭│  0x00007f8c86b19d93:   je     0x00007f8c86b19dbb
          │││  0x00007f8c86b19d99:   mov    (%r11),%r8
  10.74%  │││  0x00007f8c86b19d9c:   nopl   0x0(%rax)
          │││  0x00007f8c86b19da0:   test   $0x2,%r8
          │││  0x00007f8c86b19da7:   jne    0x00007f8c86b19e1d
   1.54%  │││  0x00007f8c86b19dad:   mov    %r10,%rax
          │││  0x00007f8c86b19db0:   lock cmpxchg %rsi,(%r11)
  24.74%  │││  0x00007f8c86b19db5:   jne    0x00007f8c86b19e76           ;*synchronization entry
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   0.01%  │↘│  0x00007f8c86b19dbb:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   1.44%  │ │  0x00007f8c86b19dbe:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 169)
          │ │  0x00007f8c86b19dc0:   mov    0x10(%rsp),%rbp
          │ │  0x00007f8c86b19dc5:   add    $0x18,%rsp
          │ │  0x00007f8c86b19dc9:   mov    0x348(%r15),%rcx
   1.50%  │ │  0x00007f8c86b19dd0:   test   %eax,(%rcx)                  ;   {poll_return}
          │ │  0x00007f8c86b19dd2:   vzeroupper 
   1.41%  │ │  0x00007f8c86b19dd5:   ret    
          ↘ │  0x00007f8c86b19dd6:   movq   $0x3,(%r9)
            │  0x00007f8c86b19ddd:   mov    0x3e(%r10),%rsi
            │  0x00007f8c86b19de1:   test   %rsi,%rsi
            │  0x00007f8c86b19de4:   jne    0x00007f8c86b19e65
            │  0x00007f8c86b19dea:   mov    $0x0,%rax
            │  0x00007f8c86b19df1:   lock cmpxchg %r15,0x3e(%r10)
            ╰  0x00007f8c86b19df7:   je     0x00007f8c86b19d16
               0x00007f8c86b19dfd:   data16 xchg %ax,%ax
               0x00007f8c86b19e00:   jmp    0x00007f8c86b19e52
               0x00007f8c86b19e05:   sub    %rsp,%rax
....................................................................................................
  92.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 719 
   4.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 738 
   0.99%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.01%  <...other 347 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 719 
   4.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 738 
   2.36%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%   libpthread-2.31.so  _pthread_cleanup_push 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.13%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%       jvmci, level 4
   2.36%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%        libdl-2.31.so
   0.00%          c1, level 3
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.048 ns/op
# Warmup Iteration   2: 24.821 ns/op
# Warmup Iteration   3: 24.755 ns/op
# Warmup Iteration   4: 24.754 ns/op
# Warmup Iteration   5: 24.755 ns/op
Iteration   1: 24.753 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.754 ns/op
Iteration   4: 24.754 ns/op
Iteration   5: 24.755 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  24.754 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (24.753, 24.754, 24.755), stdev = 0.001
  CI (99.9%): [24.752, 24.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 191249 total address lines.
Perf output processed (skipped 58.607 seconds):
 Column 1: cycles (50594 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 733 

               #           [sp+0x20]  (sp of caller)
               0x00007f6e92b19ba0:   mov    0x8(%rsi),%r10d
               0x00007f6e92b19ba4:   movabs $0x800000000,%r12
               0x00007f6e92b19bae:   add    %r12,%r10
               0x00007f6e92b19bb1:   xor    %r12,%r12
               0x00007f6e92b19bb4:   cmp    %r10,%rax
               0x00007f6e92b19bb7:   jne    0x00007f6e8b01e780           ;   {runtime_call ic_miss_stub}
               0x00007f6e92b19bbd:   nop
               0x00007f6e92b19bbe:   xchg   %ax,%ax
             [Verified Entry Point]
   1.51%       0x00007f6e92b19bc0:   mov    %eax,-0x14000(%rsp)
               0x00007f6e92b19bc7:   sub    $0x18,%rsp
               0x00007f6e92b19bcb:   mov    %rbp,0x10(%rsp)
   1.41%       0x00007f6e92b19bd0:   mov    %rsi,%r11
               0x00007f6e92b19bd3:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 175)
               0x00007f6e92b19bd7:   mov    %eax,%r8d
   0.00%       0x00007f6e92b19bda:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 175)
   1.48%       0x00007f6e92b19bdd:   data16 xchg %ax,%ax
               0x00007f6e92b19be0:   cmp    $0x21,%r8d
               0x00007f6e92b19be4:   jl     0x00007f6e92b19e06           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 178)
               0x00007f6e92b19bea:   mov    (%r11),%r10
   6.22%       0x00007f6e92b19bed:   lea    (%rsp),%r9
               0x00007f6e92b19bf1:   test   $0x2,%r10
          ╭    0x00007f6e92b19bf8:   jne    0x00007f6e92b19cd6
   1.66%  │    0x00007f6e92b19bfe:   or     $0x1,%r10
          │    0x00007f6e92b19c02:   mov    %r10,(%r9)
   3.08%  │    0x00007f6e92b19c05:   mov    %r10,%rax
          │    0x00007f6e92b19c08:   lock cmpxchg %r9,(%r11)
  27.63%  │    0x00007f6e92b19c0d:   cmp    %r10,%rax
          │    0x00007f6e92b19c10:   jne    0x00007f6e92b19d05           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
          │ ↗  0x00007f6e92b19c16:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   1.54%  │ │  0x00007f6e92b19c1a:   mov    %r8d,%eax
          │ │  0x00007f6e92b19c1d:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
          │ │  0x00007f6e92b19c20:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c23:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 180)
          │ │  0x00007f6e92b19c29:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
   1.52%  │ │  0x00007f6e92b19c2c:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c2f:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 182)
          │ │  0x00007f6e92b19c35:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
          │ │  0x00007f6e92b19c38:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007f6e92b19c40:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c43:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
   1.49%  │ │  0x00007f6e92b19c49:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
          │ │  0x00007f6e92b19c4c:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c4f:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
          │ │  0x00007f6e92b19c55:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
          │ │  0x00007f6e92b19c58:   nopl   0x0(%rax,%rax,1)
   1.61%  │ │  0x00007f6e92b19c60:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c63:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
          │ │  0x00007f6e92b19c69:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
          │ │  0x00007f6e92b19c6c:   cmp    $0x21,%eax
          │ │  0x00007f6e92b19c6f:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 190)
          │ │  0x00007f6e92b19c75:   mov    %eax,%ecx
   1.54%  │ │  0x00007f6e92b19c77:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
          │ │  0x00007f6e92b19c7a:   nopw   0x0(%rax,%rax,1)
          │ │  0x00007f6e92b19c80:   cmp    $0x21,%ecx
          │ │  0x00007f6e92b19c83:   jl     0x00007f6e92b19de6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 192)
          │ │  0x00007f6e92b19c89:   lea    (%rsp),%r10
   1.51%  │ │  0x00007f6e92b19c8d:   mov    (%r10),%rsi
          │ │  0x00007f6e92b19c90:   test   %rsi,%rsi
          │╭│  0x00007f6e92b19c93:   je     0x00007f6e92b19cbb
          │││  0x00007f6e92b19c99:   mov    (%r11),%r8
  10.90%  │││  0x00007f6e92b19c9c:   nopl   0x0(%rax)
          │││  0x00007f6e92b19ca0:   test   $0x2,%r8
          │││  0x00007f6e92b19ca7:   jne    0x00007f6e92b19d1d
   1.45%  │││  0x00007f6e92b19cad:   mov    %r10,%rax
          │││  0x00007f6e92b19cb0:   lock cmpxchg %rsi,(%r11)
  24.57%  │││  0x00007f6e92b19cb5:   jne    0x00007f6e92b19d76           ;*synchronization entry
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   0.00%  │↘│  0x00007f6e92b19cbb:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   1.50%  │ │  0x00007f6e92b19cbe:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 203)
          │ │  0x00007f6e92b19cc0:   mov    0x10(%rsp),%rbp
          │ │  0x00007f6e92b19cc5:   add    $0x18,%rsp
   0.01%  │ │  0x00007f6e92b19cc9:   mov    0x348(%r15),%rcx
   1.47%  │ │  0x00007f6e92b19cd0:   test   %eax,(%rcx)                  ;   {poll_return}
          │ │  0x00007f6e92b19cd2:   vzeroupper 
   1.58%  │ │  0x00007f6e92b19cd5:   ret    
          ↘ │  0x00007f6e92b19cd6:   movq   $0x3,(%r9)
            │  0x00007f6e92b19cdd:   mov    0x3e(%r10),%rsi
            │  0x00007f6e92b19ce1:   test   %rsi,%rsi
            │  0x00007f6e92b19ce4:   jne    0x00007f6e92b19d65
            │  0x00007f6e92b19cea:   mov    $0x0,%rax
            │  0x00007f6e92b19cf1:   lock cmpxchg %r15,0x3e(%r10)
            ╰  0x00007f6e92b19cf7:   je     0x00007f6e92b19c16
               0x00007f6e92b19cfd:   data16 xchg %ax,%ax
               0x00007f6e92b19d00:   jmp    0x00007f6e92b19d52
               0x00007f6e92b19d05:   sub    %rsp,%rax
....................................................................................................
  93.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 733 
   4.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 750 
   0.49%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.60%  <...other 224 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 733 
   4.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 750 
   1.39%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%            libjvm.so  decode_env::print_hook_comments 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  [unknown] 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.35%       jvmci, level 4
   1.39%               kernel
   0.12%            libjvm.so
   0.05%         libc-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%       perf-52279.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 26.835 ns/op
# Warmup Iteration   2: 24.774 ns/op
# Warmup Iteration   3: 24.841 ns/op
# Warmup Iteration   4: 24.753 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized":
  24.752 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.749, 24.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 189451 total address lines.
Perf output processed (skipped 58.623 seconds):
 Column 1: cycles (50554 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 718 

                0x00007f3926b18d00:   mov    0x8(%rsi),%r10d
                0x00007f3926b18d04:   movabs $0x800000000,%r12
                0x00007f3926b18d0e:   add    %r12,%r10
                0x00007f3926b18d11:   xor    %r12,%r12
                0x00007f3926b18d14:   cmp    %r10,%rax
                0x00007f3926b18d17:   jne    0x00007f391f01e780           ;   {runtime_call ic_miss_stub}
                0x00007f3926b18d1d:   nop
                0x00007f3926b18d1e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f3926b18d20:   mov    %eax,-0x14000(%rsp)
   1.59%        0x00007f3926b18d27:   sub    $0x18,%rsp
                0x00007f3926b18d2b:   mov    %rbp,0x10(%rsp)
                0x00007f3926b18d30:   mov    %rsi,%r11
   1.56%        0x00007f3926b18d33:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   4.55%        0x00007f3926b18d36:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 83)
                0x00007f3926b18d3a:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
                0x00007f3926b18d3e:   mov    %eax,%r9d
                0x00007f3926b18d41:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 83)
   1.45%        0x00007f3926b18d44:   test   $0x2,%r10
          ╭     0x00007f3926b18d4b:   jne    0x00007f3926b18dcc
          │     0x00007f3926b18d51:   or     $0x1,%r10
          │     0x00007f3926b18d55:   mov    %r10,(%r8)
   2.96%  │     0x00007f3926b18d58:   mov    %r10,%rax
          │     0x00007f3926b18d5b:   lock cmpxchg %r8,(%r11)
  27.65%  │     0x00007f3926b18d60:   cmp    %r10,%rax
          │╭    0x00007f3926b18d63:   jne    0x00007f3926b18df8           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
          ││ ↗  0x00007f3926b18d69:   lea    (%rsp),%r10
   1.56%  ││ │  0x00007f3926b18d6d:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 108)
          ││ │  0x00007f3926b18d70:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 100)
          ││ │  0x00007f3926b18d74:   test   %rsi,%rsi
          ││╭│  0x00007f3926b18d77:   je     0x00007f3926b18d9b
          ││││  0x00007f3926b18d7d:   mov    (%r11),%rcx
  18.46%  ││││  0x00007f3926b18d80:   test   $0x2,%rcx
          ││││  0x00007f3926b18d87:   jne    0x00007f3926b18e15
   1.48%  ││││  0x00007f3926b18d8d:   mov    %r10,%rax
          ││││  0x00007f3926b18d90:   lock cmpxchg %rsi,(%r11)
  24.72%  ││││  0x00007f3926b18d95:   jne    0x00007f3926b18e6b           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 108)
          ││↘│  0x00007f3926b18d9b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@16 (line 86)
   1.60%  ││ │  0x00007f3926b18d9e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@27 (line 88)
          ││ │  0x00007f3926b18da1:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@39 (line 90)
          ││ │  0x00007f3926b18da4:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@51 (line 92)
          ││ │  0x00007f3926b18da7:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@63 (line 94)
   1.60%  ││ │  0x00007f3926b18daa:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@75 (line 96)
          ││ │  0x00007f3926b18dad:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@87 (line 98)
          ││ │  0x00007f3926b18db0:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@99 (line 100)
          ││ │  0x00007f3926b18db3:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 110)
   1.54%  ││ │  0x00007f3926b18db6:   mov    0x10(%rsp),%rbp
          ││ │  0x00007f3926b18dbb:   add    $0x18,%rsp
          ││ │  0x00007f3926b18dbf:   mov    0x348(%r15),%rcx
          ││ │  0x00007f3926b18dc6:   test   %eax,(%rcx)                  ;   {poll_return}
   1.54%  ││ │  0x00007f3926b18dc8:   vzeroupper 
   1.59%  ││ │  0x00007f3926b18dcb:   ret    
          ↘│ │  0x00007f3926b18dcc:   movq   $0x3,(%r8)
           │ │  0x00007f3926b18dd3:   mov    0x3e(%r10),%rsi
           │ │  0x00007f3926b18dd7:   test   %rsi,%rsi
           │ │  0x00007f3926b18dda:   jne    0x00007f3926b18e5a
           │ │  0x00007f3926b18de0:   mov    $0x0,%rax
           │ │  0x00007f3926b18de7:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007f3926b18ded:   je     0x00007f3926b18d69
           │    0x00007f3926b18df3:   jmp    0x00007f3926b18e49
           ↘    0x00007f3926b18df8:   sub    %rsp,%rax
                0x00007f3926b18dfb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 718 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 742 
   0.44%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.68%  <...other 262 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 718 
   4.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 742 
   1.26%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  outputStream::print 
   0.00%       perf-52333.map  [unknown] 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  os::PlatformMonitor::wait 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.43%       jvmci, level 4
   1.26%               kernel
   0.13%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%       perf-52333.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.880 ns/op
# Warmup Iteration   2: 24.836 ns/op
# Warmup Iteration   3: 24.753 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.753 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls":
  24.752 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.748, 24.756] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 193708 total address lines.
Perf output processed (skipped 58.794 seconds):
 Column 1: cycles (50980 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 727 

                0x00007f84d6b1cb00:   mov    0x8(%rsi),%r10d
                0x00007f84d6b1cb04:   movabs $0x800000000,%r12
                0x00007f84d6b1cb0e:   add    %r12,%r10
                0x00007f84d6b1cb11:   xor    %r12,%r12
                0x00007f84d6b1cb14:   cmp    %r10,%rax
                0x00007f84d6b1cb17:   jne    0x00007f84cf01e780           ;   {runtime_call ic_miss_stub}
                0x00007f84d6b1cb1d:   nop
                0x00007f84d6b1cb1e:   xchg   %ax,%ax
              [Verified Entry Point]
                0x00007f84d6b1cb20:   mov    %eax,-0x14000(%rsp)
   1.53%        0x00007f84d6b1cb27:   sub    $0x18,%rsp
                0x00007f84d6b1cb2b:   mov    %rbp,0x10(%rsp)
                0x00007f84d6b1cb30:   mov    %rsi,%r11
   1.52%        0x00007f84d6b1cb33:   mov    (%r11),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   4.56%        0x00007f84d6b1cb36:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@1 (line 116)
                0x00007f84d6b1cb3a:   lea    (%rsp),%r8                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
                0x00007f84d6b1cb3e:   mov    %eax,%r9d
                0x00007f84d6b1cb41:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 116)
   1.49%        0x00007f84d6b1cb44:   test   $0x2,%r10
          ╭     0x00007f84d6b1cb4b:   jne    0x00007f84d6b1cbcc
          │     0x00007f84d6b1cb51:   or     $0x1,%r10
          │     0x00007f84d6b1cb55:   mov    %r10,(%r8)
   3.04%  │     0x00007f84d6b1cb58:   mov    %r10,%rax
          │     0x00007f84d6b1cb5b:   lock cmpxchg %r8,(%r11)
  27.39%  │     0x00007f84d6b1cb60:   cmp    %r10,%rax
          │╭    0x00007f84d6b1cb63:   jne    0x00007f84d6b1cbf8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.00%  ││ ↗  0x00007f84d6b1cb69:   lea    (%rsp),%r10
   1.56%  ││ │  0x00007f84d6b1cb6d:   mov    (%r10),%rsi                  ;*synchronization entry
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cb70:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cb74:   test   %rsi,%rsi
          ││╭│  0x00007f84d6b1cb77:   je     0x00007f84d6b1cb9b
          ││││  0x00007f84d6b1cb7d:   mov    (%r11),%rcx
  18.19%  ││││  0x00007f84d6b1cb80:   test   $0x2,%rcx
          ││││  0x00007f84d6b1cb87:   jne    0x00007f84d6b1cc15
   1.55%  ││││  0x00007f84d6b1cb8d:   mov    %r10,%rax
          ││││  0x00007f84d6b1cb90:   lock cmpxchg %rsi,(%r11)
  24.24%  ││││  0x00007f84d6b1cb95:   jne    0x00007f84d6b1cc6b           ;*synchronization entry
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││↘│  0x00007f84d6b1cb9b:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   1.49%  ││ │  0x00007f84d6b1cb9e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cba1:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cba4:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cba7:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   1.51%  ││ │  0x00007f84d6b1cbaa:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.00%  ││ │  0x00007f84d6b1cbad:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cbb0:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ││ │  0x00007f84d6b1cbb3:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@16 (line 118)
   1.60%  ││ │  0x00007f84d6b1cbb6:   mov    0x10(%rsp),%rbp
          ││ │  0x00007f84d6b1cbbb:   add    $0x18,%rsp
          ││ │  0x00007f84d6b1cbbf:   mov    0x348(%r15),%rcx
          ││ │  0x00007f84d6b1cbc6:   test   %eax,(%rcx)                  ;   {poll_return}
   1.55%  ││ │  0x00007f84d6b1cbc8:   vzeroupper 
   1.60%  ││ │  0x00007f84d6b1cbcb:   ret    
          ↘│ │  0x00007f84d6b1cbcc:   movq   $0x3,(%r8)
           │ │  0x00007f84d6b1cbd3:   mov    0x3e(%r10),%rsi
           │ │  0x00007f84d6b1cbd7:   test   %rsi,%rsi
           │ │  0x00007f84d6b1cbda:   jne    0x00007f84d6b1cc5a
           │ │  0x00007f84d6b1cbe0:   mov    $0x0,%rax
           │ │  0x00007f84d6b1cbe7:   lock cmpxchg %r15,0x3e(%r10)
           │ ╰  0x00007f84d6b1cbed:   je     0x00007f84d6b1cb69
           │    0x00007f84d6b1cbf3:   jmp    0x00007f84d6b1cc49
           ↘    0x00007f84d6b1cbf8:   sub    %rsp,%rax
                0x00007f84d6b1cbfb:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  92.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 727 
   4.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 745 
   1.36%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.81%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 727 
   4.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 745 
   2.38%               kernel  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  VMError::is_error_reported 
   0.11%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.34%       jvmci, level 4
   2.38%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:05

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

Benchmark                                                     Mode  Cnt   Score   Error  Units
LockCoarseningBenchmark.baseline                              avgt    5  24.752 ± 0.005  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt          NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5  24.755 ± 0.027  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt          NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5  24.753 ± 0.004  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt          NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5  24.754 ± 0.002  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt          NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  24.752 ± 0.004  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt          NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5  24.752 ± 0.004  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt          NaN            ---
