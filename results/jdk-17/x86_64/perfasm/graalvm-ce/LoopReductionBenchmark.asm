# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 25489.556 ns/op
# Warmup Iteration   2: 25395.427 ns/op
# Warmup Iteration   3: 25401.707 ns/op
# Warmup Iteration   4: 25402.900 ns/op
# Warmup Iteration   5: 25398.731 ns/op
Iteration   1: 25392.625 ns/op
Iteration   2: 25398.955 ns/op
Iteration   3: 25392.852 ns/op
Iteration   4: 25392.709 ns/op
Iteration   5: 25395.156 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop":
  25394.459 ±(99.9%) 10.495 ns/op [Average]
  (min, avg, max) = (25392.625, 25394.459, 25398.955), stdev = 2.725
  CI (99.9%): [25383.965, 25404.954] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop:·asm":
PrintAssembly processed: 194931 total address lines.
Perf output processed (skipped 58.662 seconds):
 Column 1: cycles (50645 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 736 

                    0x00007f4d56ffaf20:   nopl   0x0(%rax,%rax,1)
                    0x00007f4d56ffaf25:   cmp    $0x1,%edx
          ╭         0x00007f4d56ffaf28:   jl     0x00007f4d56ffafc2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
          │         0x00007f4d56ffaf2e:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
          │         0x00007f4d56ffaf30:   cmp    $0x3,%edx
          │         0x00007f4d56ffaf33:   mov    $0x2,%eax
          │         0x00007f4d56ffaf38:   cmovl  %edx,%eax
          │         0x00007f4d56ffaf3b:   mov    $0x1,%r10d
   0.00%  │╭        0x00007f4d56ffaf41:   jmp    0x00007f4d56ffaf65           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@2 (line 77)
          ││        0x00007f4d56ffaf46:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││        0x00007f4d56ffaf51:   data16 data16 xchg %ax,%ax
          ││        0x00007f4d56ffaf55:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
   0.01%  ││↗       0x00007f4d56ffaf60:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
          │││       0x00007f4d56ffaf62:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 77)
          │↘│       0x00007f4d56ffaf65:   cmp    %r10d,%eax
          │ ╰       0x00007f4d56ffaf68:   jg     0x00007f4d56ffaf60
          │         0x00007f4d56ffaf6a:   lea    -0x10(%rdx),%eax
   0.00%  │         0x00007f4d56ffaf6d:   mov    %r10d,%r11d
          │         0x00007f4d56ffaf70:   mov    %ecx,%r10d
          │  ╭      0x00007f4d56ffaf73:   jmp    0x00007f4d56ffaf88
          │  │      0x00007f4d56ffaf78:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
  98.04%  │  │↗     0x00007f4d56ffaf80:   lea    0x10(%r11),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 77)
   0.01%  │  ││     0x00007f4d56ffaf84:   lea    0x10(%r10),%r10d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
          │  ↘│     0x00007f4d56ffaf88:   cmp    %r11d,%eax
          │   ╰     0x00007f4d56ffaf8b:   jg     0x00007f4d56ffaf80
   0.03%  │    ╭    0x00007f4d56ffaf8d:   jmp    0x00007f4d56ffafb0
          │    │    0x00007f4d56ffaf92:   data16 nopw 0x0(%rax,%rax,1)
          │    │    0x00007f4d56ffaf9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
   0.02%  │    │↗   0x00007f4d56ffafa0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 77)
          │    ││   0x00007f4d56ffafa3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
          │    ││   0x00007f4d56ffafa6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │    ↘│   0x00007f4d56ffafb0:   cmp    %r11d,%edx
          │     ╰   0x00007f4d56ffafb3:   jg     0x00007f4d56ffafa0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
   0.02%  │      ↗  0x00007f4d56ffafb5:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@17 (line 80)
   0.00%  │      │  0x00007f4d56ffafb8:   mov    0x348(%r15),%rcx
   0.02%  │      │  0x00007f4d56ffafbf:   test   %eax,(%rcx)                  ;   {poll_return}
          │      │  0x00007f4d56ffafc1:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
          ↘      │  0x00007f4d56ffafc2:   mov    %ecx,%r10d
                 ╰  0x00007f4d56ffafc5:   jmp    0x00007f4d56ffafb5
                  [Exception Handler]
                    0x00007f4d56ffafc7:   call   0x00007f4d4f64b100           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                    0x00007f4d56ffafcc:   nop
                  [Deopt Handler Code]
                    0x00007f4d56ffafcd:   call   0x00007f4d4f505020           ;   {runtime_call DeoptimizationBlob}
                    0x00007f4d56ffafd2:   nop
....................................................................................................
  98.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 736 
   0.43%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 765 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 738 
   0.03%               kernel  [unknown] 
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
   0.84%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 736 
   1.46%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 765 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 738 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  __pthread_mutex_lock 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.15%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.25%       jvmci, level 4
   1.46%               kernel
   0.13%            libjvm.so
   0.05%                     
   0.05%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.899 ns/op
# Warmup Iteration   2: 10.919 ns/op
# Warmup Iteration   3: 10.871 ns/op
# Warmup Iteration   4: 11.169 ns/op
# Warmup Iteration   5: 11.144 ns/op
Iteration   1: 11.169 ns/op
Iteration   2: 11.169 ns/op
Iteration   3: 11.113 ns/op
Iteration   4: 11.179 ns/op
Iteration   5: 11.078 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction":
  11.142 ±(99.9%) 0.171 ns/op [Average]
  (min, avg, max) = (11.078, 11.142, 11.179), stdev = 0.044
  CI (99.9%): [10.971, 11.313] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction:·asm":
PrintAssembly processed: 194017 total address lines.
Perf output processed (skipped 58.670 seconds):
 Column 1: cycles (51172 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 764 

              0x00007f36aaffeaf2:   cmpb   $0x0,0x94(%rsi)
              0x00007f36aaffeaf9:   jne    0x00007f36aaffeb8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
              0x00007f36aaffeaff:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f36aaffeb08:   jmp    0x00007f36aaffeb2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 190)
          │   0x00007f36aaffeb0d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f36aaffeb18:   data16 data16 xchg %ax,%ax
          │   0x00007f36aaffeb1c:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
   2.67%  │↗  0x00007f36aaffeb20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
          ││  0x00007f36aaffeb27:   test   %eax,(%r11)                  ;   {poll}
   0.65%  ││  0x00007f36aaffeb2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f36aaffeb2f:   mov    0x8(%rsp),%r10
   2.61%   │  0x00007f36aaffeb34:   mov    %r10,%rsi
           │  0x00007f36aaffeb37:   call   0x00007f36a34ffa80           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 190)
           │                                                            ;   {optimized virtual_call}
   3.39%   │  0x00007f36aaffeb3c:   nop
   1.30%   │  0x00007f36aaffeb3d:   mov    0x20(%rsp),%r10
  16.26%   │  0x00007f36aaffeb42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@21 (line 191)
   2.70%   │  0x00007f36aaffeb45:   mov    0x18(%rsp),%rsi
   0.73%   │  0x00007f36aaffeb4a:   cmpb   $0x0,0x94(%rsi)
  10.99%   ╰  0x00007f36aaffeb51:   je     0x00007f36aaffeb20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
              0x00007f36aaffeb53:   mov    %r10,0x20(%rsp)
              0x00007f36aaffeb58:   call   0x00007f36c43386f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f36aaffeb5d:   nop
              0x00007f36aaffeb5e:   mov    0x10(%rsp),%rdx
              0x00007f36aaffeb63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@35 (line 193)
              0x00007f36aaffeb67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@41 (line 194)
              0x00007f36aaffeb6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  41.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 744 

            #           [sp+0x20]  (sp of caller)
            0x00007f36aaffae20:   mov    0x8(%rsi),%r10d
            0x00007f36aaffae24:   movabs $0x800000000,%r12
            0x00007f36aaffae2e:   add    %r12,%r10
            0x00007f36aaffae31:   xor    %r12,%r12
            0x00007f36aaffae34:   cmp    %r10,%rax
            0x00007f36aaffae37:   jne    0x00007f36a34ff780           ;   {runtime_call ic_miss_stub}
            0x00007f36aaffae3d:   nop
            0x00007f36aaffae3e:   xchg   %ax,%ax
          [Verified Entry Point]
   0.67%    0x00007f36aaffae40:   mov    %eax,-0x14000(%rsp)
   6.85%    0x00007f36aaffae47:   sub    $0x18,%rsp
   0.40%    0x00007f36aaffae4b:   mov    %rbp,0x10(%rsp)
   0.70%    0x00007f36aaffae50:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 72)
   1.65%    0x00007f36aaffae53:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 72)
   1.14%    0x00007f36aaffae56:   nop
   0.24%    0x00007f36aaffae57:   call   0x00007f36a3c0efc0           ; ImmutableOopMap {}
                                                                      ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 72)
                                                                      ;   {optimized virtual_call}
  21.22%    0x00007f36aaffae5c:   nop
            0x00007f36aaffae5d:   mov    0x10(%rsp),%rbp
   0.01%    0x00007f36aaffae62:   add    $0x18,%rsp
   3.37%    0x00007f36aaffae66:   mov    0x348(%r15),%rcx
            0x00007f36aaffae6d:   test   %eax,(%rcx)                  ;   {poll_return}
   1.82%    0x00007f36aaffae6f:   ret    
          [Exception Handler]
            0x00007f36aaffae70:   call   0x00007f36a364ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f36aaffae75:   nop
          [Deopt Handler Code]
            0x00007f36aaffae76:   call   0x00007f36a3505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f36aaffae7b:   nop
            0x00007f36aaffae7c:   hlt    
            0x00007f36aaffae7d:   hlt    
            0x00007f36aaffae7e:   hlt    
            0x00007f36aaffae7f:   hlt    
....................................................................................................
  38.06%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 745 

             #           [sp+0x20]  (sp of caller)
             0x00007f36aaffb100:   mov    0x8(%rsi),%r10d
             0x00007f36aaffb104:   movabs $0x800000000,%r12
             0x00007f36aaffb10e:   add    %r12,%r10
             0x00007f36aaffb111:   xor    %r12,%r12
             0x00007f36aaffb114:   cmp    %r10,%rax
             0x00007f36aaffb117:   jne    0x00007f36a34ff780           ;   {runtime_call ic_miss_stub}
             0x00007f36aaffb11d:   nop
             0x00007f36aaffb11e:   xchg   %ax,%ax
           [Verified Entry Point]
   2.06%     0x00007f36aaffb120:   mov    %eax,-0x14000(%rsp)
   1.35%     0x00007f36aaffb127:   sub    $0x18,%rsp
   0.28%     0x00007f36aaffb12b:   mov    %rbp,0x10(%rsp)
   1.77%     0x00007f36aaffb130:   cmp    $0x1,%edx
          ╭  0x00007f36aaffb133:   jl     0x00007f36aaffb150           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
   1.19%  │  0x00007f36aaffb139:   add    %ecx,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@6 (line 86)
   0.26%  │  0x00007f36aaffb13b:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@7 (line 86)
   0.24%  │  0x00007f36aaffb13d:   mov    0x10(%rsp),%rbp
   8.48%  │  0x00007f36aaffb142:   add    $0x18,%rsp
   0.90%  │  0x00007f36aaffb146:   mov    0x348(%r15),%rcx
          │  0x00007f36aaffb14d:   test   %eax,(%rcx)                  ;   {poll_return}
   1.35%  │  0x00007f36aaffb14f:   ret    
          ↘  0x00007f36aaffb150:   movl   $0xffffffed,0x370(%r15)      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
             0x00007f36aaffb15b:   movq   $0x10,0x378(%r15)
             0x00007f36aaffb166:   call   0x00007f36a350527a           ; ImmutableOopMap {}
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@0 (line 85)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f36aaffb16b:   nop
           [Exception Handler]
             0x00007f36aaffb16c:   call   0x00007f36a364ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  17.87%  <total for region 3>

....[Hottest Regions]...............................................................................
  41.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 764 
  38.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 744 
  17.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 745 
   1.37%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.86%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  41.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 764 
  38.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 744 
  17.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 745 
   2.45%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  WatcherThread::run 
   0.01%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.14%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.24%       jvmci, level 4
   2.45%               kernel
   0.15%            libjvm.so
   0.06%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:42

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

Benchmark                                          (iterations)  (offset)  Mode  Cnt      Score    Error  Units
LoopReductionBenchmark.initial_loop                     1048576       128  avgt    5  25394.459 ± 10.495  ns/op
LoopReductionBenchmark.initial_loop:·asm                1048576       128  avgt             NaN             ---
LoopReductionBenchmark.manual_loop_reduction            1048576       128  avgt    5     11.142 ±  0.171  ns/op
LoopReductionBenchmark.manual_loop_reduction:·asm       1048576       128  avgt             NaN             ---
