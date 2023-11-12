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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.299 ns/op
# Warmup Iteration   2: 8.010 ns/op
# Warmup Iteration   3: 8.004 ns/op
# Warmup Iteration   4: 8.046 ns/op
# Warmup Iteration   5: 8.043 ns/op
Iteration   1: 8.057 ns/op
Iteration   2: 8.052 ns/op
Iteration   3: 8.052 ns/op
Iteration   4: 8.059 ns/op
Iteration   5: 8.060 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill":
  8.056 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (8.052, 8.056, 8.060), stdev = 0.004
  CI (99.9%): [8.042, 8.070] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill:asm":
PrintAssembly processed: 226088 total address lines.
Perf output processed (skipped 60.692 seconds):
 Column 1: cycles (50762 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 998 

              0x00007fcbd6d8136f:   mov    0x10(%rsp),%rdx
              0x00007fcbd6d81374:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@10 (line 192)
              0x00007fcbd6d81378:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fcbd6d81381:   jmp    0x00007fcbd6d813af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          │   0x00007fcbd6d81386:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fcbd6d81391:   data16 data16 xchg %ax,%ax
          │   0x00007fcbd6d81395:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
   4.82%  │↗  0x00007fcbd6d813a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
  10.21%  ││  0x00007fcbd6d813a7:   test   %eax,(%r11)                  ;   {poll}
  23.89%  ││  0x00007fcbd6d813aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fcbd6d813af:   mov    0x8(%rsp),%r10
           │  0x00007fcbd6d813b4:   mov    %r10,%rsi
           │  0x00007fcbd6d813b7:   call   0x00007fcbd6764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual load_store_no_spill {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   0.00%   │  0x00007fcbd6d813bc:   nopl   0x300022c(%rax,%rax,1)       ;   {other}
   0.00%   │  0x00007fcbd6d813c4:   mov    0x20(%rsp),%r10
   4.62%   │  0x00007fcbd6d813c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@21 (line 195)
   1.85%   │  0x00007fcbd6d813cc:   mov    0x18(%rsp),%rsi
           │  0x00007fcbd6d813d1:   cmpb   $0x0,0x94(%rsi)
   8.92%   ╰  0x00007fcbd6d813d8:   je     0x00007fcbd6d813a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
              0x00007fcbd6d813da:   mov    %r10,0x20(%rsp)
              0x00007fcbd6d813df:   nop
              0x00007fcbd6d813e0:   call   0x00007fcbf0357df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcbd6d813e5:   nop
              0x00007fcbd6d813e6:   mov    0x10(%rsp),%rdx
              0x00007fcbd6d813eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
              0x00007fcbd6d813ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@41 (line 198)
....................................................................................................
  54.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 973 

                # {method} {0x00007fcb574851a0} &apos;load_store_no_spill&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fcbd6d7ed00:   mov    0x8(%rsi),%r10d
                0x00007fcbd6d7ed04:   movabs $0x7fcb5b000000,%r12
                0x00007fcbd6d7ed0e:   add    %r12,%r10
                0x00007fcbd6d7ed11:   xor    %r12,%r12
                0x00007fcbd6d7ed14:   cmp    %r10,%rax
                0x00007fcbd6d7ed17:   jne    0x00007fcbd6764080           ;   {runtime_call ic_miss_stub}
                0x00007fcbd6d7ed1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.76%        0x00007fcbd6d7ed20:   mov    %eax,-0x14000(%rsp)
                0x00007fcbd6d7ed27:   sub    $0x18,%rsp
   4.61%        0x00007fcbd6d7ed2b:   nop
                0x00007fcbd6d7ed2c:   cmpl   $0x0,0x20(%r15)
          ╭     0x00007fcbd6d7ed34:   jne    0x00007fcbd6d7ed91
          │ ↗   0x00007fcbd6d7ed3a:   mov    0xd4(%rsi),%r10d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 82)
   4.72%  │ │   0x00007fcbd6d7ed41:   vmovdqu 0xc(%rsi),%ymm0
          │ │   0x00007fcbd6d7ed46:   vmovdqu 0x2c(%rsi),%ymm1
          │ │   0x00007fcbd6d7ed4b:   vmovdqu 0x4c(%rsi),%ymm2
          │ │   0x00007fcbd6d7ed50:   mov    %r10d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 82)
   4.75%  │ │   0x00007fcbd6d7ed57:   mov    0x6c(%rsi),%r10d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@150 (line 108)
          │ │   0x00007fcbd6d7ed5b:   vmovdqu %ymm0,0x70(%rsi)
   0.99%  │ │   0x00007fcbd6d7ed60:   vmovdqu %ymm1,0x90(%rsi)
   5.42%  │ │   0x00007fcbd6d7ed68:   vmovdqu %ymm2,0xb0(%rsi)
   2.81%  │ │   0x00007fcbd6d7ed70:   mov    %r10d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 134)
          │ │   0x00007fcbd6d7ed77:   add    $0x18,%rsp
   0.36%  │ │   0x00007fcbd6d7ed7b:   nopl   0x0(%rax,%rax,1)
   1.44%  │ │↗  0x00007fcbd6d7ed80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fcbd6d7ed87:   ja     0x00007fcbd6d7ed9e
   9.07%  ││││  0x00007fcbd6d7ed8d:   vzeroupper 
   4.70%  ││││  0x00007fcbd6d7ed90:   ret    
          ↘│││  0x00007fcbd6d7ed91:   mov    %rbp,0x10(%rsp)
           │││  0x00007fcbd6d7ed96:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fcbd6d7ed9b:   jmp    0x00007fcbd6d7ed3a
           │ │  0x00007fcbd6d7ed9d:   hlt    
           ↘ ╰  0x00007fcbd6d7ed9e:   lea    -0x25(%rip),%rcx        # 0x00007fcbd6d7ed80
                0x00007fcbd6d7eda5:   mov    %rcx,0x468(%r15)
                0x00007fcbd6d7edac:   jmp    0x00007fcbd676b000           ;   {runtime_call SafepointBlob}
                0x00007fcbd6d7edb1:   hlt    
              [Exception Handler]
                0x00007fcbd6d7edb2:   call   0x00007fcbd68e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  43.63%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 998 
  43.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 973 
   0.45%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.96%  <...other 323 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 998 
  43.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 973 
   1.69%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%      jvmci, level 4
   1.69%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.214 ns/op
# Warmup Iteration   2: 8.023 ns/op
# Warmup Iteration   3: 7.992 ns/op
# Warmup Iteration   4: 8.043 ns/op
# Warmup Iteration   5: 8.002 ns/op
Iteration   1: 7.985 ns/op
Iteration   2: 7.984 ns/op
Iteration   3: 7.991 ns/op
Iteration   4: 7.988 ns/op
Iteration   5: 7.979 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  7.985 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (7.979, 7.985, 7.991), stdev = 0.005
  CI (99.9%): [7.968, 8.003] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 223269 total address lines.
Perf output processed (skipped 60.521 seconds):
 Column 1: cycles (50908 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 959 

                # {method} {0x00007f256347f490} &apos;load_store_spill_no_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f25e2d7b180:   mov    0x8(%rsi),%r10d
                0x00007f25e2d7b184:   movabs $0x7f2567000000,%r12
                0x00007f25e2d7b18e:   add    %r12,%r10
                0x00007f25e2d7b191:   xor    %r12,%r12
                0x00007f25e2d7b194:   cmp    %r10,%rax
                0x00007f25e2d7b197:   jne    0x00007f25e2764080           ;   {runtime_call ic_miss_stub}
                0x00007f25e2d7b19d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   2.68%        0x00007f25e2d7b1a0:   mov    %eax,-0x14000(%rsp)
   1.96%        0x00007f25e2d7b1a7:   sub    $0x18,%rsp
   2.62%        0x00007f25e2d7b1ab:   nop
                0x00007f25e2d7b1ac:   cmpl   $0x1,0x20(%r15)
   0.81%  ╭     0x00007f25e2d7b1b4:   jne    0x00007f25e2d7b211
   2.03%  │ ↗   0x00007f25e2d7b1ba:   vmovdqu 0xc(%rsi),%ymm0
  16.88%  │ │   0x00007f25e2d7b1bf:   vmovdqu 0x2c(%rsi),%ymm1
          │ │   0x00007f25e2d7b1c4:   vmovdqu 0x4c(%rsi),%ymm2
   2.20%  │ │   0x00007f25e2d7b1c9:   mov    0x6c(%rsi),%r10d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 188)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f25e2d7b1cd:   mov    0xd4(%rsi),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.87%  │ │   0x00007f25e2d7b1d4:   mov    %r11d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.09%  │ │   0x00007f25e2d7b1db:   vmovdqu %ymm0,0x70(%rsi)
   9.04%  │ │   0x00007f25e2d7b1e0:   vmovdqu %ymm1,0x90(%rsi)
   5.50%  │ │   0x00007f25e2d7b1e8:   vmovdqu %ymm2,0xb0(%rsi)
   0.92%  │ │   0x00007f25e2d7b1f0:   mov    %r10d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f25e2d7b1f7:   add    $0x18,%rsp
          │ │   0x00007f25e2d7b1fb:   nopl   0x0(%rax,%rax,1)
   3.75%  │ │↗  0x00007f25e2d7b200:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f25e2d7b207:   ja     0x00007f25e2d7b21e
   0.87%  ││││  0x00007f25e2d7b20d:   vzeroupper 
   4.70%  ││││  0x00007f25e2d7b210:   ret    
          ↘│││  0x00007f25e2d7b211:   mov    %rbp,0x10(%rsp)
           │││  0x00007f25e2d7b216:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f25e2d7b21b:   jmp    0x00007f25e2d7b1ba
           │ │  0x00007f25e2d7b21d:   hlt    
           ↘ ╰  0x00007f25e2d7b21e:   lea    -0x25(%rip),%rcx        # 0x00007f25e2d7b200
                0x00007f25e2d7b225:   mov    %rcx,0x468(%r15)
                0x00007f25e2d7b22c:   jmp    0x00007f25e276b000           ;   {runtime_call SafepointBlob}
                0x00007f25e2d7b231:   hlt    
              [Exception Handler]
                0x00007f25e2d7b232:   call   0x00007f25e28e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  56.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 984 

              0x00007f25e2d7daef:   mov    0x10(%rsp),%rdx
              0x00007f25e2d7daf4:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@10 (line 192)
              0x00007f25e2d7daf8:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f25e2d7db01:   jmp    0x00007f25e2d7db2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007f25e2d7db06:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f25e2d7db11:   data16 data16 xchg %ax,%ax
          │   0x00007f25e2d7db15:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
   3.62%  │↗  0x00007f25e2d7db20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
   1.14%  ││  0x00007f25e2d7db27:   test   %eax,(%r11)                  ;   {poll}
   4.60%  ││  0x00007f25e2d7db2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f25e2d7db2f:   mov    0x8(%rsp),%r10
   0.82%   │  0x00007f25e2d7db34:   mov    %r10,%rsi
   1.19%   │  0x00007f25e2d7db37:   call   0x00007f25e2764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual load_store_spill_no_fpu {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   9.01%   │  0x00007f25e2d7db3c:   nopl   0x300022c(%rax,%rax,1)       ;   {other}
           │  0x00007f25e2d7db44:   mov    0x20(%rsp),%r10
   3.12%   │  0x00007f25e2d7db49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@21 (line 195)
   3.78%   │  0x00007f25e2d7db4c:   mov    0x18(%rsp),%rsi
           │  0x00007f25e2d7db51:   cmpb   $0x0,0x94(%rsi)
  13.47%   ╰  0x00007f25e2d7db58:   je     0x00007f25e2d7db20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@28 (line 196)
              0x00007f25e2d7db5a:   mov    %r10,0x20(%rsp)
              0x00007f25e2d7db5f:   nop
              0x00007f25e2d7db60:   call   0x00007f25fb45cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f25e2d7db65:   nop
              0x00007f25e2d7db66:   mov    0x10(%rsp),%rdx
              0x00007f25e2d7db6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@35 (line 197)
              0x00007f25e2d7db6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub@41 (line 198)
....................................................................................................
  40.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 959 
  40.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 984 
   0.80%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.88%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 959 
  40.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 6, compile id 984 
   1.94%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  event_to_env 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%  libjvmcicompiler.so  jdk.vm.ci.meta.MetaUtil::toInternalName 
   0.22%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%       jvmci, level 4
   1.94%               kernel
   0.13%            libjvm.so
   0.12%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.409 ns/op
# Warmup Iteration   2: 8.039 ns/op
# Warmup Iteration   3: 8.075 ns/op
# Warmup Iteration   4: 7.993 ns/op
# Warmup Iteration   5: 8.013 ns/op
Iteration   1: 7.976 ns/op
Iteration   2: 7.942 ns/op
Iteration   3: 7.951 ns/op
Iteration   4: 7.942 ns/op
Iteration   5: 7.964 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  7.955 ±(99.9%) 0.057 ns/op [Average]
  (min, avg, max) = (7.942, 7.955, 7.976), stdev = 0.015
  CI (99.9%): [7.898, 8.012] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 222906 total address lines.
Perf output processed (skipped 60.493 seconds):
 Column 1: cycles (50592 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 951 

                # {method} {0x00007fa15b47f3c0} &apos;load_store_spill_use_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fa1dad79080:   mov    0x8(%rsi),%r10d
                0x00007fa1dad79084:   movabs $0x7fa15f000000,%r12
                0x00007fa1dad7908e:   add    %r12,%r10
                0x00007fa1dad79091:   xor    %r12,%r12
                0x00007fa1dad79094:   cmp    %r10,%rax
                0x00007fa1dad79097:   jne    0x00007fa1da764080           ;   {runtime_call ic_miss_stub}
                0x00007fa1dad7909d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   2.78%        0x00007fa1dad790a0:   mov    %eax,-0x14000(%rsp)
   1.97%        0x00007fa1dad790a7:   sub    $0x18,%rsp
   2.74%        0x00007fa1dad790ab:   nop
                0x00007fa1dad790ac:   cmpl   $0x1,0x20(%r15)
   0.78%  ╭     0x00007fa1dad790b4:   jne    0x00007fa1dad79111
   2.14%  │ ↗   0x00007fa1dad790ba:   vmovdqu 0xc(%rsi),%ymm0
  16.83%  │ │   0x00007fa1dad790bf:   vmovdqu 0x2c(%rsi),%ymm1
          │ │   0x00007fa1dad790c4:   vmovdqu 0x4c(%rsi),%ymm2
   2.20%  │ │   0x00007fa1dad790c9:   mov    0x6c(%rsi),%r10d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 188)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fa1dad790cd:   mov    0xd4(%rsi),%r11d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.58%  │ │   0x00007fa1dad790d4:   mov    %r11d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.05%  │ │   0x00007fa1dad790db:   vmovdqu %ymm0,0x70(%rsi)
   9.38%  │ │   0x00007fa1dad790e0:   vmovdqu %ymm1,0x90(%rsi)
   4.57%  │ │   0x00007fa1dad790e8:   vmovdqu %ymm2,0xb0(%rsi)
   1.02%  │ │   0x00007fa1dad790f0:   mov    %r10d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fa1dad790f7:   add    $0x18,%rsp
          │ │   0x00007fa1dad790fb:   nopl   0x0(%rax,%rax,1)
   3.68%  │ │↗  0x00007fa1dad79100:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fa1dad79107:   ja     0x00007fa1dad7911e
   1.08%  ││││  0x00007fa1dad7910d:   vzeroupper 
   4.69%  ││││  0x00007fa1dad79110:   ret    
          ↘│││  0x00007fa1dad79111:   mov    %rbp,0x10(%rsp)
           │││  0x00007fa1dad79116:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fa1dad7911b:   jmp    0x00007fa1dad790ba
           │ │  0x00007fa1dad7911d:   hlt    
           ↘ ╰  0x00007fa1dad7911e:   lea    -0x25(%rip),%rcx        # 0x00007fa1dad79100
                0x00007fa1dad79125:   mov    %rcx,0x468(%r15)
                0x00007fa1dad7912c:   jmp    0x00007fa1da76b000           ;   {runtime_call SafepointBlob}
                0x00007fa1dad79131:   hlt    
              [Exception Handler]
                0x00007fa1dad79132:   call   0x00007fa1da8e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  56.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 980 

              0x00007fa1dad7f86f:   mov    0x10(%rsp),%rdx
              0x00007fa1dad7f874:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@10 (line 192)
              0x00007fa1dad7f878:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa1dad7f881:   jmp    0x00007fa1dad7f8af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
          │   0x00007fa1dad7f886:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa1dad7f891:   data16 data16 xchg %ax,%ax
          │   0x00007fa1dad7f895:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
   3.61%  │↗  0x00007fa1dad7f8a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
   1.22%  ││  0x00007fa1dad7f8a7:   test   %eax,(%r11)                  ;   {poll}
   5.14%  ││  0x00007fa1dad7f8aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fa1dad7f8af:   mov    0x8(%rsp),%r10
   0.83%   │  0x00007fa1dad7f8b4:   mov    %r10,%rsi
   1.22%   │  0x00007fa1dad7f8b7:   call   0x00007fa1da764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual load_store_spill_use_fpu {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   9.07%   │  0x00007fa1dad7f8bc:   nopl   0x300022c(%rax,%rax,1)       ;   {other}
           │  0x00007fa1dad7f8c4:   mov    0x20(%rsp),%r10
   2.95%   │  0x00007fa1dad7f8c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@21 (line 195)
   3.81%   │  0x00007fa1dad7f8cc:   mov    0x18(%rsp),%rsi
           │  0x00007fa1dad7f8d1:   cmpb   $0x0,0x94(%rsi)
  13.94%   ╰  0x00007fa1dad7f8d8:   je     0x00007fa1dad7f8a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@28 (line 196)
              0x00007fa1dad7f8da:   mov    %r10,0x20(%rsp)
              0x00007fa1dad7f8df:   nop
              0x00007fa1dad7f8e0:   call   0x00007fa1f2f0cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa1dad7f8e5:   nop
              0x00007fa1dad7f8e6:   mov    0x10(%rsp),%rdx
              0x00007fa1dad7f8eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@35 (line 197)
              0x00007fa1dad7f8ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub@41 (line 198)
....................................................................................................
  41.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 951 
  41.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 980 
   0.46%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.80%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 951 
  41.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 980 
   1.39%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  hsdis_read_memory_func 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%      hsdis-amd64.so  print_insn 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%      jvmci, level 4
   1.39%              kernel
   0.13%           libjvm.so
   0.09%                    
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2151040.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:41

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

Benchmark                                            Mode  Cnt  Score   Error  Units
StackSpillingBenchmark.load_store_no_spill           avgt    5  8.056 ± 0.014  ns/op
StackSpillingBenchmark.load_store_no_spill:asm       avgt         NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  7.985 ± 0.017  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt         NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  7.955 ± 0.057  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt         NaN            ---
