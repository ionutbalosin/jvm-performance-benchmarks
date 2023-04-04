# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.029 ns/op
# Warmup Iteration   2: 10.500 ns/op
# Warmup Iteration   3: 10.442 ns/op
# Warmup Iteration   4: 10.442 ns/op
# Warmup Iteration   5: 10.448 ns/op
Iteration   1: 10.448 ns/op
Iteration   2: 10.577 ns/op
Iteration   3: 11.224 ns/op
Iteration   4: 10.447 ns/op
Iteration   5: 10.443 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop":
  10.628 ±(99.9%) 1.303 ns/op [Average]
  (min, avg, max) = (10.443, 10.628, 11.224), stdev = 0.338
  CI (99.9%): [9.325, 11.930] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.initial_loop:·asm":
PrintAssembly processed: 185915 total address lines.
Perf output processed (skipped 58.391 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 736 

              0x00007f40c2b1c5d8:   mov    0x10(%rsp),%rdx
              0x00007f40c2b1c5dd:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@10 (line 188)
              0x00007f40c2b1c5e1:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f40c2b1c5ea:   jmp    0x00007f40c2b1c60f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@13 (line 190)
          │   0x00007f40c2b1c5ef:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f40c2b1c5fa:   data16 data16 xchg %ax,%ax
          │   0x00007f40c2b1c5fe:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
   3.67%  │↗  0x00007f40c2b1c600:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
          ││  0x00007f40c2b1c607:   test   %eax,(%r11)                  ;   {poll}
   0.08%  ││  0x00007f40c2b1c60a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f40c2b1c60f:   mov    0x8(%rsp),%r10
   3.60%   │  0x00007f40c2b1c614:   mov    %r10,%rsi
           │  0x00007f40c2b1c617:   call   0x00007f40bb01ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual initial_loop {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
  22.21%   │  0x00007f40c2b1c61c:   nop
   0.01%   │  0x00007f40c2b1c61d:   mov    0x20(%rsp),%r10
   5.70%   │  0x00007f40c2b1c622:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@21 (line 191)
   3.65%   │  0x00007f40c2b1c625:   mov    0x18(%rsp),%rsi
           │  0x00007f40c2b1c62a:   cmpb   $0x0,0x94(%rsi)
  15.99%   ╰  0x00007f40c2b1c631:   je     0x00007f40c2b1c600           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
              0x00007f40c2b1c633:   mov    %r10,0x20(%rsp)
              0x00007f40c2b1c638:   call   0x00007f40dcb7e4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f40c2b1c63d:   nop
              0x00007f40c2b1c63e:   mov    0x10(%rsp),%rdx
              0x00007f40c2b1c643:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@35 (line 193)
              0x00007f40c2b1c647:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@41 (line 194)
              0x00007f40c2b1c64b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  54.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 720 

            #           [sp+0x20]  (sp of caller)
            0x00007f40c2b1a6a0:   mov    0x8(%rsi),%r10d
            0x00007f40c2b1a6a4:   movabs $0x800000000,%r12
            0x00007f40c2b1a6ae:   add    %r12,%r10
            0x00007f40c2b1a6b1:   xor    %r12,%r12
            0x00007f40c2b1a6b4:   cmp    %r10,%rax
            0x00007f40c2b1a6b7:   jne    0x00007f40bb01e780           ;   {runtime_call ic_miss_stub}
            0x00007f40c2b1a6bd:   nop
            0x00007f40c2b1a6be:   xchg   %ax,%ax
          [Verified Entry Point]
   0.06%    0x00007f40c2b1a6c0:   mov    %eax,-0x14000(%rsp)
   8.02%    0x00007f40c2b1a6c7:   sub    $0x18,%rsp
   0.06%    0x00007f40c2b1a6cb:   mov    %rbp,0x10(%rsp)
   0.94%    0x00007f40c2b1a6d0:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop@6 (line 66)
   2.02%    0x00007f40c2b1a6d3:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop@2 (line 66)
   1.03%    0x00007f40c2b1a6d6:   nop
   0.07%    0x00007f40c2b1a6d7:   call   0x00007f40c2b1a3a0           ; ImmutableOopMap {}
                                                                      ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop@9 (line 66)
                                                                      ;   {optimized virtual_call}
   1.04%    0x00007f40c2b1a6dc:   nop
            0x00007f40c2b1a6dd:   mov    0x10(%rsp),%rbp
   3.15%    0x00007f40c2b1a6e2:   add    $0x18,%rsp
   0.80%    0x00007f40c2b1a6e6:   mov    0x348(%r15),%rcx
   1.08%    0x00007f40c2b1a6ed:   test   %eax,(%rcx)                  ;   {poll_return}
  12.26%    0x00007f40c2b1a6ef:   ret    
          [Exception Handler]
            0x00007f40c2b1a6f0:   call   0x00007f40bb169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f40c2b1a6f5:   nop
          [Deopt Handler Code]
            0x00007f40c2b1a6f6:   call   0x00007f40bb024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f40c2b1a6fb:   nop
            0x00007f40c2b1a6fc:   hlt    
            0x00007f40c2b1a6fd:   hlt    
            0x00007f40c2b1a6fe:   hlt    
            0x00007f40c2b1a6ff:   hlt    
....................................................................................................
  30.54%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 718 

            #           [sp+0x10]  (sp of caller)
            0x00007f40c2b1a380:   mov    0x8(%rsi),%r10d
            0x00007f40c2b1a384:   movabs $0x800000000,%r12
            0x00007f40c2b1a38e:   add    %r12,%r10
            0x00007f40c2b1a391:   xor    %r12,%r12
            0x00007f40c2b1a394:   cmp    %r10,%rax
            0x00007f40c2b1a397:   jne    0x00007f40bb01e780           ;   {runtime_call ic_miss_stub}
            0x00007f40c2b1a39d:   nop
            0x00007f40c2b1a39e:   xchg   %ax,%ax
          [Verified Entry Point]
   2.38%    0x00007f40c2b1a3a0:   nopl   0x0(%rax,%rax,1)
   1.09%    0x00007f40c2b1a3a5:   test   %edx,%edx
   0.08%    0x00007f40c2b1a3a7:   mov    $0x0,%eax
   0.33%    0x00007f40c2b1a3ac:   cmovl  %eax,%edx
   2.20%    0x00007f40c2b1a3af:   add    %edx,%ecx
   1.08%    0x00007f40c2b1a3b1:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction@17 (line 80)
   0.07%    0x00007f40c2b1a3b3:   mov    0x348(%r15),%rcx
   0.31%    0x00007f40c2b1a3ba:   test   %eax,(%rcx)                  ;   {poll_return}
   3.69%    0x00007f40c2b1a3bc:   ret    
            0x00007f40c2b1a3bd:   data16 xchg %ax,%ax
          [Exception Handler]
            0x00007f40c2b1a3c0:   call   0x00007f40bb169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f40c2b1a3c5:   nop
          [Deopt Handler Code]
            0x00007f40c2b1a3c6:   call   0x00007f40bb024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f40c2b1a3cb:   nop
          [Stub Code]
            0x00007f40c2b1a3cc:   hlt    
            0x00007f40c2b1a3cd:   hlt    
....................................................................................................
  11.22%  <total for region 3>

....[Hottest Regions]...............................................................................
  54.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 736 
  30.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 720 
  11.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 718 
   0.88%               kernel  [unknown] 
   0.66%               kernel  [unknown] 
   0.19%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.99%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 736 
  30.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 720 
  11.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 718 
   3.02%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  os::elapsed_counter 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.66%       jvmci, level 4
   3.02%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
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
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.951 ns/op
# Warmup Iteration   2: 10.861 ns/op
# Warmup Iteration   3: 10.893 ns/op
# Warmup Iteration   4: 10.851 ns/op
# Warmup Iteration   5: 10.886 ns/op
Iteration   1: 10.839 ns/op
Iteration   2: 10.840 ns/op
Iteration   3: 10.842 ns/op
Iteration   4: 10.845 ns/op
Iteration   5: 10.836 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction":
  10.840 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (10.836, 10.840, 10.845), stdev = 0.003
  CI (99.9%): [10.828, 10.853] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark.manual_loop_reduction:·asm":
PrintAssembly processed: 185553 total address lines.
Perf output processed (skipped 58.386 seconds):
 Column 1: cycles (50624 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 720 

            #           [sp+0x20]  (sp of caller)
            0x00007fcb36b19620:   mov    0x8(%rsi),%r10d
            0x00007fcb36b19624:   movabs $0x800000000,%r12
            0x00007fcb36b1962e:   add    %r12,%r10
            0x00007fcb36b19631:   xor    %r12,%r12
            0x00007fcb36b19634:   cmp    %r10,%rax
            0x00007fcb36b19637:   jne    0x00007fcb2f01e780           ;   {runtime_call ic_miss_stub}
            0x00007fcb36b1963d:   nop
            0x00007fcb36b1963e:   xchg   %ax,%ax
          [Verified Entry Point]
   1.16%    0x00007fcb36b19640:   mov    %eax,-0x14000(%rsp)
   6.94%    0x00007fcb36b19647:   sub    $0x18,%rsp
   0.77%    0x00007fcb36b1964b:   mov    %rbp,0x10(%rsp)
   1.21%    0x00007fcb36b19650:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 72)
   1.47%    0x00007fcb36b19653:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 72)
   1.22%    0x00007fcb36b19656:   nop
   0.23%    0x00007fcb36b19657:   call   0x00007fcb36b19320           ; ImmutableOopMap {}
                                                                      ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 72)
                                                                      ;   {optimized virtual_call}
  24.91%    0x00007fcb36b1965c:   nop
            0x00007fcb36b1965d:   mov    0x10(%rsp),%rbp
            0x00007fcb36b19662:   add    $0x18,%rsp
   3.58%    0x00007fcb36b19666:   mov    0x348(%r15),%rcx
            0x00007fcb36b1966d:   test   %eax,(%rcx)                  ;   {poll_return}
   1.50%    0x00007fcb36b1966f:   ret    
          [Exception Handler]
            0x00007fcb36b19670:   call   0x00007fcb2f169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fcb36b19675:   nop
          [Deopt Handler Code]
            0x00007fcb36b19676:   call   0x00007fcb2f024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fcb36b1967b:   nop
            0x00007fcb36b1967c:   hlt    
            0x00007fcb36b1967d:   hlt    
            0x00007fcb36b1967e:   hlt    
            0x00007fcb36b1967f:   hlt    
....................................................................................................
  43.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 741 

              0x00007fcb36b1c358:   mov    0x10(%rsp),%rdx
              0x00007fcb36b1c35d:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@10 (line 188)
              0x00007fcb36b1c361:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fcb36b1c36a:   jmp    0x00007fcb36b1c38f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 190)
          │   0x00007fcb36b1c36f:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fcb36b1c37a:   data16 data16 xchg %ax,%ax
          │   0x00007fcb36b1c37e:   xchg   %ax,%ax                      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
   2.62%  │↗  0x00007fcb36b1c380:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
          ││  0x00007fcb36b1c387:   test   %eax,(%r11)                  ;   {poll}
   1.02%  ││  0x00007fcb36b1c38a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fcb36b1c38f:   mov    0x8(%rsp),%r10
   2.34%   │  0x00007fcb36b1c394:   mov    %r10,%rsi
           │  0x00007fcb36b1c397:   call   0x00007fcb2f01ea80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
   6.97%   │  0x00007fcb36b1c39c:   nop
   1.10%   │  0x00007fcb36b1c39d:   mov    0x20(%rsp),%r10
  10.59%   │  0x00007fcb36b1c3a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@21 (line 191)
   2.47%   │  0x00007fcb36b1c3a5:   mov    0x18(%rsp),%rsi
   1.08%   │  0x00007fcb36b1c3aa:   cmpb   $0x0,0x94(%rsi)
  10.55%   ╰  0x00007fcb36b1c3b1:   je     0x00007fcb36b1c380           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
              0x00007fcb36b1c3b3:   mov    %r10,0x20(%rsp)
              0x00007fcb36b1c3b8:   call   0x00007fcb4e9ce4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcb36b1c3bd:   nop
              0x00007fcb36b1c3be:   mov    0x10(%rsp),%rdx
              0x00007fcb36b1c3c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@35 (line 193)
              0x00007fcb36b1c3c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@41 (line 194)
              0x00007fcb36b1c3cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  38.74%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 719 

             #           [sp+0x20]  (sp of caller)
             0x00007fcb36b19300:   mov    0x8(%rsi),%r10d
             0x00007fcb36b19304:   movabs $0x800000000,%r12
             0x00007fcb36b1930e:   add    %r12,%r10
             0x00007fcb36b19311:   xor    %r12,%r12
             0x00007fcb36b19314:   cmp    %r10,%rax
             0x00007fcb36b19317:   jne    0x00007fcb2f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fcb36b1931d:   nop
             0x00007fcb36b1931e:   xchg   %ax,%ax
           [Verified Entry Point]
   1.94%     0x00007fcb36b19320:   mov    %eax,-0x14000(%rsp)
   1.60%     0x00007fcb36b19327:   sub    $0x18,%rsp
   0.63%     0x00007fcb36b1932b:   mov    %rbp,0x10(%rsp)
   1.43%     0x00007fcb36b19330:   cmp    $0x1,%edx
          ╭  0x00007fcb36b19333:   jl     0x00007fcb36b19350           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
   1.21%  │  0x00007fcb36b19339:   add    %ecx,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction@6 (line 86)
   0.18%  │  0x00007fcb36b1933b:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction@7 (line 86)
   0.57%  │  0x00007fcb36b1933d:   mov    0x10(%rsp),%rbp
   6.22%  │  0x00007fcb36b19342:   add    $0x18,%rsp
   1.20%  │  0x00007fcb36b19346:   mov    0x348(%r15),%rcx
          │  0x00007fcb36b1934d:   test   %eax,(%rcx)                  ;   {poll_return}
   1.55%  │  0x00007fcb36b1934f:   ret    
          ↘  0x00007fcb36b19350:   movl   $0xffffffed,0x370(%r15)      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
             0x00007fcb36b1935b:   movq   $0x10,0x378(%r15)
             0x00007fcb36b19366:   call   0x00007fcb2f02427a           ; ImmutableOopMap {}
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction@0 (line 85)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fcb36b1936b:   nop
           [Exception Handler]
             0x00007fcb36b1936c:   call   0x00007fcb2f169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  16.52%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 720 
  38.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 741 
  16.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 719 
   0.40%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.85%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 720 
  38.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 741 
  16.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 719 
   1.41%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  clock_gettime@plt 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  _int_realloc 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.25%       jvmci, level 4
   1.41%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%           libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:43

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

Benchmark                                          (iterations)  (offset)  Mode  Cnt   Score   Error  Units
LoopReductionBenchmark.initial_loop                     1048576       128  avgt    5  10.628 ± 1.303  ns/op
LoopReductionBenchmark.initial_loop:·asm                1048576       128  avgt          NaN            ---
LoopReductionBenchmark.manual_loop_reduction            1048576       128  avgt    5  10.840 ± 0.013  ns/op
LoopReductionBenchmark.manual_loop_reduction:·asm       1048576       128  avgt          NaN            ---
