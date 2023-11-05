# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 8.974 ns/op
# Warmup Iteration   2: 8.544 ns/op
# Warmup Iteration   3: 8.483 ns/op
# Warmup Iteration   4: 8.478 ns/op
# Warmup Iteration   5: 8.478 ns/op
Iteration   1: 8.477 ns/op
Iteration   2: 8.481 ns/op
Iteration   3: 8.473 ns/op
Iteration   4: 8.472 ns/op
Iteration   5: 8.484 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  8.477 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (8.472, 8.477, 8.484), stdev = 0.005
  CI (99.9%): [8.458, 8.497] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 186854 total address lines.
Perf output processed (skipped 58.501 seconds):
 Column 1: cycles (50589 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 728 

             #           [sp+0x20]  (sp of caller)
             0x00007f4a12b1a4a0:   mov    0x8(%rsi),%r10d
             0x00007f4a12b1a4a4:   movabs $0x800000000,%r12
             0x00007f4a12b1a4ae:   add    %r12,%r10
             0x00007f4a12b1a4b1:   xor    %r12,%r12
             0x00007f4a12b1a4b4:   cmp    %r10,%rax
             0x00007f4a12b1a4b7:   jne    0x00007f4a0b01e780           ;   {runtime_call ic_miss_stub}
             0x00007f4a12b1a4bd:   nop
             0x00007f4a12b1a4be:   xchg   %ax,%ax
           [Verified Entry Point]
   1.82%     0x00007f4a12b1a4c0:   mov    %eax,-0x14000(%rsp)
   3.43%     0x00007f4a12b1a4c7:   sub    $0x18,%rsp
   1.80%     0x00007f4a12b1a4cb:   mov    %rbp,0x10(%rsp)
   0.95%     0x00007f4a12b1a4d0:   mov    %rsi,%r11
   1.10%     0x00007f4a12b1a4d3:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   0.82%     0x00007f4a12b1a4d6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@1 (line 209)
   1.74%     0x00007f4a12b1a4da:   lea    (%rsp),%r8
   0.95%     0x00007f4a12b1a4de:   mov    0x8(%r11),%esi
   1.07%     0x00007f4a12b1a4e2:   movabs $0x800000000,%rdx
   0.75%     0x00007f4a12b1a4ec:   lea    (%rdx,%rsi,1),%rsi
   2.66%     0x00007f4a12b1a4f0:   mov    0xb8(%rsi),%rsi
  21.22%     0x00007f4a12b1a4f7:   mov    %r15,%rdx
             0x00007f4a12b1a4fa:   or     %rsi,%rdx
   4.53%     0x00007f4a12b1a4fd:   mov    %rdx,%rbp
             0x00007f4a12b1a500:   xor    %r10,%rbp                    ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   9.18%     0x00007f4a12b1a503:   mov    %eax,%r9d
             0x00007f4a12b1a506:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
   0.00%     0x00007f4a12b1a509:   test   $0xffffffffffffff87,%rbp
          ╭  0x00007f4a12b1a510:   jne    0x00007f4a12b1a54b           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
          │  0x00007f4a12b1a516:   mov    0x14(%r11),%eax
   4.35%  │  0x00007f4a12b1a51a:   add    %eax,%r9d
          │  0x00007f4a12b1a51d:   add    %eax,%r9d
          │  0x00007f4a12b1a520:   add    %eax,%r9d
          │  0x00007f4a12b1a523:   add    %eax,%r9d
   4.47%  │  0x00007f4a12b1a526:   add    %eax,%r9d
          │  0x00007f4a12b1a529:   add    %eax,%r9d
   0.00%  │  0x00007f4a12b1a52c:   add    %eax,%r9d
          │  0x00007f4a12b1a52f:   add    %eax,%r9d                    ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
   4.45%  │  0x00007f4a12b1a532:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@78 (line 222)
          │  0x00007f4a12b1a535:   mov    0x10(%rsp),%rbp
          │  0x00007f4a12b1a53a:   add    $0x18,%rsp
          │  0x00007f4a12b1a53e:   mov    0x348(%r15),%rcx
   4.41%  │  0x00007f4a12b1a545:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f4a12b1a547:   vzeroupper 
   4.70%  │  0x00007f4a12b1a54a:   ret                                 ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          ↘  0x00007f4a12b1a54b:   mov    %r10,%rax
             0x00007f4a12b1a54e:   and    $0x7,%rax
             0x00007f4a12b1a552:   cmp    $0x5,%rax
             0x00007f4a12b1a556:   je     0x00007f4a12b1a5c9
             0x00007f4a12b1a55c:   nopl   0x0(%rax)
             0x00007f4a12b1a560:   test   $0x2,%r10
             0x00007f4a12b1a567:   jne    0x00007f4a12b1a67e
             0x00007f4a12b1a56d:   or     $0x1,%r10
             0x00007f4a12b1a571:   mov    %r10,(%r8)
....................................................................................................
  74.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 744 

              0x00007f4a12b1ce58:   call   0x00007f4a29b364f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4a12b1ce5d:   nop
              0x00007f4a12b1ce5e:   mov    0x10(%rsp),%rdx
              0x00007f4a12b1ce63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 230)
              0x00007f4a12b1ce67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f4a12b1ce70:   jmp    0x00007f4a12b1ce8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          │   0x00007f4a12b1ce75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
   4.40%  │↗  0x00007f4a12b1ce80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
   0.00%  ││  0x00007f4a12b1ce87:   test   %eax,(%r11)                  ;   {poll}
   1.66%  ││  0x00007f4a12b1ce8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
   0.00%  ↘│  0x00007f4a12b1ce8f:   mov    0x8(%rsp),%r10
   2.59%   │  0x00007f4a12b1ce94:   mov    %r10,%rsi
   0.00%   │  0x00007f4a12b1ce97:   call   0x00007f4a0b01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.03%   │  0x00007f4a12b1ce9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 232)
           │  0x00007f4a12b1ce9d:   mov    0x20(%rsp),%r10
   4.51%   │  0x00007f4a12b1cea2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 233)
   0.08%   │  0x00007f4a12b1cea5:   mov    0x18(%rsp),%rsi
           │  0x00007f4a12b1ceaa:   cmpb   $0x0,0x94(%rsi)
  10.65%   ╰  0x00007f4a12b1ceb1:   je     0x00007f4a12b1ce80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007f4a12b1ceb3:   mov    %r10,0x20(%rsp)
              0x00007f4a12b1ceb8:   call   0x00007f4a29b364f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4a12b1cebd:   nop
              0x00007f4a12b1cebe:   mov    0x10(%rsp),%rdx
              0x00007f4a12b1cec3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 235)
              0x00007f4a12b1cec7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 236)
              0x00007f4a12b1cecb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  23.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 728 
  23.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 744 
   0.29%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.80%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 728 
  23.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 744 
   1.33%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.35%       jvmci, level 4
   1.33%               kernel
   0.15%            libjvm.so
   0.06%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%         libm-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%       perf-51607.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.048 ns/op
# Warmup Iteration   2: 8.421 ns/op
# Warmup Iteration   3: 8.472 ns/op
# Warmup Iteration   4: 8.380 ns/op
# Warmup Iteration   5: 8.395 ns/op
Iteration   1: 8.397 ns/op
Iteration   2: 8.426 ns/op
Iteration   3: 8.384 ns/op
Iteration   4: 8.416 ns/op
Iteration   5: 8.353 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  8.395 ±(99.9%) 0.111 ns/op [Average]
  (min, avg, max) = (8.353, 8.395, 8.426), stdev = 0.029
  CI (99.9%): [8.284, 8.506] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 195243 total address lines.
Perf output processed (skipped 58.702 seconds):
 Column 1: cycles (50510 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 726 

             #           [sp+0x20]  (sp of caller)
             0x00007fa8a6b1a820:   mov    0x8(%rsi),%r10d
             0x00007fa8a6b1a824:   movabs $0x800000000,%r12
             0x00007fa8a6b1a82e:   add    %r12,%r10
             0x00007fa8a6b1a831:   xor    %r12,%r12
             0x00007fa8a6b1a834:   cmp    %r10,%rax
             0x00007fa8a6b1a837:   jne    0x00007fa89f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fa8a6b1a83d:   nop
             0x00007fa8a6b1a83e:   xchg   %ax,%ax
           [Verified Entry Point]
   2.24%     0x00007fa8a6b1a840:   mov    %eax,-0x14000(%rsp)
   3.33%     0x00007fa8a6b1a847:   sub    $0x18,%rsp
   2.17%     0x00007fa8a6b1a84b:   mov    %rbp,0x10(%rsp)
   0.56%     0x00007fa8a6b1a850:   mov    %rsi,%r11
   0.68%     0x00007fa8a6b1a853:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   1.01%     0x00007fa8a6b1a856:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 124)
   2.25%     0x00007fa8a6b1a85a:   lea    (%rsp),%r8
   0.61%     0x00007fa8a6b1a85e:   mov    0x8(%r11),%esi
   0.68%     0x00007fa8a6b1a862:   movabs $0x800000000,%rdx
   1.02%     0x00007fa8a6b1a86c:   lea    (%rdx,%rsi,1),%rsi
   2.78%     0x00007fa8a6b1a870:   mov    0xb8(%rsi),%rsi
  21.55%     0x00007fa8a6b1a877:   mov    %r15,%rdx
             0x00007fa8a6b1a87a:   or     %rsi,%rdx
   4.65%     0x00007fa8a6b1a87d:   mov    %rdx,%rbp
             0x00007fa8a6b1a880:   xor    %r10,%rbp                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   9.02%     0x00007fa8a6b1a883:   mov    %eax,%r9d
             0x00007fa8a6b1a886:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
             0x00007fa8a6b1a889:   test   $0xffffffffffffff87,%rbp
          ╭  0x00007fa8a6b1a890:   jne    0x00007fa8a6b1a8cb           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
          │  0x00007fa8a6b1a896:   mov    0x14(%r11),%eax
   4.63%  │  0x00007fa8a6b1a89a:   add    %eax,%r9d
          │  0x00007fa8a6b1a89d:   add    %eax,%r9d
          │  0x00007fa8a6b1a8a0:   add    %eax,%r9d
          │  0x00007fa8a6b1a8a3:   add    %eax,%r9d
   4.66%  │  0x00007fa8a6b1a8a6:   add    %eax,%r9d
          │  0x00007fa8a6b1a8a9:   add    %eax,%r9d
          │  0x00007fa8a6b1a8ac:   add    %eax,%r9d
          │  0x00007fa8a6b1a8af:   add    %eax,%r9d                    ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
   4.55%  │  0x00007fa8a6b1a8b2:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 135)
          │  0x00007fa8a6b1a8b5:   mov    0x10(%rsp),%rbp
          │  0x00007fa8a6b1a8ba:   add    $0x18,%rsp
          │  0x00007fa8a6b1a8be:   mov    0x348(%r15),%rcx
   4.44%  │  0x00007fa8a6b1a8c5:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fa8a6b1a8c7:   vzeroupper 
   4.56%  │  0x00007fa8a6b1a8ca:   ret                                 ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ↘  0x00007fa8a6b1a8cb:   mov    %r10,%rax
             0x00007fa8a6b1a8ce:   and    $0x7,%rax
             0x00007fa8a6b1a8d2:   cmp    $0x5,%rax
             0x00007fa8a6b1a8d6:   je     0x00007fa8a6b1a949
             0x00007fa8a6b1a8dc:   nopl   0x0(%rax)
             0x00007fa8a6b1a8e0:   test   $0x2,%r10
             0x00007fa8a6b1a8e7:   jne    0x00007fa8a6b1a9fe
             0x00007fa8a6b1a8ed:   or     $0x1,%r10
....................................................................................................
  75.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 750 

              0x00007fa8a6b1ead8:   call   0x00007fa8bd51d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa8a6b1eadd:   nop
              0x00007fa8a6b1eade:   mov    0x10(%rsp),%rdx
              0x00007fa8a6b1eae3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 230)
              0x00007fa8a6b1eae7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa8a6b1eaf0:   jmp    0x00007fa8a6b1eb0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fa8a6b1eaf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
   4.62%  │↗  0x00007fa8a6b1eb00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
   0.00%  ││  0x00007fa8a6b1eb07:   test   %eax,(%r11)                  ;   {poll}
   2.32%  ││  0x00007fa8a6b1eb0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fa8a6b1eb0f:   mov    0x8(%rsp),%r10
   2.32%   │  0x00007fa8a6b1eb14:   mov    %r10,%rsi
           │  0x00007fa8a6b1eb17:   call   0x00007fa89f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.01%   │  0x00007fa8a6b1eb1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fa8a6b1eb1d:   mov    0x20(%rsp),%r10
   4.67%   │  0x00007fa8a6b1eb22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 233)
   0.05%   │  0x00007fa8a6b1eb25:   mov    0x18(%rsp),%rsi
           │  0x00007fa8a6b1eb2a:   cmpb   $0x0,0x94(%rsi)
   9.11%   ╰  0x00007fa8a6b1eb31:   je     0x00007fa8a6b1eb00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fa8a6b1eb33:   mov    %r10,0x20(%rsp)
              0x00007fa8a6b1eb38:   call   0x00007fa8bd51d4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa8a6b1eb3d:   nop
              0x00007fa8a6b1eb3e:   mov    0x10(%rsp),%rdx
              0x00007fa8a6b1eb43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fa8a6b1eb47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fa8a6b1eb4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  23.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 726 
  23.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 750 
   0.35%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 276 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 726 
  23.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 750 
   1.21%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%            libjvm.so  PerfLongVariant::sample 
   0.13%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.51%       jvmci, level 4
   1.21%               kernel
   0.13%            libjvm.so
   0.06%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%           ld-2.31.so
   0.00%       perf-51669.map
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.935 ns/op
# Warmup Iteration   2: 11.446 ns/op
# Warmup Iteration   3: 11.464 ns/op
# Warmup Iteration   4: 11.426 ns/op
# Warmup Iteration   5: 11.401 ns/op
Iteration   1: 11.404 ns/op
Iteration   2: 11.372 ns/op
Iteration   3: 11.421 ns/op
Iteration   4: 11.417 ns/op
Iteration   5: 11.395 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  11.402 ±(99.9%) 0.075 ns/op [Average]
  (min, avg, max) = (11.372, 11.402, 11.421), stdev = 0.020
  CI (99.9%): [11.327, 11.477] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 194564 total address lines.
Perf output processed (skipped 58.618 seconds):
 Column 1: cycles (51078 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 731 

              #           [sp+0x20]  (sp of caller)
              0x00007febaeb17ca0:   mov    0x8(%rsi),%r10d
              0x00007febaeb17ca4:   movabs $0x800000000,%r12
              0x00007febaeb17cae:   add    %r12,%r10
              0x00007febaeb17cb1:   xor    %r12,%r12
              0x00007febaeb17cb4:   cmp    %r10,%rax
              0x00007febaeb17cb7:   jne    0x00007feba701e780           ;   {runtime_call ic_miss_stub}
              0x00007febaeb17cbd:   nop
              0x00007febaeb17cbe:   xchg   %ax,%ax
            [Verified Entry Point]
   1.54%      0x00007febaeb17cc0:   mov    %eax,-0x14000(%rsp)
   1.99%      0x00007febaeb17cc7:   sub    $0x18,%rsp
   1.71%      0x00007febaeb17ccb:   mov    %rbp,0x10(%rsp)
   0.54%      0x00007febaeb17cd0:   mov    %rsi,%r11
   0.86%      0x00007febaeb17cd3:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 141)
   0.27%      0x00007febaeb17cd7:   mov    %eax,%r8d
   1.55%      0x00007febaeb17cda:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 141)
   0.59%      0x00007febaeb17cdd:   data16 xchg %ax,%ax
   0.91%      0x00007febaeb17ce0:   cmp    $0x21,%r8d
              0x00007febaeb17ce4:   jl     0x00007febaeb17fdb           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 144)
   1.08%      0x00007febaeb17cea:   mov    (%r11),%r10
   1.38%      0x00007febaeb17ced:   lea    (%rsp),%r9
              0x00007febaeb17cf1:   mov    0x8(%r11),%eax
   0.86%      0x00007febaeb17cf5:   movabs $0x800000000,%rsi
   1.10%      0x00007febaeb17cff:   lea    (%rsi,%rax,1),%rax
   1.43%      0x00007febaeb17d03:   mov    0xb8(%rax),%rsi
  10.61%      0x00007febaeb17d0a:   mov    %r15,%rdx
              0x00007febaeb17d0d:   or     %rsi,%rdx
   3.18%      0x00007febaeb17d10:   mov    %rdx,%rbp
              0x00007febaeb17d13:   xor    %r10,%rbp
   3.24%      0x00007febaeb17d16:   data16 nopw 0x0(%rax,%rax,1)
              0x00007febaeb17d20:   test   $0xffffffffffffff87,%rbp
              0x00007febaeb17d27:   jne    0x00007febaeb17def           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   3.32%      0x00007febaeb17d2d:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
              0x00007febaeb17d31:   mov    %r8d,%eax
              0x00007febaeb17d34:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
              0x00007febaeb17d37:   cmp    $0x21,%eax
              0x00007febaeb17d3a:   jl     0x00007febaeb18012           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
   3.18%      0x00007febaeb17d40:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
              0x00007febaeb17d43:   cmp    $0x21,%eax
              0x00007febaeb17d46:   jl     0x00007febaeb18009           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
              0x00007febaeb17d4c:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
              0x00007febaeb17d4f:   cmp    $0x21,%eax
              0x00007febaeb17d52:   jl     0x00007febaeb1801b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
   3.31%      0x00007febaeb17d58:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
              0x00007febaeb17d5b:   nopl   0x0(%rax,%rax,1)
              0x00007febaeb17d60:   cmp    $0x21,%eax
              0x00007febaeb17d63:   jl     0x00007febaeb17fbc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
              0x00007febaeb17d69:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
   3.40%      0x00007febaeb17d6c:   cmp    $0x21,%eax
              0x00007febaeb17d6f:   jl     0x00007febaeb17ff7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 159)
              0x00007febaeb17d75:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
              0x00007febaeb17d78:   nopl   0x0(%rax,%rax,1)
              0x00007febaeb17d80:   cmp    $0x21,%eax
              0x00007febaeb17d83:   jl     0x00007febaeb18000           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 162)
   3.63%      0x00007febaeb17d89:   mov    %eax,%ecx
              0x00007febaeb17d8b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
              0x00007febaeb17d8e:   cmp    $0x21,%ecx
              0x00007febaeb17d91:   jl     0x00007febaeb18024           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 165)
              0x00007febaeb17d97:   mov    $0x7,%eax
   3.30%      0x00007febaeb17d9c:   and    (%r11),%al
              0x00007febaeb17d9f:   nop
              0x00007febaeb17da0:   cmp    $0x5,%al
          ╭   0x00007febaeb17da3:   jne    0x00007febaeb17dc4           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
          │↗  0x00007febaeb17da9:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   3.24%  ││  0x00007febaeb17dac:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 169)
          ││  0x00007febaeb17dae:   mov    0x10(%rsp),%rbp
          ││  0x00007febaeb17db3:   add    $0x18,%rsp
          ││  0x00007febaeb17db7:   mov    0x348(%r15),%rcx
   3.34%  ││  0x00007febaeb17dbe:   test   %eax,(%rcx)                  ;   {poll_return}
          ││  0x00007febaeb17dc0:   vzeroupper 
   3.48%  ││  0x00007febaeb17dc3:   ret    
          ↘│  0x00007febaeb17dc4:   lea    (%rsp),%r10
           │  0x00007febaeb17dc8:   mov    (%r10),%rsi
           │  0x00007febaeb17dcb:   test   %rsi,%rsi
           ╰  0x00007febaeb17dce:   je     0x00007febaeb17da9
              0x00007febaeb17dd0:   mov    (%r11),%r8
              0x00007febaeb17dd3:   test   $0x2,%r8
              0x00007febaeb17dda:   jne    0x00007febaeb17e6d
              0x00007febaeb17de0:   mov    %r10,%rax
              0x00007febaeb17de3:   lock cmpxchg %rsi,(%r11)
              0x00007febaeb17de8:   je     0x00007febaeb17da9
....................................................................................................
  63.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 755 

              0x00007febaeb1dad8:   call   0x00007febc60764f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007febaeb1dadd:   nop
              0x00007febaeb1dade:   mov    0x10(%rsp),%rdx
              0x00007febaeb1dae3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@10 (line 230)
              0x00007febaeb1dae7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007febaeb1daf0:   jmp    0x00007febaeb1db0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007febaeb1daf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   3.21%  │↗  0x00007febaeb1db00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007febaeb1db07:   test   %eax,(%r11)                  ;   {poll}
   1.55%  ││  0x00007febaeb1db0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007febaeb1db0f:   mov    0x8(%rsp),%r10
   1.69%   │  0x00007febaeb1db14:   mov    %r10,%rsi
           │  0x00007febaeb1db17:   call   0x00007feba701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   1.59%   │  0x00007febaeb1db1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007febaeb1db1d:   mov    0x20(%rsp),%r10
   9.84%   │  0x00007febaeb1db22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 233)
   3.24%   │  0x00007febaeb1db25:   mov    0x18(%rsp),%rsi
           │  0x00007febaeb1db2a:   cmpb   $0x0,0x94(%rsi)
  13.23%   ╰  0x00007febaeb1db31:   je     0x00007febaeb1db00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007febaeb1db33:   mov    %r10,0x20(%rsp)
              0x00007febaeb1db38:   call   0x00007febc60764f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007febaeb1db3d:   nop
              0x00007febaeb1db3e:   mov    0x10(%rsp),%rdx
              0x00007febaeb1db43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007febaeb1db47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007febaeb1db4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  34.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 731 
  34.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 755 
   1.13%               kernel  [unknown] 
   0.43%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  [unknown] 
   0.63%  <...other 235 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 731 
  34.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 755 
   2.29%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  _pthread_cleanup_push 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.42%       jvmci, level 4
   2.29%               kernel
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%                     
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.003 ns/op
# Warmup Iteration   2: 11.464 ns/op
# Warmup Iteration   3: 11.488 ns/op
# Warmup Iteration   4: 11.437 ns/op
# Warmup Iteration   5: 11.447 ns/op
Iteration   1: 11.429 ns/op
Iteration   2: 11.401 ns/op
Iteration   3: 11.401 ns/op
Iteration   4: 11.419 ns/op
Iteration   5: 11.465 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  11.423 ±(99.9%) 0.102 ns/op [Average]
  (min, avg, max) = (11.401, 11.423, 11.465), stdev = 0.027
  CI (99.9%): [11.321, 11.525] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 189679 total address lines.
Perf output processed (skipped 58.488 seconds):
 Column 1: cycles (50491 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 722 

              #           [sp+0x20]  (sp of caller)
              0x00007f5dceb1b220:   mov    0x8(%rsi),%r10d
              0x00007f5dceb1b224:   movabs $0x800000000,%r12
              0x00007f5dceb1b22e:   add    %r12,%r10
              0x00007f5dceb1b231:   xor    %r12,%r12
              0x00007f5dceb1b234:   cmp    %r10,%rax
              0x00007f5dceb1b237:   jne    0x00007f5dc701e780           ;   {runtime_call ic_miss_stub}
              0x00007f5dceb1b23d:   nop
              0x00007f5dceb1b23e:   xchg   %ax,%ax
            [Verified Entry Point]
   2.20%      0x00007f5dceb1b240:   mov    %eax,-0x14000(%rsp)
   1.37%      0x00007f5dceb1b247:   sub    $0x18,%rsp
   2.27%      0x00007f5dceb1b24b:   mov    %rbp,0x10(%rsp)
   0.17%      0x00007f5dceb1b250:   mov    %rsi,%r11
   0.61%      0x00007f5dceb1b253:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 175)
   0.23%      0x00007f5dceb1b257:   mov    %eax,%r8d
   2.10%      0x00007f5dceb1b25a:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 175)
   0.20%      0x00007f5dceb1b25d:   data16 xchg %ax,%ax
   0.58%      0x00007f5dceb1b260:   cmp    $0x21,%r8d
              0x00007f5dceb1b264:   jl     0x00007f5dceb1b558           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 178)
   1.15%      0x00007f5dceb1b26a:   mov    (%r11),%r10
   1.78%      0x00007f5dceb1b26d:   lea    (%rsp),%r9
   0.01%      0x00007f5dceb1b271:   mov    0x8(%r11),%eax
   0.60%      0x00007f5dceb1b275:   movabs $0x800000000,%rsi
   1.03%      0x00007f5dceb1b27f:   lea    (%rsi,%rax,1),%rax
   1.62%      0x00007f5dceb1b283:   mov    0xb8(%rax),%rsi
  10.13%      0x00007f5dceb1b28a:   mov    %r15,%rdx
              0x00007f5dceb1b28d:   or     %rsi,%rdx
   3.35%      0x00007f5dceb1b290:   mov    %rdx,%rbp
              0x00007f5dceb1b293:   xor    %r10,%rbp
   3.28%      0x00007f5dceb1b296:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f5dceb1b2a0:   test   $0xffffffffffffff87,%rbp
              0x00007f5dceb1b2a7:   jne    0x00007f5dceb1b36f           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   3.39%      0x00007f5dceb1b2ad:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
              0x00007f5dceb1b2b1:   mov    %r8d,%eax
              0x00007f5dceb1b2b4:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
              0x00007f5dceb1b2b7:   cmp    $0x21,%eax
              0x00007f5dceb1b2ba:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 180)
   3.34%      0x00007f5dceb1b2c0:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
              0x00007f5dceb1b2c3:   cmp    $0x21,%eax
              0x00007f5dceb1b2c6:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 182)
              0x00007f5dceb1b2cc:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
              0x00007f5dceb1b2cf:   cmp    $0x21,%eax
              0x00007f5dceb1b2d2:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
   3.23%      0x00007f5dceb1b2d8:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
              0x00007f5dceb1b2db:   nopl   0x0(%rax,%rax,1)
              0x00007f5dceb1b2e0:   cmp    $0x21,%eax
              0x00007f5dceb1b2e3:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
              0x00007f5dceb1b2e9:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
   3.23%      0x00007f5dceb1b2ec:   cmp    $0x21,%eax
              0x00007f5dceb1b2ef:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
              0x00007f5dceb1b2f5:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
              0x00007f5dceb1b2f8:   nopl   0x0(%rax,%rax,1)
              0x00007f5dceb1b300:   cmp    $0x21,%eax
              0x00007f5dceb1b303:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 190)
   3.70%      0x00007f5dceb1b309:   mov    %eax,%ecx
              0x00007f5dceb1b30b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
              0x00007f5dceb1b30e:   cmp    $0x21,%ecx
              0x00007f5dceb1b311:   jl     0x00007f5dceb1b53c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 192)
              0x00007f5dceb1b317:   mov    $0x7,%eax
   3.31%      0x00007f5dceb1b31c:   and    (%r11),%al
              0x00007f5dceb1b31f:   nop
              0x00007f5dceb1b320:   cmp    $0x5,%al
          ╭   0x00007f5dceb1b323:   jne    0x00007f5dceb1b344           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
          │↗  0x00007f5dceb1b329:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   3.32%  ││  0x00007f5dceb1b32c:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 203)
          ││  0x00007f5dceb1b32e:   mov    0x10(%rsp),%rbp
          ││  0x00007f5dceb1b333:   add    $0x18,%rsp
          ││  0x00007f5dceb1b337:   mov    0x348(%r15),%rcx
   3.31%  ││  0x00007f5dceb1b33e:   test   %eax,(%rcx)                  ;   {poll_return}
          ││  0x00007f5dceb1b340:   vzeroupper 
   3.33%  ││  0x00007f5dceb1b343:   ret    
          ↘│  0x00007f5dceb1b344:   lea    (%rsp),%r10
           │  0x00007f5dceb1b348:   mov    (%r10),%rsi
           │  0x00007f5dceb1b34b:   test   %rsi,%rsi
           ╰  0x00007f5dceb1b34e:   je     0x00007f5dceb1b329
              0x00007f5dceb1b350:   mov    (%r11),%r8
              0x00007f5dceb1b353:   test   $0x2,%r8
              0x00007f5dceb1b35a:   jne    0x00007f5dceb1b3ed
              0x00007f5dceb1b360:   mov    %r10,%rax
              0x00007f5dceb1b363:   lock cmpxchg %rsi,(%r11)
              0x00007f5dceb1b368:   je     0x00007f5dceb1b329
....................................................................................................
  62.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 747 

              0x00007f5dceb1ee58:   call   0x00007f5de65ae4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5dceb1ee5d:   nop
              0x00007f5dceb1ee5e:   mov    0x10(%rsp),%rdx
              0x00007f5dceb1ee63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@10 (line 230)
              0x00007f5dceb1ee67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f5dceb1ee70:   jmp    0x00007f5dceb1ee8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f5dceb1ee75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
   3.30%  │↗  0x00007f5dceb1ee80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f5dceb1ee87:   test   %eax,(%r11)                  ;   {poll}
   2.24%  ││  0x00007f5dceb1ee8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f5dceb1ee8f:   mov    0x8(%rsp),%r10
   1.02%   │  0x00007f5dceb1ee94:   mov    %r10,%rsi
           │  0x00007f5dceb1ee97:   call   0x00007f5dc701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   1.75%   │  0x00007f5dceb1ee9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f5dceb1ee9d:   mov    0x20(%rsp),%r10
  10.15%   │  0x00007f5dceb1eea2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 233)
   3.34%   │  0x00007f5dceb1eea5:   mov    0x18(%rsp),%rsi
           │  0x00007f5dceb1eeaa:   cmpb   $0x0,0x94(%rsi)
  13.63%   ╰  0x00007f5dceb1eeb1:   je     0x00007f5dceb1ee80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f5dceb1eeb3:   mov    %r10,0x20(%rsp)
              0x00007f5dceb1eeb8:   call   0x00007f5de65ae4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5dceb1eebd:   nop
              0x00007f5dceb1eebe:   mov    0x10(%rsp),%rdx
              0x00007f5dceb1eec3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f5dceb1eec7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f5dceb1eecb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  35.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 722 
  35.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 747 
   0.40%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.84%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 722 
  35.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 747 
   1.44%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::flush 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%          interpreter  invokevirtual  182 invokevirtual  
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%       jvmci, level 4
   1.44%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%       perf-51790.map
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.012 ns/op
# Warmup Iteration   2: 8.489 ns/op
# Warmup Iteration   3: 8.516 ns/op
# Warmup Iteration   4: 8.493 ns/op
# Warmup Iteration   5: 8.493 ns/op
Iteration   1: 8.488 ns/op
Iteration   2: 8.493 ns/op
Iteration   3: 8.485 ns/op
Iteration   4: 8.488 ns/op
Iteration   5: 8.497 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  8.490 ±(99.9%) 0.018 ns/op [Average]
  (min, avg, max) = (8.485, 8.490, 8.497), stdev = 0.005
  CI (99.9%): [8.472, 8.508] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 189932 total address lines.
Perf output processed (skipped 58.583 seconds):
 Column 1: cycles (50682 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 730 

             #           [sp+0x20]  (sp of caller)
             0x00007fbfd6b19a20:   mov    0x8(%rsi),%r10d
             0x00007fbfd6b19a24:   movabs $0x800000000,%r12
             0x00007fbfd6b19a2e:   add    %r12,%r10
             0x00007fbfd6b19a31:   xor    %r12,%r12
             0x00007fbfd6b19a34:   cmp    %r10,%rax
             0x00007fbfd6b19a37:   jne    0x00007fbfcf01e780           ;   {runtime_call ic_miss_stub}
             0x00007fbfd6b19a3d:   nop
             0x00007fbfd6b19a3e:   xchg   %ax,%ax
           [Verified Entry Point]
   1.25%     0x00007fbfd6b19a40:   mov    %eax,-0x14000(%rsp)
   3.57%     0x00007fbfd6b19a47:   sub    $0x18,%rsp
   1.24%     0x00007fbfd6b19a4b:   mov    %rbp,0x10(%rsp)
   1.38%     0x00007fbfd6b19a50:   mov    %rsi,%r11
   1.51%     0x00007fbfd6b19a53:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   0.35%     0x00007fbfd6b19a56:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 83)
   1.18%     0x00007fbfd6b19a5a:   lea    (%rsp),%r8
   1.21%     0x00007fbfd6b19a5e:   mov    0x8(%r11),%esi
   1.52%     0x00007fbfd6b19a62:   movabs $0x800000000,%rdx
   0.35%     0x00007fbfd6b19a6c:   lea    (%rdx,%rsi,1),%rsi
   2.56%     0x00007fbfd6b19a70:   mov    0xb8(%rsi),%rsi
  21.11%     0x00007fbfd6b19a77:   mov    %r15,%rdx
             0x00007fbfd6b19a7a:   or     %rsi,%rdx
   4.54%     0x00007fbfd6b19a7d:   mov    %rdx,%rbp
             0x00007fbfd6b19a80:   xor    %r10,%rbp                    ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   8.95%     0x00007fbfd6b19a83:   mov    %eax,%r9d
             0x00007fbfd6b19a86:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 83)
             0x00007fbfd6b19a89:   test   $0xffffffffffffff87,%rbp
          ╭  0x00007fbfd6b19a90:   jne    0x00007fbfd6b19acb           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
          │  0x00007fbfd6b19a96:   mov    0x14(%r11),%eax
   4.48%  │  0x00007fbfd6b19a9a:   add    %eax,%r9d
   0.00%  │  0x00007fbfd6b19a9d:   add    %eax,%r9d
          │  0x00007fbfd6b19aa0:   add    %eax,%r9d
          │  0x00007fbfd6b19aa3:   add    %eax,%r9d
   4.37%  │  0x00007fbfd6b19aa6:   add    %eax,%r9d
          │  0x00007fbfd6b19aa9:   add    %eax,%r9d
   0.00%  │  0x00007fbfd6b19aac:   add    %eax,%r9d
          │  0x00007fbfd6b19aaf:   add    %eax,%r9d                    ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 108)
   4.49%  │  0x00007fbfd6b19ab2:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 110)
          │  0x00007fbfd6b19ab5:   mov    0x10(%rsp),%rbp
          │  0x00007fbfd6b19aba:   add    $0x18,%rsp
          │  0x00007fbfd6b19abe:   mov    0x348(%r15),%rcx
   4.52%  │  0x00007fbfd6b19ac5:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fbfd6b19ac7:   vzeroupper 
   4.48%  │  0x00007fbfd6b19aca:   ret                                 ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 108)
          ↘  0x00007fbfd6b19acb:   mov    %r10,%rax
             0x00007fbfd6b19ace:   and    $0x7,%rax
             0x00007fbfd6b19ad2:   cmp    $0x5,%rax
             0x00007fbfd6b19ad6:   je     0x00007fbfd6b19b49
             0x00007fbfd6b19adc:   nopl   0x0(%rax)
             0x00007fbfd6b19ae0:   test   $0x2,%r10
             0x00007fbfd6b19ae7:   jne    0x00007fbfd6b19bfe
             0x00007fbfd6b19aed:   or     $0x1,%r10
             0x00007fbfd6b19af1:   mov    %r10,(%r8)
....................................................................................................
  73.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 757 

              0x00007fbfd6b1d158:   call   0x00007fbfee1194f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbfd6b1d15d:   nop
              0x00007fbfd6b1d15e:   mov    0x10(%rsp),%rdx
              0x00007fbfd6b1d163:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@10 (line 230)
              0x00007fbfd6b1d167:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fbfd6b1d170:   jmp    0x00007fbfd6b1d18f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          │   0x00007fbfd6b1d175:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
   4.59%  │↗  0x00007fbfd6b1d180:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
          ││  0x00007fbfd6b1d187:   test   %eax,(%r11)                  ;   {poll}
   1.14%  ││  0x00007fbfd6b1d18a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fbfd6b1d18f:   mov    0x8(%rsp),%r10
   3.17%   │  0x00007fbfd6b1d194:   mov    %r10,%rsi
           │  0x00007fbfd6b1d197:   call   0x00007fbfcf01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fbfd6b1d19c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 232)
           │  0x00007fbfd6b1d19d:   mov    0x20(%rsp),%r10
   4.36%   │  0x00007fbfd6b1d1a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 233)
   0.08%   │  0x00007fbfd6b1d1a5:   mov    0x18(%rsp),%rsi
           │  0x00007fbfd6b1d1aa:   cmpb   $0x0,0x94(%rsi)
  11.76%   ╰  0x00007fbfd6b1d1b1:   je     0x00007fbfd6b1d180           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007fbfd6b1d1b3:   mov    %r10,0x20(%rsp)
              0x00007fbfd6b1d1b8:   call   0x00007fbfee1194f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbfd6b1d1bd:   nop
              0x00007fbfd6b1d1be:   mov    0x10(%rsp),%rdx
              0x00007fbfd6b1d1c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 235)
              0x00007fbfd6b1d1c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 236)
              0x00007fbfd6b1d1cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  25.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  73.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 730 
  25.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 757 
   0.55%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%               kernel  [unknown] 
   0.81%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 730 
  25.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 757 
   1.48%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  os::elapsedTime 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  re_search_stub 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%       jvmci, level 4
   1.48%               kernel
   0.14%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.014 ns/op
# Warmup Iteration   2: 8.605 ns/op
# Warmup Iteration   3: 8.483 ns/op
# Warmup Iteration   4: 8.483 ns/op
# Warmup Iteration   5: 8.469 ns/op
Iteration   1: 8.483 ns/op
Iteration   2: 8.504 ns/op
Iteration   3: 8.475 ns/op
Iteration   4: 8.447 ns/op
Iteration   5: 8.476 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  8.477 ±(99.9%) 0.079 ns/op [Average]
  (min, avg, max) = (8.447, 8.477, 8.504), stdev = 0.020
  CI (99.9%): [8.398, 8.556] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 190960 total address lines.
Perf output processed (skipped 58.588 seconds):
 Column 1: cycles (50620 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 734 

             #           [sp+0x20]  (sp of caller)
             0x00007fecd6b187a0:   mov    0x8(%rsi),%r10d
             0x00007fecd6b187a4:   movabs $0x800000000,%r12
             0x00007fecd6b187ae:   add    %r12,%r10
             0x00007fecd6b187b1:   xor    %r12,%r12
             0x00007fecd6b187b4:   cmp    %r10,%rax
             0x00007fecd6b187b7:   jne    0x00007feccf01e780           ;   {runtime_call ic_miss_stub}
             0x00007fecd6b187bd:   nop
             0x00007fecd6b187be:   xchg   %ax,%ax
           [Verified Entry Point]
   1.17%     0x00007fecd6b187c0:   mov    %eax,-0x14000(%rsp)
   3.79%     0x00007fecd6b187c7:   sub    $0x18,%rsp
   1.14%     0x00007fecd6b187cb:   mov    %rbp,0x10(%rsp)
   1.29%     0x00007fecd6b187d0:   mov    %rsi,%r11
   1.53%     0x00007fecd6b187d3:   mov    (%r11),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.49%     0x00007fecd6b187d6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@1 (line 116)
   1.16%     0x00007fecd6b187da:   lea    (%rsp),%r8
   1.21%     0x00007fecd6b187de:   mov    0x8(%r11),%esi
   1.49%     0x00007fecd6b187e2:   movabs $0x800000000,%rdx
   0.50%     0x00007fecd6b187ec:   lea    (%rdx,%rsi,1),%rsi
   2.49%     0x00007fecd6b187f0:   mov    0xb8(%rsi),%rsi
  21.08%     0x00007fecd6b187f7:   mov    %r15,%rdx
   0.00%     0x00007fecd6b187fa:   or     %rsi,%rdx
   4.44%     0x00007fecd6b187fd:   mov    %rdx,%rbp
             0x00007fecd6b18800:   xor    %r10,%rbp                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   9.08%     0x00007fecd6b18803:   mov    %eax,%r9d
             0x00007fecd6b18806:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 116)
   0.00%     0x00007fecd6b18809:   test   $0xffffffffffffff87,%rbp
          ╭  0x00007fecd6b18810:   jne    0x00007fecd6b1884b           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          │  0x00007fecd6b18816:   mov    0x14(%r11),%eax
   4.30%  │  0x00007fecd6b1881a:   add    %eax,%r9d
          │  0x00007fecd6b1881d:   add    %eax,%r9d
   0.00%  │  0x00007fecd6b18820:   add    %eax,%r9d
          │  0x00007fecd6b18823:   add    %eax,%r9d
   4.46%  │  0x00007fecd6b18826:   add    %eax,%r9d
          │  0x00007fecd6b18829:   add    %eax,%r9d
   0.00%  │  0x00007fecd6b1882c:   add    %eax,%r9d
          │  0x00007fecd6b1882f:   add    %eax,%r9d                    ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   4.35%  │  0x00007fecd6b18832:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@16 (line 118)
          │  0x00007fecd6b18835:   mov    0x10(%rsp),%rbp
          │  0x00007fecd6b1883a:   add    $0x18,%rsp
          │  0x00007fecd6b1883e:   mov    0x348(%r15),%rcx
   4.32%  │  0x00007fecd6b18845:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fecd6b18847:   vzeroupper 
   4.47%  │  0x00007fecd6b1884a:   ret                                 ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          ↘  0x00007fecd6b1884b:   mov    %r10,%rax
             0x00007fecd6b1884e:   and    $0x7,%rax
             0x00007fecd6b18852:   cmp    $0x5,%rax
             0x00007fecd6b18856:   je     0x00007fecd6b188c9
             0x00007fecd6b1885c:   nopl   0x0(%rax)
             0x00007fecd6b18860:   test   $0x2,%r10
             0x00007fecd6b18867:   jne    0x00007fecd6b1897e
             0x00007fecd6b1886d:   or     $0x1,%r10
....................................................................................................
  72.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 752 

              0x00007fecd6b1c3d8:   call   0x00007feced26a4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fecd6b1c3dd:   nop
              0x00007fecd6b1c3de:   mov    0x10(%rsp),%rdx
              0x00007fecd6b1c3e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 230)
              0x00007fecd6b1c3e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fecd6b1c3f0:   jmp    0x00007fecd6b1c40f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fecd6b1c3f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   4.26%  │↗  0x00007fecd6b1c400:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   0.00%  ││  0x00007fecd6b1c407:   test   %eax,(%r11)                  ;   {poll}
   1.16%  ││  0x00007fecd6b1c40a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
   0.04%  ↘│  0x00007fecd6b1c40f:   mov    0x8(%rsp),%r10
   3.34%   │  0x00007fecd6b1c414:   mov    %r10,%rsi
   0.00%   │  0x00007fecd6b1c417:   call   0x00007feccf01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.01%   │  0x00007fecd6b1c41c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fecd6b1c41d:   mov    0x20(%rsp),%r10
   4.47%   │  0x00007fecd6b1c422:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 233)
   0.09%   │  0x00007fecd6b1c425:   mov    0x18(%rsp),%rsi
           │  0x00007fecd6b1c42a:   cmpb   $0x0,0x94(%rsi)
  11.53%   ╰  0x00007fecd6b1c431:   je     0x00007fecd6b1c400           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fecd6b1c433:   mov    %r10,0x20(%rsp)
              0x00007fecd6b1c438:   call   0x00007feced26a4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fecd6b1c43d:   nop
              0x00007fecd6b1c43e:   mov    0x10(%rsp),%rdx
              0x00007fecd6b1c443:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fecd6b1c447:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fecd6b1c44b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  24.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 734 
  24.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 752 
   0.62%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.06%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 734 
  24.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 752 
   1.99%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.67%       jvmci, level 4
   1.99%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:04

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
LockCoarseningBenchmark.baseline                              avgt    5   8.477 ± 0.019  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt          NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5   8.395 ± 0.111  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt          NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5  11.402 ± 0.075  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt          NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5  11.423 ± 0.102  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt          NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5   8.490 ± 0.018  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt          NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5   8.477 ± 0.079  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt          NaN            ---
