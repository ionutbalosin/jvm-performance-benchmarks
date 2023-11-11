# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.200 ns/op
# Warmup Iteration   2: 7.735 ns/op
# Warmup Iteration   3: 8.145 ns/op
# Warmup Iteration   4: 7.735 ns/op
# Warmup Iteration   5: 7.733 ns/op
Iteration   1: 7.734 ns/op
Iteration   2: 7.734 ns/op
Iteration   3: 7.733 ns/op
Iteration   4: 7.735 ns/op
Iteration   5: 7.734 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  7.734 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (7.733, 7.734, 7.735), stdev = 0.001
  CI (99.9%): [7.731, 7.737] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 128128 total address lines.
Perf output processed (skipped 56.417 seconds):
 Column 1: cycles (50685 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 561 

                # {method} {0x00007fc1f8479fc8} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fc280639200:   mov    0x8(%rsi),%r10d
                0x00007fc280639204:   movabs $0x7fc203000000,%r11
                0x00007fc28063920e:   add    %r11,%r10
                0x00007fc280639211:   cmp    %r10,%rax
                0x00007fc280639214:   jne    0x00007fc2800c4080           ;   {runtime_call ic_miss_stub}
                0x00007fc28063921a:   xchg   %ax,%ax
                0x00007fc28063921c:   nopl   0x0(%rax)
              [Verified Entry Point]
   4.98%        0x00007fc280639220:   sub    $0x18,%rsp
                0x00007fc280639227:   mov    %rbp,0x10(%rsp)
   9.84%        0x00007fc28063922c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007fc280639234:   jne    0x00007fc280639284           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@-1 (line 200)
          │  ↗  0x00007fc28063923a:   mov    0x14(%rsi),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 202)
          │  │  0x00007fc28063923e:   mov    0x10(%rsi),%r10d
   4.93%  │  │  0x00007fc280639242:   lea    (%r11,%r10,2),%eax
   0.00%  │  │  0x00007fc280639246:   add    %r11d,%eax
   1.29%  │  │  0x00007fc280639249:   add    %r11d,%eax
   8.96%  │  │  0x00007fc28063924c:   add    %r11d,%eax
  13.91%  │  │  0x00007fc28063924f:   add    %r11d,%eax
          │  │  0x00007fc280639252:   add    %r11d,%eax
          │  │  0x00007fc280639255:   add    %r11d,%eax
   1.36%  │  │  0x00007fc280639258:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 209)
   4.77%  │  │  0x00007fc28063925b:   add    $0x10,%rsp
          │  │  0x00007fc28063925f:   pop    %rbp
          │ ↗│  0x00007fc280639260:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fc280639267:   ja     0x00007fc28063926e
   4.82%  ││││  0x00007fc28063926d:   ret    
          │↘╰│  0x00007fc28063926e:   movabs $0x7fc280639260,%r10         ;   {internal_word}
          │  │  0x00007fc280639278:   mov    %r10,0x468(%r15)
          │  │  0x00007fc28063927f:   jmp    0x00007fc2800cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fc280639284:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fc280639289:   jmp    0x00007fc28063923a
                0x00007fc28063928e:   hlt    
                0x00007fc28063928f:   hlt    
              [Exception Handler]
                0x00007fc280639290:   jmp    0x00007fc280192580           ;   {no_reloc}
              [Deopt Handler Code]
....................................................................................................
  54.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
            0x00007fc28063ce52:   mov    0x40(%rsp),%rsi
            0x00007fc28063ce57:   call   0x00007fc2800c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
                                                                      ;   {optimized virtual_call}
            0x00007fc28063ce5c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
                                                                      ;   {other}
            0x00007fc28063ce64:   mov    0x38(%rsp),%r10
  18.42%    0x00007fc28063ce69:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 238)
  19.84%    0x00007fc28063ce71:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
            0x00007fc28063ce75:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
            0x00007fc28063ce7c:   test   %eax,(%r11)                  ;   {poll}
            0x00007fc28063ce7f:   nop
   4.99%    0x00007fc28063ce80:   test   %r10d,%r10d
            0x00007fc28063ce83:   je     0x00007fc28063ce52           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
            0x00007fc28063ce85:   movabs $0x7fc295085b90,%r10
            0x00007fc28063ce8f:   call   *%r10
            0x00007fc28063ce92:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 239)
                                                                      ;   {other}
            0x00007fc28063ce9a:   mov    0x30(%rsp),%r10
            0x00007fc28063ce9f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
....................................................................................................
  43.25%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 561 
  43.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 
   0.47%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.84%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 561 
  43.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 597 
   1.61%              kernel  [unknown] 
   0.05%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%                      <unknown> 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%         interpreter  return entry points  
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%         c2, level 4
   1.61%              kernel
   0.10%           libjvm.so
   0.07%  libpthread-2.31.so
   0.06%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    perf-1938561.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.268 ns/op
# Warmup Iteration   2: 7.735 ns/op
# Warmup Iteration   3: 8.276 ns/op
# Warmup Iteration   4: 7.685 ns/op
# Warmup Iteration   5: 7.726 ns/op
Iteration   1: 7.696 ns/op
Iteration   2: 7.713 ns/op
Iteration   3: 7.725 ns/op
Iteration   4: 7.730 ns/op
Iteration   5: 7.729 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  7.718 ±(99.9%) 0.056 ns/op [Average]
  (min, avg, max) = (7.696, 7.718, 7.730), stdev = 0.014
  CI (99.9%): [7.663, 7.774] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 121984 total address lines.
Perf output processed (skipped 56.096 seconds):
 Column 1: cycles (50691 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 553 

                # {method} {0x00007fd92b479be0} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fd9ac637d00:   mov    0x8(%rsi),%r10d
                0x00007fd9ac637d04:   movabs $0x7fd92f000000,%r11
                0x00007fd9ac637d0e:   add    %r11,%r10
                0x00007fd9ac637d11:   cmp    %r10,%rax
                0x00007fd9ac637d14:   jne    0x00007fd9ac0c4080           ;   {runtime_call ic_miss_stub}
                0x00007fd9ac637d1a:   xchg   %ax,%ax
                0x00007fd9ac637d1c:   nopl   0x0(%rax)
              [Verified Entry Point]
   4.80%        0x00007fd9ac637d20:   sub    $0x18,%rsp
                0x00007fd9ac637d27:   mov    %rbp,0x10(%rsp)
   9.81%        0x00007fd9ac637d2c:   cmpl   $0x1,0x20(%r15)
   0.03%  ╭     0x00007fd9ac637d34:   jne    0x00007fd9ac637d84           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@-1 (line 115)
          │  ↗  0x00007fd9ac637d3a:   mov    0x14(%rsi),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@21 (line 119)
          │  │  0x00007fd9ac637d3e:   mov    0x10(%rsi),%r10d
   4.88%  │  │  0x00007fd9ac637d42:   lea    (%r11,%r10,2),%eax
   0.02%  │  │  0x00007fd9ac637d46:   add    %r11d,%eax
   0.20%  │  │  0x00007fd9ac637d49:   add    %r11d,%eax
   5.57%  │  │  0x00007fd9ac637d4c:   add    %r11d,%eax
  19.25%  │  │  0x00007fd9ac637d4f:   add    %r11d,%eax
          │  │  0x00007fd9ac637d52:   add    %r11d,%eax
          │  │  0x00007fd9ac637d55:   add    %r11d,%eax
   0.21%  │  │  0x00007fd9ac637d58:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 124)
   4.99%  │  │  0x00007fd9ac637d5b:   add    $0x10,%rsp
          │  │  0x00007fd9ac637d5f:   pop    %rbp
          │ ↗│  0x00007fd9ac637d60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fd9ac637d67:   ja     0x00007fd9ac637d6e
   4.89%  ││││  0x00007fd9ac637d6d:   ret    
          │↘╰│  0x00007fd9ac637d6e:   movabs $0x7fd9ac637d60,%r10         ;   {internal_word}
          │  │  0x00007fd9ac637d78:   mov    %r10,0x468(%r15)
          │  │  0x00007fd9ac637d7f:   jmp    0x00007fd9ac0cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fd9ac637d84:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fd9ac637d89:   jmp    0x00007fd9ac637d3a
                0x00007fd9ac637d8e:   hlt    
                0x00007fd9ac637d8f:   hlt    
              [Exception Handler]
                0x00007fd9ac637d90:   jmp    0x00007fd9ac196d80           ;   {no_reloc}
              [Deopt Handler Code]
....................................................................................................
  54.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 587 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 239)
            0x00007fd9ac63a852:   mov    0x40(%rsp),%rsi
            0x00007fd9ac63a857:   call   0x00007fd9ac0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
                                                                      ;   {optimized virtual_call}
            0x00007fd9ac63a85c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
                                                                      ;   {other}
            0x00007fd9ac63a864:   mov    0x38(%rsp),%r10
  19.11%    0x00007fd9ac63a869:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 238)
  19.52%    0x00007fd9ac63a871:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
            0x00007fd9ac63a875:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
            0x00007fd9ac63a87c:   test   %eax,(%r11)                  ;   {poll}
            0x00007fd9ac63a87f:   nop
   4.78%    0x00007fd9ac63a880:   test   %r10d,%r10d
            0x00007fd9ac63a883:   je     0x00007fd9ac63a852           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 239)
            0x00007fd9ac63a885:   movabs $0x7fd9c1579b90,%r10
            0x00007fd9ac63a88f:   call   *%r10
            0x00007fd9ac63a892:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@37 (line 239)
                                                                      ;   {other}
            0x00007fd9ac63a89a:   mov    0x30(%rsp),%r10
            0x00007fd9ac63a89f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
....................................................................................................
  43.41%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 553 
  43.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 587 
   0.77%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.71%  <...other 233 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 553 
  43.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 587 
   1.69%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  clock_gettime@plt 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%         c2, level 4
   1.69%              kernel
   0.09%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-1938627.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.789 ns/op
# Warmup Iteration   2: 9.248 ns/op
# Warmup Iteration   3: 9.827 ns/op
# Warmup Iteration   4: 9.173 ns/op
# Warmup Iteration   5: 9.198 ns/op
Iteration   1: 9.187 ns/op
Iteration   2: 9.188 ns/op
Iteration   3: 9.204 ns/op
Iteration   4: 9.178 ns/op
Iteration   5: 9.192 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  9.190 ±(99.9%) 0.037 ns/op [Average]
  (min, avg, max) = (9.178, 9.190, 9.204), stdev = 0.010
  CI (99.9%): [9.152, 9.227] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 123032 total address lines.
Perf output processed (skipped 56.161 seconds):
 Column 1: cycles (50627 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 550 

             # {method} {0x00007f8848483ca8} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f88cc637a20:   mov    0x8(%rsi),%r10d
             0x00007f88cc637a24:   movabs $0x7f8853000000,%r11
             0x00007f88cc637a2e:   add    %r11,%r10
             0x00007f88cc637a31:   cmp    %r10,%rax
             0x00007f88cc637a34:   jne    0x00007f88cc0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f88cc637a3a:   xchg   %ax,%ax
             0x00007f88cc637a3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   4.26%     0x00007f88cc637a40:   mov    %eax,-0x14000(%rsp)
  10.24%     0x00007f88cc637a47:   push   %rbp
   0.11%     0x00007f88cc637a48:   sub    $0x20,%rsp
   1.33%     0x00007f88cc637a4c:   cmpl   $0x1,0x20(%r15)
   2.50%     0x00007f88cc637a54:   jne    0x00007f88cc637bd2           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@-1 (line 132)
   0.10%     0x00007f88cc637a5a:   mov    %rsi,%r11
   1.42%     0x00007f88cc637a5d:   mov    0x10(%rsi),%eax
             0x00007f88cc637a60:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 132)
   2.56%     0x00007f88cc637a62:   cmp    $0x20,%eax
          ╭  0x00007f88cc637a65:   jle    0x00007f88cc637ae0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
   0.09%  │  0x00007f88cc637a6b:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
   1.44%  │  0x00007f88cc637a6f:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
          │  0x00007f88cc637a72:   cmp    $0x20,%eax
          │  0x00007f88cc637a75:   jle    0x00007f88cc637afc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 138)
   2.74%  │  0x00007f88cc637a7b:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 139)
          │  0x00007f88cc637a7e:   xchg   %ax,%ax
   1.37%  │  0x00007f88cc637a80:   cmp    $0x20,%eax
          │  0x00007f88cc637a83:   jle    0x00007f88cc637b18           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
   1.14%  │  0x00007f88cc637a89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 142)
   2.17%  │  0x00007f88cc637a8c:   cmp    $0x20,%eax
          │  0x00007f88cc637a8f:   jle    0x00007f88cc637b34           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 144)
   1.47%  │  0x00007f88cc637a95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 145)
   0.00%  │  0x00007f88cc637a98:   cmp    $0x20,%eax
   2.41%  │  0x00007f88cc637a9b:   nopl   0x0(%rax,%rax,1)
   2.62%  │  0x00007f88cc637aa0:   jle    0x00007f88cc637b50           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 147)
   2.75%  │  0x00007f88cc637aa6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
          │  0x00007f88cc637aa9:   cmp    $0x20,%eax
          │  0x00007f88cc637aac:   jle    0x00007f88cc637b6c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 150)
   1.04%  │  0x00007f88cc637ab2:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 151)
   3.69%  │  0x00007f88cc637ab5:   cmp    $0x20,%eax
          │  0x00007f88cc637ab8:   jle    0x00007f88cc637b88           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 153)
   2.94%  │  0x00007f88cc637abe:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 154)
   0.00%  │  0x00007f88cc637ac1:   cmp    $0x20,%eax
          │  0x00007f88cc637ac4:   jle    0x00007f88cc637ba4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 156)
   0.46%  │  0x00007f88cc637aca:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 157)
   2.27%  │  0x00007f88cc637acd:   add    $0x20,%rsp
   1.43%  │  0x00007f88cc637ad1:   pop    %rbp
          │  0x00007f88cc637ad2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f88cc637ad9:   ja     0x00007f88cc637bbc
   2.69%  │  0x00007f88cc637adf:   ret    
          ↘  0x00007f88cc637ae0:   mov    $0xffffff45,%esi
             0x00007f88cc637ae5:   mov    %r11,%rbp
             0x00007f88cc637ae8:   mov    %eax,0x4(%rsp)
             0x00007f88cc637aec:   data16 xchg %ax,%ax
             0x00007f88cc637aef:   call   0x00007f88cc0c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                       ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f88cc637af4:   nopl   0x264(%rax,%rax,1)           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
....................................................................................................
  55.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 588 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 238)
              0x00007f88cc63b748:   mov    $0x1,%ebp
              0x00007f88cc63b74d:   test   %r11d,%r11d
          ╭   0x00007f88cc63b750:   jne    0x00007f88cc63b785           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
          │↗  0x00007f88cc63b752:   mov    0x40(%rsp),%rsi
          ││  0x00007f88cc63b757:   call   0x00007f88cc0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
  27.09%  ││  0x00007f88cc63b75c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007f88cc63b764:   mov    0x38(%rsp),%r10
   0.06%  ││  0x00007f88cc63b769:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 238)
  11.65%  ││  0x00007f88cc63b771:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f88cc63b775:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f88cc63b77c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f88cc63b77f:   nop
   4.17%  ││  0x00007f88cc63b780:   test   %r10d,%r10d
          │╰  0x00007f88cc63b783:   je     0x00007f88cc63b752           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007f88cc63b785:   movabs $0x7f88e4166b90,%r10
              0x00007f88cc63b78f:   call   *%r10
              0x00007f88cc63b792:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f88cc63b79a:   mov    0x30(%rsp),%r10
              0x00007f88cc63b79f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
....................................................................................................
  42.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 550 
  42.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 588 
   0.38%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.86%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 550 
  42.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 588 
   1.50%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.11%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%         c2, level 4
   1.50%              kernel
   0.13%           libjvm.so
   0.04%                    
   0.04%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    perf-1938692.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.898 ns/op
# Warmup Iteration   2: 9.121 ns/op
# Warmup Iteration   3: 9.722 ns/op
# Warmup Iteration   4: 9.275 ns/op
# Warmup Iteration   5: 9.270 ns/op
Iteration   1: 9.270 ns/op
Iteration   2: 9.283 ns/op
Iteration   3: 9.278 ns/op
Iteration   4: 9.279 ns/op
Iteration   5: 9.284 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  9.279 ±(99.9%) 0.022 ns/op [Average]
  (min, avg, max) = (9.270, 9.279, 9.284), stdev = 0.006
  CI (99.9%): [9.257, 9.301] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 123190 total address lines.
Perf output processed (skipped 56.099 seconds):
 Column 1: cycles (50382 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 543 

             # {method} {0x00007fc4fc483e10} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fc580635e20:   mov    0x8(%rsi),%r10d
             0x00007fc580635e24:   movabs $0x7fc507000000,%r11
             0x00007fc580635e2e:   add    %r11,%r10
             0x00007fc580635e31:   cmp    %r10,%rax
             0x00007fc580635e34:   jne    0x00007fc5800c4080           ;   {runtime_call ic_miss_stub}
             0x00007fc580635e3a:   xchg   %ax,%ax
             0x00007fc580635e3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   4.07%     0x00007fc580635e40:   mov    %eax,-0x14000(%rsp)
  13.79%     0x00007fc580635e47:   push   %rbp
   0.94%     0x00007fc580635e48:   sub    $0x20,%rsp
   0.07%     0x00007fc580635e4c:   cmpl   $0x1,0x20(%r15)
   3.26%     0x00007fc580635e54:   jne    0x00007fc580635fb6           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@-1 (line 166)
   0.83%     0x00007fc580635e5a:   mov    0x10(%rsi),%eax
   0.06%     0x00007fc580635e5d:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 166)
             0x00007fc580635e5f:   nop
   3.15%     0x00007fc580635e60:   cmp    $0x20,%eax
          ╭  0x00007fc580635e63:   jle    0x00007fc580635ee0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
   0.94%  │  0x00007fc580635e69:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   0.07%  │  0x00007fc580635e6d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
          │  0x00007fc580635e70:   cmp    $0x20,%eax
          │  0x00007fc580635e73:   jle    0x00007fc580635ef8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 171)
   3.95%  │  0x00007fc580635e79:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 172)
          │  0x00007fc580635e7c:   nopl   0x0(%rax)
   0.06%  │  0x00007fc580635e80:   cmp    $0x20,%eax
          │  0x00007fc580635e83:   jle    0x00007fc580635f10           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 173)
   3.57%  │  0x00007fc580635e89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 174)
   2.35%  │  0x00007fc580635e8c:   cmp    $0x20,%eax
          │  0x00007fc580635e8f:   jle    0x00007fc580635f28           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 175)
   0.04%  │  0x00007fc580635e95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 176)
   0.03%  │  0x00007fc580635e98:   cmp    $0x20,%eax
   2.01%  │  0x00007fc580635e9b:   nopl   0x0(%rax,%rax,1)
   3.01%  │  0x00007fc580635ea0:   jle    0x00007fc580635f40           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 177)
   2.70%  │  0x00007fc580635ea6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   0.02%  │  0x00007fc580635ea9:   cmp    $0x20,%eax
          │  0x00007fc580635eac:   jle    0x00007fc580635f58           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 179)
   0.58%  │  0x00007fc580635eb2:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 180)
   3.23%  │  0x00007fc580635eb5:   cmp    $0x20,%eax
          │  0x00007fc580635eb8:   jle    0x00007fc580635f70           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 181)
   3.09%  │  0x00007fc580635ebe:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 182)
   0.02%  │  0x00007fc580635ec1:   cmp    $0x20,%eax
          │  0x00007fc580635ec4:   jle    0x00007fc580635f88           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 183)
   0.23%  │  0x00007fc580635eca:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 184)
   2.23%  │  0x00007fc580635ecd:   add    $0x20,%rsp
   1.58%  │  0x00007fc580635ed1:   pop    %rbp
   0.05%  │  0x00007fc580635ed2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc580635ed9:   ja     0x00007fc580635fa0
   2.42%  │  0x00007fc580635edf:   ret    
          ↘  0x00007fc580635ee0:   mov    $0xffffff45,%esi
             0x00007fc580635ee5:   mov    %eax,(%rsp)
             0x00007fc580635ee8:   data16 xchg %ax,%ax
             0x00007fc580635eeb:   call   0x00007fc5800c9f00           ; ImmutableOopMap {}
                                                                       ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fc580635ef0:   nopl   0x260(%rax,%rax,1)           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
                                                                       ;   {other}
....................................................................................................
  58.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 580 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 238)
              0x00007fc580639b48:   mov    $0x1,%ebp
              0x00007fc580639b4d:   test   %r11d,%r11d
          ╭   0x00007fc580639b50:   jne    0x00007fc580639b85           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
          │↗  0x00007fc580639b52:   mov    0x40(%rsp),%rsi
          ││  0x00007fc580639b57:   call   0x00007fc5800c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
  21.49%  ││  0x00007fc580639b5c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007fc580639b64:   mov    0x38(%rsp),%r10
   3.40%  ││  0x00007fc580639b69:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 238)
  11.17%  ││  0x00007fc580639b71:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fc580639b75:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fc580639b7c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fc580639b7f:   nop
   3.93%  ││  0x00007fc580639b80:   test   %r10d,%r10d
          │╰  0x00007fc580639b83:   je     0x00007fc580639b52           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007fc580639b85:   movabs $0x7fc596dabb90,%r10
              0x00007fc580639b8f:   call   *%r10
              0x00007fc580639b92:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007fc580639b9a:   mov    0x30(%rsp),%r10
              0x00007fc580639b9f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
....................................................................................................
  39.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 543 
  39.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 580 
   0.32%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.87%  <...other 286 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 543 
  39.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 580 
   1.42%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.34%         c2, level 4
   1.42%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%              [vdso]
   0.00%    perf-1938756.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1468.594 ns/op
# Warmup Iteration   2: 1468.335 ns/op
# Warmup Iteration   3: 1466.664 ns/op
# Warmup Iteration   4: 1466.174 ns/op
# Warmup Iteration   5: 1466.394 ns/op
Iteration   1: 1465.627 ns/op
Iteration   2: 1466.345 ns/op
Iteration   3: 1466.629 ns/op
Iteration   4: 1467.794 ns/op
Iteration   5: 1464.907 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  1466.261 ±(99.9%) 4.186 ns/op [Average]
  (min, avg, max) = (1464.907, 1466.261, 1467.794), stdev = 1.087
  CI (99.9%): [1462.074, 1470.447] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 121678 total address lines.
Perf output processed (skipped 56.038 seconds):
 Column 1: cycles (50448 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                   --------------------------------------------------------------------------------
                   ----------------------------------------------------------------------
                   monitorenter  194 monitorenter  [0x00007f9b64090400, 0x00007f9b64090540]  320 bytes
                   --------------------------------------------------------------------------------
   2.30%             0x00007f9b64090400:   pop    %rax
   2.26%             0x00007f9b64090401:   cmp    (%rax),%rax
   0.99%             0x00007f9b64090404:   xor    %esi,%esi
                     0x00007f9b64090406:   mov    -0x48(%rbp),%rcx
                     0x00007f9b6409040a:   lea    -0x48(%rbp),%rdx
          ╭          0x00007f9b6409040e:   jmp    0x00007f9b64090423
   0.20%  │ ↗        0x00007f9b64090410:   cmpq   $0x0,0x8(%rcx)
          │ │        0x00007f9b64090415:   cmove  %rcx,%rsi
          │ │        0x00007f9b64090419:   cmp    0x8(%rcx),%rax
          │╭│        0x00007f9b6409041d:   je     0x00007f9b64090428
          │││        0x00007f9b6409041f:   add    $0x10,%rcx
   0.22%  ↘││        0x00007f9b64090423:   cmp    %rdx,%rcx
           │╰        0x00007f9b64090426:   jne    0x00007f9b64090410
   0.18%   ↘         0x00007f9b64090428:   test   %rsi,%rsi
             ╭       0x00007f9b6409042b:   jne    0x00007f9b64090459
             │       0x00007f9b64090431:   mov    -0x48(%rbp),%rsi
             │       0x00007f9b64090435:   sub    $0x10,%rsp
   0.21%     │       0x00007f9b64090439:   sub    $0x10,%rsi
             │       0x00007f9b6409043d:   mov    %rsp,%rcx
             │       0x00007f9b64090440:   mov    %rsi,-0x48(%rbp)
   0.09%     │╭      0x00007f9b64090444:   jmp    0x00007f9b64090454
             ││↗     0x00007f9b64090449:   mov    0x10(%rcx),%rdx
             │││     0x00007f9b6409044d:   mov    %rdx,(%rcx)
             │││     0x00007f9b64090450:   add    $0x8,%rcx
   0.11%     │↘│     0x00007f9b64090454:   cmp    %rsi,%rcx
             │ ╰     0x00007f9b64090457:   jne    0x00007f9b64090449
             ↘       0x00007f9b64090459:   inc    %r13
                     0x00007f9b6409045c:   mov    %rax,0x8(%rsi)
   0.65%             0x00007f9b64090460:   mov    0x8(%rsi),%rcx
   1.02%             0x00007f9b64090464:   mov    $0x1,%eax
                     0x00007f9b64090469:   or     (%rcx),%rax
   1.43%             0x00007f9b6409046c:   mov    %rax,(%rsi)
   0.45%             0x00007f9b6409046f:   lock cmpxchg %rsi,(%rcx)
   4.29%        ╭    0x00007f9b64090474:   je     0x00007f9b6409048c
                │    0x00007f9b6409047a:   sub    %rsp,%rax
   0.18%        │    0x00007f9b6409047d:   and    $0xfffffffffffff007,%rax
                │    0x00007f9b64090483:   mov    %rax,(%rsi)
   0.01%        │╭   0x00007f9b64090486:   jne    0x00007f9b64090498
                ↘│   0x00007f9b6409048c:   incq   0x550(%r15)
   0.23%         │   0x00007f9b64090493:   jmp    0x00007f9b64090522
                 ↘╭  0x00007f9b64090498:   call   0x00007f9b640904a2
                  │  0x00007f9b6409049d:   jmp    0x00007f9b64090522
                  ↘  0x00007f9b640904a2:   lea    0x8(%rsp),%rax
                     0x00007f9b640904a7:   mov    %r13,-0x40(%rbp)
                     0x00007f9b640904ab:   mov    %r15,%rdi
                     0x00007f9b640904ae:   vzeroupper 
                     0x00007f9b640904b1:   mov    %rbp,0x3a8(%r15)
                     0x00007f9b640904b8:   mov    %rax,0x398(%r15)
                     0x00007f9b640904bf:   test   $0xf,%spl
                     0x00007f9b640904c3:   je     0x00007f9b640904db
....................................................................................................
  14.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_iaccess_0  221 fast_iaccess_0  

               0x00007f9b64091f80:   sub    $0x8,%rsp
               0x00007f9b64091f84:   vmovss %xmm0,(%rsp)
          ╭    0x00007f9b64091f89:   jmp    0x00007f9b64091faa
          │    0x00007f9b64091f8b:   sub    $0x10,%rsp
          │    0x00007f9b64091f8f:   vmovsd %xmm0,(%rsp)
          │╭   0x00007f9b64091f94:   jmp    0x00007f9b64091faa
          ││   0x00007f9b64091f96:   sub    $0x10,%rsp
          ││   0x00007f9b64091f9a:   mov    %rax,(%rsp)
          ││   0x00007f9b64091f9e:   movq   $0x0,0x8(%rsp)
          ││╭  0x00007f9b64091fa7:   jmp    0x00007f9b64091faa
   4.09%  │││  0x00007f9b64091fa9:   push   %rax
   2.86%  ↘↘↘  0x00007f9b64091faa:   mov    (%r14),%rax
   0.25%       0x00007f9b64091fad:   movzwl 0x2(%r13),%edx
   0.03%       0x00007f9b64091fb2:   mov    -0x30(%rbp),%rcx
               0x00007f9b64091fb6:   shl    $0x2,%edx
   0.26%       0x00007f9b64091fb9:   mov    0x48(%rcx,%rdx,8),%rbx
   1.16%       0x00007f9b64091fbe:   inc    %r13
               0x00007f9b64091fc1:   cmp    (%rax),%rax
   0.29%       0x00007f9b64091fc4:   mov    (%rax,%rbx,1),%eax
   1.04%       0x00007f9b64091fc7:   dec    %r13
               0x00007f9b64091fca:   movzbl 0x4(%r13),%ebx
               0x00007f9b64091fcf:   add    $0x4,%r13
   0.03%       0x00007f9b64091fd3:   movabs $0x7f9b7c7f8220,%r10
   0.17%       0x00007f9b64091fdd:   jmp    *(%r10,%rbx,8)
               0x00007f9b64091fe1:   nopl   0x0(%rax)
             --------------------------------------------------------------------------------
             ----------------------------------------------------------------------
             fast_aaccess_0  222 fast_aaccess_0  [0x00007f9b64092000, 0x00007f9b64092068]  104 bytes
             --------------------------------------------------------------------------------
....................................................................................................
  10.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.85%         interpreter  monitorenter  194 monitorenter  
  10.18%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.37%         interpreter  monitorexit  195 monitorexit  
   7.88%         interpreter  goto  167 goto  
   7.68%         interpreter  dup  89 dup  
   6.61%         interpreter  istore_1  60 istore_1  
   6.36%         interpreter  aload  25 aload  
   6.07%         interpreter  aload_2  44 aload_2  
   6.02%         interpreter  astore  58 astore  
   5.27%         interpreter  iadd  96 iadd  
   2.49%         interpreter  monitorexit  195 monitorexit  
   1.78%         interpreter  iload_1  27 iload_1  
   1.58%         interpreter  new  187 new  
   1.17%         interpreter  method entry point (kind = zerolocals)  
   0.89%         interpreter  return entry points  
   0.83%         interpreter  ishl  120 ishl  
   0.80%         interpreter  invokespecial  183 invokespecial  
   0.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 575 
   0.71%         interpreter  aload_3  45 aload_3  
   0.71%         interpreter  astore_3  78 astore_3  
   8.98%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  15.07%         interpreter  monitorenter  194 monitorenter  
  11.29%         interpreter  monitorexit  195 monitorexit  
  10.18%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.48%         interpreter  goto  167 goto  
   7.68%         interpreter  dup  89 dup  
   6.61%         interpreter  istore_1  60 istore_1  
   6.36%         interpreter  aload  25 aload  
   6.07%         interpreter  aload_2  44 aload_2  
   6.02%         interpreter  astore  58 astore  
   5.27%         interpreter  iadd  96 iadd  
   1.78%         interpreter  iload_1  27 iload_1  
   1.76%         interpreter  ireturn  172 ireturn  
   1.60%         interpreter  new  187 new  
   1.60%         interpreter  method entry point (kind = zerolocals)  
   1.32%              kernel  [unknown] 
   1.31%         interpreter  invokespecial  183 invokespecial  
   1.27%    perf-1938817.map  [unknown] 
   0.89%         interpreter  return entry points  
   0.83%         interpreter  ishl  120 ishl  
   0.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 575 
   3.82%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.40%         interpreter
   1.44%         c2, level 4
   1.32%              kernel
   1.27%    perf-1938817.map
   0.40%           libjvm.so
   0.05%        libc-2.31.so
   0.05%                    
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 30.392 ns/op
# Warmup Iteration   2: 27.959 ns/op
# Warmup Iteration   3: 28.966 ns/op
# Warmup Iteration   4: 29.161 ns/op
# Warmup Iteration   5: 29.273 ns/op
Iteration   1: 28.968 ns/op
Iteration   2: 28.736 ns/op
Iteration   3: 29.446 ns/op
Iteration   4: 29.635 ns/op
Iteration   5: 29.567 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  29.270 ±(99.9%) 1.525 ns/op [Average]
  (min, avg, max) = (28.736, 29.270, 29.635), stdev = 0.396
  CI (99.9%): [27.745, 30.796] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 121139 total address lines.
Perf output processed (skipped 55.990 seconds):
 Column 1: cycles (50277 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 533 

                   # parm1:    rcx       = int
                   #           [sp+0x30]  (sp of caller)
                   0x00007f1290636720:   mov    0x8(%rsi),%r10d
                   0x00007f1290636724:   movabs $0x7f1217000000,%r11
                   0x00007f129063672e:   add    %r11,%r10
                   0x00007f1290636731:   cmp    %r10,%rax
                   0x00007f1290636734:   jne    0x00007f12900c4080           ;   {runtime_call ic_miss_stub}
                   0x00007f129063673a:   xchg   %ax,%ax
                   0x00007f129063673c:   nopl   0x0(%rax)
                 [Verified Entry Point]
   1.46%    ↗      0x00007f1290636740:   mov    %eax,-0x14000(%rsp)
   8.85%    │      0x00007f1290636747:   push   %rbp
   5.73%    │      0x00007f1290636748:   sub    $0x20,%rsp
   0.33%    │      0x00007f129063674c:   cmpl   $0x1,0x20(%r15)
   1.30%    │      0x00007f1290636754:   jne    0x00007f12906367ba           ;*synchronization entry
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 222)
   3.49%    │      0x00007f129063675a:   test   %ecx,%ecx
          ╭ │      0x00007f129063675c:   je     0x00007f129063678f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 224)
   0.17%  │ │      0x00007f129063675e:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   0.07%  │ │      0x00007f1290636761:   cmp    $0x1,%ecx
          │╭│      0x00007f1290636764:   je     0x00007f1290636793           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 224)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   1.20%  │││      0x00007f1290636766:   add    $0xfffffffe,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@30 (line 227)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   2.35%  │││      0x00007f1290636769:   xchg   %ax,%ax
   0.15%  ││╰      0x00007f129063676b:   call   0x00007f1290636740           ; ImmutableOopMap {}
          ││                                                                 ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          ││                                                                 ;   {optimized virtual_call}
  13.70%  ││       0x00007f1290636770:   nopl   0x1e0(%rax,%rax,1)           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          ││                                                                 ;   {other}
          ││       0x00007f1290636778:   add    %ebp,%eax                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   1.26%  ││   ↗   0x00007f129063677a:   add    %ebp,%eax
   3.29%  ││  ↗│   0x00007f129063677c:   add    $0x20,%rsp
   2.97%  ││  ││   0x00007f1290636780:   pop    %rbp
   6.17%  ││  ││↗  0x00007f1290636781:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ╭│││  0x00007f1290636788:   ja     0x00007f12906367a4
   3.78%  ││ ││││  0x00007f129063678e:   ret    
   0.03%  ↘│ ││││  0x00007f129063678f:   mov    %edx,%eax
   0.03%   │ │╰││  0x00007f1290636791:   jmp    0x00007f129063677c
           ↘ │ ││  0x00007f1290636793:   mov    %edx,%eax
             │ ╰│  0x00007f1290636795:   jmp    0x00007f129063677a           ;*synchronization entry
             │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 222)
             │  │  0x00007f1290636797:   mov    %rax,%rsi
             │  │  0x00007f129063679a:   add    $0x20,%rsp
             │  │  0x00007f129063679e:   pop    %rbp
             │  │  0x00007f129063679f:   jmp    0x00007f129019d100           ;   {runtime_call _rethrow_Java}
             ↘  ╰  0x00007f12906367a4:   movabs $0x7f1290636781,%r10         ;   {internal_word}
                   0x00007f12906367ae:   mov    %r10,0x468(%r15)
                   0x00007f12906367b5:   jmp    0x00007f12900cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  56.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 534 

              # {method} {0x00007f120c479ac8} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
              #           [sp+0x40]  (sp of caller)
              0x00007f1290636b20:   mov    0x8(%rsi),%r10d
              0x00007f1290636b24:   movabs $0x7f1217000000,%r11
              0x00007f1290636b2e:   add    %r11,%r10
              0x00007f1290636b31:   cmp    %r10,%rax
              0x00007f1290636b34:   jne    0x00007f12900c4080           ;   {runtime_call ic_miss_stub}
              0x00007f1290636b3a:   xchg   %ax,%ax
              0x00007f1290636b3c:   nopl   0x0(%rax)
            [Verified Entry Point]
   1.33%      0x00007f1290636b40:   mov    %eax,-0x14000(%rsp)
   3.65%      0x00007f1290636b47:   push   %rbp
   0.19%      0x00007f1290636b48:   sub    $0x30,%rsp
   0.06%      0x00007f1290636b4c:   cmpl   $0x1,0x20(%r15)
   0.99%      0x00007f1290636b54:   jne    0x00007f1290636bae           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@-1 (line 107)
   0.34%      0x00007f1290636b5a:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.04%      0x00007f1290636b5d:   mov    0x10(%rsi),%edx
              0x00007f1290636b60:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 107)
   0.73%      0x00007f1290636b62:   mov    $0x6,%ecx
   0.46%      0x00007f1290636b67:   call   0x00007f1290636740           ; ImmutableOopMap {}
                                                                        ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
                                                                        ;   {optimized virtual_call}
   2.71%      0x00007f1290636b6c:   nopl   0x1dc(%rax,%rax,1)           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
                                                                        ;   {other}
              0x00007f1290636b74:   add    %ebp,%eax
   6.60%      0x00007f1290636b76:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
              0x00007f1290636b78:   add    $0x30,%rsp
              0x00007f1290636b7c:   pop    %rbp
   6.45%   ↗  0x00007f1290636b7d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ╭│  0x00007f1290636b84:   ja     0x00007f1290636b98
          ││  0x00007f1290636b8a:   ret                                 ;*synchronization entry
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 222)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
          ││  0x00007f1290636b8b:   mov    %rax,%rsi
          ││  0x00007f1290636b8e:   add    $0x30,%rsp
          ││  0x00007f1290636b92:   pop    %rbp
          ││  0x00007f1290636b93:   jmp    0x00007f129019d100           ;   {runtime_call _rethrow_Java}
          ↘╰  0x00007f1290636b98:   movabs $0x7f1290636b7d,%r10         ;   {internal_word}
              0x00007f1290636ba2:   mov    %r10,0x468(%r15)
....................................................................................................
  23.55%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 569 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 238)
              0x00007f1290639f48:   mov    $0x1,%ebp
              0x00007f1290639f4d:   test   %r11d,%r11d
          ╭   0x00007f1290639f50:   jne    0x00007f1290639f85           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 239)
          │↗  0x00007f1290639f52:   mov    0x40(%rsp),%rsi
          ││  0x00007f1290639f57:   call   0x00007f12900c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
   2.50%  ││  0x00007f1290639f5c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007f1290639f64:   mov    0x38(%rsp),%r10
  10.05%  ││  0x00007f1290639f69:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 238)
   5.25%  ││  0x00007f1290639f71:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f1290639f75:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f1290639f7c:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f1290639f7f:   nop
   1.19%  ││  0x00007f1290639f80:   test   %r10d,%r10d
          │╰  0x00007f1290639f83:   je     0x00007f1290639f52           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007f1290639f85:   movabs $0x7f12a6eacb90,%r10
              0x00007f1290639f8f:   call   *%r10
              0x00007f1290639f92:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f1290639f9a:   mov    0x30(%rsp),%r10
              0x00007f1290639f9f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
....................................................................................................
  19.00%  <total for region 3>

....[Hottest Regions]...............................................................................
  56.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 533 
  23.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 534 
  19.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 569 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.62%  <...other 203 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 533 
  23.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 534 
  19.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 569 
   0.90%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  ThreadCritical::ThreadCritical 
   0.08%  <...other 42 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.88%         c2, level 4
   0.90%              kernel
   0.12%           libjvm.so
   0.05%        libc-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:52

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

Benchmark                                                 Mode  Cnt     Score   Error  Units
LockElisionBenchmark.baseline                             avgt    5     7.734 ± 0.003  ns/op
LockElisionBenchmark.baseline:asm                         avgt            NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5     7.718 ± 0.056  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt            NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5     9.190 ± 0.037  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt            NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5     9.279 ± 0.022  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt            NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5  1466.261 ± 4.186  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt            NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5    29.270 ± 1.525  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt            NaN            ---
