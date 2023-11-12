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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.699 ns/op
# Warmup Iteration   2: 12.370 ns/op
# Warmup Iteration   3: 12.412 ns/op
# Warmup Iteration   4: 12.463 ns/op
# Warmup Iteration   5: 12.473 ns/op
Iteration   1: 12.418 ns/op
Iteration   2: 12.389 ns/op
Iteration   3: 12.386 ns/op
Iteration   4: 12.386 ns/op
Iteration   5: 12.461 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop":
  12.408 ±(99.9%) 0.126 ns/op [Average]
  (min, avg, max) = (12.386, 12.408, 12.461), stdev = 0.033
  CI (99.9%): [12.282, 12.535] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop:asm":
PrintAssembly processed: 228537 total address lines.
Perf output processed (skipped 60.823 seconds):
 Column 1: cycles (51026 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 1009 

              0x00007f4d82d832ef:   mov    0x10(%rsp),%rdx
              0x00007f4d82d832f4:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@10 (line 192)
              0x00007f4d82d832f8:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f4d82d83301:   jmp    0x00007f4d82d8332f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@13 (line 194)
          │   0x00007f4d82d83306:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4d82d83311:   data16 data16 xchg %ax,%ax
          │   0x00007f4d82d83315:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
   3.04%  │↗  0x00007f4d82d83320:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
          ││  0x00007f4d82d83327:   test   %eax,(%r11)                  ;   {poll}
   2.57%  ││  0x00007f4d82d8332a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f4d82d8332f:   mov    0x8(%rsp),%r10
   1.30%   │  0x00007f4d82d83334:   mov    %r10,%rsi
           │  0x00007f4d82d83337:   call   0x00007f4d82764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual initial_loop {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   6.26%   │  0x00007f4d82d8333c:   nopl   0x300022c(%rax,%rax,1)       ;   {other}
   1.76%   │  0x00007f4d82d83344:   mov    0x20(%rsp),%r10
  22.52%   │  0x00007f4d82d83349:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@21 (line 195)
   3.05%   │  0x00007f4d82d8334c:   mov    0x18(%rsp),%rsi
           │  0x00007f4d82d83351:   cmpb   $0x0,0x94(%rsi)
  12.13%   ╰  0x00007f4d82d83358:   je     0x00007f4d82d83320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 196)
              0x00007f4d82d8335a:   mov    %r10,0x20(%rsp)
              0x00007f4d82d8335f:   nop
              0x00007f4d82d83360:   call   0x00007f4d9c6a3df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4d82d83365:   nop
              0x00007f4d82d83366:   mov    0x10(%rsp),%rdx
              0x00007f4d82d8336b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@35 (line 197)
              0x00007f4d82d8336f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@41 (line 198)
....................................................................................................
  52.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 983 

                # {method} {0x00007f4d0347fee0} &apos;initial_loop&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f4d82d7fb20:   mov    0x8(%rsi),%r10d
                0x00007f4d82d7fb24:   movabs $0x7f4d07000000,%r12
                0x00007f4d82d7fb2e:   add    %r12,%r10
                0x00007f4d82d7fb31:   xor    %r12,%r12
                0x00007f4d82d7fb34:   cmp    %r10,%rax
                0x00007f4d82d7fb37:   jne    0x00007f4d82764080           ;   {runtime_call ic_miss_stub}
                0x00007f4d82d7fb3d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.77%        0x00007f4d82d7fb40:   mov    %eax,-0x14000(%rsp)
   3.93%        0x00007f4d82d7fb47:   sub    $0x18,%rsp
   1.44%        0x00007f4d82d7fb4b:   nop
                0x00007f4d82d7fb4c:   cmpl   $0x1,0x20(%r15)
   0.81%  ╭     0x00007f4d82d7fb54:   jne    0x00007f4d82d7fb8e
   1.57%  │ ↗   0x00007f4d82d7fb5a:   mov    %rbp,0x10(%rsp)
   0.79%  │ │   0x00007f4d82d7fb5f:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@6 (line 64)
          │ │   0x00007f4d82d7fb62:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@2 (line 64)
   0.76%  │ │   0x00007f4d82d7fb65:   xchg   %ax,%ax
   1.45%  │ │   0x00007f4d82d7fb67:   call   0x00007f4d82d7f820           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@9 (line 64)
          │ │                                                             ;   {optimized virtual_call}
  17.30%  │ │   0x00007f4d82d7fb6c:   nopl   0x1dc(%rax,%rax,1)           ;   {other}
          │ │   0x00007f4d82d7fb74:   mov    0x10(%rsp),%rbp
   0.01%  │ │   0x00007f4d82d7fb79:   add    $0x18,%rsp
   3.08%  │ │   0x00007f4d82d7fb7d:   data16 xchg %ax,%ax
          │ │↗  0x00007f4d82d7fb80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f4d82d7fb87:   ja     0x00007f4d82d7fb9b
          ││││  0x00007f4d82d7fb8d:   ret    
          ↘│││  0x00007f4d82d7fb8e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f4d82d7fb93:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f4d82d7fb98:   jmp    0x00007f4d82d7fb5a
           │ │  0x00007f4d82d7fb9a:   hlt    
           ↘ ╰  0x00007f4d82d7fb9b:   lea    -0x22(%rip),%rcx        # 0x00007f4d82d7fb80
                0x00007f4d82d7fba2:   mov    %rcx,0x468(%r15)
                0x00007f4d82d7fba9:   jmp    0x00007f4d8276b000           ;   {runtime_call SafepointBlob}
....................................................................................................
  32.91%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 981 

                # parm1:    rcx       = int
                #           [sp+0x20]  (sp of caller)
                0x00007f4d82d7f800:   mov    0x8(%rsi),%r10d
                0x00007f4d82d7f804:   movabs $0x7f4d07000000,%r12
                0x00007f4d82d7f80e:   add    %r12,%r10
                0x00007f4d82d7f811:   xor    %r12,%r12
                0x00007f4d82d7f814:   cmp    %r10,%rax
                0x00007f4d82d7f817:   jne    0x00007f4d82764080           ;   {runtime_call ic_miss_stub}
                0x00007f4d82d7f81d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.77%        0x00007f4d82d7f820:   mov    %eax,-0x14000(%rsp)
   2.26%        0x00007f4d82d7f827:   sub    $0x18,%rsp
   0.75%        0x00007f4d82d7f82b:   nop
                0x00007f4d82d7f82c:   cmpl   $0x1,0x20(%r15)
   0.84%  ╭     0x00007f4d82d7f834:   jne    0x00007f4d82d7f85a
   1.52%  │ ↗   0x00007f4d82d7f83a:   test   %edx,%edx
   0.74%  │ │   0x00007f4d82d7f83c:   mov    $0x0,%eax
          │ │   0x00007f4d82d7f841:   cmovl  %eax,%edx
   0.79%  │ │   0x00007f4d82d7f844:   add    %edx,%ecx
   1.49%  │ │   0x00007f4d82d7f846:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@17 (line 78)
   1.57%  │ │   0x00007f4d82d7f848:   add    $0x18,%rsp
          │ │↗  0x00007f4d82d7f84c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f4d82d7f853:   ja     0x00007f4d82d7f867
   1.17%  ││││  0x00007f4d82d7f859:   ret    
          ↘│││  0x00007f4d82d7f85a:   mov    %rbp,0x10(%rsp)
           │││  0x00007f4d82d7f85f:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f4d82d7f864:   jmp    0x00007f4d82d7f83a
           │ │  0x00007f4d82d7f866:   hlt    
           ↘ ╰  0x00007f4d82d7f867:   lea    -0x22(%rip),%rcx        # 0x00007f4d82d7f84c
                0x00007f4d82d7f86e:   mov    %rcx,0x468(%r15)
                0x00007f4d82d7f875:   jmp    0x00007f4d8276b000           ;   {runtime_call SafepointBlob}
                0x00007f4d82d7f87a:   hlt    
              [Exception Handler]
                0x00007f4d82d7f87b:   call   0x00007f4d828e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  11.91%  <total for region 3>

....[Hottest Regions]...............................................................................
  52.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 1009 
  32.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 983 
  11.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 981 
   0.50%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   1.43%  <...other 413 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 1009 
  32.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 983 
  11.91%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 981 
   2.02%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  WatcherThread::sleep 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.22%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.43%      jvmci, level 4
   2.02%              kernel
   0.20%           libjvm.so
   0.13%        libc-2.31.so
   0.11%                    
   0.05%  libpthread-2.31.so
   0.03%              [vdso]
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2133756.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.834 ns/op
# Warmup Iteration   2: 12.253 ns/op
# Warmup Iteration   3: 12.426 ns/op
# Warmup Iteration   4: 12.295 ns/op
# Warmup Iteration   5: 12.307 ns/op
Iteration   1: 12.365 ns/op
Iteration   2: 12.328 ns/op
Iteration   3: 12.368 ns/op
Iteration   4: 12.369 ns/op
Iteration   5: 12.313 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction":
  12.349 ±(99.9%) 0.101 ns/op [Average]
  (min, avg, max) = (12.313, 12.349, 12.369), stdev = 0.026
  CI (99.9%): [12.248, 12.450] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction:asm":
PrintAssembly processed: 226503 total address lines.
Perf output processed (skipped 60.488 seconds):
 Column 1: cycles (50780 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 986 

              0x00007f8ec2d838ef:   mov    0x10(%rsp),%rdx
              0x00007f8ec2d838f4:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@10 (line 192)
              0x00007f8ec2d838f8:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f8ec2d83901:   jmp    0x00007f8ec2d8392f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 194)
          │   0x00007f8ec2d83906:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f8ec2d83911:   data16 data16 xchg %ax,%ax
          │   0x00007f8ec2d83915:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
   3.07%  │↗  0x00007f8ec2d83920:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
          ││  0x00007f8ec2d83927:   test   %eax,(%r11)                  ;   {poll}
   2.88%  ││  0x00007f8ec2d8392a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f8ec2d8392f:   mov    0x8(%rsp),%r10
   0.81%   │  0x00007f8ec2d83934:   mov    %r10,%rsi
           │  0x00007f8ec2d83937:   call   0x00007f8ec2764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   4.55%   │  0x00007f8ec2d8393c:   nopl   0x300022c(%rax,%rax,1)       ;   {other}
   2.36%   │  0x00007f8ec2d83944:   mov    0x20(%rsp),%r10
  22.46%   │  0x00007f8ec2d83949:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@21 (line 195)
   2.98%   │  0x00007f8ec2d8394c:   mov    0x18(%rsp),%rsi
           │  0x00007f8ec2d83951:   cmpb   $0x0,0x94(%rsi)
  12.77%   ╰  0x00007f8ec2d83958:   je     0x00007f8ec2d83920           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
              0x00007f8ec2d8395a:   mov    %r10,0x20(%rsp)
              0x00007f8ec2d8395f:   nop
              0x00007f8ec2d83960:   call   0x00007f8edbad0df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8ec2d83965:   nop
              0x00007f8ec2d83966:   mov    0x10(%rsp),%rdx
              0x00007f8ec2d8396b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@35 (line 197)
              0x00007f8ec2d8396f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@41 (line 198)
....................................................................................................
  51.89%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 955 

                # {method} {0x00007f8e4347d060} &apos;manual_loop_reduction&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f8ec2d7cca0:   mov    0x8(%rsi),%r10d
                0x00007f8ec2d7cca4:   movabs $0x7f8e47000000,%r12
                0x00007f8ec2d7ccae:   add    %r12,%r10
                0x00007f8ec2d7ccb1:   xor    %r12,%r12
                0x00007f8ec2d7ccb4:   cmp    %r10,%rax
                0x00007f8ec2d7ccb7:   jne    0x00007f8ec2764080           ;   {runtime_call ic_miss_stub}
                0x00007f8ec2d7ccbd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   2.20%        0x00007f8ec2d7ccc0:   mov    %eax,-0x14000(%rsp)
   3.28%        0x00007f8ec2d7ccc7:   sub    $0x18,%rsp
   2.18%        0x00007f8ec2d7cccb:   nop
                0x00007f8ec2d7cccc:   cmpl   $0x1,0x20(%r15)
   0.19%  ╭     0x00007f8ec2d7ccd4:   jne    0x00007f8ec2d7cd0e
   2.25%  │ ↗   0x00007f8ec2d7ccda:   mov    %rbp,0x10(%rsp)
   0.71%  │ │   0x00007f8ec2d7ccdf:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 70)
          │ │   0x00007f8ec2d7cce2:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 70)
   0.15%  │ │   0x00007f8ec2d7cce5:   xchg   %ax,%ax
   2.30%  │ │   0x00007f8ec2d7cce7:   call   0x00007f8ebb3b01c0           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 70)
          │ │                                                             ;   {optimized virtual_call}
  14.75%  │ │   0x00007f8ec2d7ccec:   nopl   0x1dc(%rax,%rax,1)           ;   {other}
          │ │   0x00007f8ec2d7ccf4:   mov    0x10(%rsp),%rbp
   0.00%  │ │   0x00007f8ec2d7ccf9:   add    $0x18,%rsp
   3.13%  │ │   0x00007f8ec2d7ccfd:   data16 xchg %ax,%ax
          │ │↗  0x00007f8ec2d7cd00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f8ec2d7cd07:   ja     0x00007f8ec2d7cd1b
          ││││  0x00007f8ec2d7cd0d:   ret    
          ↘│││  0x00007f8ec2d7cd0e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f8ec2d7cd13:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f8ec2d7cd18:   jmp    0x00007f8ec2d7ccda
           │ │  0x00007f8ec2d7cd1a:   hlt    
           ↘ ╰  0x00007f8ec2d7cd1b:   lea    -0x22(%rip),%rcx        # 0x00007f8ec2d7cd00
                0x00007f8ec2d7cd22:   mov    %rcx,0x468(%r15)
                0x00007f8ec2d7cd29:   jmp    0x00007f8ec276b000           ;   {runtime_call SafepointBlob}
....................................................................................................
  31.15%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 956 

             # parm1:    rcx       = int
             #           [sp+0x20]  (sp of caller)
             0x00007f8ec2d7cf80:   mov    0x8(%rsi),%r10d
             0x00007f8ec2d7cf84:   movabs $0x7f8e47000000,%r12
             0x00007f8ec2d7cf8e:   add    %r12,%r10
             0x00007f8ec2d7cf91:   xor    %r12,%r12
             0x00007f8ec2d7cf94:   cmp    %r10,%rax
             0x00007f8ec2d7cf97:   jne    0x00007f8ec2764080           ;   {runtime_call ic_miss_stub}
             0x00007f8ec2d7cf9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.69%     0x00007f8ec2d7cfa0:   mov    %eax,-0x14000(%rsp)
   2.35%     0x00007f8ec2d7cfa7:   sub    $0x18,%rsp
   0.65%     0x00007f8ec2d7cfab:   nop
             0x00007f8ec2d7cfac:   cmpl   $0x0,0x20(%r15)
   0.17%     0x00007f8ec2d7cfb4:   jne    0x00007f8ec2d7d011
   2.23%     0x00007f8ec2d7cfba:   mov    %rbp,0x10(%rsp)
   0.70%     0x00007f8ec2d7cfbf:   nop
             0x00007f8ec2d7cfc0:   cmp    $0x1,%edx
          ╭  0x00007f8ec2d7cfc3:   jl     0x00007f8ec2d7cfee           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
   0.16%  │  0x00007f8ec2d7cfc9:   add    %ecx,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@6 (line 84)
   2.18%  │  0x00007f8ec2d7cfcb:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@7 (line 84)
   0.70%  │  0x00007f8ec2d7cfcd:   mov    0x10(%rsp),%rbp
   4.35%  │  0x00007f8ec2d7cfd2:   add    $0x18,%rsp
   0.03%  │  0x00007f8ec2d7cfd6:   data16 nopw 0x0(%rax,%rax,1)
   0.65%  │  0x00007f8ec2d7cfe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f8ec2d7cfe7:   ja     0x00007f8ec2d7d01e
          │  0x00007f8ec2d7cfed:   ret    
          ↘  0x00007f8ec2d7cfee:   movl   $0xffffffed,0x484(%r15)      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
             0x00007f8ec2d7cff9:   movq   $0x14,0x490(%r15)
             0x00007f8ec2d7d004:   call   0x00007f8ec276a17a           ; ImmutableOopMap {}
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@0 (line 83)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f8ec2d7d009:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  14.86%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 986 
  31.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 955 
  14.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 956 
   0.69%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.85%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 986 
  31.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 955 
  14.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 956 
   1.70%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%            libjvm.so  nmethod::print_code_comment_on 
   0.19%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.89%       jvmci, level 4
   1.70%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
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

Benchmark                                         (iterations)  (offset)  Mode  Cnt   Score   Error  Units
LoopReductionBenchmark.initial_loop                    1048576       128  avgt    5  12.408 ± 0.126  ns/op
LoopReductionBenchmark.initial_loop:asm                1048576       128  avgt          NaN            ---
LoopReductionBenchmark.manual_loop_reduction           1048576       128  avgt    5  12.349 ± 0.101  ns/op
LoopReductionBenchmark.manual_loop_reduction:asm       1048576       128  avgt          NaN            ---
