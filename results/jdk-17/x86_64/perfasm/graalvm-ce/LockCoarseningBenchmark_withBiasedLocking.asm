# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 9.335 ns/op
# Warmup Iteration   2: 8.983 ns/op
# Warmup Iteration   3: 9.034 ns/op
# Warmup Iteration   4: 9.035 ns/op
# Warmup Iteration   5: 9.049 ns/op
Iteration   1: 9.110 ns/op
Iteration   2: 9.090 ns/op
Iteration   3: 8.997 ns/op
Iteration   4: 9.020 ns/op
Iteration   5: 9.036 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline":
  9.051 ±(99.9%) 0.185 ns/op [Average]
  (min, avg, max) = (8.997, 9.051, 9.110), stdev = 0.048
  CI (99.9%): [8.866, 9.235] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 193706 total address lines.
Perf output processed (skipped 58.616 seconds):
 Column 1: cycles (50744 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 738 

              #           [sp+0x20]  (sp of caller)
              0x00007fbcaeffe380:   mov    0x8(%rsi),%r10d
              0x00007fbcaeffe384:   movabs $0x800000000,%r12
              0x00007fbcaeffe38e:   add    %r12,%r10
              0x00007fbcaeffe391:   xor    %r12,%r12
              0x00007fbcaeffe394:   cmp    %r10,%rax
              0x00007fbcaeffe397:   jne    0x00007fbca74ff780           ;   {runtime_call ic_miss_stub}
              0x00007fbcaeffe39d:   nop
              0x00007fbcaeffe39e:   xchg   %ax,%ax
            [Verified Entry Point]
   1.17%      0x00007fbcaeffe3a0:   mov    %eax,-0x14000(%rsp)
   2.97%      0x00007fbcaeffe3a7:   sub    $0x18,%rsp
   1.27%      0x00007fbcaeffe3ab:   mov    %rbp,0x10(%rsp)
   1.13%      0x00007fbcaeffe3b0:   mov    %rsi,%r11
   1.62%      0x00007fbcaeffe3b3:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   0.22%      0x00007fbcaeffe3b6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@1 (line 209)
   1.19%      0x00007fbcaeffe3ba:   lea    (%rsp),%r8
   1.03%      0x00007fbcaeffe3be:   mov    0x8(%r11),%esi
   1.68%      0x00007fbcaeffe3c2:   movabs $0x800000000,%rdx
   0.25%      0x00007fbcaeffe3cc:   lea    (%rdx,%rsi,1),%rsi
   2.35%      0x00007fbcaeffe3d0:   mov    0xb8(%rsi),%rsi
  14.75%      0x00007fbcaeffe3d7:   mov    %r15,%rdx
   0.64%      0x00007fbcaeffe3da:   or     %rsi,%rdx
   3.53%      0x00007fbcaeffe3dd:   mov    %rdx,%rbp
              0x00007fbcaeffe3e0:   xor    %r10,%rbp                    ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   7.81%      0x00007fbcaeffe3e3:   mov    %eax,%r9d
   0.30%      0x00007fbcaeffe3e6:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
              0x00007fbcaeffe3e9:   test   $0xffffffffffffff87,%rbp
              0x00007fbcaeffe3f0:   jne    0x00007fbcaeffe46a           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
              0x00007fbcaeffe3f6:   mov    $0x7,%rax
   3.98%      0x00007fbcaeffe3fd:   and    (%r11),%rax                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
   0.30%      0x00007fbcaeffe400:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@13 (line 212)
              0x00007fbcaeffe404:   cmp    $0x5,%rax
          ╭   0x00007fbcaeffe408:   jne    0x00007fbcaeffe43f           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
          │↗  0x00007fbcaeffe40e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@16 (line 212)
   3.81%  ││  0x00007fbcaeffe411:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@23 (line 213)
   0.27%  ││  0x00007fbcaeffe414:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@30 (line 214)
          ││  0x00007fbcaeffe417:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@37 (line 215)
          ││  0x00007fbcaeffe41a:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@44 (line 216)
   4.10%  ││  0x00007fbcaeffe41d:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@51 (line 217)
   0.30%  ││  0x00007fbcaeffe420:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@58 (line 218)
          ││  0x00007fbcaeffe423:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@65 (line 219)
   0.04%  ││  0x00007fbcaeffe426:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline@78 (line 222)
   3.97%  ││  0x00007fbcaeffe429:   mov    0x10(%rsp),%rbp
   0.27%  ││  0x00007fbcaeffe42e:   add    $0x18,%rsp
          ││  0x00007fbcaeffe432:   mov    0x348(%r15),%rcx
   0.02%  ││  0x00007fbcaeffe439:   test   %eax,(%rcx)                  ;   {poll_return}
   3.72%  ││  0x00007fbcaeffe43b:   vzeroupper 
   4.24%  ││  0x00007fbcaeffe43e:   ret    
          ↘│  0x00007fbcaeffe43f:   lea    (%rsp),%r10
           │  0x00007fbcaeffe443:   mov    (%r10),%rsi
           │  0x00007fbcaeffe446:   test   %rsi,%rsi
           ╰  0x00007fbcaeffe449:   je     0x00007fbcaeffe40e
              0x00007fbcaeffe44b:   mov    (%r11),%rcx
              0x00007fbcaeffe44e:   test   $0x2,%rcx
              0x00007fbcaeffe455:   jne    0x00007fbcaeffe4ed
              0x00007fbcaeffe45b:   mov    %r10,%rax
              0x00007fbcaeffe45e:   lock cmpxchg %rsi,(%r11)
              0x00007fbcaeffe463:   je     0x00007fbcaeffe40e
....................................................................................................
  66.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 760 

              0x00007fbcaf000bf5:   mov    0x18(%rsp),%rsi
              0x00007fbcaf000bfa:   nopw   0x0(%rax,%rax,1)
              0x00007fbcaf000c00:   cmpb   $0x0,0x94(%rsi)
              0x00007fbcaf000c07:   jne    0x00007fbcaf000c8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007fbcaf000c0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fbcaf000c16:   jmp    0x00007fbcaf000c2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          │   0x00007fbcaf000c1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
   4.22%  │↗  0x00007fbcaf000c20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          ││  0x00007fbcaf000c27:   test   %eax,(%r11)                  ;   {poll}
   1.23%  ││  0x00007fbcaf000c2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fbcaf000c2f:   mov    0x8(%rsp),%r10
   2.85%   │  0x00007fbcaf000c34:   mov    %r10,%rsi
           │  0x00007fbcaf000c37:   call   0x00007fbca74ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.24%   │  0x00007fbcaf000c3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 232)
           │  0x00007fbcaf000c3d:   mov    0x20(%rsp),%r10
   3.87%   │  0x00007fbcaf000c42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 233)
   0.67%   │  0x00007fbcaf000c45:   mov    0x18(%rsp),%rsi
           │  0x00007fbcaf000c4a:   cmpb   $0x0,0x94(%rsi)
  17.77%   ╰  0x00007fbcaf000c51:   je     0x00007fbcaf000c20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007fbcaf000c53:   mov    %r10,0x20(%rsp)
              0x00007fbcaf000c58:   call   0x00007fbcc75636f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbcaf000c5d:   nop
              0x00007fbcaf000c5e:   mov    0x10(%rsp),%rdx
              0x00007fbcaf000c63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 235)
              0x00007fbcaf000c67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 236)
              0x00007fbcaf000c6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  30.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 738 
  30.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 760 
   0.72%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.94%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 738 
  30.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 760 
   1.83%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%            libjvm.so  jio_print 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%  libjvmcicompiler.so  IsolateEnterStub_JNIFunctions_ExceptionCheck_58d6e5b3e7f9e77fa71a316c155f7e7a40618b7f_19b3cc17c6bf1c1883532a2918712cb500661570 
   0.00%         libc-2.31.so  re_search_stub 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%       jvmci, level 4
   1.83%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 9.348 ns/op
# Warmup Iteration   2: 9.118 ns/op
# Warmup Iteration   3: 9.142 ns/op
# Warmup Iteration   4: 9.069 ns/op
# Warmup Iteration   5: 9.152 ns/op
Iteration   1: 8.973 ns/op
Iteration   2: 9.136 ns/op
Iteration   3: 9.128 ns/op
Iteration   4: 9.125 ns/op
Iteration   5: 9.117 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls":
  9.096 ±(99.9%) 0.266 ns/op [Average]
  (min, avg, max) = (8.973, 9.096, 9.136), stdev = 0.069
  CI (99.9%): [8.830, 9.361] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 197248 total address lines.
Perf output processed (skipped 58.615 seconds):
 Column 1: cycles (50940 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 734 

              #           [sp+0x20]  (sp of caller)
              0x00007faa7effb080:   mov    0x8(%rsi),%r10d
              0x00007faa7effb084:   movabs $0x800000000,%r12
              0x00007faa7effb08e:   add    %r12,%r10
              0x00007faa7effb091:   xor    %r12,%r12
              0x00007faa7effb094:   cmp    %r10,%rax
              0x00007faa7effb097:   jne    0x00007faa774ff780           ;   {runtime_call ic_miss_stub}
              0x00007faa7effb09d:   nop
              0x00007faa7effb09e:   xchg   %ax,%ax
            [Verified Entry Point]
   2.85%      0x00007faa7effb0a0:   mov    %eax,-0x14000(%rsp)
   1.37%      0x00007faa7effb0a7:   sub    $0x18,%rsp
   2.79%      0x00007faa7effb0ab:   mov    %rbp,0x10(%rsp)
   0.23%      0x00007faa7effb0b0:   mov    %rsi,%r11
   1.01%      0x00007faa7effb0b3:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   0.10%      0x00007faa7effb0b6:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 124)
   2.70%      0x00007faa7effb0ba:   lea    (%rsp),%r8
   0.23%      0x00007faa7effb0be:   mov    0x8(%r11),%esi
   0.99%      0x00007faa7effb0c2:   movabs $0x800000000,%rdx
   0.09%      0x00007faa7effb0cc:   lea    (%rdx,%rsi,1),%rsi
   2.95%      0x00007faa7effb0d0:   mov    0xb8(%rsi),%rsi
  16.33%      0x00007faa7effb0d7:   mov    %r15,%rdx
              0x00007faa7effb0da:   or     %rsi,%rdx
   4.06%      0x00007faa7effb0dd:   mov    %rdx,%rbp
              0x00007faa7effb0e0:   xor    %r10,%rbp                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   8.35%      0x00007faa7effb0e3:   mov    %eax,%r9d
              0x00007faa7effb0e6:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
              0x00007faa7effb0e9:   test   $0xffffffffffffff87,%rbp
              0x00007faa7effb0f0:   jne    0x00007faa7effb16a           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
              0x00007faa7effb0f6:   mov    $0x7,%rax
   4.15%      0x00007faa7effb0fd:   and    (%r11),%rax                  ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
              0x00007faa7effb100:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
              0x00007faa7effb104:   cmp    $0x5,%rax
          ╭   0x00007faa7effb108:   jne    0x00007faa7effb13f           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          │↗  0x00007faa7effb10e:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   4.25%  ││  0x00007faa7effb111:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@15 (line 127)
          ││  0x00007faa7effb114:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@21 (line 128)
          ││  0x00007faa7effb117:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@27 (line 129)
          ││  0x00007faa7effb11a:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@33 (line 130)
   4.18%  ││  0x00007faa7effb11d:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@39 (line 131)
          ││  0x00007faa7effb120:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@45 (line 132)
          ││  0x00007faa7effb123:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
          ││  0x00007faa7effb126:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 135)
   4.25%  ││  0x00007faa7effb129:   mov    0x10(%rsp),%rbp
          ││  0x00007faa7effb12e:   add    $0x18,%rsp
          ││  0x00007faa7effb132:   mov    0x348(%r15),%rcx
          ││  0x00007faa7effb139:   test   %eax,(%rcx)                  ;   {poll_return}
   4.01%  ││  0x00007faa7effb13b:   vzeroupper 
   4.11%  ││  0x00007faa7effb13e:   ret    
          ↘│  0x00007faa7effb13f:   lea    (%rsp),%r10
           │  0x00007faa7effb143:   mov    (%r10),%rsi
           │  0x00007faa7effb146:   test   %rsi,%rsi
           ╰  0x00007faa7effb149:   je     0x00007faa7effb10e
              0x00007faa7effb14b:   mov    (%r11),%rcx
              0x00007faa7effb14e:   test   $0x2,%rcx
              0x00007faa7effb155:   jne    0x00007faa7effb1ed
              0x00007faa7effb15b:   mov    %r10,%rax
              0x00007faa7effb15e:   lock cmpxchg %rsi,(%r11)
              0x00007faa7effb163:   je     0x00007faa7effb10e
....................................................................................................
  69.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 757 

              0x00007faa7efff575:   mov    0x18(%rsp),%rsi
              0x00007faa7efff57a:   nopw   0x0(%rax,%rax,1)
              0x00007faa7efff580:   cmpb   $0x0,0x94(%rsi)
              0x00007faa7efff587:   jne    0x00007faa7efff60e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007faa7efff58d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007faa7efff596:   jmp    0x00007faa7efff5af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007faa7efff59b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
   4.14%  │↗  0x00007faa7efff5a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007faa7efff5a7:   test   %eax,(%r11)                  ;   {poll}
   2.90%  ││  0x00007faa7efff5aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007faa7efff5af:   mov    0x8(%rsp),%r10
   1.30%   │  0x00007faa7efff5b4:   mov    %r10,%rsi
           │  0x00007faa7efff5b7:   call   0x00007faa774ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.00%   │  0x00007faa7efff5bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007faa7efff5bd:   mov    0x20(%rsp),%r10
   4.10%   │  0x00007faa7efff5c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 233)
   1.40%   │  0x00007faa7efff5c5:   mov    0x18(%rsp),%rsi
           │  0x00007faa7efff5ca:   cmpb   $0x0,0x94(%rsi)
  14.84%   ╰  0x00007faa7efff5d1:   je     0x00007faa7efff5a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007faa7efff5d3:   mov    %r10,0x20(%rsp)
              0x00007faa7efff5d8:   call   0x00007faa98d486f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007faa7efff5dd:   nop
              0x00007faa7efff5de:   mov    0x10(%rsp),%rdx
              0x00007faa7efff5e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007faa7efff5e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007faa7efff5ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  28.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 734 
  28.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 757 
   0.87%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
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
   0.91%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 734 
  28.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 757 
   1.93%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%         libc-2.31.so  gethostbyaddr 
   0.00%         libc-2.31.so  __vfwprintf_internal 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%         libc-2.31.so  _int_malloc 
   0.21%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.69%       jvmci, level 4
   1.93%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.06%                     
   0.03%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%       perf-28490.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 11.263 ns/op
# Warmup Iteration   2: 11.516 ns/op
# Warmup Iteration   3: 11.088 ns/op
# Warmup Iteration   4: 11.161 ns/op
# Warmup Iteration   5: 11.125 ns/op
Iteration   1: 11.115 ns/op
Iteration   2: 11.175 ns/op
Iteration   3: 11.068 ns/op
Iteration   4: 11.127 ns/op
Iteration   5: 11.194 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  11.136 ±(99.9%) 0.194 ns/op [Average]
  (min, avg, max) = (11.068, 11.136, 11.194), stdev = 0.050
  CI (99.9%): [10.942, 11.329] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 194440 total address lines.
Perf output processed (skipped 58.538 seconds):
 Column 1: cycles (50709 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 738 

              #           [sp+0x20]  (sp of caller)
              0x00007fe9a6ff9ba0:   mov    0x8(%rsi),%r10d
              0x00007fe9a6ff9ba4:   movabs $0x800000000,%r12
              0x00007fe9a6ff9bae:   add    %r12,%r10
              0x00007fe9a6ff9bb1:   xor    %r12,%r12
              0x00007fe9a6ff9bb4:   cmp    %r10,%rax
              0x00007fe9a6ff9bb7:   jne    0x00007fe99f4ff780           ;   {runtime_call ic_miss_stub}
              0x00007fe9a6ff9bbd:   nop
              0x00007fe9a6ff9bbe:   xchg   %ax,%ax
            [Verified Entry Point]
   1.17%      0x00007fe9a6ff9bc0:   mov    %eax,-0x14000(%rsp)
   2.57%      0x00007fe9a6ff9bc7:   sub    $0x18,%rsp
   1.21%      0x00007fe9a6ff9bcb:   mov    %rbp,0x10(%rsp)
   0.24%      0x00007fe9a6ff9bd0:   mov    %rsi,%r11
   1.65%      0x00007fe9a6ff9bd3:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 141)
   0.25%      0x00007fe9a6ff9bd7:   mov    %eax,%r8d
   1.23%      0x00007fe9a6ff9bda:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 141)
   0.24%      0x00007fe9a6ff9bdd:   data16 xchg %ax,%ax
   1.68%      0x00007fe9a6ff9be0:   cmp    $0x21,%r8d
              0x00007fe9a6ff9be4:   jl     0x00007fe9a6ff9efb           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 144)
   0.84%      0x00007fe9a6ff9bea:   mov    (%r11),%r10
   0.81%      0x00007fe9a6ff9bed:   lea    (%rsp),%r9
              0x00007fe9a6ff9bf1:   mov    0x8(%r11),%eax
   1.76%      0x00007fe9a6ff9bf5:   movabs $0x800000000,%rsi
   0.86%      0x00007fe9a6ff9bff:   lea    (%rsi,%rax,1),%rax
   0.84%      0x00007fe9a6ff9c03:   mov    0xb8(%rax),%rsi
   9.02%      0x00007fe9a6ff9c0a:   mov    %r15,%rdx
   0.68%      0x00007fe9a6ff9c0d:   or     %rsi,%rdx
   2.64%      0x00007fe9a6ff9c10:   mov    %rdx,%rbp
              0x00007fe9a6ff9c13:   xor    %r10,%rbp
   2.94%      0x00007fe9a6ff9c16:   data16 nopw 0x0(%rax,%rax,1)
   0.40%      0x00007fe9a6ff9c20:   test   $0xffffffffffffff87,%rbp
              0x00007fe9a6ff9c27:   jne    0x00007fe9a6ff9cfc           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   2.93%      0x00007fe9a6ff9c2d:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
              0x00007fe9a6ff9c31:   mov    %r8d,%eax
              0x00007fe9a6ff9c34:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   0.49%      0x00007fe9a6ff9c37:   cmp    $0x21,%eax
              0x00007fe9a6ff9c3a:   jl     0x00007fe9a6ff9f32           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
   2.96%      0x00007fe9a6ff9c40:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
              0x00007fe9a6ff9c43:   cmp    $0x21,%eax
              0x00007fe9a6ff9c46:   jl     0x00007fe9a6ff9f29           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
              0x00007fe9a6ff9c4c:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
   0.46%      0x00007fe9a6ff9c4f:   cmp    $0x21,%eax
              0x00007fe9a6ff9c52:   jl     0x00007fe9a6ff9f3b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
   2.85%      0x00007fe9a6ff9c58:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
   0.00%      0x00007fe9a6ff9c5b:   nopl   0x0(%rax,%rax,1)
              0x00007fe9a6ff9c60:   cmp    $0x21,%eax
              0x00007fe9a6ff9c63:   jl     0x00007fe9a6ff9edc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
   0.43%      0x00007fe9a6ff9c69:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
   2.87%      0x00007fe9a6ff9c6c:   cmp    $0x21,%eax
              0x00007fe9a6ff9c6f:   jl     0x00007fe9a6ff9f17           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 159)
              0x00007fe9a6ff9c75:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
              0x00007fe9a6ff9c78:   nopl   0x0(%rax,%rax,1)
   0.44%      0x00007fe9a6ff9c80:   cmp    $0x21,%eax
              0x00007fe9a6ff9c83:   jl     0x00007fe9a6ff9f20           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 162)
   2.92%      0x00007fe9a6ff9c89:   mov    %eax,%ecx
              0x00007fe9a6ff9c8b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
              0x00007fe9a6ff9c8e:   cmp    $0x21,%ecx
              0x00007fe9a6ff9c91:   jl     0x00007fe9a6ff9f44           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 165)
   0.46%      0x00007fe9a6ff9c97:   mov    $0x7,%rax
   2.80%      0x00007fe9a6ff9c9e:   and    (%r11),%rax
              0x00007fe9a6ff9ca1:   cmp    $0x5,%rax
          ╭   0x00007fe9a6ff9ca5:   jne    0x00007fe9a6ff9cc6           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
          │↗  0x00007fe9a6ff9cab:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   0.45%  ││  0x00007fe9a6ff9cae:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 169)
   2.93%  ││  0x00007fe9a6ff9cb0:   mov    0x10(%rsp),%rbp
          ││  0x00007fe9a6ff9cb5:   add    $0x18,%rsp
          ││  0x00007fe9a6ff9cb9:   mov    0x348(%r15),%rcx
   0.45%  ││  0x00007fe9a6ff9cc0:   test   %eax,(%rcx)                  ;   {poll_return}
   2.84%  ││  0x00007fe9a6ff9cc2:   vzeroupper 
   3.37%  ││  0x00007fe9a6ff9cc5:   ret    
          ↘│  0x00007fe9a6ff9cc6:   lea    (%rsp),%r10
           │  0x00007fe9a6ff9cca:   mov    (%r10),%rsi
           │  0x00007fe9a6ff9ccd:   test   %rsi,%rsi
           ╰  0x00007fe9a6ff9cd0:   je     0x00007fe9a6ff9cab
              0x00007fe9a6ff9cd2:   mov    (%r11),%r8
              0x00007fe9a6ff9cd5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fe9a6ff9ce0:   test   $0x2,%r8
              0x00007fe9a6ff9ce7:   jne    0x00007fe9a6ff9d7a
              0x00007fe9a6ff9ced:   mov    %r10,%rax
              0x00007fe9a6ff9cf0:   lock cmpxchg %rsi,(%r11)
....................................................................................................
  60.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 753 

              0x00007fe9a6ffdef5:   mov    0x18(%rsp),%rsi
              0x00007fe9a6ffdefa:   nopw   0x0(%rax,%rax,1)
              0x00007fe9a6ffdf00:   cmpb   $0x0,0x94(%rsi)
              0x00007fe9a6ffdf07:   jne    0x00007fe9a6ffdf8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fe9a6ffdf0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fe9a6ffdf16:   jmp    0x00007fe9a6ffdf2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fe9a6ffdf1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   3.39%  │↗  0x00007fe9a6ffdf20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fe9a6ffdf27:   test   %eax,(%r11)                  ;   {poll}
   1.24%  ││  0x00007fe9a6ffdf2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fe9a6ffdf2f:   mov    0x8(%rsp),%r10
   2.17%   │  0x00007fe9a6ffdf34:   mov    %r10,%rsi
           │  0x00007fe9a6ffdf37:   call   0x00007fe99f4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   1.05%   │  0x00007fe9a6ffdf3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fe9a6ffdf3d:   mov    0x20(%rsp),%r10
   8.36%   │  0x00007fe9a6ffdf42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 233)
   3.43%   │  0x00007fe9a6ffdf45:   mov    0x18(%rsp),%rsi
           │  0x00007fe9a6ffdf4a:   cmpb   $0x0,0x94(%rsi)
  17.56%   ╰  0x00007fe9a6ffdf51:   je     0x00007fe9a6ffdf20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fe9a6ffdf53:   mov    %r10,0x20(%rsp)
              0x00007fe9a6ffdf58:   call   0x00007fe9bf0506f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe9a6ffdf5d:   nop
              0x00007fe9a6ffdf5e:   mov    0x10(%rsp),%rdx
              0x00007fe9a6ffdf63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fe9a6ffdf67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fe9a6ffdf6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  37.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 738 
  37.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 753 
   0.49%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   1.05%  <...other 354 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 738 
  37.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 753 
   1.72%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%            libjvm.so  defaultStream::write 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.88%       jvmci, level 4
   1.72%               kernel
   0.14%            libjvm.so
   0.12%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 11.413 ns/op
# Warmup Iteration   2: 11.275 ns/op
# Warmup Iteration   3: 11.476 ns/op
# Warmup Iteration   4: 11.333 ns/op
# Warmup Iteration   5: 11.372 ns/op
Iteration   1: 11.239 ns/op
Iteration   2: 11.341 ns/op
Iteration   3: 11.205 ns/op
Iteration   4: 11.317 ns/op
Iteration   5: 11.295 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  11.279 ±(99.9%) 0.217 ns/op [Average]
  (min, avg, max) = (11.205, 11.279, 11.341), stdev = 0.056
  CI (99.9%): [11.063, 11.496] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 197623 total address lines.
Perf output processed (skipped 58.614 seconds):
 Column 1: cycles (50706 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 730 

              #           [sp+0x20]  (sp of caller)
              0x00007f4a62ffb620:   mov    0x8(%rsi),%r10d
              0x00007f4a62ffb624:   movabs $0x800000000,%r12
              0x00007f4a62ffb62e:   add    %r12,%r10
              0x00007f4a62ffb631:   xor    %r12,%r12
              0x00007f4a62ffb634:   cmp    %r10,%rax
              0x00007f4a62ffb637:   jne    0x00007f4a5b4ff780           ;   {runtime_call ic_miss_stub}
              0x00007f4a62ffb63d:   nop
              0x00007f4a62ffb63e:   xchg   %ax,%ax
            [Verified Entry Point]
   1.37%      0x00007f4a62ffb640:   mov    %eax,-0x14000(%rsp)
   2.34%      0x00007f4a62ffb647:   sub    $0x18,%rsp
   1.55%      0x00007f4a62ffb64b:   mov    %rbp,0x10(%rsp)
   0.09%      0x00007f4a62ffb650:   mov    %rsi,%r11
   1.39%      0x00007f4a62ffb653:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 175)
   0.47%      0x00007f4a62ffb657:   mov    %eax,%r8d
   1.45%      0x00007f4a62ffb65a:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 175)
   0.07%      0x00007f4a62ffb65d:   data16 xchg %ax,%ax
   1.34%      0x00007f4a62ffb660:   cmp    $0x21,%r8d
              0x00007f4a62ffb664:   jl     0x00007f4a62ffb978           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 178)
   1.09%      0x00007f4a62ffb66a:   mov    (%r11),%r10
   0.88%      0x00007f4a62ffb66d:   lea    (%rsp),%r9
              0x00007f4a62ffb671:   mov    0x8(%r11),%eax
   1.35%      0x00007f4a62ffb675:   movabs $0x800000000,%rsi
   1.04%      0x00007f4a62ffb67f:   lea    (%rsi,%rax,1),%rax
   0.88%      0x00007f4a62ffb683:   mov    0xb8(%rax),%rsi
   8.91%      0x00007f4a62ffb68a:   mov    %r15,%rdx
   0.64%      0x00007f4a62ffb68d:   or     %rsi,%rdx
   2.57%      0x00007f4a62ffb690:   mov    %rdx,%rbp
              0x00007f4a62ffb693:   xor    %r10,%rbp
   3.00%      0x00007f4a62ffb696:   data16 nopw 0x0(%rax,%rax,1)
   0.39%      0x00007f4a62ffb6a0:   test   $0xffffffffffffff87,%rbp
              0x00007f4a62ffb6a7:   jne    0x00007f4a62ffb77c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@0 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   3.04%      0x00007f4a62ffb6ad:   mov    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@2 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
              0x00007f4a62ffb6b1:   mov    %r8d,%eax
              0x00007f4a62ffb6b4:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   0.46%      0x00007f4a62ffb6b7:   cmp    $0x21,%eax
              0x00007f4a62ffb6ba:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 180)
   2.84%      0x00007f4a62ffb6c0:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
              0x00007f4a62ffb6c3:   cmp    $0x21,%eax
              0x00007f4a62ffb6c6:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 182)
              0x00007f4a62ffb6cc:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
   0.39%      0x00007f4a62ffb6cf:   cmp    $0x21,%eax
              0x00007f4a62ffb6d2:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
   2.83%      0x00007f4a62ffb6d8:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
              0x00007f4a62ffb6db:   nopl   0x0(%rax,%rax,1)
              0x00007f4a62ffb6e0:   cmp    $0x21,%eax
              0x00007f4a62ffb6e3:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
   0.36%      0x00007f4a62ffb6e9:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
   2.97%      0x00007f4a62ffb6ec:   cmp    $0x21,%eax
              0x00007f4a62ffb6ef:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
              0x00007f4a62ffb6f5:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
              0x00007f4a62ffb6f8:   nopl   0x0(%rax,%rax,1)
   0.41%      0x00007f4a62ffb700:   cmp    $0x21,%eax
              0x00007f4a62ffb703:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 190)
   2.94%      0x00007f4a62ffb709:   mov    %eax,%ecx
              0x00007f4a62ffb70b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
              0x00007f4a62ffb70e:   cmp    $0x21,%ecx
              0x00007f4a62ffb711:   jl     0x00007f4a62ffb95c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 192)
   0.44%      0x00007f4a62ffb717:   mov    $0x7,%rax
   3.03%      0x00007f4a62ffb71e:   and    (%r11),%rax
              0x00007f4a62ffb721:   cmp    $0x5,%rax
          ╭   0x00007f4a62ffb725:   jne    0x00007f4a62ffb746           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
          │↗  0x00007f4a62ffb72b:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   0.43%  ││  0x00007f4a62ffb72e:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 203)
   2.95%  ││  0x00007f4a62ffb730:   mov    0x10(%rsp),%rbp
          ││  0x00007f4a62ffb735:   add    $0x18,%rsp
          ││  0x00007f4a62ffb739:   mov    0x348(%r15),%rcx
   0.36%  ││  0x00007f4a62ffb740:   test   %eax,(%rcx)                  ;   {poll_return}
   2.96%  ││  0x00007f4a62ffb742:   vzeroupper 
   3.33%  ││  0x00007f4a62ffb745:   ret    
          ↘│  0x00007f4a62ffb746:   lea    (%rsp),%r10
           │  0x00007f4a62ffb74a:   mov    (%r10),%rsi
           │  0x00007f4a62ffb74d:   test   %rsi,%rsi
           ╰  0x00007f4a62ffb750:   je     0x00007f4a62ffb72b
              0x00007f4a62ffb752:   mov    (%r11),%r8
              0x00007f4a62ffb755:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f4a62ffb760:   test   $0x2,%r8
              0x00007f4a62ffb767:   jne    0x00007f4a62ffb7fa
              0x00007f4a62ffb76d:   mov    %r10,%rax
              0x00007f4a62ffb770:   lock cmpxchg %rsi,(%r11)
....................................................................................................
  60.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 755 

              0x00007f4a62fffdf5:   mov    0x18(%rsp),%rsi
              0x00007f4a62fffdfa:   nopw   0x0(%rax,%rax,1)
              0x00007f4a62fffe00:   cmpb   $0x0,0x94(%rsi)
              0x00007f4a62fffe07:   jne    0x00007f4a62fffe8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f4a62fffe0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f4a62fffe16:   jmp    0x00007f4a62fffe2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f4a62fffe1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
   3.42%  │↗  0x00007f4a62fffe20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f4a62fffe27:   test   %eax,(%r11)                  ;   {poll}
   1.41%  ││  0x00007f4a62fffe2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f4a62fffe2f:   mov    0x8(%rsp),%r10
   1.93%   │  0x00007f4a62fffe34:   mov    %r10,%rsi
           │  0x00007f4a62fffe37:   call   0x00007f4a5b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   0.40%   │  0x00007f4a62fffe3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f4a62fffe3d:   mov    0x20(%rsp),%r10
   9.77%   │  0x00007f4a62fffe42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 233)
   3.27%   │  0x00007f4a62fffe45:   mov    0x18(%rsp),%rsi
           │  0x00007f4a62fffe4a:   cmpb   $0x0,0x94(%rsi)
  17.36%   ╰  0x00007f4a62fffe51:   je     0x00007f4a62fffe20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f4a62fffe53:   mov    %r10,0x20(%rsp)
              0x00007f4a62fffe58:   call   0x00007f4a7aff26f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4a62fffe5d:   nop
              0x00007f4a62fffe5e:   mov    0x10(%rsp),%rdx
              0x00007f4a62fffe63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f4a62fffe67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f4a62fffe6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  37.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 730 
  37.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 755 
   0.42%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.83%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 730 
  37.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 755 
   1.47%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.04%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  _nl_parse_alt_digit 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.00%         libc-2.31.so  _int_realloc 
   0.20%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.13%       jvmci, level 4
   1.47%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%       perf-28611.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20.478 ns/op
# Warmup Iteration   2: 20.282 ns/op
# Warmup Iteration   3: 20.318 ns/op
# Warmup Iteration   4: 20.252 ns/op
# Warmup Iteration   5: 20.262 ns/op
Iteration   1: 20.275 ns/op
Iteration   2: 20.239 ns/op
Iteration   3: 20.227 ns/op
Iteration   4: 20.257 ns/op
Iteration   5: 20.308 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized":
  20.261 ±(99.9%) 0.122 ns/op [Average]
  (min, avg, max) = (20.227, 20.261, 20.308), stdev = 0.032
  CI (99.9%): [20.139, 20.383] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 193889 total address lines.
Perf output processed (skipped 58.614 seconds):
 Column 1: cycles (50739 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 726 

              #           [sp+0x60]  (sp of caller)
              0x00007f63deff9940:   mov    0x8(%rsi),%r10d
              0x00007f63deff9944:   movabs $0x800000000,%r12
              0x00007f63deff994e:   add    %r12,%r10
              0x00007f63deff9951:   xor    %r12,%r12
              0x00007f63deff9954:   cmp    %r10,%rax
              0x00007f63deff9957:   jne    0x00007f63d74ff780           ;   {runtime_call ic_miss_stub}
              0x00007f63deff995d:   nop
              0x00007f63deff995e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.98%      0x00007f63deff9960:   mov    %eax,-0x14000(%rsp)
   1.02%      0x00007f63deff9967:   sub    $0x58,%rsp
   0.96%      0x00007f63deff996b:   mov    %rbp,0x50(%rsp)
   0.21%      0x00007f63deff9970:   mov    %rsi,%r11
   0.59%      0x00007f63deff9973:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   0.15%      0x00007f63deff9976:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 83)
   0.99%      0x00007f63deff997a:   lea    0x40(%rsp),%r8
   0.21%      0x00007f63deff997f:   mov    0x8(%r11),%esi
   0.58%      0x00007f63deff9983:   movabs $0x800000000,%rdx
   0.13%      0x00007f63deff998d:   lea    (%rdx,%rsi,1),%r9
   1.24%      0x00007f63deff9991:   mov    0xb8(%r9),%rsi
   7.86%      0x00007f63deff9998:   mov    %r15,%rdx
              0x00007f63deff999b:   or     %rsi,%rdx
   1.84%      0x00007f63deff999e:   mov    %rdx,%rbp
              0x00007f63deff99a1:   xor    %r10,%rbp                    ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
   3.81%      0x00007f63deff99a4:   mov    %eax,%ecx
              0x00007f63deff99a6:   shl    %ecx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 83)
              0x00007f63deff99a8:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff99af:   jne    0x00007f63deff9eb4           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 85)
              0x00007f63deff99b5:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 87)
   1.87%      0x00007f63deff99b8:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@13 (line 86)
              0x00007f63deff99bc:   lea    0x8(%rsp),%r8
              0x00007f63deff99c1:   mov    0xb8(%r9),%rsi
              0x00007f63deff99c8:   mov    %r15,%rdx
   1.90%      0x00007f63deff99cb:   or     %rsi,%rdx
              0x00007f63deff99ce:   mov    %rdx,%rbp
              0x00007f63deff99d1:   xor    %r10,%rbp
              0x00007f63deff99d4:   nopl   0x0(%rax,%rax,1)
   2.03%      0x00007f63deff99dc:   data16 data16 xchg %ax,%ax
              0x00007f63deff99e0:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff99e7:   jne    0x00007f63deff9f74           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 87)
              0x00007f63deff99ed:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
              0x00007f63deff99f0:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@24 (line 88)
   1.88%      0x00007f63deff99f4:   lea    0x10(%rsp),%r8
              0x00007f63deff99f9:   mov    0xb8(%r9),%rsi
              0x00007f63deff9a00:   mov    %r15,%rdx
              0x00007f63deff9a03:   or     %rsi,%rdx
   1.89%      0x00007f63deff9a06:   mov    %rdx,%rbp
              0x00007f63deff9a09:   xor    %r10,%rbp
              0x00007f63deff9a0c:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9a13:   jne    0x00007f63deff9e36           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 89)
              0x00007f63deff9a19:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
   1.89%      0x00007f63deff9a1c:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@36 (line 90)
              0x00007f63deff9a20:   lea    0x18(%rsp),%r8
              0x00007f63deff9a25:   mov    0xb8(%r9),%rsi
              0x00007f63deff9a2c:   mov    %r15,%rdx
   1.86%      0x00007f63deff9a2f:   or     %rsi,%rdx
              0x00007f63deff9a32:   mov    %rdx,%rbp
              0x00007f63deff9a35:   xor    %r10,%rbp
              0x00007f63deff9a38:   nopl   0x0(%rax,%rax,1)
   1.92%      0x00007f63deff9a40:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9a47:   jne    0x00007f63deff9f34           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 91)
              0x00007f63deff9a4d:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 93)
              0x00007f63deff9a50:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@48 (line 92)
              0x00007f63deff9a54:   lea    0x20(%rsp),%r8
   1.87%      0x00007f63deff9a59:   mov    0xb8(%r9),%rsi
              0x00007f63deff9a60:   mov    %r15,%rdx
              0x00007f63deff9a63:   or     %rsi,%rdx
              0x00007f63deff9a66:   mov    %rdx,%rbp
   1.89%      0x00007f63deff9a69:   xor    %r10,%rbp
              0x00007f63deff9a6c:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9a73:   jne    0x00007f63deff9ef4           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 93)
              0x00007f63deff9a79:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 95)
              0x00007f63deff9a7c:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@60 (line 94)
   1.87%      0x00007f63deff9a80:   lea    0x28(%rsp),%r8
              0x00007f63deff9a85:   mov    0xb8(%r9),%rsi
              0x00007f63deff9a8c:   mov    %r15,%rdx
              0x00007f63deff9a8f:   or     %rsi,%rdx
   1.93%      0x00007f63deff9a92:   mov    %rdx,%rbp
              0x00007f63deff9a95:   xor    %r10,%rbp
              0x00007f63deff9a98:   nopl   0x0(%rax,%rax,1)
              0x00007f63deff9aa0:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9aa7:   jne    0x00007f63deff9e74           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 95)
   1.88%      0x00007f63deff9aad:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 97)
              0x00007f63deff9ab0:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@72 (line 96)
              0x00007f63deff9ab4:   lea    0x30(%rsp),%r8
              0x00007f63deff9ab9:   mov    0xb8(%r9),%rsi
   1.91%      0x00007f63deff9ac0:   mov    %r15,%rdx
              0x00007f63deff9ac3:   or     %rsi,%rdx
              0x00007f63deff9ac6:   mov    %rdx,%rbp
              0x00007f63deff9ac9:   xor    %r10,%rbp
   1.83%      0x00007f63deff9acc:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9ad3:   jne    0x00007f63deff9dfb           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 97)
              0x00007f63deff9ad9:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 99)
              0x00007f63deff9adc:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@84 (line 98)
              0x00007f63deff9ae0:   lea    0x38(%rsp),%r8
   1.94%      0x00007f63deff9ae5:   mov    0xb8(%r9),%rsi
              0x00007f63deff9aec:   mov    %r15,%rdx
              0x00007f63deff9aef:   or     %rsi,%rdx
              0x00007f63deff9af2:   mov    %rdx,%rbp
   1.85%      0x00007f63deff9af5:   xor    %r10,%rbp
              0x00007f63deff9af8:   nopl   0x0(%rax,%rax,1)
              0x00007f63deff9b00:   test   $0xffffffffffffff87,%rbp
              0x00007f63deff9b07:   jne    0x00007f63deff9dc0           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 99)
              0x00007f63deff9b0d:   mov    $0x7,%rax
   1.93%      0x00007f63deff9b14:   and    (%r11),%rax                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 101)
              0x00007f63deff9b17:   add    0x14(%r11),%ecx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 100)
              0x00007f63deff9b1b:   nopl   0x0(%rax,%rax,1)
              0x00007f63deff9b20:   cmp    $0x5,%rax
          ╭   0x00007f63deff9b24:   jne    0x00007f63deff9bd6           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 101)
   1.87%  │↗  0x00007f63deff9b2a:   mov    $0x7,%rax
          ││  0x00007f63deff9b31:   and    (%r11),%rax
          ││  0x00007f63deff9b34:   cmp    $0x5,%rax
          ││  0x00007f63deff9b38:   jne    0x00007f63deff9d00           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@117 (line 102)
          ││  0x00007f63deff9b3e:   mov    $0x7,%rax
   1.69%  ││  0x00007f63deff9b45:   and    (%r11),%rax
          ││  0x00007f63deff9b48:   cmp    $0x5,%rax
          ││  0x00007f63deff9b4c:   jne    0x00007f63deff9d40           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@131 (line 103)
          ││  0x00007f63deff9b52:   mov    $0x7,%rax
          ││  0x00007f63deff9b59:   and    (%r11),%rax
   1.90%  ││  0x00007f63deff9b5c:   nopl   0x0(%rax)
          ││  0x00007f63deff9b60:   cmp    $0x5,%rax
          ││  0x00007f63deff9b64:   jne    0x00007f63deff9c0c           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@145 (line 104)
          ││  0x00007f63deff9b6a:   mov    $0x7,%rax
          ││  0x00007f63deff9b71:   and    (%r11),%rax
   1.76%  ││  0x00007f63deff9b74:   cmp    $0x5,%rax
          ││  0x00007f63deff9b78:   jne    0x00007f63deff9cc0           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@159 (line 105)
          ││  0x00007f63deff9b7e:   mov    $0x7,%rax
          ││  0x00007f63deff9b85:   and    (%r11),%rax
          ││  0x00007f63deff9b88:   cmp    $0x5,%rax
          ││  0x00007f63deff9b8c:   jne    0x00007f63deff9c40           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@173 (line 106)
   1.83%  ││  0x00007f63deff9b92:   mov    $0x7,%rax
          ││  0x00007f63deff9b99:   and    (%r11),%rax
          ││  0x00007f63deff9b9c:   nopl   0x0(%rax)
          ││  0x00007f63deff9ba0:   cmp    $0x5,%rax
          ││  0x00007f63deff9ba4:   jne    0x00007f63deff9c80           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@186 (line 107)
   1.85%  ││  0x00007f63deff9baa:   mov    $0x7,%rax
          ││  0x00007f63deff9bb1:   and    (%r11),%rax
   0.32%  ││  0x00007f63deff9bb4:   cmp    $0x5,%rax
          ││  0x00007f63deff9bb8:   jne    0x00007f63deff9d80           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 108)
   0.65%  ││  0x00007f63deff9bbe:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 110)
   1.23%  ││  0x00007f63deff9bc0:   mov    0x50(%rsp),%rbp
          ││  0x00007f63deff9bc5:   add    $0x58,%rsp
          ││  0x00007f63deff9bc9:   mov    0x348(%r15),%rcx
   0.58%  ││  0x00007f63deff9bd0:   test   %eax,(%rcx)                  ;   {poll_return}
   4.59%  ││  0x00007f63deff9bd2:   vzeroupper 
   1.83%  ││  0x00007f63deff9bd5:   ret    
          ↘│  0x00007f63deff9bd6:   lea    0x38(%rsp),%r10
           │  0x00007f63deff9bdb:   mov    (%r10),%rsi
           │  0x00007f63deff9bde:   xchg   %ax,%ax
           │  0x00007f63deff9be0:   test   %rsi,%rsi
           ╰  0x00007f63deff9be3:   je     0x00007f63deff9b2a
              0x00007f63deff9be9:   mov    (%r11),%r8
              0x00007f63deff9bec:   test   $0x2,%r8
              0x00007f63deff9bf3:   jne    0x00007f63deffa339
              0x00007f63deff9bf9:   mov    %r10,%rax
              0x00007f63deff9bfc:   lock cmpxchg %rsi,(%r11)
....................................................................................................
  74.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 753 

              0x00007f63df0009f5:   mov    0x18(%rsp),%rsi
              0x00007f63df0009fa:   nopw   0x0(%rax,%rax,1)
              0x00007f63df000a00:   cmpb   $0x0,0x94(%rsi)
              0x00007f63df000a07:   jne    0x00007f63df000a8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007f63df000a0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f63df000a16:   jmp    0x00007f63df000a2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          │   0x00007f63df000a1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
   1.84%  │↗  0x00007f63df000a20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
          ││  0x00007f63df000a27:   test   %eax,(%r11)                  ;   {poll}
   0.87%  ││  0x00007f63df000a2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f63df000a2f:   mov    0x8(%rsp),%r10
   0.87%   │  0x00007f63df000a34:   mov    %r10,%rsi
           │  0x00007f63df000a37:   call   0x00007f63d74ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f63df000a3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 232)
           │  0x00007f63df000a3d:   mov    0x20(%rsp),%r10
  10.45%   │  0x00007f63df000a42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 233)
   1.85%   │  0x00007f63df000a45:   mov    0x18(%rsp),%rsi
           │  0x00007f63df000a4a:   cmpb   $0x0,0x94(%rsi)
   7.42%   ╰  0x00007f63df000a51:   je     0x00007f63df000a20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007f63df000a53:   mov    %r10,0x20(%rsp)
              0x00007f63df000a58:   call   0x00007f63f64c16f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f63df000a5d:   nop
              0x00007f63df000a5e:   mov    0x10(%rsp),%rdx
              0x00007f63df000a63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 235)
              0x00007f63df000a67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 236)
              0x00007f63df000a6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  23.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 726 
  23.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 753 
   0.61%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.76%  <...other 249 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 726 
  23.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 753 
   1.69%               kernel  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  G1ServiceThread::sleep_before_next_cycle 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  os::vsnprintf 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  PerfLongVariant::sample 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.69%               kernel
   0.10%            libjvm.so
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 33.507 ns/op
# Warmup Iteration   2: 33.408 ns/op
# Warmup Iteration   3: 32.726 ns/op
# Warmup Iteration   4: 32.613 ns/op
# Warmup Iteration   5: 33.041 ns/op
Iteration   1: 33.345 ns/op
Iteration   2: 33.092 ns/op
Iteration   3: 33.185 ns/op
Iteration   4: 33.399 ns/op
Iteration   5: 33.424 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls":
  33.289 ±(99.9%) 0.554 ns/op [Average]
  (min, avg, max) = (33.092, 33.289, 33.424), stdev = 0.144
  CI (99.9%): [32.735, 33.843] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 193629 total address lines.
Perf output processed (skipped 58.524 seconds):
 Column 1: cycles (50520 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 729 

              #           [sp+0x70]  (sp of caller)
              0x00007f72aeffb660:   mov    0x8(%rsi),%r10d
              0x00007f72aeffb664:   movabs $0x800000000,%r12
              0x00007f72aeffb66e:   add    %r12,%r10
              0x00007f72aeffb671:   xor    %r12,%r12
              0x00007f72aeffb674:   cmp    %r10,%rax
              0x00007f72aeffb677:   jne    0x00007f72a74ff780           ;   {runtime_call ic_miss_stub}
              0x00007f72aeffb67d:   nop
              0x00007f72aeffb67e:   xchg   %ax,%ax
            [Verified Entry Point]
   1.89%   ↗  0x00007f72aeffb680:   mov    %eax,-0x14000(%rsp)
   0.93%   │  0x00007f72aeffb687:   sub    $0x68,%rsp
   1.25%   │  0x00007f72aeffb68b:   mov    %rbp,0x60(%rsp)
   0.73%   │  0x00007f72aeffb690:   mov    %edx,%r11d
   0.10%   │  0x00007f72aeffb693:   mov    (%rsi),%r10
   0.51%   │  0x00007f72aeffb696:   lea    0x50(%rsp),%r8
   1.20%   │  0x00007f72aeffb69b:   mov    0x8(%rsi),%edx
   0.55%   │  0x00007f72aeffb69e:   movabs $0x800000000,%r9
   0.10%   │  0x00007f72aeffb6a8:   lea    (%r9,%rdx,1),%rbx
   0.47%   │  0x00007f72aeffb6ac:   mov    0xb8(%rbx),%r9
   2.75%   │  0x00007f72aeffb6b3:   mov    %r15,%rdi
   0.54%   │  0x00007f72aeffb6b6:   or     %r9,%rdi
   0.62%   │  0x00007f72aeffb6b9:   mov    %rdi,%rdx
   0.47%   │  0x00007f72aeffb6bc:   xor    %r10,%rdx
   1.63%   │  0x00007f72aeffb6bf:   nop
   0.30%   │  0x00007f72aeffb6c0:   test   $0xffffffffffffff87,%rdx
           │  0x00007f72aeffb6c7:   jne    0x00007f72aeffbbc0           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
   1.12%   │  0x00007f72aeffb6cd:   test   %ecx,%ecx
          ╭│  0x00007f72aeffb6cf:   je     0x00007f72aeffb91c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
   0.14%  ││  0x00007f72aeffb6d5:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.62%  ││  0x00007f72aeffb6d8:   mov    0x14(%rsi),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
   0.26%  ││  0x00007f72aeffb6dc:   lea    0x48(%rsp),%r9
   1.10%  ││  0x00007f72aeffb6e1:   mov    0xb8(%rbx),%rdi
   0.17%  ││  0x00007f72aeffb6e8:   mov    %r15,%rdx
   0.67%  ││  0x00007f72aeffb6eb:   or     %rdi,%rdx
   0.29%  ││  0x00007f72aeffb6ee:   mov    %rdx,%rax
   1.11%  ││  0x00007f72aeffb6f1:   xor    %r10,%rax
   0.15%  ││  0x00007f72aeffb6f4:   nopl   0x0(%rax,%rax,1)
   0.65%  ││  0x00007f72aeffb6fc:   data16 data16 xchg %ax,%ax
   0.25%  ││  0x00007f72aeffb700:   test   $0xffffffffffffff87,%rax
          ││  0x00007f72aeffb707:   jne    0x00007f72aeffbc45           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.17%  ││  0x00007f72aeffb70d:   cmp    $0x1,%ecx
          ││  0x00007f72aeffb710:   je     0x00007f72aeffb94c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.13%  ││  0x00007f72aeffb716:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.69%  ││  0x00007f72aeffb719:   mov    0x14(%rsi),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.28%  ││  0x00007f72aeffb71d:   lea    0x30(%rsp),%rdi
   1.15%  ││  0x00007f72aeffb722:   mov    0xb8(%rbx),%rdx
   0.13%  ││  0x00007f72aeffb729:   mov    %r15,%rbp
   0.68%  ││  0x00007f72aeffb72c:   or     %rdx,%rbp
   0.31%  ││  0x00007f72aeffb72f:   mov    %rbp,%rax
   1.16%  ││  0x00007f72aeffb732:   xor    %r10,%rax
   0.18%  ││  0x00007f72aeffb735:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.65%  ││  0x00007f72aeffb740:   test   $0xffffffffffffff87,%rax
          ││  0x00007f72aeffb747:   jne    0x00007f72aeffbcd3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.35%  ││  0x00007f72aeffb74d:   cmp    $0x2,%ecx
          ││  0x00007f72aeffb750:   je     0x00007f72aeffb9ac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.06%  ││  0x00007f72aeffb756:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb759:   mov    0x14(%rsi),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb75c:   lea    0x40(%rsp),%rdx
   0.05%  ││  0x00007f72aeffb761:   mov    0xb8(%rbx),%rbp
   1.09%  ││  0x00007f72aeffb768:   mov    %r15,%r13
          ││  0x00007f72aeffb76b:   or     %rbp,%r13
          ││  0x00007f72aeffb76e:   mov    %r13,%rax
   0.06%  ││  0x00007f72aeffb771:   xor    %r10,%rax
   1.04%  ││  0x00007f72aeffb774:   nopl   0x0(%rax,%rax,1)
          ││  0x00007f72aeffb77c:   data16 data16 xchg %ax,%ax
          ││  0x00007f72aeffb780:   test   $0xffffffffffffff87,%rax
          ││  0x00007f72aeffb787:   jne    0x00007f72aeffbd6f           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.08%  ││  0x00007f72aeffb78d:   cmp    $0x3,%ecx
          ││  0x00007f72aeffb790:   je     0x00007f72aeffba0c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.12%  ││  0x00007f72aeffb796:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb799:   mov    0x14(%rsi),%eax              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb79c:   lea    0x38(%rsp),%rdx
   0.05%  ││  0x00007f72aeffb7a1:   mov    0xb8(%rbx),%rbp
   1.19%  ││  0x00007f72aeffb7a8:   mov    %r15,%r13
          ││  0x00007f72aeffb7ab:   or     %rbp,%r13
          ││  0x00007f72aeffb7ae:   mov    %r13,%r14
   0.06%  ││  0x00007f72aeffb7b1:   xor    %r10,%r14
   1.09%  ││  0x00007f72aeffb7b4:   nopl   0x0(%rax,%rax,1)
          ││  0x00007f72aeffb7bc:   data16 data16 xchg %ax,%ax
          ││  0x00007f72aeffb7c0:   test   $0xffffffffffffff87,%r14
          ││  0x00007f72aeffb7c7:   jne    0x00007f72aeffbe0f           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.06%  ││  0x00007f72aeffb7cd:   cmp    $0x4,%ecx
          ││  0x00007f72aeffb7d0:   je     0x00007f72aeffba6d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.00%  ││  0x00007f72aeffb7d6:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb7d9:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb7dc:   lea    0x28(%rsp),%rdx
   0.05%  ││  0x00007f72aeffb7e1:   mov    0xb8(%rbx),%rbx
   1.13%  ││  0x00007f72aeffb7e8:   mov    %r15,%r13
          ││  0x00007f72aeffb7eb:   or     %rbx,%r13
          ││  0x00007f72aeffb7ee:   mov    %r13,%r14
   0.06%  ││  0x00007f72aeffb7f1:   xor    %r10,%r14
   1.05%  ││  0x00007f72aeffb7f4:   nopl   0x0(%rax,%rax,1)
          ││  0x00007f72aeffb7fc:   data16 data16 xchg %ax,%ax
          ││  0x00007f72aeffb800:   test   $0xffffffffffffff87,%r14
          ││  0x00007f72aeffb807:   jne    0x00007f72aeffbeae           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.07%  ││  0x00007f72aeffb80d:   cmp    $0x5,%ecx
          ││  0x00007f72aeffb810:   je     0x00007f72aeffbad2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.06%  ││  0x00007f72aeffb816:   mov    %ebp,0x14(%rsp)
   0.13%  ││  0x00007f72aeffb81a:   mov    %eax,0x18(%rsp)
          ││  0x00007f72aeffb81e:   mov    %edi,0x1c(%rsp)
   0.07%  ││  0x00007f72aeffb822:   mov    %r9d,0x20(%rsp)
   1.10%  ││  0x00007f72aeffb827:   mov    %r8d,0x24(%rsp)
   0.01%  ││  0x00007f72aeffb82c:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││  0x00007f72aeffb830:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.07%  ││  0x00007f72aeffb833:   mov    %rsi,%rbx
   1.03%  ││  0x00007f72aeffb836:   mov    %r11d,%edx                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.00%  ││  0x00007f72aeffb839:   mov    %r10d,0x10(%rsp)
   0.01%  ││  0x00007f72aeffb83e:   mov    %rbx,0x8(%rsp)
   0.09%  │╰  0x00007f72aeffb843:   call   0x00007f72aeffb680           ; ImmutableOopMap {[8]=Oop }
          │                                                             ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ;   {optimized virtual_call}
   1.84%  │   0x00007f72aeffb848:   nop
   0.05%  │   0x00007f72aeffb849:   mov    $0x7,%rsi
   0.01%  │   0x00007f72aeffb850:   mov    0x8(%rsp),%r14
   1.86%  │   0x00007f72aeffb855:   and    (%r14),%rsi                  ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.89%  │   0x00007f72aeffb858:   mov    %eax,%r11d
          │   0x00007f72aeffb85b:   add    0x10(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │   0x00007f72aeffb860:   cmp    $0x5,%rsi
          │   0x00007f72aeffb864:   jne    0x00007f72aeffbb40
   1.22%  │   0x00007f72aeffb86a:   mov    %r14,%rsi                    ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │   0x00007f72aeffb86d:   mov    $0x7,%rax
          │   0x00007f72aeffb874:   and    (%rsi),%rax                  ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.74%  │   0x00007f72aeffb877:   add    0x14(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.39%  │   0x00007f72aeffb87c:   nopl   0x0(%rax)
          │   0x00007f72aeffb880:   cmp    $0x5,%rax
          │   0x00007f72aeffb884:   jne    0x00007f72aeffbb07           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.74%  │   0x00007f72aeffb88a:   mov    $0x7,%rax
   0.00%  │   0x00007f72aeffb891:   and    (%rsi),%rax                  ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.52%  │   0x00007f72aeffb894:   add    0x18(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │   0x00007f72aeffb899:   nopl   0x0(%rax)
   0.70%  │   0x00007f72aeffb8a0:   cmp    $0x5,%rax
          │   0x00007f72aeffb8a4:   jne    0x00007f72aeffba9e           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.12%  │   0x00007f72aeffb8aa:   mov    $0x7,%rax
   0.40%  │   0x00007f72aeffb8b1:   and    (%rsi),%rax                  ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.07%  │   0x00007f72aeffb8b4:   add    0x1c(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.60%  │   0x00007f72aeffb8b9:   nopl   0x0(%rax)
   0.15%  │   0x00007f72aeffb8c0:   cmp    $0x5,%rax
          │   0x00007f72aeffb8c4:   jne    0x00007f72aeffba39           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.56%  │   0x00007f72aeffb8ca:   mov    $0x7,%rax
   0.15%  │   0x00007f72aeffb8d1:   and    (%rsi),%rax                  ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   1.37%  │   0x00007f72aeffb8d4:   add    0x20(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.30%  │   0x00007f72aeffb8d9:   nopl   0x0(%rax)
   0.52%  │   0x00007f72aeffb8e0:   cmp    $0x5,%rax
          │   0x00007f72aeffb8e4:   jne    0x00007f72aeffb9d5           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.15%  │   0x00007f72aeffb8ea:   mov    $0x7,%rax
   1.28%  │   0x00007f72aeffb8f1:   and    (%rsi),%rax
   0.26%  │   0x00007f72aeffb8f4:   cmp    $0x5,%rax
          │   0x00007f72aeffb8f8:   jne    0x00007f72aeffb972           ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
   0.87%  │   0x00007f72aeffb8fe:   add    0x24(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
   0.16%  │   0x00007f72aeffb903:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 233)
   0.93%  │   0x00007f72aeffb906:   mov    0x60(%rsp),%rbp
   0.31%  │   0x00007f72aeffb90b:   add    $0x68,%rsp
   0.81%  │   0x00007f72aeffb90f:   mov    0x348(%r15),%rcx
   0.16%  │   0x00007f72aeffb916:   test   %eax,(%rcx)                  ;   {poll_return}
   2.32%  │   0x00007f72aeffb918:   vzeroupper 
   2.34%  │   0x00007f72aeffb91b:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ↘   0x00007f72aeffb91c:   mov    %rsi,%r14
              0x00007f72aeffb91f:   mov    $0x7,%rax
              0x00007f72aeffb926:   and    (%r14),%rax
              0x00007f72aeffb929:   cmp    $0x5,%rax
              0x00007f72aeffb92d:   jne    0x00007f72aeffbb85           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
              0x00007f72aeffb933:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum@5 (line 231)
              0x00007f72aeffb936:   mov    0x60(%rsp),%rbp
....................................................................................................
  65.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 730 

             #           [sp+0x20]  (sp of caller)
             0x00007f72aeffdfa0:   mov    0x8(%rsi),%r10d
             0x00007f72aeffdfa4:   movabs $0x800000000,%r12
             0x00007f72aeffdfae:   add    %r12,%r10
             0x00007f72aeffdfb1:   xor    %r12,%r12
             0x00007f72aeffdfb4:   cmp    %r10,%rax
             0x00007f72aeffdfb7:   jne    0x00007f72a74ff780           ;   {runtime_call ic_miss_stub}
             0x00007f72aeffdfbd:   nop
             0x00007f72aeffdfbe:   xchg   %ax,%ax
           [Verified Entry Point]
   0.21%     0x00007f72aeffdfc0:   mov    %eax,-0x14000(%rsp)
   2.08%     0x00007f72aeffdfc7:   sub    $0x18,%rsp
   0.23%     0x00007f72aeffdfcb:   mov    %rbp,0x10(%rsp)
   1.31%     0x00007f72aeffdfd0:   mov    0x10(%rsi),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@1 (line 116)
   0.42%     0x00007f72aeffdfd3:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 116)
   0.27%     0x00007f72aeffdfd5:   mov    $0x8,%ecx                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.10%     0x00007f72aeffdfda:   nop
   0.26%     0x00007f72aeffdfdb:   call   0x00007f72aeffb680           ; ImmutableOopMap {}
                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
                                                                       ;   {optimized virtual_call}
   0.02%     0x00007f72aeffdfe0:   nop
   0.31%     0x00007f72aeffdfe1:   mov    0x10(%rsp),%rbp
   4.88%     0x00007f72aeffdfe6:   add    $0x18,%rsp
             0x00007f72aeffdfea:   mov    0x348(%r15),%rcx
   0.05%     0x00007f72aeffdff1:   test   %eax,(%rcx)                  ;   {poll_return}
   5.66%     0x00007f72aeffdff3:   ret    
           [Exception Handler]
             0x00007f72aeffdff4:   call   0x00007f72a764a400           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
             0x00007f72aeffdff9:   nop
           [Deopt Handler Code]
             0x00007f72aeffdffa:   call   0x00007f72a7505020           ;   {runtime_call DeoptimizationBlob}
             0x00007f72aeffdfff:   nop
           [Stub Code]
             0x00007f72aeffe000:   movabs $0x0,%rbx                    ;   {no_reloc}
          ╰  0x00007f72aeffe00a:   jmp    0x00007f72aeffe00a           ;   {runtime_call}
             0x00007f72aeffe00f:   hlt    
....................................................................................................
  15.80%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 749 

              0x00007f72af002275:   mov    0x18(%rsp),%rsi
              0x00007f72af00227a:   nopw   0x0(%rax,%rax,1)
              0x00007f72af002280:   cmpb   $0x0,0x94(%rsi)
              0x00007f72af002287:   jne    0x00007f72af00230e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f72af00228d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f72af002296:   jmp    0x00007f72af0022af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f72af00229b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   1.18%  │↗  0x00007f72af0022a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f72af0022a7:   test   %eax,(%r11)                  ;   {poll}
   0.22%  ││  0x00007f72af0022aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f72af0022af:   mov    0x8(%rsp),%r10
   0.89%   │  0x00007f72af0022b4:   mov    %r10,%rsi
           │  0x00007f72af0022b7:   call   0x00007f72a74ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f72af0022bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f72af0022bd:   mov    0x20(%rsp),%r10
   7.43%   │  0x00007f72af0022c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 233)
   1.13%   │  0x00007f72af0022c5:   mov    0x18(%rsp),%rsi
           │  0x00007f72af0022ca:   cmpb   $0x0,0x94(%rsi)
   4.52%   ╰  0x00007f72af0022d1:   je     0x00007f72af0022a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f72af0022d3:   mov    %r10,0x20(%rsp)
              0x00007f72af0022d8:   call   0x00007f72c60636f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f72af0022dd:   nop
              0x00007f72af0022de:   mov    0x10(%rsp),%rdx
              0x00007f72af0022e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f72af0022e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f72af0022ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.37%  <total for region 3>

....[Hottest Regions]...............................................................................
  65.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 729 
  15.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 730 
  15.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 749 
   2.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 729 
   0.30%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.72%  <...other 253 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 729 
  15.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 730 
  15.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 749 
   1.15%               kernel  [unknown] 
   0.09%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.13%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.50%       jvmci, level 4
   1.15%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.09%                     
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%               [vdso]
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
LockCoarseningBenchmark.baseline                              avgt    5   9.051 ± 0.185  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt          NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5   9.096 ± 0.266  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt          NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5  11.136 ± 0.194  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt          NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5  11.279 ± 0.217  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt          NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  20.261 ± 0.122  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt          NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5  33.289 ± 0.554  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt          NaN            ---
