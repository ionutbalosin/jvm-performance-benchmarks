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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.935 ns/op
# Warmup Iteration   2: 24.751 ns/op
# Warmup Iteration   3: 24.825 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.752 ns/op
Iteration   5: 24.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  24.752 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (24.752, 24.752, 24.752), stdev = 0.001
  CI (99.9%): [24.751, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 226534 total address lines.
Perf output processed (skipped 60.690 seconds):
 Column 1: cycles (50709 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 963 

               # {method} {0x00007f7fdb47c800} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f805ad7ce00:   mov    0x8(%rsi),%r10d
               0x00007f805ad7ce04:   movabs $0x7f7fdf000000,%r12
               0x00007f805ad7ce0e:   add    %r12,%r10
               0x00007f805ad7ce11:   xor    %r12,%r12
               0x00007f805ad7ce14:   cmp    %r10,%rax
               0x00007f805ad7ce17:   jne    0x00007f805a764080           ;   {runtime_call ic_miss_stub}
               0x00007f805ad7ce1d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.46%       0x00007f805ad7ce20:   mov    %eax,-0x14000(%rsp)
               0x00007f805ad7ce27:   sub    $0x18,%rsp
               0x00007f805ad7ce2b:   nop
   1.53%       0x00007f805ad7ce2c:   cmpl   $0x1,0x20(%r15)
               0x00007f805ad7ce34:   jne    0x00007f805ad7d067
               0x00007f805ad7ce3a:   mov    %rbp,0x10(%rsp)
               0x00007f805ad7ce3f:   mov    %rsi,%r11
   1.50%       0x00007f805ad7ce42:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   4.69%       0x00007f805ad7ce45:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@1 (line 208)
               0x00007f805ad7ce49:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
               0x00007f805ad7ce4d:   mov    %eax,%r9d
               0x00007f805ad7ce50:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.58%       0x00007f805ad7ce53:   test   $0x2,%r10
          ╭    0x00007f805ad7ce5a:   jne    0x00007f805ad7cefa
          │    0x00007f805ad7ce60:   or     $0x1,%r10
          │    0x00007f805ad7ce64:   mov    %r10,(%r8)
   2.92%  │    0x00007f805ad7ce67:   mov    %r10,%rax
          │    0x00007f805ad7ce6a:   lock cmpxchg %r8,(%r11)
  27.53%  │    0x00007f805ad7ce6f:   cmp    %r10,%rax
          │    0x00007f805ad7ce72:   jne    0x00007f805ad7cf32
          │    0x00007f805ad7ce78:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.49%  │    0x00007f805ad7ce7f:   lea    (%rsp),%r10
          │    0x00007f805ad7ce83:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.57%  │    0x00007f805ad7ce86:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@13 (line 211)
          │    0x00007f805ad7ce8a:   test   %rsi,%rsi
          │╭   0x00007f805ad7ce8d:   je     0x00007f805ad7cef1
          ││   0x00007f805ad7ce93:   mov    (%r11),%rcx
  16.58%  ││   0x00007f805ad7ce96:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f805ad7cea0:   test   $0x2,%rcx
          ││   0x00007f805ad7cea7:   jne    0x00007f805ad7cf5c
   1.63%  ││   0x00007f805ad7cead:   mov    %r10,%rax
          ││   0x00007f805ad7ceb0:   lock cmpxchg %rsi,(%r11)
  24.81%  ││   0x00007f805ad7ceb5:   jne    0x00007f805ad7cfca
          ││   0x00007f805ad7cebb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.57%  ││↗  0x00007f805ad7cec2:   shl    $0x3,%r8d
          │││  0x00007f805ad7cec6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.61%  │││  0x00007f805ad7cec9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@78 (line 221)
          │││  0x00007f805ad7cecc:   mov    0x10(%rsp),%rbp
          │││  0x00007f805ad7ced1:   add    $0x18,%rsp
          │││  0x00007f805ad7ced5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.56%  │││  0x00007f805ad7cee0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f805ad7cee7:   ja     0x00007f805ad7d077
          │││  0x00007f805ad7ceed:   vzeroupper 
   1.49%  │││  0x00007f805ad7cef0:   ret    
          │↘│  0x00007f805ad7cef1:   decq   0x550(%r15)
          │ ╰  0x00007f805ad7cef8:   jmp    0x00007f805ad7cec2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
          ↘    0x00007f805ad7cefa:   movq   $0x3,(%r8)
               0x00007f805ad7cf01:   mov    0x3e(%r10),%rsi
               0x00007f805ad7cf05:   test   %rsi,%rsi
               0x00007f805ad7cf08:   jne    0x00007f805ad7cfb2
               0x00007f805ad7cf0e:   mov    $0x0,%rax
               0x00007f805ad7cf15:   lock cmpxchg %r15,0x3e(%r10)
               0x00007f805ad7cf1b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 963 
   4.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 992 
   0.34%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   1.00%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 963 
   4.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 992 
   1.52%              kernel  [unknown] 
   0.13%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.18%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%      jvmci, level 4
   1.52%              kernel
   0.16%           libjvm.so
   0.13%                    
   0.11%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2131782.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.022 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.814 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.750 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  24.751 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (24.750, 24.751, 24.751), stdev = 0.001
  CI (99.9%): [24.749, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 227447 total address lines.
Perf output processed (skipped 60.592 seconds):
 Column 1: cycles (51201 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 952 

               # {method} {0x00007fb67047c3f8} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fb6f6d7e380:   mov    0x8(%rsi),%r10d
               0x00007fb6f6d7e384:   movabs $0x7fb67b000000,%r12
               0x00007fb6f6d7e38e:   add    %r12,%r10
               0x00007fb6f6d7e391:   xor    %r12,%r12
               0x00007fb6f6d7e394:   cmp    %r10,%rax
               0x00007fb6f6d7e397:   jne    0x00007fb6f6764080           ;   {runtime_call ic_miss_stub}
               0x00007fb6f6d7e39d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.54%       0x00007fb6f6d7e3a0:   mov    %eax,-0x14000(%rsp)
               0x00007fb6f6d7e3a7:   sub    $0x18,%rsp
               0x00007fb6f6d7e3ab:   nop
   1.59%       0x00007fb6f6d7e3ac:   cmpl   $0x1,0x20(%r15)
               0x00007fb6f6d7e3b4:   jne    0x00007fb6f6d7e5e7
               0x00007fb6f6d7e3ba:   mov    %rbp,0x10(%rsp)
               0x00007fb6f6d7e3bf:   mov    %rsi,%r11
   1.47%       0x00007fb6f6d7e3c2:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   4.62%       0x00007fb6f6d7e3c5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 123)
               0x00007fb6f6d7e3c9:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
               0x00007fb6f6d7e3cd:   mov    %eax,%r9d
               0x00007fb6f6d7e3d0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.54%       0x00007fb6f6d7e3d3:   test   $0x2,%r10
          ╭    0x00007fb6f6d7e3da:   jne    0x00007fb6f6d7e47a
          │    0x00007fb6f6d7e3e0:   or     $0x1,%r10
          │    0x00007fb6f6d7e3e4:   mov    %r10,(%r8)
   3.13%  │    0x00007fb6f6d7e3e7:   mov    %r10,%rax
          │    0x00007fb6f6d7e3ea:   lock cmpxchg %r8,(%r11)
  26.36%  │    0x00007fb6f6d7e3ef:   cmp    %r10,%rax
          │    0x00007fb6f6d7e3f2:   jne    0x00007fb6f6d7e4b2
          │    0x00007fb6f6d7e3f8:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.52%  │    0x00007fb6f6d7e3ff:   lea    (%rsp),%r10
          │    0x00007fb6f6d7e403:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.49%  │    0x00007fb6f6d7e406:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
          │    0x00007fb6f6d7e40a:   test   %rsi,%rsi
          │╭   0x00007fb6f6d7e40d:   je     0x00007fb6f6d7e471
          ││   0x00007fb6f6d7e413:   mov    (%r11),%rcx
  16.93%  ││   0x00007fb6f6d7e416:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007fb6f6d7e420:   test   $0x2,%rcx
          ││   0x00007fb6f6d7e427:   jne    0x00007fb6f6d7e4dc
   1.53%  ││   0x00007fb6f6d7e42d:   mov    %r10,%rax
          ││   0x00007fb6f6d7e430:   lock cmpxchg %rsi,(%r11)
  24.61%  ││   0x00007fb6f6d7e435:   jne    0x00007fb6f6d7e54a
          ││   0x00007fb6f6d7e43b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.53%  ││↗  0x00007fb6f6d7e442:   shl    $0x3,%r8d
          │││  0x00007fb6f6d7e446:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.55%  │││  0x00007fb6f6d7e449:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 134)
          │││  0x00007fb6f6d7e44c:   mov    0x10(%rsp),%rbp
          │││  0x00007fb6f6d7e451:   add    $0x18,%rsp
          │││  0x00007fb6f6d7e455:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.51%  │││  0x00007fb6f6d7e460:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fb6f6d7e467:   ja     0x00007fb6f6d7e5f7
          │││  0x00007fb6f6d7e46d:   vzeroupper 
   1.55%  │││  0x00007fb6f6d7e470:   ret    
          │↘│  0x00007fb6f6d7e471:   decq   0x550(%r15)
          │ ╰  0x00007fb6f6d7e478:   jmp    0x00007fb6f6d7e442           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
          ↘    0x00007fb6f6d7e47a:   movq   $0x3,(%r8)
               0x00007fb6f6d7e481:   mov    0x3e(%r10),%rsi
               0x00007fb6f6d7e485:   test   %rsi,%rsi
               0x00007fb6f6d7e488:   jne    0x00007fb6f6d7e532
               0x00007fb6f6d7e48e:   mov    $0x0,%rax
               0x00007fb6f6d7e495:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  92.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 952 
   4.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 979 
   1.52%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 952 
   4.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 979 
   2.55%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::flush 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.16%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.09%      jvmci, level 4
   2.55%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2131851.map
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.045 ns/op
# Warmup Iteration   2: 24.753 ns/op
# Warmup Iteration   3: 24.815 ns/op
# Warmup Iteration   4: 24.752 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.752 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.751 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  24.752 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.752), stdev = 0.001
  CI (99.9%): [24.750, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 228628 total address lines.
Perf output processed (skipped 60.645 seconds):
 Column 1: cycles (50974 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 953 

               #           [sp+0x20]  (sp of caller)
               0x00007fb11ad7cc80:   mov    0x8(%rsi),%r10d
               0x00007fb11ad7cc84:   movabs $0x7fb09f000000,%r12
               0x00007fb11ad7cc8e:   add    %r12,%r10
               0x00007fb11ad7cc91:   xor    %r12,%r12
               0x00007fb11ad7cc94:   cmp    %r10,%rax
               0x00007fb11ad7cc97:   jne    0x00007fb11a764080           ;   {runtime_call ic_miss_stub}
               0x00007fb11ad7cc9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
               0x00007fb11ad7cca0:   mov    %eax,-0x14000(%rsp)
   1.59%       0x00007fb11ad7cca7:   sub    $0x18,%rsp
               0x00007fb11ad7ccab:   nop
               0x00007fb11ad7ccac:   cmpl   $0x1,0x20(%r15)
               0x00007fb11ad7ccb4:   jne    0x00007fb11ad7cfc6
   1.50%       0x00007fb11ad7ccba:   mov    %rbp,0x10(%rsp)
               0x00007fb11ad7ccbf:   mov    %rsi,%r11
               0x00007fb11ad7ccc2:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 140)
               0x00007fb11ad7ccc6:   mov    %eax,%r8d
   1.61%       0x00007fb11ad7ccc9:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 140)
               0x00007fb11ad7cccc:   cmp    $0x21,%r8d
               0x00007fb11ad7ccd0:   jl     0x00007fb11ad7cf91           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 143)
               0x00007fb11ad7ccd6:   mov    (%r11),%r10
   4.56%       0x00007fb11ad7ccd9:   lea    (%rsp),%r9
               0x00007fb11ad7ccdd:   data16 xchg %ax,%ax
               0x00007fb11ad7cce0:   test   $0x2,%r10
          ╭    0x00007fb11ad7cce7:   jne    0x00007fb11ad7cdeb
   1.50%  │    0x00007fb11ad7cced:   or     $0x1,%r10
          │    0x00007fb11ad7ccf1:   mov    %r10,(%r9)
   3.18%  │    0x00007fb11ad7ccf4:   mov    %r10,%rax
          │    0x00007fb11ad7ccf7:   lock cmpxchg %r9,(%r11)
  27.64%  │    0x00007fb11ad7ccfc:   nopl   0x0(%rax)
          │    0x00007fb11ad7cd00:   cmp    %r10,%rax
          │    0x00007fb11ad7cd03:   jne    0x00007fb11ad7ce1e
   1.56%  │    0x00007fb11ad7cd09:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007fb11ad7cd10:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   1.55%  │    0x00007fb11ad7cd14:   mov    %r8d,%eax
          │    0x00007fb11ad7cd17:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007fb11ad7cd1a:   nopw   0x0(%rax,%rax,1)
          │    0x00007fb11ad7cd20:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd23:   jl     0x00007fb11ad7cfbd           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 146)
   1.49%  │    0x00007fb11ad7cd29:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
          │    0x00007fb11ad7cd2c:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd2f:   jl     0x00007fb11ad7cfb4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
          │    0x00007fb11ad7cd35:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
          │    0x00007fb11ad7cd38:   nopl   0x0(%rax,%rax,1)
   1.57%  │    0x00007fb11ad7cd40:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd43:   jl     0x00007fb11ad7cf7f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
          │    0x00007fb11ad7cd49:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
          │    0x00007fb11ad7cd4c:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd4f:   jl     0x00007fb11ad7cf47           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
          │    0x00007fb11ad7cd55:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
   1.59%  │    0x00007fb11ad7cd58:   nopl   0x0(%rax,%rax,1)
          │    0x00007fb11ad7cd60:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd63:   jl     0x00007fb11ad7cf88           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
          │    0x00007fb11ad7cd69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
          │    0x00007fb11ad7cd6c:   cmp    $0x21,%eax
          │    0x00007fb11ad7cd6f:   jl     0x00007fb11ad7cf76           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 161)
   1.52%  │    0x00007fb11ad7cd75:   mov    %eax,%r9d
          │    0x00007fb11ad7cd78:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
          │    0x00007fb11ad7cd7b:   nopl   0x0(%rax,%rax,1)
          │    0x00007fb11ad7cd80:   cmp    $0x21,%r9d
          │    0x00007fb11ad7cd84:   jl     0x00007fb11ad7cf6d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 164)
   1.59%  │    0x00007fb11ad7cd8a:   lea    (%rsp),%r8
          │    0x00007fb11ad7cd8e:   mov    (%r8),%rsi
          │    0x00007fb11ad7cd91:   test   %rsi,%rsi
          │╭   0x00007fb11ad7cd94:   je     0x00007fb11ad7cde2           ;   {no_reloc}
          ││   0x00007fb11ad7cd9a:   mov    (%r11),%rcx
   8.99%  ││   0x00007fb11ad7cd9d:   data16 xchg %ax,%ax
          ││   0x00007fb11ad7cda0:   test   $0x2,%rcx
          ││   0x00007fb11ad7cda7:   jne    0x00007fb11ad7ce3d
   1.51%  ││   0x00007fb11ad7cdad:   mov    %r8,%rax
          ││   0x00007fb11ad7cdb0:   lock cmpxchg %rsi,(%r11)
  24.06%  ││   0x00007fb11ad7cdb5:   jne    0x00007fb11ad7ceaa
          ││   0x00007fb11ad7cdbb:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   1.56%  ││↗  0x00007fb11ad7cdc2:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          │││  0x00007fb11ad7cdc5:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 168)
   1.46%  │││  0x00007fb11ad7cdc8:   mov    0x10(%rsp),%rbp
          │││  0x00007fb11ad7cdcd:   add    $0x18,%rsp
          │││  0x00007fb11ad7cdd1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fb11ad7cdd8:   ja     0x00007fb11ad7cfd6
          │││  0x00007fb11ad7cdde:   vzeroupper 
   1.53%  │││  0x00007fb11ad7cde1:   ret    
          │↘│  0x00007fb11ad7cde2:   decq   0x550(%r15)
          │ ╰  0x00007fb11ad7cde9:   jmp    0x00007fb11ad7cdc2           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          ↘    0x00007fb11ad7cdeb:   movq   $0x3,(%r9)
               0x00007fb11ad7cdf2:   mov    0x3e(%r10),%rsi
               0x00007fb11ad7cdf6:   test   %rsi,%rsi
               0x00007fb11ad7cdf9:   jne    0x00007fb11ad7ce92
               0x00007fb11ad7cdff:   mov    $0x0,%rax
               0x00007fb11ad7ce06:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  91.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 953 
   5.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 982 
   0.86%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.97%  <...other 331 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 953 
   5.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 982 
   2.08%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.15%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%      jvmci, level 4
   2.08%              kernel
   0.13%           libjvm.so
   0.11%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-2131918.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.031 ns/op
# Warmup Iteration   2: 24.988 ns/op
# Warmup Iteration   3: 24.751 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.752 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.765 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  24.754 ±(99.9%) 0.025 ns/op [Average]
  (min, avg, max) = (24.751, 24.754, 24.765), stdev = 0.006
  CI (99.9%): [24.729, 24.779] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 224472 total address lines.
Perf output processed (skipped 60.532 seconds):
 Column 1: cycles (50765 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 973 

               #           [sp+0x20]  (sp of caller)
               0x00007ffa1ad7dc00:   mov    0x8(%rsi),%r10d
               0x00007ffa1ad7dc04:   movabs $0x7ff99f000000,%r12
               0x00007ffa1ad7dc0e:   add    %r12,%r10
               0x00007ffa1ad7dc11:   xor    %r12,%r12
               0x00007ffa1ad7dc14:   cmp    %r10,%rax
               0x00007ffa1ad7dc17:   jne    0x00007ffa1a764080           ;   {runtime_call ic_miss_stub}
               0x00007ffa1ad7dc1d:   data16 xchg %ax,%ax
             [Verified Entry Point]
               0x00007ffa1ad7dc20:   mov    %eax,-0x14000(%rsp)
   1.52%       0x00007ffa1ad7dc27:   sub    $0x18,%rsp
               0x00007ffa1ad7dc2b:   nop
               0x00007ffa1ad7dc2c:   cmpl   $0x1,0x20(%r15)
               0x00007ffa1ad7dc34:   jne    0x00007ffa1ad7df10
   1.53%       0x00007ffa1ad7dc3a:   mov    %rbp,0x10(%rsp)
               0x00007ffa1ad7dc3f:   mov    %rsi,%r11
               0x00007ffa1ad7dc42:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 174)
               0x00007ffa1ad7dc46:   mov    %eax,%r8d
   1.51%       0x00007ffa1ad7dc49:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 174)
               0x00007ffa1ad7dc4c:   cmp    $0x21,%r8d
               0x00007ffa1ad7dc50:   jl     0x00007ffa1ad7deed           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 177)
               0x00007ffa1ad7dc56:   mov    (%r11),%r10
   4.65%       0x00007ffa1ad7dc59:   lea    (%rsp),%r9
               0x00007ffa1ad7dc5d:   data16 xchg %ax,%ax
               0x00007ffa1ad7dc60:   test   $0x2,%r10
          ╭    0x00007ffa1ad7dc67:   jne    0x00007ffa1ad7dd6b
   1.52%  │    0x00007ffa1ad7dc6d:   or     $0x1,%r10
          │    0x00007ffa1ad7dc71:   mov    %r10,(%r9)
   2.99%  │    0x00007ffa1ad7dc74:   mov    %r10,%rax
          │    0x00007ffa1ad7dc77:   lock cmpxchg %r9,(%r11)
  27.34%  │    0x00007ffa1ad7dc7c:   nopl   0x0(%rax)
          │    0x00007ffa1ad7dc80:   cmp    %r10,%rax
          │    0x00007ffa1ad7dc83:   jne    0x00007ffa1ad7dd9e
   1.61%  │    0x00007ffa1ad7dc89:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007ffa1ad7dc90:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   1.62%  │    0x00007ffa1ad7dc94:   mov    %r8d,%eax
          │    0x00007ffa1ad7dc97:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007ffa1ad7dc9a:   nopw   0x0(%rax,%rax,1)
          │    0x00007ffa1ad7dca0:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dca3:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 179)
   1.53%  │    0x00007ffa1ad7dca9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
          │    0x00007ffa1ad7dcac:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dcaf:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
          │    0x00007ffa1ad7dcb5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
          │    0x00007ffa1ad7dcb8:   nopl   0x0(%rax,%rax,1)
   1.39%  │    0x00007ffa1ad7dcc0:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dcc3:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
          │    0x00007ffa1ad7dcc9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
          │    0x00007ffa1ad7dccc:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dccf:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
          │    0x00007ffa1ad7dcd5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
   1.63%  │    0x00007ffa1ad7dcd8:   nopl   0x0(%rax,%rax,1)
          │    0x00007ffa1ad7dce0:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dce3:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
          │    0x00007ffa1ad7dce9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
          │    0x00007ffa1ad7dcec:   cmp    $0x21,%eax
          │    0x00007ffa1ad7dcef:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 189)
   1.53%  │    0x00007ffa1ad7dcf5:   mov    %eax,%r9d
          │    0x00007ffa1ad7dcf8:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
          │    0x00007ffa1ad7dcfb:   nopl   0x0(%rax,%rax,1)
          │    0x00007ffa1ad7dd00:   cmp    $0x21,%r9d
          │    0x00007ffa1ad7dd04:   jl     0x00007ffa1ad7dec7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 191)
   1.61%  │    0x00007ffa1ad7dd0a:   lea    (%rsp),%r8
          │    0x00007ffa1ad7dd0e:   mov    (%r8),%rsi
          │    0x00007ffa1ad7dd11:   test   %rsi,%rsi
          │╭   0x00007ffa1ad7dd14:   je     0x00007ffa1ad7dd62           ;   {no_reloc}
          ││   0x00007ffa1ad7dd1a:   mov    (%r11),%rcx
   9.10%  ││   0x00007ffa1ad7dd1d:   data16 xchg %ax,%ax
          ││   0x00007ffa1ad7dd20:   test   $0x2,%rcx
          ││   0x00007ffa1ad7dd27:   jne    0x00007ffa1ad7ddbd
   1.52%  ││   0x00007ffa1ad7dd2d:   mov    %r8,%rax
          ││   0x00007ffa1ad7dd30:   lock cmpxchg %rsi,(%r11)
  24.77%  ││   0x00007ffa1ad7dd35:   jne    0x00007ffa1ad7de2a
          ││   0x00007ffa1ad7dd3b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   1.57%  ││↗  0x00007ffa1ad7dd42:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          │││  0x00007ffa1ad7dd45:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 202)
   1.53%  │││  0x00007ffa1ad7dd48:   mov    0x10(%rsp),%rbp
          │││  0x00007ffa1ad7dd4d:   add    $0x18,%rsp
          │││  0x00007ffa1ad7dd51:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007ffa1ad7dd58:   ja     0x00007ffa1ad7df20
          │││  0x00007ffa1ad7dd5e:   vzeroupper 
   1.49%  │││  0x00007ffa1ad7dd61:   ret    
          │↘│  0x00007ffa1ad7dd62:   decq   0x550(%r15)
          │ ╰  0x00007ffa1ad7dd69:   jmp    0x00007ffa1ad7dd42           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          ↘    0x00007ffa1ad7dd6b:   movq   $0x3,(%r9)
               0x00007ffa1ad7dd72:   mov    0x3e(%r10),%rsi
               0x00007ffa1ad7dd76:   test   %rsi,%rsi
               0x00007ffa1ad7dd79:   jne    0x00007ffa1ad7de12
               0x00007ffa1ad7dd7f:   mov    $0x0,%rax
               0x00007ffa1ad7dd86:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  91.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 973 
   5.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 996 
   0.68%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.82%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 973 
   5.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 996 
   1.74%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%          interpreter  invokeinterface  185 invokeinterface  
   0.00%  libjvmcicompiler.so  org.graalvm.compiler.graph.Graph::findDuplicate 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  stringStream::write 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.17%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%       jvmci, level 4
   1.74%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.04%                     
   0.02%          interpreter
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%         libjimage.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.901 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.814 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.753 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.752 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  24.752 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (24.751, 24.752, 24.753), stdev = 0.001
  CI (99.9%): [24.748, 24.755] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 225770 total address lines.
Perf output processed (skipped 60.606 seconds):
 Column 1: cycles (50857 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 974 

               # {method} {0x00007f98cb47c190} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f994ad7c800:   mov    0x8(%rsi),%r10d
               0x00007f994ad7c804:   movabs $0x7f98cf000000,%r12
               0x00007f994ad7c80e:   add    %r12,%r10
               0x00007f994ad7c811:   xor    %r12,%r12
               0x00007f994ad7c814:   cmp    %r10,%rax
               0x00007f994ad7c817:   jne    0x00007f994a764080           ;   {runtime_call ic_miss_stub}
               0x00007f994ad7c81d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.54%       0x00007f994ad7c820:   mov    %eax,-0x14000(%rsp)
               0x00007f994ad7c827:   sub    $0x18,%rsp
               0x00007f994ad7c82b:   nop
   1.51%       0x00007f994ad7c82c:   cmpl   $0x1,0x20(%r15)
               0x00007f994ad7c834:   jne    0x00007f994ad7ca67
               0x00007f994ad7c83a:   mov    %rbp,0x10(%rsp)
               0x00007f994ad7c83f:   mov    %rsi,%r11
   1.36%       0x00007f994ad7c842:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   4.41%       0x00007f994ad7c845:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 82)
               0x00007f994ad7c849:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
               0x00007f994ad7c84d:   mov    %eax,%r9d
               0x00007f994ad7c850:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 82)
   1.40%       0x00007f994ad7c853:   test   $0x2,%r10
          ╭    0x00007f994ad7c85a:   jne    0x00007f994ad7c8fa
          │    0x00007f994ad7c860:   or     $0x1,%r10
          │    0x00007f994ad7c864:   mov    %r10,(%r8)
   2.90%  │    0x00007f994ad7c867:   mov    %r10,%rax
          │    0x00007f994ad7c86a:   lock cmpxchg %r8,(%r11)
  26.89%  │    0x00007f994ad7c86f:   cmp    %r10,%rax
          │    0x00007f994ad7c872:   jne    0x00007f994ad7c932
          │    0x00007f994ad7c878:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   1.59%  │    0x00007f994ad7c87f:   lea    (%rsp),%r10
          │    0x00007f994ad7c883:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   1.48%  │    0x00007f994ad7c886:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 99)
          │    0x00007f994ad7c88a:   test   %rsi,%rsi
          │╭   0x00007f994ad7c88d:   je     0x00007f994ad7c8f1
          ││   0x00007f994ad7c893:   mov    (%r11),%rcx
  17.52%  ││   0x00007f994ad7c896:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f994ad7c8a0:   test   $0x2,%rcx
          ││   0x00007f994ad7c8a7:   jne    0x00007f994ad7c95c
   1.51%  ││   0x00007f994ad7c8ad:   mov    %r10,%rax
          ││   0x00007f994ad7c8b0:   lock cmpxchg %rsi,(%r11)
  25.06%  ││   0x00007f994ad7c8b5:   jne    0x00007f994ad7c9ca
          ││   0x00007f994ad7c8bb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   1.58%  ││↗  0x00007f994ad7c8c2:   shl    $0x3,%r8d
          │││  0x00007f994ad7c8c6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@99 (line 99)
   1.50%  │││  0x00007f994ad7c8c9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 109)
          │││  0x00007f994ad7c8cc:   mov    0x10(%rsp),%rbp
          │││  0x00007f994ad7c8d1:   add    $0x18,%rsp
          │││  0x00007f994ad7c8d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.58%  │││  0x00007f994ad7c8e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f994ad7c8e7:   ja     0x00007f994ad7ca77
          │││  0x00007f994ad7c8ed:   vzeroupper 
   1.48%  │││  0x00007f994ad7c8f0:   ret    
          │↘│  0x00007f994ad7c8f1:   decq   0x550(%r15)
          │ ╰  0x00007f994ad7c8f8:   jmp    0x00007f994ad7c8c2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
          ↘    0x00007f994ad7c8fa:   movq   $0x3,(%r8)
               0x00007f994ad7c901:   mov    0x3e(%r10),%rsi
               0x00007f994ad7c905:   test   %rsi,%rsi
               0x00007f994ad7c908:   jne    0x00007f994ad7c9b2
               0x00007f994ad7c90e:   mov    $0x0,%rax
               0x00007f994ad7c915:   lock cmpxchg %r15,0x3e(%r10)
               0x00007f994ad7c91b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  93.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 974 
   4.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1003 
   0.75%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.90%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 974 
   4.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1003 
   1.88%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  syscall 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.00%      hsdis-amd64.so  putop 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%      jvmci, level 4
   1.88%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%    perf-2132045.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.995 ns/op
# Warmup Iteration   2: 24.752 ns/op
# Warmup Iteration   3: 24.818 ns/op
# Warmup Iteration   4: 24.751 ns/op
# Warmup Iteration   5: 24.751 ns/op
Iteration   1: 24.751 ns/op
Iteration   2: 24.751 ns/op
Iteration   3: 24.751 ns/op
Iteration   4: 24.751 ns/op
Iteration   5: 24.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  24.751 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (24.751, 24.751, 24.752), stdev = 0.001
  CI (99.9%): [24.750, 24.753] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 229981 total address lines.
Perf output processed (skipped 60.818 seconds):
 Column 1: cycles (50644 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 949 

               # {method} {0x00007f325c47c2e0} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f32e2d7c800:   mov    0x8(%rsi),%r10d
               0x00007f32e2d7c804:   movabs $0x7f3267000000,%r12
               0x00007f32e2d7c80e:   add    %r12,%r10
               0x00007f32e2d7c811:   xor    %r12,%r12
               0x00007f32e2d7c814:   cmp    %r10,%rax
               0x00007f32e2d7c817:   jne    0x00007f32e2764080           ;   {runtime_call ic_miss_stub}
               0x00007f32e2d7c81d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.56%       0x00007f32e2d7c820:   mov    %eax,-0x14000(%rsp)
               0x00007f32e2d7c827:   sub    $0x18,%rsp
               0x00007f32e2d7c82b:   nop
   1.44%       0x00007f32e2d7c82c:   cmpl   $0x1,0x20(%r15)
               0x00007f32e2d7c834:   jne    0x00007f32e2d7ca67
               0x00007f32e2d7c83a:   mov    %rbp,0x10(%rsp)
               0x00007f32e2d7c83f:   mov    %rsi,%r11
   1.37%       0x00007f32e2d7c842:   mov    (%r11),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   4.54%       0x00007f32e2d7c845:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@1 (line 115)
               0x00007f32e2d7c849:   lea    (%rsp),%r8                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
               0x00007f32e2d7c84d:   mov    %eax,%r9d
               0x00007f32e2d7c850:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 115)
   1.47%       0x00007f32e2d7c853:   test   $0x2,%r10
          ╭    0x00007f32e2d7c85a:   jne    0x00007f32e2d7c8fa
          │    0x00007f32e2d7c860:   or     $0x1,%r10
          │    0x00007f32e2d7c864:   mov    %r10,(%r8)
   3.00%  │    0x00007f32e2d7c867:   mov    %r10,%rax
          │    0x00007f32e2d7c86a:   lock cmpxchg %r8,(%r11)
  27.72%  │    0x00007f32e2d7c86f:   cmp    %r10,%rax
          │    0x00007f32e2d7c872:   jne    0x00007f32e2d7c932
          │    0x00007f32e2d7c878:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.72%  │    0x00007f32e2d7c87f:   lea    (%rsp),%r10
          │    0x00007f32e2d7c883:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.66%  │    0x00007f32e2d7c886:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
          │    0x00007f32e2d7c88a:   test   %rsi,%rsi
          │╭   0x00007f32e2d7c88d:   je     0x00007f32e2d7c8f1
          ││   0x00007f32e2d7c893:   mov    (%r11),%rcx
  17.55%  ││   0x00007f32e2d7c896:   data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f32e2d7c8a0:   test   $0x2,%rcx
          ││   0x00007f32e2d7c8a7:   jne    0x00007f32e2d7c95c
   1.50%  ││   0x00007f32e2d7c8ad:   mov    %r10,%rax
          ││   0x00007f32e2d7c8b0:   lock cmpxchg %rsi,(%r11)
  24.23%  ││   0x00007f32e2d7c8b5:   jne    0x00007f32e2d7c9ca
          ││   0x00007f32e2d7c8bb:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.45%  ││↗  0x00007f32e2d7c8c2:   shl    $0x3,%r8d
          │││  0x00007f32e2d7c8c6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.51%  │││  0x00007f32e2d7c8c9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@16 (line 117)
          │││  0x00007f32e2d7c8cc:   mov    0x10(%rsp),%rbp
          │││  0x00007f32e2d7c8d1:   add    $0x18,%rsp
          │││  0x00007f32e2d7c8d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.50%  │││  0x00007f32e2d7c8e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f32e2d7c8e7:   ja     0x00007f32e2d7ca77
          │││  0x00007f32e2d7c8ed:   vzeroupper 
   1.37%  │││  0x00007f32e2d7c8f0:   ret    
          │↘│  0x00007f32e2d7c8f1:   decq   0x550(%r15)
          │ ╰  0x00007f32e2d7c8f8:   jmp    0x00007f32e2d7c8c2           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
          ↘    0x00007f32e2d7c8fa:   movq   $0x3,(%r8)
               0x00007f32e2d7c901:   mov    0x3e(%r10),%rsi
               0x00007f32e2d7c905:   test   %rsi,%rsi
               0x00007f32e2d7c908:   jne    0x00007f32e2d7c9b2
               0x00007f32e2d7c90e:   mov    $0x0,%rax
               0x00007f32e2d7c915:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  93.59%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 949 
   4.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 978 
   0.39%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 949 
   4.57%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 978 
   1.49%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%      jvmci, level 4
   1.49%              kernel
   0.12%           libjvm.so
   0.12%        libc-2.31.so
   0.06%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:21

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

Benchmark                                                    Mode  Cnt   Score   Error  Units
LockCoarseningBenchmark.baseline                             avgt    5  24.752 ± 0.001  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt          NaN            ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5  24.751 ± 0.002  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt          NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5  24.752 ± 0.002  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt          NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5  24.754 ± 0.025  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt          NaN            ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  24.752 ± 0.003  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt          NaN            ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5  24.751 ± 0.001  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt          NaN            ---
