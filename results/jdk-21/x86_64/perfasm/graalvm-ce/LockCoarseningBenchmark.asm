# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.904 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.818 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.750 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.750 ns/op
Iteration   5: 24.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  24.751 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (24.750, 24.751, 24.752), stdev = 0.001
  CI (99.9%): [24.749, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 212646 total address lines.
Perf output processed (skipped 60.124 seconds):
 Column 1: cycles (50608 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 927 

               # {method} {0x00007fc3ab47c800} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fc42b23aa00:   mov    0x8(%rsi),%r10d
               0x00007fc42b23aa04:   movabs $0x7fc3af000000,%r12
               0x00007fc42b23aa0e:   add    %r12,%r10
               0x00007fc42b23aa11:   xor    %r12,%r12
               0x00007fc42b23aa14:   cmp    %r10,%rax
               0x00007fc42b23aa17:   jne    0x00007fc42ac2f080           ;   {runtime_call ic_miss_stub}
               0x00007fc42b23aa1d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.52%       0x00007fc42b23aa20:   mov    %eax,-0x14000(%rsp)
               0x00007fc42b23aa27:   sub    $0x18,%rsp
               0x00007fc42b23aa2b:   nop
   1.61%       0x00007fc42b23aa2c:   cmpl   $0x1,0x20(%r15)
               0x00007fc42b23aa34:   jne    0x00007fc42b23ac67
               0x00007fc42b23aa3a:   mov    %rbp,0x10(%rsp)
               0x00007fc42b23aa3f:   mov    %rsi,%r11
   1.55%       0x00007fc42b23aa42:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   4.51%       0x00007fc42b23aa45:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@1 (line 208)
               0x00007fc42b23aa49:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
               0x00007fc42b23aa4d:   mov    %eax,%r9d
               0x00007fc42b23aa50:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.53%       0x00007fc42b23aa53:   test   $0x2,%r10
          ╭    0x00007fc42b23aa5a:   jne    0x00007fc42b23aafa
          │    0x00007fc42b23aa60:   or     $0x1,%r10
          │    0x00007fc42b23aa64:   mov    %r10,(%r8)
   3.03%  │    0x00007fc42b23aa67:   mov    %r10,%rax
          │    0x00007fc42b23aa6a:   lock cmpxchg %r8,(%r11)
  27.80%  │    0x00007fc42b23aa6f:   cmp    %r10,%rax
          │    0x00007fc42b23aa72:   jne    0x00007fc42b23ab32
          │    0x00007fc42b23aa78:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.66%  │    0x00007fc42b23aa7f:   lea    (%rsp),%r10
          │    0x00007fc42b23aa83:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.60%  │    0x00007fc42b23aa86:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@13 (line 211)
          │    0x00007fc42b23aa8a:   test   %rsi,%rsi
          │╭   0x00007fc42b23aa8d:   je     0x00007fc42b23aaf1
          ││   0x00007fc42b23aa93:   mov    (%r11),%rcx
  17.07%  ││   0x00007fc42b23aa96:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007fc42b23aaa0:   test   $0x2,%rcx
          ││   0x00007fc42b23aaa7:   jne    0x00007fc42b23ab60
   1.54%  ││   0x00007fc42b23aaad:   mov    %r10,%rax
          ││   0x00007fc42b23aab0:   lock cmpxchg %rsi,(%r11)
  24.20%  ││   0x00007fc42b23aab5:   jne    0x00007fc42b23abcd
          ││   0x00007fc42b23aabb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.47%  ││↗  0x00007fc42b23aac2:   shl    $0x3,%r8d
          │││  0x00007fc42b23aac6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.59%  │││  0x00007fc42b23aac9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@78 (line 221)
          │││  0x00007fc42b23aacc:   mov    0x10(%rsp),%rbp
          │││  0x00007fc42b23aad1:   add    $0x18,%rsp
          │││  0x00007fc42b23aad5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.45%  │││  0x00007fc42b23aae0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fc42b23aae7:   ja     0x00007fc42b23ac77
          │││  0x00007fc42b23aaed:   vzeroupper 
   1.46%  │││  0x00007fc42b23aaf0:   ret    
          │↘│  0x00007fc42b23aaf1:   decq   0x550(%r15)
          │ ╰  0x00007fc42b23aaf8:   jmp    0x00007fc42b23aac2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
          ↘    0x00007fc42b23aafa:   movq   $0x3,(%r8)
               0x00007fc42b23ab01:   mov    0x3e(%r10),%rsi
               0x00007fc42b23ab05:   test   %rsi,%rsi
               0x00007fc42b23ab08:   jne    0x00007fc42b23abb5
               0x00007fc42b23ab0e:   mov    $0x0,%rax
               0x00007fc42b23ab15:   lock cmpxchg %r15,0x3e(%r10)
               0x00007fc42b23ab1b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 927 
   4.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 954 
   0.27%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 927 
   4.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 954 
   1.44%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%      jvmci, level 4
   1.44%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         c1, level 3
   0.00%       libdl-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.041 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.819 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.753 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  24.752 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.750, 24.754] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 214236 total address lines.
Perf output processed (skipped 60.269 seconds):
 Column 1: cycles (51119 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 961 

               # {method} {0x00007f8abf47c418} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f8b3f23db00:   mov    0x8(%rsi),%r10d
               0x00007f8b3f23db04:   movabs $0x7f8ac3000000,%r12
               0x00007f8b3f23db0e:   add    %r12,%r10
               0x00007f8b3f23db11:   xor    %r12,%r12
               0x00007f8b3f23db14:   cmp    %r10,%rax
               0x00007f8b3f23db17:   jne    0x00007f8b3ec2f080           ;   {runtime_call ic_miss_stub}
               0x00007f8b3f23db1d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.43%       0x00007f8b3f23db20:   mov    %eax,-0x14000(%rsp)
               0x00007f8b3f23db27:   sub    $0x18,%rsp
               0x00007f8b3f23db2b:   nop
   1.60%       0x00007f8b3f23db2c:   cmpl   $0x1,0x20(%r15)
               0x00007f8b3f23db34:   jne    0x00007f8b3f23dd67
               0x00007f8b3f23db3a:   mov    %rbp,0x10(%rsp)
               0x00007f8b3f23db3f:   mov    %rsi,%r11
   1.50%       0x00007f8b3f23db42:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   4.57%       0x00007f8b3f23db45:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 123)
               0x00007f8b3f23db49:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
               0x00007f8b3f23db4d:   mov    %eax,%r9d
               0x00007f8b3f23db50:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.47%       0x00007f8b3f23db53:   test   $0x2,%r10
          ╭    0x00007f8b3f23db5a:   jne    0x00007f8b3f23dbfa
          │    0x00007f8b3f23db60:   or     $0x1,%r10
          │    0x00007f8b3f23db64:   mov    %r10,(%r8)
   3.18%  │    0x00007f8b3f23db67:   mov    %r10,%rax
          │    0x00007f8b3f23db6a:   lock cmpxchg %r8,(%r11)
  28.07%  │    0x00007f8b3f23db6f:   cmp    %r10,%rax
          │    0x00007f8b3f23db72:   jne    0x00007f8b3f23dc32
          │    0x00007f8b3f23db78:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.56%  │    0x00007f8b3f23db7f:   lea    (%rsp),%r10
          │    0x00007f8b3f23db83:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.60%  │    0x00007f8b3f23db86:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
          │    0x00007f8b3f23db8a:   test   %rsi,%rsi
          │╭   0x00007f8b3f23db8d:   je     0x00007f8b3f23dbf1
          ││   0x00007f8b3f23db93:   mov    (%r11),%rcx
  16.70%  ││   0x00007f8b3f23db96:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f8b3f23dba0:   test   $0x2,%rcx
          ││   0x00007f8b3f23dba7:   jne    0x00007f8b3f23dc60
   1.41%  ││   0x00007f8b3f23dbad:   mov    %r10,%rax
          ││   0x00007f8b3f23dbb0:   lock cmpxchg %rsi,(%r11)
  23.73%  ││   0x00007f8b3f23dbb5:   jne    0x00007f8b3f23dccd
          ││   0x00007f8b3f23dbbb:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.57%  ││↗  0x00007f8b3f23dbc2:   shl    $0x3,%r8d
          │││  0x00007f8b3f23dbc6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.45%  │││  0x00007f8b3f23dbc9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 134)
          │││  0x00007f8b3f23dbcc:   mov    0x10(%rsp),%rbp
          │││  0x00007f8b3f23dbd1:   add    $0x18,%rsp
          │││  0x00007f8b3f23dbd5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.43%  │││  0x00007f8b3f23dbe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f8b3f23dbe7:   ja     0x00007f8b3f23dd77
          │││  0x00007f8b3f23dbed:   vzeroupper 
   1.56%  │││  0x00007f8b3f23dbf0:   ret    
          │↘│  0x00007f8b3f23dbf1:   decq   0x550(%r15)
          │ ╰  0x00007f8b3f23dbf8:   jmp    0x00007f8b3f23dbc2           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
          ↘    0x00007f8b3f23dbfa:   movq   $0x3,(%r8)
               0x00007f8b3f23dc01:   mov    0x3e(%r10),%rsi
               0x00007f8b3f23dc05:   test   %rsi,%rsi
               0x00007f8b3f23dc08:   jne    0x00007f8b3f23dcb5
               0x00007f8b3f23dc0e:   mov    $0x0,%rax
               0x00007f8b3f23dc15:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  92.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 961 
   4.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 995 
   1.06%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.84%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 961 
   4.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 995 
   2.41%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  event_to_env 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.00%           libjvm.so  xmlStream::end_head 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.25%      jvmci, level 4
   2.41%              kernel
   0.11%                    
   0.09%        libc-2.31.so
   0.09%           libjvm.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%    perf-2111342.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.069 ns/op
# Warmup Iteration   2: 24.751 ns/op
# Warmup Iteration   3: 24.819 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.753 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  24.752 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.748, 24.755] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 217058 total address lines.
Perf output processed (skipped 60.293 seconds):
 Column 1: cycles (51130 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 952 

               #           [sp+0x20]  (sp of caller)
               0x00007f1607238b80:   mov    0x8(%rsi),%r10d
               0x00007f1607238b84:   movabs $0x7f158b000000,%r12
               0x00007f1607238b8e:   add    %r12,%r10
               0x00007f1607238b91:   xor    %r12,%r12
               0x00007f1607238b94:   cmp    %r10,%rax
               0x00007f1607238b97:   jne    0x00007f1606c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f1607238b9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
               0x00007f1607238ba0:   mov    %eax,-0x14000(%rsp)
   1.53%       0x00007f1607238ba7:   sub    $0x18,%rsp
               0x00007f1607238bab:   nop
               0x00007f1607238bac:   cmpl   $0x1,0x20(%r15)
               0x00007f1607238bb4:   jne    0x00007f1607238ec6
   1.54%       0x00007f1607238bba:   mov    %rbp,0x10(%rsp)
               0x00007f1607238bbf:   mov    %rsi,%r11
               0x00007f1607238bc2:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 140)
               0x00007f1607238bc6:   mov    %eax,%r8d
   1.46%       0x00007f1607238bc9:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 140)
               0x00007f1607238bcc:   cmp    $0x21,%r8d
               0x00007f1607238bd0:   jl     0x00007f1607238e91           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 143)
               0x00007f1607238bd6:   mov    (%r11),%r10
   4.45%       0x00007f1607238bd9:   lea    (%rsp),%r9
               0x00007f1607238bdd:   data16 xchg %ax,%ax
               0x00007f1607238be0:   test   $0x2,%r10
          ╭    0x00007f1607238be7:   jne    0x00007f1607238ceb
   1.49%  │    0x00007f1607238bed:   or     $0x1,%r10
          │    0x00007f1607238bf1:   mov    %r10,(%r9)
   3.14%  │    0x00007f1607238bf4:   mov    %r10,%rax
          │    0x00007f1607238bf7:   lock cmpxchg %r9,(%r11)
  27.39%  │    0x00007f1607238bfc:   nopl   0x0(%rax)
          │    0x00007f1607238c00:   cmp    %r10,%rax
          │    0x00007f1607238c03:   jne    0x00007f1607238d1e
   1.52%  │    0x00007f1607238c09:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007f1607238c10:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   1.50%  │    0x00007f1607238c14:   mov    %r8d,%eax
          │    0x00007f1607238c17:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007f1607238c1a:   nopw   0x0(%rax,%rax,1)
          │    0x00007f1607238c20:   cmp    $0x21,%eax
          │    0x00007f1607238c23:   jl     0x00007f1607238ebd           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 146)
   1.51%  │    0x00007f1607238c29:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
          │    0x00007f1607238c2c:   cmp    $0x21,%eax
          │    0x00007f1607238c2f:   jl     0x00007f1607238eb4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
          │    0x00007f1607238c35:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
          │    0x00007f1607238c38:   nopl   0x0(%rax,%rax,1)
   1.45%  │    0x00007f1607238c40:   cmp    $0x21,%eax
          │    0x00007f1607238c43:   jl     0x00007f1607238e7f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
          │    0x00007f1607238c49:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
          │    0x00007f1607238c4c:   cmp    $0x21,%eax
          │    0x00007f1607238c4f:   jl     0x00007f1607238e47           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
          │    0x00007f1607238c55:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
   1.55%  │    0x00007f1607238c58:   nopl   0x0(%rax,%rax,1)
          │    0x00007f1607238c60:   cmp    $0x21,%eax
          │    0x00007f1607238c63:   jl     0x00007f1607238e88           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
          │    0x00007f1607238c69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
          │    0x00007f1607238c6c:   cmp    $0x21,%eax
          │    0x00007f1607238c6f:   jl     0x00007f1607238e76           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 161)
   1.43%  │    0x00007f1607238c75:   mov    %eax,%r9d
          │    0x00007f1607238c78:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
          │    0x00007f1607238c7b:   nopl   0x0(%rax,%rax,1)
          │    0x00007f1607238c80:   cmp    $0x21,%r9d
          │    0x00007f1607238c84:   jl     0x00007f1607238e6d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 164)
   1.48%  │    0x00007f1607238c8a:   lea    (%rsp),%r8
          │    0x00007f1607238c8e:   mov    (%r8),%rsi
          │    0x00007f1607238c91:   test   %rsi,%rsi
          │╭   0x00007f1607238c94:   je     0x00007f1607238ce2           ;   {no_reloc}
          ││   0x00007f1607238c9a:   mov    (%r11),%rcx
   9.23%  ││   0x00007f1607238c9d:   data16 xchg %ax,%ax
          ││   0x00007f1607238ca0:   test   $0x2,%rcx
          ││   0x00007f1607238ca7:   jne    0x00007f1607238d45
   1.65%  ││   0x00007f1607238cad:   mov    %r8,%rax
          ││   0x00007f1607238cb0:   lock cmpxchg %rsi,(%r11)
  24.37%  ││   0x00007f1607238cb5:   jne    0x00007f1607238db0
          ││   0x00007f1607238cbb:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   1.46%  ││↗  0x00007f1607238cc2:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          │││  0x00007f1607238cc5:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 168)
   1.45%  │││  0x00007f1607238cc8:   mov    0x10(%rsp),%rbp
          │││  0x00007f1607238ccd:   add    $0x18,%rsp
          │││  0x00007f1607238cd1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f1607238cd8:   ja     0x00007f1607238ed6
          │││  0x00007f1607238cde:   vzeroupper 
   1.58%  │││  0x00007f1607238ce1:   ret    
          │↘│  0x00007f1607238ce2:   decq   0x550(%r15)
          │ ╰  0x00007f1607238ce9:   jmp    0x00007f1607238cc2           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          ↘    0x00007f1607238ceb:   movq   $0x3,(%r9)
               0x00007f1607238cf2:   mov    0x3e(%r10),%rsi
               0x00007f1607238cf6:   test   %rsi,%rsi
               0x00007f1607238cf9:   jne    0x00007f1607238d98
               0x00007f1607238cff:   mov    $0x0,%rax
               0x00007f1607238d06:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  91.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 952 
   6.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 988 
   1.41%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 952 
   6.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 988 
   2.47%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  outputStream::update_position 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  jio_print 
   0.00%           libjvm.so  ciMethod::liveness_at_bci 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.22%      jvmci, level 4
   2.47%              kernel
   0.11%           libjvm.so
   0.08%                    
   0.06%        libc-2.31.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.109 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.804 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.752 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  24.752 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.752), stdev = 0.001
  CI (99.9%): [24.751, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 216195 total address lines.
Perf output processed (skipped 60.257 seconds):
 Column 1: cycles (51284 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 944 

               #           [sp+0x20]  (sp of caller)
               0x00007fdacf23ad80:   mov    0x8(%rsi),%r10d
               0x00007fdacf23ad84:   movabs $0x7fda4f000000,%r12
               0x00007fdacf23ad8e:   add    %r12,%r10
               0x00007fdacf23ad91:   xor    %r12,%r12
               0x00007fdacf23ad94:   cmp    %r10,%rax
               0x00007fdacf23ad97:   jne    0x00007fdacec2f080           ;   {runtime_call ic_miss_stub}
               0x00007fdacf23ad9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
               0x00007fdacf23ada0:   mov    %eax,-0x14000(%rsp)
   1.61%       0x00007fdacf23ada7:   sub    $0x18,%rsp
               0x00007fdacf23adab:   nop
               0x00007fdacf23adac:   cmpl   $0x1,0x20(%r15)
               0x00007fdacf23adb4:   jne    0x00007fdacf23b090
   1.54%       0x00007fdacf23adba:   mov    %rbp,0x10(%rsp)
               0x00007fdacf23adbf:   mov    %rsi,%r11
               0x00007fdacf23adc2:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 174)
               0x00007fdacf23adc6:   mov    %eax,%r8d
   1.53%       0x00007fdacf23adc9:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 174)
               0x00007fdacf23adcc:   cmp    $0x21,%r8d
               0x00007fdacf23add0:   jl     0x00007fdacf23b06d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 177)
               0x00007fdacf23add6:   mov    (%r11),%r10
   4.54%       0x00007fdacf23add9:   lea    (%rsp),%r9
               0x00007fdacf23addd:   data16 xchg %ax,%ax
               0x00007fdacf23ade0:   test   $0x2,%r10
          ╭    0x00007fdacf23ade7:   jne    0x00007fdacf23aeeb
   1.50%  │    0x00007fdacf23aded:   or     $0x1,%r10
          │    0x00007fdacf23adf1:   mov    %r10,(%r9)
   3.00%  │    0x00007fdacf23adf4:   mov    %r10,%rax
          │    0x00007fdacf23adf7:   lock cmpxchg %r9,(%r11)
  27.16%  │    0x00007fdacf23adfc:   nopl   0x0(%rax)
          │    0x00007fdacf23ae00:   cmp    %r10,%rax
          │    0x00007fdacf23ae03:   jne    0x00007fdacf23af1e
   1.42%  │    0x00007fdacf23ae09:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007fdacf23ae10:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   1.47%  │    0x00007fdacf23ae14:   mov    %r8d,%eax
          │    0x00007fdacf23ae17:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007fdacf23ae1a:   nopw   0x0(%rax,%rax,1)
          │    0x00007fdacf23ae20:   cmp    $0x21,%eax
          │    0x00007fdacf23ae23:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 179)
   1.51%  │    0x00007fdacf23ae29:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
          │    0x00007fdacf23ae2c:   cmp    $0x21,%eax
          │    0x00007fdacf23ae2f:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
          │    0x00007fdacf23ae35:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
          │    0x00007fdacf23ae38:   nopl   0x0(%rax,%rax,1)
   1.43%  │    0x00007fdacf23ae40:   cmp    $0x21,%eax
          │    0x00007fdacf23ae43:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
          │    0x00007fdacf23ae49:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
          │    0x00007fdacf23ae4c:   cmp    $0x21,%eax
          │    0x00007fdacf23ae4f:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
          │    0x00007fdacf23ae55:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
   1.39%  │    0x00007fdacf23ae58:   nopl   0x0(%rax,%rax,1)
          │    0x00007fdacf23ae60:   cmp    $0x21,%eax
          │    0x00007fdacf23ae63:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
          │    0x00007fdacf23ae69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
          │    0x00007fdacf23ae6c:   cmp    $0x21,%eax
          │    0x00007fdacf23ae6f:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 189)
   1.48%  │    0x00007fdacf23ae75:   mov    %eax,%r9d
          │    0x00007fdacf23ae78:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
          │    0x00007fdacf23ae7b:   nopl   0x0(%rax,%rax,1)
          │    0x00007fdacf23ae80:   cmp    $0x21,%r9d
          │    0x00007fdacf23ae84:   jl     0x00007fdacf23b047           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 191)
   1.55%  │    0x00007fdacf23ae8a:   lea    (%rsp),%r8
          │    0x00007fdacf23ae8e:   mov    (%r8),%rsi
          │    0x00007fdacf23ae91:   test   %rsi,%rsi
          │╭   0x00007fdacf23ae94:   je     0x00007fdacf23aee2           ;   {no_reloc}
          ││   0x00007fdacf23ae9a:   mov    (%r11),%rcx
   9.00%  ││   0x00007fdacf23ae9d:   data16 xchg %ax,%ax
          ││   0x00007fdacf23aea0:   test   $0x2,%rcx
          ││   0x00007fdacf23aea7:   jne    0x00007fdacf23af45
   1.44%  ││   0x00007fdacf23aead:   mov    %r8,%rax
          ││   0x00007fdacf23aeb0:   lock cmpxchg %rsi,(%r11)
  24.56%  ││   0x00007fdacf23aeb5:   jne    0x00007fdacf23afb0
          ││   0x00007fdacf23aebb:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   1.56%  ││↗  0x00007fdacf23aec2:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          │││  0x00007fdacf23aec5:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 202)
   1.48%  │││  0x00007fdacf23aec8:   mov    0x10(%rsp),%rbp
          │││  0x00007fdacf23aecd:   add    $0x18,%rsp
          │││  0x00007fdacf23aed1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fdacf23aed8:   ja     0x00007fdacf23b0a0
          │││  0x00007fdacf23aede:   vzeroupper 
   1.52%  │││  0x00007fdacf23aee1:   ret    
          │↘│  0x00007fdacf23aee2:   decq   0x550(%r15)
          │ ╰  0x00007fdacf23aee9:   jmp    0x00007fdacf23aec2           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          ↘    0x00007fdacf23aeeb:   movq   $0x3,(%r9)
               0x00007fdacf23aef2:   mov    0x3e(%r10),%rsi
               0x00007fdacf23aef6:   test   %rsi,%rsi
               0x00007fdacf23aef9:   jne    0x00007fdacf23af98
               0x00007fdacf23aeff:   mov    $0x0,%rax
               0x00007fdacf23af06:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  90.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 944 
   6.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 979 
   1.56%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.96%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 944 
   6.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 979 
   2.64%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.93%      jvmci, level 4
   2.64%              kernel
   0.15%           libjvm.so
   0.12%        libc-2.31.so
   0.10%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 122.281 ns/op
# Warmup Iteration   2: 120.979 ns/op
# Warmup Iteration   3: 121.116 ns/op
# Warmup Iteration   4: 120.864 ns/op
# Warmup Iteration   5: 120.987 ns/op
Iteration   1: 120.989 ns/op
Iteration   2: 120.822 ns/op
Iteration   3: 120.878 ns/op
Iteration   4: 120.942 ns/op
Iteration   5: 120.894 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  120.905 ±(99.9%) 0.244 ns/op [Average]
  (min, avg, max) = (120.822, 120.905, 120.989), stdev = 0.063
  CI (99.9%): [120.661, 121.150] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 218111 total address lines.
Perf output processed (skipped 60.444 seconds):
 Column 1: cycles (50915 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 

            # {method} {0x00007f08e347c1b0} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
            #           [sp+0x60]  (sp of caller)
            0x00007f096323c840:   mov    0x8(%rsi),%r10d
            0x00007f096323c844:   movabs $0x7f08e7000000,%r12
            0x00007f096323c84e:   add    %r12,%r10
            0x00007f096323c851:   xor    %r12,%r12
            0x00007f096323c854:   cmp    %r10,%rax
            0x00007f096323c857:   jne    0x00007f0962c2f080           ;   {runtime_call ic_miss_stub}
            0x00007f096323c85d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.37%    0x00007f096323c860:   mov    %eax,-0x14000(%rsp)
            0x00007f096323c867:   sub    $0x58,%rsp
   0.29%    0x00007f096323c86b:   nop
            0x00007f096323c86c:   cmpl   $0x1,0x20(%r15)
            0x00007f096323c874:   jne    0x00007f096323d835
            0x00007f096323c87a:   mov    %rbp,0x50(%rsp)
   0.31%    0x00007f096323c87f:   mov    %rsi,%r11
            0x00007f096323c882:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   1.32%    0x00007f096323c885:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 82)
            0x00007f096323c889:   lea    0x40(%rsp),%r8               ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
            0x00007f096323c88e:   mov    %eax,%r9d
            0x00007f096323c891:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 82)
   0.30%    0x00007f096323c894:   nopl   0x0(%rax,%rax,1)
            0x00007f096323c89c:   data16 data16 xchg %ax,%ax
            0x00007f096323c8a0:   test   $0x2,%r10
            0x00007f096323c8a7:   jne    0x00007f096323cdd2
            0x00007f096323c8ad:   or     $0x1,%r10
   0.33%    0x00007f096323c8b1:   mov    %r10,(%r8)
   0.33%    0x00007f096323c8b4:   mov    %r10,%rax
            0x00007f096323c8b7:   lock cmpxchg %r8,(%r11)
   5.61%    0x00007f096323c8bc:   nopl   0x0(%rax)
            0x00007f096323c8c0:   cmp    %r10,%rax
            0x00007f096323c8c3:   jne    0x00007f096323cf11
   0.32%    0x00007f096323c8c9:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
            0x00007f096323c8d0:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
   3.89%    0x00007f096323c8d3:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@13 (line 85)
            0x00007f096323c8d7:   lea    0x8(%rsp),%r8
            0x00007f096323c8dc:   nopl   0x0(%rax)
            0x00007f096323c8e0:   test   $0x2,%r10
            0x00007f096323c8e7:   jne    0x00007f096323cd68
   0.32%    0x00007f096323c8ed:   or     $0x1,%r10
            0x00007f096323c8f1:   mov    %r10,(%r8)
   0.61%    0x00007f096323c8f4:   mov    %r10,%rax
            0x00007f096323c8f7:   lock cmpxchg %r8,(%r11)
   7.31%    0x00007f096323c8fc:   nopl   0x0(%rax)
            0x00007f096323c900:   cmp    %r10,%rax
            0x00007f096323c903:   jne    0x00007f096323cf65
            0x00007f096323c909:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
            0x00007f096323c910:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
   3.47%    0x00007f096323c913:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@24 (line 87)
            0x00007f096323c917:   lea    0x10(%rsp),%r8
            0x00007f096323c91c:   nopl   0x0(%rax)
            0x00007f096323c920:   test   $0x2,%r10
            0x00007f096323c927:   jne    0x00007f096323ce3b
   0.34%    0x00007f096323c92d:   or     $0x1,%r10
            0x00007f096323c931:   mov    %r10,(%r8)
   0.64%    0x00007f096323c934:   mov    %r10,%rax
            0x00007f096323c937:   lock cmpxchg %r8,(%r11)
   5.38%    0x00007f096323c93c:   nopl   0x0(%rax)
            0x00007f096323c940:   cmp    %r10,%rax
            0x00007f096323c943:   jne    0x00007f096323cecb
            0x00007f096323c949:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
            0x00007f096323c950:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
   3.44%    0x00007f096323c953:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@36 (line 89)
                                                                      ;   {no_reloc}
            0x00007f096323c957:   lea    0x18(%rsp),%r8
            0x00007f096323c95c:   nopl   0x0(%rax)
            0x00007f096323c960:   test   $0x2,%r10
            0x00007f096323c967:   jne    0x00007f096323cd32
   0.30%    0x00007f096323c96d:   or     $0x1,%r10
            0x00007f096323c971:   mov    %r10,(%r8)
   0.57%    0x00007f096323c974:   mov    %r10,%rax
            0x00007f096323c977:   lock cmpxchg %r8,(%r11)
   5.39%    0x00007f096323c97c:   nopl   0x0(%rax)
            0x00007f096323c980:   cmp    %r10,%rax
            0x00007f096323c983:   jne    0x00007f096323cf88
            0x00007f096323c989:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
            0x00007f096323c990:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   3.39%    0x00007f096323c993:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@48 (line 91)
            0x00007f096323c997:   lea    0x20(%rsp),%r8
            0x00007f096323c99c:   nopl   0x0(%rax)
            0x00007f096323c9a0:   test   $0x2,%r10
            0x00007f096323c9a7:   jne    0x00007f096323ce72
   0.29%    0x00007f096323c9ad:   or     $0x1,%r10
            0x00007f096323c9b1:   mov    %r10,(%r8)
   0.60%    0x00007f096323c9b4:   mov    %r10,%rax
            0x00007f096323c9b7:   lock cmpxchg %r8,(%r11)
   5.27%    0x00007f096323c9bc:   nopl   0x0(%rax)
            0x00007f096323c9c0:   cmp    %r10,%rax
            0x00007f096323c9c3:   jne    0x00007f096323cf40
            0x00007f096323c9c9:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   0.26%    0x00007f096323c9d0:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
   3.10%    0x00007f096323c9d3:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@60 (line 93)
            0x00007f096323c9d7:   lea    0x28(%rsp),%r8
            0x00007f096323c9dc:   nopl   0x0(%rax)
            0x00007f096323c9e0:   test   $0x2,%r10
            0x00007f096323c9e7:   jne    0x00007f096323ce08
   0.27%    0x00007f096323c9ed:   or     $0x1,%r10
            0x00007f096323c9f1:   mov    %r10,(%r8)
   0.61%    0x00007f096323c9f4:   mov    %r10,%rax
            0x00007f096323c9f7:   lock cmpxchg %r8,(%r11)
   5.16%    0x00007f096323c9fc:   nopl   0x0(%rax)
            0x00007f096323ca00:   cmp    %r10,%rax
            0x00007f096323ca03:   jne    0x00007f096323ceee
            0x00007f096323ca09:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
            0x00007f096323ca10:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
   3.37%    0x00007f096323ca13:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@72 (line 95)
            0x00007f096323ca17:   lea    0x30(%rsp),%r8
            0x00007f096323ca1c:   nopl   0x0(%rax)
            0x00007f096323ca20:   test   $0x2,%r10
            0x00007f096323ca27:   jne    0x00007f096323cd9b
   0.32%    0x00007f096323ca2d:   or     $0x1,%r10
            0x00007f096323ca31:   mov    %r10,(%r8)
   0.59%    0x00007f096323ca34:   mov    %r10,%rax
            0x00007f096323ca37:   lock cmpxchg %r8,(%r11)
   5.30%    0x00007f096323ca3c:   nopl   0x0(%rax)
            0x00007f096323ca40:   cmp    %r10,%rax
            0x00007f096323ca43:   jne    0x00007f096323cea8
            0x00007f096323ca49:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
            0x00007f096323ca50:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
   3.39%    0x00007f096323ca53:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@84 (line 97)
                                                                      ;   {no_reloc}
            0x00007f096323ca57:   lea    0x38(%rsp),%r8
            0x00007f096323ca5c:   nopl   0x0(%rax)
            0x00007f096323ca60:   test   $0x2,%r10
            0x00007f096323ca67:   jne    0x00007f096323ccfe
   0.30%    0x00007f096323ca6d:   or     $0x1,%r10
            0x00007f096323ca71:   mov    %r10,(%r8)
   0.65%    0x00007f096323ca74:   mov    %r10,%rax
            0x00007f096323ca77:   lock cmpxchg %r8,(%r11)
   5.21%    0x00007f096323ca7c:   nopl   0x0(%rax)
            0x00007f096323ca80:   cmp    %r10,%rax
            0x00007f096323ca83:   jne    0x00007f096323cfab
            0x00007f096323ca89:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
            0x00007f096323ca90:   lea    0x38(%rsp),%r10
   0.30%    0x00007f096323ca95:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 100)
            0x00007f096323ca98:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 99)
            0x00007f096323ca9c:   nopl   0x0(%rax)
            0x00007f096323caa0:   test   %rsi,%rsi
            0x00007f096323caa3:   je     0x00007f096323cc9f
            0x00007f096323caa9:   mov    (%r11),%r8
            0x00007f096323caac:   test   $0x2,%r8
            0x00007f096323cab3:   jne    0x00007f096323d17d
            0x00007f096323cab9:   mov    %r10,%rax
....................................................................................................
  79.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 

               0x00007f096323cc0d:   je     0x00007f096323ccf2
               0x00007f096323cc13:   mov    (%r11),%r8
               0x00007f096323cc16:   data16 nopw 0x0(%rax,%rax,1)
               0x00007f096323cc20:   test   $0x2,%r8
               0x00007f096323cc27:   jne    0x00007f096323d0bd
               0x00007f096323cc2d:   mov    %r10,%rax
               0x00007f096323cc30:   lock cmpxchg %rsi,(%r11)
               0x00007f096323cc35:   jne    0x00007f096323d3f6
               0x00007f096323cc3b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@186 (line 106)
   0.28%    ↗  0x00007f096323cc42:   lea    0x40(%rsp),%r10
            │  0x00007f096323cc47:   mov    (%r10),%rsi
            │  0x00007f096323cc4a:   test   %rsi,%rsi
          ╭ │  0x00007f096323cc4d:   je     0x00007f096323cce9
          │ │  0x00007f096323cc53:   mov    (%r11),%r8                   ;   {no_reloc}
   0.34%  │ │  0x00007f096323cc56:   data16 nopw 0x0(%rax,%rax,1)
          │ │  0x00007f096323cc60:   test   $0x2,%r8
          │ │  0x00007f096323cc67:   jne    0x00007f096323d009
          │ │  0x00007f096323cc6d:   mov    %r10,%rax
          │ │  0x00007f096323cc70:   lock cmpxchg %rsi,(%r11)
   7.30%  │ │  0x00007f096323cc75:   jne    0x00007f096323d38d
          │ │  0x00007f096323cc7b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   0.36%  │↗│  0x00007f096323cc82:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 109)
          │││  0x00007f096323cc85:   mov    0x50(%rsp),%rbp
   0.29%  │││  0x00007f096323cc8a:   add    $0x58,%rsp
          │││  0x00007f096323cc8e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f096323cc95:   ja     0x00007f096323d846
          │││  0x00007f096323cc9b:   vzeroupper 
   0.31%  │││  0x00007f096323cc9e:   ret    
   0.30%  │││  0x00007f096323cc9f:   decq   0x550(%r15)
          │││  0x00007f096323cca6:   jmp    0x00007f096323cace           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 100)
   0.27%  │││  0x00007f096323ccab:   decq   0x550(%r15)
          │││  0x00007f096323ccb2:   jmp    0x00007f096323cb82           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@145 (line 103)
   0.28%  │││  0x00007f096323ccb7:   decq   0x550(%r15)
          │││  0x00007f096323ccbe:   xchg   %ax,%ax
   0.33%  │││  0x00007f096323ccc0:   jmp    0x00007f096323cbc2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@159 (line 104)
   0.29%  │││  0x00007f096323ccc5:   decq   0x550(%r15)
          │││  0x00007f096323cccc:   jmp    0x00007f096323cb04           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@117 (line 101)
   0.36%  │││  0x00007f096323ccd1:   decq   0x550(%r15)
          │││  0x00007f096323ccd8:   jmp    0x00007f096323cb42           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@131 (line 102)
   0.32%  │││  0x00007f096323ccdd:   decq   0x550(%r15)
          │││  0x00007f096323cce4:   jmp    0x00007f096323cc02           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@173 (line 105)
          ↘││  0x00007f096323cce9:   decq   0x550(%r15)
           ╰│  0x00007f096323ccf0:   jmp    0x00007f096323cc82           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   0.34%    │  0x00007f096323ccf2:   decq   0x550(%r15)
            ╰  0x00007f096323ccf9:   jmp    0x00007f096323cc42           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@186 (line 106)
               0x00007f096323ccfe:   movq   $0x3,(%r8)
               0x00007f096323cd05:   mov    0x3e(%r10),%rsi
               0x00007f096323cd09:   test   %rsi,%rsi
               0x00007f096323cd0c:   jne    0x00007f096323d27d
               0x00007f096323cd12:   mov    $0x0,%rax
               0x00007f096323cd19:   lock cmpxchg %r15,0x3e(%r10)
               0x00007f096323cd1f:   nop
....................................................................................................
  11.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
  11.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   2.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   1.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 989 
   0.84%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.09%  <...other 331 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 955 
   1.96%              kernel  [unknown] 
   0.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 989 
   0.14%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%      jvmci, level 4
   1.96%              kernel
   0.14%           libjvm.so
   0.14%                    
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 139.779 ns/op
# Warmup Iteration   2: 138.804 ns/op
# Warmup Iteration   3: 139.031 ns/op
# Warmup Iteration   4: 138.192 ns/op
# Warmup Iteration   5: 138.894 ns/op
Iteration   1: 138.859 ns/op
Iteration   2: 139.349 ns/op
Iteration   3: 139.579 ns/op
Iteration   4: 139.366 ns/op
Iteration   5: 139.716 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  139.374 ±(99.9%) 1.254 ns/op [Average]
  (min, avg, max) = (138.859, 139.374, 139.716), stdev = 0.326
  CI (99.9%): [138.120, 140.628] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 211712 total address lines.
Perf output processed (skipped 60.125 seconds):
 Column 1: cycles (50936 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 

             # parm1:    rcx       = int
             #           [sp+0x70]  (sp of caller)
             0x00007fc2af23bee0:   mov    0x8(%rsi),%r10d
             0x00007fc2af23bee4:   movabs $0x7fc233000000,%r12
             0x00007fc2af23beee:   add    %r12,%r10
             0x00007fc2af23bef1:   xor    %r12,%r12
             0x00007fc2af23bef4:   cmp    %r10,%rax
             0x00007fc2af23bef7:   jne    0x00007fc2aec2f080           ;   {runtime_call ic_miss_stub}
             0x00007fc2af23befd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.23%  ↗  0x00007fc2af23bf00:   mov    %eax,-0x14000(%rsp)
   0.27%  │  0x00007fc2af23bf07:   sub    $0x68,%rsp
   0.24%  │  0x00007fc2af23bf0b:   nop
          │  0x00007fc2af23bf0c:   cmpl   $0x1,0x20(%r15)
   0.27%  │  0x00007fc2af23bf14:   jne    0x00007fc2af23d37d
   0.00%  │  0x00007fc2af23bf1a:   mov    %rbp,0x60(%rsp)
   0.22%  │  0x00007fc2af23bf1f:   mov    %edx,%r11d
          │  0x00007fc2af23bf22:   mov    (%rsi),%r10
   1.00%  │  0x00007fc2af23bf25:   lea    0x50(%rsp),%r8
          │  0x00007fc2af23bf2a:   test   $0x2,%r10
          │  0x00007fc2af23bf31:   jne    0x00007fc2af23c51e
   0.22%  │  0x00007fc2af23bf37:   or     $0x1,%r10
          │  0x00007fc2af23bf3b:   mov    %r10,(%r8)
   0.79%  │  0x00007fc2af23bf3e:   mov    %r10,%rax
          │  0x00007fc2af23bf41:   lock cmpxchg %r8,(%rsi)
  10.70%  │  0x00007fc2af23bf46:   cmp    %r10,%rax
          │  0x00007fc2af23bf49:   jne    0x00007fc2af23c557
          │  0x00007fc2af23bf4f:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
   0.57%  │  0x00007fc2af23bf56:   test   %ecx,%ecx
          │  0x00007fc2af23bf58:   je     0x00007fc2af23c2d8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │  0x00007fc2af23bf5e:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   6.14%  │  0x00007fc2af23bf61:   mov    0x14(%rsi),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │  0x00007fc2af23bf65:   lea    0x48(%rsp),%r9
          │  0x00007fc2af23bf6a:   test   $0x2,%r10
          │  0x00007fc2af23bf71:   jne    0x00007fc2af23c580
   0.56%  │  0x00007fc2af23bf77:   or     $0x1,%r10
          │  0x00007fc2af23bf7b:   mov    %r10,(%r9)
   1.08%  │  0x00007fc2af23bf7e:   mov    %r10,%rax
          │  0x00007fc2af23bf81:   lock cmpxchg %r9,(%rsi)
  10.18%  │  0x00007fc2af23bf86:   cmp    %r10,%rax
          │  0x00007fc2af23bf89:   jne    0x00007fc2af23c5be
          │  0x00007fc2af23bf8f:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23bf96:   cmp    $0x1,%ecx
          │  0x00007fc2af23bf99:   je     0x00007fc2af23c331           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23bf9f:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   5.36%  │  0x00007fc2af23bfa2:   mov    0x14(%rsi),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23bfa6:   lea    0x30(%rsp),%rbx
          │  0x00007fc2af23bfab:   test   $0x2,%r10
          │  0x00007fc2af23bfb2:   jne    0x00007fc2af23c5ec
   0.56%  │  0x00007fc2af23bfb8:   or     $0x1,%r10
          │  0x00007fc2af23bfbc:   mov    %r10,(%rbx)
   1.17%  │  0x00007fc2af23bfbf:   mov    %r10,%rax
          │  0x00007fc2af23bfc2:   lock cmpxchg %rbx,(%rsi)
  10.18%  │  0x00007fc2af23bfc7:   cmp    %r10,%rax
          │  0x00007fc2af23bfca:   jne    0x00007fc2af23c62f
          │  0x00007fc2af23bfd0:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.59%  │  0x00007fc2af23bfd7:   cmp    $0x2,%ecx
          │  0x00007fc2af23bfda:   je     0x00007fc2af23c379           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23bfe0:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.62%  │  0x00007fc2af23bfe3:   mov    0x14(%rsi),%ebx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23bfe6:   lea    0x40(%rsp),%rdi
          │  0x00007fc2af23bfeb:   test   $0x2,%r10
          │  0x00007fc2af23bff2:   jne    0x00007fc2af23c665           ;   {no_reloc}
   0.28%  │  0x00007fc2af23bff8:   or     $0x1,%r10
          │  0x00007fc2af23bffc:   mov    %r10,(%rdi)
   0.59%  │  0x00007fc2af23bfff:   mov    %r10,%rax
          │  0x00007fc2af23c002:   lock cmpxchg %rdi,(%rsi)
   5.08%  │  0x00007fc2af23c007:   cmp    %r10,%rax
          │  0x00007fc2af23c00a:   jne    0x00007fc2af23c6ac
          │  0x00007fc2af23c010:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.24%  │  0x00007fc2af23c017:   cmp    $0x3,%ecx
          │  0x00007fc2af23c01a:   je     0x00007fc2af23c3cb           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c020:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.40%  │  0x00007fc2af23c023:   mov    0x14(%rsi),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c026:   lea    0x38(%rsp),%rdx
          │  0x00007fc2af23c02b:   test   $0x2,%r10
          │  0x00007fc2af23c032:   jne    0x00007fc2af23c6e5
   0.27%  │  0x00007fc2af23c038:   or     $0x1,%r10
          │  0x00007fc2af23c03c:   mov    %r10,(%rdx)
   0.46%  │  0x00007fc2af23c03f:   mov    %r10,%rax
          │  0x00007fc2af23c042:   lock cmpxchg %rdx,(%rsi)
   4.48%  │  0x00007fc2af23c047:   cmp    %r10,%rax
          │  0x00007fc2af23c04a:   jne    0x00007fc2af23c735
          │  0x00007fc2af23c050:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.24%  │  0x00007fc2af23c057:   cmp    $0x4,%ecx
          │  0x00007fc2af23c05a:   je     0x00007fc2af23c41c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c060:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.19%  │  0x00007fc2af23c063:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c066:   lea    0x28(%rsp),%rdx
          │  0x00007fc2af23c06b:   test   $0x2,%r10
          │  0x00007fc2af23c072:   jne    0x00007fc2af23c770
   0.23%  │  0x00007fc2af23c078:   or     $0x1,%r10
          │  0x00007fc2af23c07c:   mov    %r10,(%rdx)
   0.49%  │  0x00007fc2af23c07f:   mov    %r10,%rax
          │  0x00007fc2af23c082:   lock cmpxchg %rdx,(%rsi)
   4.22%  │  0x00007fc2af23c087:   cmp    %r10,%rax
          │  0x00007fc2af23c08a:   jne    0x00007fc2af23c7c5
          │  0x00007fc2af23c090:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c097:   cmp    $0x5,%ecx
          │  0x00007fc2af23c09a:   je     0x00007fc2af23c478           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c0a0:   mov    %ebp,0x14(%rsp)
   0.24%  │  0x00007fc2af23c0a4:   mov    %edi,0x18(%rsp)
          │  0x00007fc2af23c0a8:   mov    %ebx,0x1c(%rsp)
          │  0x00007fc2af23c0ac:   mov    %r9d,0x20(%rsp)
          │  0x00007fc2af23c0b1:   mov    %r8d,0x24(%rsp)
   0.20%  │  0x00007fc2af23c0b6:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c0ba:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │  0x00007fc2af23c0bd:   mov    %rsi,%rax
          │  0x00007fc2af23c0c0:   mov    %r11d,%edx                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.22%  │  0x00007fc2af23c0c3:   mov    %r10d,0x10(%rsp)
          │  0x00007fc2af23c0c8:   mov    %rax,0x8(%rsp)
          │  0x00007fc2af23c0cd:   xchg   %ax,%ax
          ╰  0x00007fc2af23c0cf:   call   0x00007fc2af23bf00           ; ImmutableOopMap {[8]=Oop }
                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ;   {optimized virtual_call}
   0.30%     0x00007fc2af23c0d4:   nopl   0x3c4(%rax,%rax,1)           ;   {other}
             0x00007fc2af23c0dc:   mov    %eax,%r10d                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
             0x00007fc2af23c0df:   lea    0x28(%rsp),%r11
   0.23%     0x00007fc2af23c0e4:   mov    (%r11),%rsi
             0x00007fc2af23c0e7:   test   %rsi,%rsi
             0x00007fc2af23c0ea:   je     0x00007fc2af23c2c7
             0x00007fc2af23c0f0:   mov    0x8(%rsp),%rbp
             0x00007fc2af23c0f5:   mov    0x0(%rbp),%r8
             0x00007fc2af23c0f9:   nopl   0x0(%rax)
             0x00007fc2af23c100:   test   $0x2,%r8
             0x00007fc2af23c107:   jne    0x00007fc2af23c93d
             0x00007fc2af23c10d:   mov    %r11,%rax
             0x00007fc2af23c110:   lock cmpxchg %rsi,0x0(%rbp)
             0x00007fc2af23c116:   jne    0x00007fc2af23ce52
....................................................................................................
  75.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 

               0x00007fc2af23c1f9:   mov    0x0(%rbp),%r8
               0x00007fc2af23c1fd:   data16 xchg %ax,%ax
               0x00007fc2af23c200:   test   $0x2,%r8
               0x00007fc2af23c207:   jne    0x00007fc2af23c845
               0x00007fc2af23c20d:   mov    %r11,%rax
               0x00007fc2af23c210:   lock cmpxchg %rsi,0x0(%rbp)
               0x00007fc2af23c216:   jne    0x00007fc2af23cc14
               0x00007fc2af23c21c:   decq   0x550(%r15)                  ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.29%    ↗  0x00007fc2af23c223:   add    0x20(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.27%    │  0x00007fc2af23c228:   lea    0x50(%rsp),%r11
            │  0x00007fc2af23c22d:   mov    (%r11),%rsi
            │  0x00007fc2af23c230:   test   %rsi,%rsi
          ╭ │  0x00007fc2af23c233:   je     0x00007fc2af23c291
          │ │  0x00007fc2af23c239:   mov    0x0(%rbp),%r8
   0.27%  │ │  0x00007fc2af23c23d:   data16 xchg %ax,%ax
          │ │  0x00007fc2af23c240:   test   $0x2,%r8
          │ │  0x00007fc2af23c247:   jne    0x00007fc2af23c808
          │ │  0x00007fc2af23c24d:   mov    %r11,%rax
          │ │  0x00007fc2af23c250:   lock cmpxchg %rsi,0x0(%rbp)
   6.56%  │ │  0x00007fc2af23c256:   jne    0x00007fc2af23cb65
          │ │  0x00007fc2af23c25c:   decq   0x550(%r15)                  ;*synchronization entry
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.60%  │↗│  0x00007fc2af23c263:   add    0x24(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          │││  0x00007fc2af23c268:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 232)
   0.31%  │││  0x00007fc2af23c26b:   mov    0x60(%rsp),%rbp
          │││  0x00007fc2af23c270:   add    $0x68,%rsp
   0.27%  │││  0x00007fc2af23c274:   nopl   0x0(%rax,%rax,1)
          │││  0x00007fc2af23c27c:   data16 data16 xchg %ax,%ax
   0.29%  │││  0x00007fc2af23c280:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fc2af23c287:   ja     0x00007fc2af23d38d
          │││  0x00007fc2af23c28d:   vzeroupper 
   0.55%  │││  0x00007fc2af23c290:   ret    
   0.29%  ↘││  0x00007fc2af23c291:   decq   0x550(%r15)
           ╰│  0x00007fc2af23c298:   jmp    0x00007fc2af23c263           ;*synchronization entry
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.26%    │  0x00007fc2af23c29a:   decq   0x550(%r15)
   0.25%    ╰  0x00007fc2af23c2a1:   jmp    0x00007fc2af23c223           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
               0x00007fc2af23c2a3:   decq   0x550(%r15)
   0.26%       0x00007fc2af23c2aa:   jmp    0x00007fc2af23c1e3           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
               0x00007fc2af23c2af:   decq   0x550(%r15)
   0.27%       0x00007fc2af23c2b6:   jmp    0x00007fc2af23c1a3           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
               0x00007fc2af23c2bb:   decq   0x550(%r15)
   0.26%       0x00007fc2af23c2c2:   jmp    0x00007fc2af23c163           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
               0x00007fc2af23c2c7:   mov    0x8(%rsp),%rbp
               0x00007fc2af23c2cc:   decq   0x550(%r15)
   0.26%       0x00007fc2af23c2d3:   jmp    0x00007fc2af23c123           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
               0x00007fc2af23c2d8:   mov    %rsi,%rbp
               0x00007fc2af23c2db:   lea    0x50(%rsp),%r10
               0x00007fc2af23c2e0:   mov    (%r10),%rsi
               0x00007fc2af23c2e3:   test   %rsi,%rsi
....................................................................................................
  11.25%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
  11.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   1.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   1.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   1.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 952 
   1.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 978 
   1.05%              kernel  [unknown] 
   0.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.15%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 950 
   2.09%              kernel  [unknown] 
   1.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 952 
   1.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 978 
   0.08%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.12%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%      jvmci, level 4
   2.09%              kernel
   0.12%           libjvm.so
   0.08%                    
   0.08%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:20

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

Benchmark                                                    Mode  Cnt    Score   Error  Units
LockCoarseningBenchmark.baseline                             avgt    5   24.751 ± 0.002  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt           NaN            ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5   24.752 ± 0.002  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt           NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5   24.752 ± 0.003  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt           NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5   24.752 ± 0.001  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt           NaN            ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  120.905 ± 0.244  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt           NaN            ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5  139.374 ± 1.254  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt           NaN            ---
