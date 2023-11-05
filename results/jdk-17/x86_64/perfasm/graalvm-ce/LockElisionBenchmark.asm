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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.608 ns/op
# Warmup Iteration   2: 6.581 ns/op
# Warmup Iteration   3: 6.618 ns/op
# Warmup Iteration   4: 6.606 ns/op
# Warmup Iteration   5: 6.591 ns/op
Iteration   1: 6.576 ns/op
Iteration   2: 6.617 ns/op
Iteration   3: 6.579 ns/op
Iteration   4: 6.584 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  6.586 ±(99.9%) 0.068 ns/op [Average]
  (min, avg, max) = (6.575, 6.586, 6.617), stdev = 0.018
  CI (99.9%): [6.518, 6.655] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:·asm":
PrintAssembly processed: 194059 total address lines.
Perf output processed (skipped 58.740 seconds):
 Column 1: cycles (50936 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 732 

            #           [sp+0x10]  (sp of caller)
            0x00007f1226ff9d80:   mov    0x8(%rsi),%r10d
            0x00007f1226ff9d84:   movabs $0x800000000,%r12
            0x00007f1226ff9d8e:   add    %r12,%r10
            0x00007f1226ff9d91:   xor    %r12,%r12
            0x00007f1226ff9d94:   cmp    %r10,%rax
            0x00007f1226ff9d97:   jne    0x00007f121f4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f1226ff9d9d:   nop
            0x00007f1226ff9d9e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.59%    0x00007f1226ff9da0:   nopl   0x0(%rax,%rax,1)
   1.17%    0x00007f1226ff9da5:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 203)
            0x00007f1226ff9da8:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 205)
   4.69%    0x00007f1226ff9dac:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 203)
            0x00007f1226ff9dae:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@12 (line 205)
   1.20%    0x00007f1226ff9db1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@19 (line 206)
   4.46%    0x00007f1226ff9db4:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@26 (line 207)
  18.15%    0x00007f1226ff9db7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@33 (line 208)
            0x00007f1226ff9dba:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@40 (line 209)
   1.38%    0x00007f1226ff9dbd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@47 (line 210)
            0x00007f1226ff9dc0:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@54 (line 211)
   9.10%    0x00007f1226ff9dc3:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 212)
            0x00007f1226ff9dc6:   mov    0x348(%r15),%rcx
   1.18%    0x00007f1226ff9dcd:   test   %eax,(%rcx)                  ;   {poll_return}
   4.47%    0x00007f1226ff9dcf:   ret    
          [Exception Handler]
            0x00007f1226ff9dd0:   call   0x00007f121f64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f1226ff9dd5:   nop
          [Deopt Handler Code]
            0x00007f1226ff9dd6:   call   0x00007f121f505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f1226ff9ddb:   nop
          [Stub Code]
            0x00007f1226ff9ddc:   hlt    
            0x00007f1226ff9ddd:   hlt    
            0x00007f1226ff9dde:   hlt    
....................................................................................................
  50.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 757 

              0x00007f1227000475:   mov    0x18(%rsp),%rsi
              0x00007f122700047a:   nopw   0x0(%rax,%rax,1)
              0x00007f1227000480:   cmpb   $0x0,0x94(%rsi)
              0x00007f1227000487:   jne    0x00007f122700050e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007f122700048d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f1227000496:   jmp    0x00007f12270004af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          │   0x00007f122700049b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
   5.92%  │↗  0x00007f12270004a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          ││  0x00007f12270004a7:   test   %eax,(%r11)                  ;   {poll}
   4.54%  ││  0x00007f12270004aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f12270004af:   mov    0x8(%rsp),%r10
   1.12%   │  0x00007f12270004b4:   mov    %r10,%rsi
           │  0x00007f12270004b7:   call   0x00007f121f4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f12270004bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 232)
           │  0x00007f12270004bd:   mov    0x20(%rsp),%r10
   1.30%   │  0x00007f12270004c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 233)
   4.54%   │  0x00007f12270004c5:   mov    0x18(%rsp),%rsi
   0.03%   │  0x00007f12270004ca:   cmpb   $0x0,0x94(%rsi)
  29.42%   ╰  0x00007f12270004d1:   je     0x00007f12270004a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
              0x00007f12270004d3:   mov    %r10,0x20(%rsp)
              0x00007f12270004d8:   call   0x00007f123f7ac6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f12270004dd:   nop
              0x00007f12270004de:   mov    0x10(%rsp),%rdx
              0x00007f12270004e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 235)
              0x00007f12270004e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 236)
              0x00007f12270004ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  46.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 732 
  46.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 757 
   0.87%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   1.19%  <...other 380 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 732 
  46.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 757 
   2.36%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  os::javaTimeNanos 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.14%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.25%       jvmci, level 4
   2.36%               kernel
   0.15%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.04%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%               [vdso]
   0.01%           ld-2.31.so
   0.00%       hsdis-amd64.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.627 ns/op
# Warmup Iteration   2: 6.582 ns/op
# Warmup Iteration   3: 6.620 ns/op
# Warmup Iteration   4: 6.586 ns/op
# Warmup Iteration   5: 6.579 ns/op
Iteration   1: 6.581 ns/op
Iteration   2: 6.580 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.578 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  6.578 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (6.575, 6.578, 6.581), stdev = 0.003
  CI (99.9%): [6.566, 6.589] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 194268 total address lines.
Perf output processed (skipped 58.565 seconds):
 Column 1: cycles (50589 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 733 

            #           [sp+0x10]  (sp of caller)
            0x00007f34b2ffa780:   mov    0x8(%rsi),%r10d
            0x00007f34b2ffa784:   movabs $0x800000000,%r12
            0x00007f34b2ffa78e:   add    %r12,%r10
            0x00007f34b2ffa791:   xor    %r12,%r12
            0x00007f34b2ffa794:   cmp    %r10,%rax
            0x00007f34b2ffa797:   jne    0x00007f34ab4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f34b2ffa79d:   nop
            0x00007f34b2ffa79e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.74%    0x00007f34b2ffa7a0:   nopl   0x0(%rax,%rax,1)
            0x00007f34b2ffa7a5:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 118)
            0x00007f34b2ffa7a8:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 120)
   5.77%    0x00007f34b2ffa7ac:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 118)
            0x00007f34b2ffa7ae:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 120)
            0x00007f34b2ffa7b1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@15 (line 121)
   5.67%    0x00007f34b2ffa7b4:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@21 (line 122)
  23.36%    0x00007f34b2ffa7b7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@27 (line 123)
            0x00007f34b2ffa7ba:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@33 (line 124)
   0.05%    0x00007f34b2ffa7bd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@39 (line 125)
            0x00007f34b2ffa7c0:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@45 (line 126)
  11.36%    0x00007f34b2ffa7c3:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 127)
            0x00007f34b2ffa7c6:   mov    0x348(%r15),%rcx
   0.01%    0x00007f34b2ffa7cd:   test   %eax,(%rcx)                  ;   {poll_return}
   5.89%    0x00007f34b2ffa7cf:   ret    
          [Exception Handler]
            0x00007f34b2ffa7d0:   call   0x00007f34ab64b100           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f34b2ffa7d5:   nop
          [Deopt Handler Code]
            0x00007f34b2ffa7d6:   call   0x00007f34ab505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f34b2ffa7db:   nop
          [Stub Code]
            0x00007f34b2ffa7dc:   hlt    
            0x00007f34b2ffa7dd:   hlt    
            0x00007f34b2ffa7de:   hlt    
....................................................................................................
  57.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 759 

              0x00007f34b2ffecf5:   mov    0x18(%rsp),%rsi
              0x00007f34b2ffecfa:   nopw   0x0(%rax,%rax,1)
              0x00007f34b2ffed00:   cmpb   $0x0,0x94(%rsi)
              0x00007f34b2ffed07:   jne    0x00007f34b2ffed8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f34b2ffed0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f34b2ffed16:   jmp    0x00007f34b2ffed2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f34b2ffed1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
   5.88%  │↗  0x00007f34b2ffed20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f34b2ffed27:   test   %eax,(%r11)                  ;   {poll}
   5.65%  ││  0x00007f34b2ffed2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f34b2ffed2f:   mov    0x8(%rsp),%r10
           │  0x00007f34b2ffed34:   mov    %r10,%rsi
           │  0x00007f34b2ffed37:   call   0x00007f34ab4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007f34b2ffed3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f34b2ffed3d:   mov    0x20(%rsp),%r10
   0.03%   │  0x00007f34b2ffed42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 233)
   5.88%   │  0x00007f34b2ffed45:   mov    0x18(%rsp),%rsi
           │  0x00007f34b2ffed4a:   cmpb   $0x0,0x94(%rsi)
  23.08%   ╰  0x00007f34b2ffed51:   je     0x00007f34b2ffed20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f34b2ffed53:   mov    %r10,0x20(%rsp)
              0x00007f34b2ffed58:   call   0x00007f34cb4606f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f34b2ffed5d:   nop
              0x00007f34b2ffed5e:   mov    0x10(%rsp),%rdx
              0x00007f34b2ffed63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f34b2ffed67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f34b2ffed6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  40.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 733 
  40.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 759 
   0.21%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  re_search_stub 
   0.86%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 733 
  40.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 759 
   1.21%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  malloc 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  stringStream::write 
   0.21%  <...other 92 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%       jvmci, level 4
   1.21%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.05%                     
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.00%       perf-29411.map
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.689 ns/op
# Warmup Iteration   2: 8.625 ns/op
# Warmup Iteration   3: 8.889 ns/op
# Warmup Iteration   4: 8.855 ns/op
# Warmup Iteration   5: 8.744 ns/op
Iteration   1: 8.739 ns/op
Iteration   2: 8.750 ns/op
Iteration   3: 8.757 ns/op
Iteration   4: 8.761 ns/op
Iteration   5: 8.753 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  8.752 ±(99.9%) 0.033 ns/op [Average]
  (min, avg, max) = (8.739, 8.752, 8.761), stdev = 0.009
  CI (99.9%): [8.719, 8.785] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 195247 total address lines.
Perf output processed (skipped 58.598 seconds):
 Column 1: cycles (51414 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 760 

              0x00007fdc77000375:   mov    0x18(%rsp),%rsi
              0x00007fdc7700037a:   nopw   0x0(%rax,%rax,1)
              0x00007fdc77000380:   cmpb   $0x0,0x94(%rsi)
              0x00007fdc77000387:   jne    0x00007fdc7700040e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fdc7700038d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fdc77000396:   jmp    0x00007fdc770003af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fdc7700039b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   4.20%  │↗  0x00007fdc770003a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   0.11%  ││  0x00007fdc770003a7:   test   %eax,(%r11)                  ;   {poll}
   2.81%  ││  0x00007fdc770003aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fdc770003af:   mov    0x8(%rsp),%r10
   1.84%   │  0x00007fdc770003b4:   mov    %r10,%rsi
   0.12%   │  0x00007fdc770003b7:   call   0x00007fdc6f4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  18.96%   │  0x00007fdc770003bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fdc770003bd:   mov    0x20(%rsp),%r10
   3.45%   │  0x00007fdc770003c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 233)
   4.25%   │  0x00007fdc770003c5:   mov    0x18(%rsp),%rsi
           │  0x00007fdc770003ca:   cmpb   $0x0,0x94(%rsi)
  14.75%   ╰  0x00007fdc770003d1:   je     0x00007fdc770003a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fdc770003d3:   mov    %r10,0x20(%rsp)
              0x00007fdc770003d8:   call   0x00007fdc8ebd46f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fdc770003dd:   nop
              0x00007fdc770003de:   mov    0x10(%rsp),%rdx
              0x00007fdc770003e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fdc770003e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fdc770003ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  50.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 736 

             #           [sp+0x20]  (sp of caller)
             0x00007fdc76ffbd00:   mov    0x8(%rsi),%r10d
             0x00007fdc76ffbd04:   movabs $0x800000000,%r12
             0x00007fdc76ffbd0e:   add    %r12,%r10
             0x00007fdc76ffbd11:   xor    %r12,%r12
             0x00007fdc76ffbd14:   cmp    %r10,%rax
             0x00007fdc76ffbd17:   jne    0x00007fdc6f4ff780           ;   {runtime_call ic_miss_stub}
             0x00007fdc76ffbd1d:   nop
             0x00007fdc76ffbd1e:   xchg   %ax,%ax
           [Verified Entry Point]
   2.32%     0x00007fdc76ffbd20:   mov    %eax,-0x14000(%rsp)
   2.18%     0x00007fdc76ffbd27:   sub    $0x18,%rsp
   2.25%     0x00007fdc76ffbd2b:   mov    %rbp,0x10(%rsp)
   0.81%     0x00007fdc76ffbd30:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 135)
   0.70%     0x00007fdc76ffbd33:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 135)
   1.53%     0x00007fdc76ffbd35:   cmp    $0x21,%eax
          ╭  0x00007fdc76ffbd38:   jl     0x00007fdc76ffbdbf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
   3.80%  │  0x00007fdc76ffbd3e:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 139)
          │  0x00007fdc76ffbd42:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 139)
   0.75%  │  0x00007fdc76ffbd45:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd48:   jl     0x00007fdc76ffbe0b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 141)
   2.68%  │  0x00007fdc76ffbd4e:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 142)
   1.31%  │  0x00007fdc76ffbd51:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd54:   jl     0x00007fdc76ffbdde           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 144)
   4.91%  │  0x00007fdc76ffbd5a:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 145)
   0.56%  │  0x00007fdc76ffbd5d:   data16 xchg %ax,%ax
   0.44%  │  0x00007fdc76ffbd60:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd63:   jl     0x00007fdc76ffbe14           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 147)
   1.54%  │  0x00007fdc76ffbd69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 148)
   2.35%  │  0x00007fdc76ffbd6c:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd6f:   jl     0x00007fdc76ffbe02           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 150)
   1.91%  │  0x00007fdc76ffbd75:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 151)
   0.37%  │  0x00007fdc76ffbd78:   nopl   0x0(%rax,%rax,1)
   1.80%  │  0x00007fdc76ffbd80:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd83:   jl     0x00007fdc76ffbdf0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 153)
   3.29%  │  0x00007fdc76ffbd89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 154)
   0.93%  │  0x00007fdc76ffbd8c:   cmp    $0x21,%eax
          │  0x00007fdc76ffbd8f:   jl     0x00007fdc76ffbde7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 156)
   0.74%  │  0x00007fdc76ffbd95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 157)
   1.37%  │  0x00007fdc76ffbd98:   nopl   0x0(%rax,%rax,1)
   1.60%  │  0x00007fdc76ffbda0:   cmp    $0x21,%eax
          │  0x00007fdc76ffbda3:   jl     0x00007fdc76ffbdf9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 159)
   0.99%  │  0x00007fdc76ffbda9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 160)
   0.66%  │  0x00007fdc76ffbdac:   mov    0x10(%rsp),%rbp
   1.27%  │  0x00007fdc76ffbdb1:   add    $0x18,%rsp
   1.38%  │  0x00007fdc76ffbdb5:   mov    0x348(%r15),%rcx
   0.86%  │  0x00007fdc76ffbdbc:   test   %eax,(%rcx)                  ;   {poll_return}
   0.97%  │  0x00007fdc76ffbdbe:   ret    
          ↘  0x00007fdc76ffbdbf:   mov    $0x10,%r10
             0x00007fdc76ffbdc6:   movl   $0xffffffed,0x370(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 138)
             0x00007fdc76ffbdd1:   mov    %r10,0x378(%r15)
             0x00007fdc76ffbdd8:   call   0x00007fdc6f50527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 135)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fdc76ffbddd:   nop                                 ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 144)
....................................................................................................
  46.29%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 760 
  46.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 736 
   1.97%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%               kernel  [unknown] 
   0.75%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 760 
  46.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 736 
   2.91%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  G1Analytics::predict_card_merge_time_ms 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  decode_env::print_hook_comments 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.78%       jvmci, level 4
   2.91%               kernel
   0.15%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.820 ns/op
# Warmup Iteration   2: 8.708 ns/op
# Warmup Iteration   3: 8.933 ns/op
# Warmup Iteration   4: 8.734 ns/op
# Warmup Iteration   5: 8.754 ns/op
Iteration   1: 8.730 ns/op
Iteration   2: 8.721 ns/op
Iteration   3: 8.755 ns/op
Iteration   4: 8.758 ns/op
Iteration   5: 8.765 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  8.746 ±(99.9%) 0.075 ns/op [Average]
  (min, avg, max) = (8.721, 8.746, 8.765), stdev = 0.019
  CI (99.9%): [8.671, 8.820] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 195521 total address lines.
Perf output processed (skipped 58.685 seconds):
 Column 1: cycles (50566 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 757 

              0x00007f390afffbf5:   mov    0x18(%rsp),%rsi
              0x00007f390afffbfa:   nopw   0x0(%rax,%rax,1)
              0x00007f390afffc00:   cmpb   $0x0,0x94(%rsi)
              0x00007f390afffc07:   jne    0x00007f390afffc8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f390afffc0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f390afffc16:   jmp    0x00007f390afffc2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007f390afffc1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
   4.25%  │↗  0x00007f390afffc20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f390afffc27:   test   %eax,(%r11)                  ;   {poll}
   3.77%  ││  0x00007f390afffc2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f390afffc2f:   mov    0x8(%rsp),%r10
   1.35%   │  0x00007f390afffc34:   mov    %r10,%rsi
           │  0x00007f390afffc37:   call   0x00007f39034ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  24.90%   │  0x00007f390afffc3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007f390afffc3d:   mov    0x20(%rsp),%r10
   0.55%   │  0x00007f390afffc42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 233)
   4.38%   │  0x00007f390afffc45:   mov    0x18(%rsp),%rsi
           │  0x00007f390afffc4a:   cmpb   $0x0,0x94(%rsi)
  15.47%   ╰  0x00007f390afffc51:   je     0x00007f390afffc20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
              0x00007f390afffc53:   mov    %r10,0x20(%rsp)
              0x00007f390afffc58:   call   0x00007f39245926f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f390afffc5d:   nop
              0x00007f390afffc5e:   mov    0x10(%rsp),%rdx
              0x00007f390afffc63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f390afffc67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 236)
              0x00007f390afffc6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 738 

                    #           [sp+0x20]  (sp of caller)
                    0x00007f390affd580:   mov    0x8(%rsi),%r10d
                    0x00007f390affd584:   movabs $0x800000000,%r12
                    0x00007f390affd58e:   add    %r12,%r10
                    0x00007f390affd591:   xor    %r12,%r12
                    0x00007f390affd594:   cmp    %r10,%rax
                    0x00007f390affd597:   jne    0x00007f39034ff780           ;   {runtime_call ic_miss_stub}
                    0x00007f390affd59d:   nop
                    0x00007f390affd59e:   xchg   %ax,%ax
                  [Verified Entry Point]
   2.99%            0x00007f390affd5a0:   mov    %eax,-0x14000(%rsp)
   1.48%            0x00007f390affd5a7:   sub    $0x18,%rsp
   2.89%            0x00007f390affd5ab:   mov    %rbp,0x10(%rsp)
   0.42%            0x00007f390affd5b0:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 169)
   0.87%            0x00007f390affd5b3:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 169)
   0.62%            0x00007f390affd5b5:   cmp    $0x21,%eax
          ╭         0x00007f390affd5b8:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
   3.64%  │         0x00007f390affd5be:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 220)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 173)
          │         0x00007f390affd5c2:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 173)
   0.78%  │         0x00007f390affd5c5:   cmp    $0x21,%eax
          │╭        0x00007f390affd5c8:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 174)
   1.62%  ││        0x00007f390affd5ce:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 175)
   2.26%  ││        0x00007f390affd5d1:   cmp    $0x21,%eax
          ││╭       0x00007f390affd5d4:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 176)
   2.90%  │││       0x00007f390affd5da:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 177)
   0.94%  │││       0x00007f390affd5dd:   data16 xchg %ax,%ax
   0.14%  │││       0x00007f390affd5e0:   cmp    $0x21,%eax
          │││╭      0x00007f390affd5e3:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 178)
   2.45%  ││││      0x00007f390affd5e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 179)
   1.42%  ││││      0x00007f390affd5ec:   cmp    $0x21,%eax
          ││││╭     0x00007f390affd5ef:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 180)
   1.93%  │││││     0x00007f390affd5f5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 181)
   0.08%  │││││     0x00007f390affd5f8:   nopl   0x0(%rax,%rax,1)
   3.24%  │││││     0x00007f390affd600:   cmp    $0x21,%eax
          │││││╭    0x00007f390affd603:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 182)
   2.55%  ││││││    0x00007f390affd609:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 183)
   0.94%  ││││││    0x00007f390affd60c:   cmp    $0x21,%eax
          ││││││╭   0x00007f390affd60f:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 184)
   0.13%  │││││││   0x00007f390affd615:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 185)
   2.22%  │││││││   0x00007f390affd618:   nopl   0x0(%rax,%rax,1)
   1.20%  │││││││   0x00007f390affd620:   cmp    $0x21,%eax
          │││││││╭  0x00007f390affd623:   jl     0x00007f390affd63f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 186)
   1.04%  ││││││││  0x00007f390affd629:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 220)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 187)
   0.19%  ││││││││  0x00007f390affd62c:   mov    0x10(%rsp),%rbp
   2.23%  ││││││││  0x00007f390affd631:   add    $0x18,%rsp
   1.15%  ││││││││  0x00007f390affd635:   mov    0x348(%r15),%rcx
   0.86%  ││││││││  0x00007f390affd63c:   test   %eax,(%rcx)                  ;   {poll_return}
   0.35%  ││││││││  0x00007f390affd63e:   ret    
          ↘↘↘↘↘↘↘↘  0x00007f390affd63f:   movl   $0xffffffed,0x370(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 172)
                    0x00007f390affd64a:   movq   $0x10,0x378(%r15)
                    0x00007f390affd655:   call   0x00007f390350527a           ; ImmutableOopMap {rsi=Oop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 169)
                                                                              ;   {runtime_call DeoptimizationBlob}
                    0x00007f390affd65a:   nop
                  [Exception Handler]
                    0x00007f390affd65b:   call   0x00007f390364b100           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  43.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 757 
  43.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 738 
   0.30%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.98%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 757 
  43.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 738 
   1.48%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.18%       jvmci, level 4
   1.48%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%       perf-29532.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.600 ns/op
# Warmup Iteration   2: 6.683 ns/op
# Warmup Iteration   3: 6.577 ns/op
# Warmup Iteration   4: 6.575 ns/op
# Warmup Iteration   5: 6.575 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.575 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  6.575 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.575, 6.575, 6.575), stdev = 0.001
  CI (99.9%): [6.574, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 193893 total address lines.
Perf output processed (skipped 58.650 seconds):
 Column 1: cycles (50643 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 740 

            #           [sp+0x10]  (sp of caller)
            0x00007fd106ffb480:   mov    0x8(%rsi),%r10d
            0x00007fd106ffb484:   movabs $0x800000000,%r12
            0x00007fd106ffb48e:   add    %r12,%r10
            0x00007fd106ffb491:   xor    %r12,%r12
            0x00007fd106ffb494:   cmp    %r10,%rax
            0x00007fd106ffb497:   jne    0x00007fd0ff4ff780           ;   {runtime_call ic_miss_stub}
            0x00007fd106ffb49d:   nop
            0x00007fd106ffb49e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.76%    0x00007fd106ffb4a0:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007fd106ffb4a5:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 75)
            0x00007fd106ffb4a8:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 80)
   5.81%    0x00007fd106ffb4ac:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 75)
            0x00007fd106ffb4ae:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@24 (line 80)
            0x00007fd106ffb4b1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@36 (line 82)
   5.69%    0x00007fd106ffb4b4:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@48 (line 84)
  23.14%    0x00007fd106ffb4b7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@60 (line 86)
            0x00007fd106ffb4ba:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@72 (line 88)
   0.01%    0x00007fd106ffb4bd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@84 (line 90)
            0x00007fd106ffb4c0:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@96 (line 92)
  11.53%    0x00007fd106ffb4c3:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 94)
   0.00%    0x00007fd106ffb4c6:   mov    0x348(%r15),%rcx
            0x00007fd106ffb4cd:   test   %eax,(%rcx)                  ;   {poll_return}
   5.83%    0x00007fd106ffb4cf:   ret    
          [Exception Handler]
            0x00007fd106ffb4d0:   call   0x00007fd0ff64ae00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fd106ffb4d5:   nop
          [Deopt Handler Code]
            0x00007fd106ffb4d6:   call   0x00007fd0ff505020           ;   {runtime_call DeoptimizationBlob}
            0x00007fd106ffb4db:   nop
          [Stub Code]
            0x00007fd106ffb4dc:   hlt    
            0x00007fd106ffb4dd:   hlt    
            0x00007fd106ffb4de:   hlt    
....................................................................................................
  57.77%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 759 

              0x00007fd106fffc75:   mov    0x18(%rsp),%rsi
              0x00007fd106fffc7a:   nopw   0x0(%rax,%rax,1)
              0x00007fd106fffc80:   cmpb   $0x0,0x94(%rsi)
              0x00007fd106fffc87:   jne    0x00007fd106fffd0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007fd106fffc8d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd106fffc96:   jmp    0x00007fd106fffcaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          │   0x00007fd106fffc9b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
   5.76%  │↗  0x00007fd106fffca0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
          ││  0x00007fd106fffca7:   test   %eax,(%r11)                  ;   {poll}
   5.80%  ││  0x00007fd106fffcaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fd106fffcaf:   mov    0x8(%rsp),%r10
           │  0x00007fd106fffcb4:   mov    %r10,%rsi
           │  0x00007fd106fffcb7:   call   0x00007fd0ff4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fd106fffcbc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 232)
           │  0x00007fd106fffcbd:   mov    0x20(%rsp),%r10
   0.00%   │  0x00007fd106fffcc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 233)
   5.90%   │  0x00007fd106fffcc5:   mov    0x18(%rsp),%rsi
           │  0x00007fd106fffcca:   cmpb   $0x0,0x94(%rsi)
  23.02%   ╰  0x00007fd106fffcd1:   je     0x00007fd106fffca0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 234)
              0x00007fd106fffcd3:   mov    %r10,0x20(%rsp)
              0x00007fd106fffcd8:   call   0x00007fd1205806f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd106fffcdd:   nop
              0x00007fd106fffcde:   mov    0x10(%rsp),%rdx
              0x00007fd106fffce3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 235)
              0x00007fd106fffce7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 236)
              0x00007fd106fffcef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  40.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 740 
  40.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 759 
   0.38%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
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
   0.78%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 740 
  40.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 759 
   1.41%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  event_to_env 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%            libjvm.so  os::elapsed_counter 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%       jvmci, level 4
   1.41%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.199 ns/op
# Warmup Iteration   2: 13.265 ns/op
# Warmup Iteration   3: 12.885 ns/op
# Warmup Iteration   4: 13.162 ns/op
# Warmup Iteration   5: 13.185 ns/op
Iteration   1: 13.250 ns/op
Iteration   2: 13.252 ns/op
Iteration   3: 13.174 ns/op
Iteration   4: 13.233 ns/op
Iteration   5: 13.209 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  13.224 ±(99.9%) 0.126 ns/op [Average]
  (min, avg, max) = (13.174, 13.224, 13.252), stdev = 0.033
  CI (99.9%): [13.098, 13.350] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 195180 total address lines.
Perf output processed (skipped 58.646 seconds):
 Column 1: cycles (50809 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 734 

             #           [sp+0x50]  (sp of caller)
             0x00007fed52ffc720:   mov    0x8(%rsi),%r10d
             0x00007fed52ffc724:   movabs $0x800000000,%r12
             0x00007fed52ffc72e:   add    %r12,%r10
             0x00007fed52ffc731:   xor    %r12,%r12
             0x00007fed52ffc734:   cmp    %r10,%rax
             0x00007fed52ffc737:   jne    0x00007fed4b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007fed52ffc73d:   nop
             0x00007fed52ffc73e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.92%     0x00007fed52ffc740:   mov    %eax,-0x14000(%rsp)
   7.03%     0x00007fed52ffc747:   sub    $0x48,%rsp
   0.57%     0x00007fed52ffc74b:   mov    %rbp,0x40(%rsp)
   3.64%     0x00007fed52ffc750:   mov    0x10(%rsi),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 110)
   0.35%     0x00007fed52ffc753:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   0.74%     0x00007fed52ffc757:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 110)
   0.43%     0x00007fed52ffc759:   mov    $0x2,%ecx                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   1.34%     0x00007fed52ffc75e:   mov    %r10d,0x4(%rsp)
   0.33%     0x00007fed52ffc763:   call   0x00007fed52ffc240           ; ImmutableOopMap {}
                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
                                                                       ;   {optimized virtual_call}
   6.81%     0x00007fed52ffc768:   nop
             0x00007fed52ffc769:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   6.81%     0x00007fed52ffc76d:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   2.68%     0x00007fed52ffc771:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   2.33%     0x00007fed52ffc775:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   2.32%     0x00007fed52ffc779:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   2.54%     0x00007fed52ffc77d:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 111)
   2.97%     0x00007fed52ffc781:   mov    0x40(%rsp),%rbp
             0x00007fed52ffc786:   add    $0x48,%rsp
             0x00007fed52ffc78a:   mov    0x348(%r15),%rcx
             0x00007fed52ffc791:   test   %eax,(%rcx)                  ;   {poll_return}
   4.17%     0x00007fed52ffc793:   ret    
           [Exception Handler]
             0x00007fed52ffc794:   call   0x00007fed4b64ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
             0x00007fed52ffc799:   nop
           [Deopt Handler Code]
             0x00007fed52ffc79a:   call   0x00007fed4b505020           ;   {runtime_call DeoptimizationBlob}
             0x00007fed52ffc79f:   nop
           [Stub Code]
             0x00007fed52ffc7a0:   movabs $0x0,%rbx                    ;   {no_reloc}
          ╰  0x00007fed52ffc7aa:   jmp    0x00007fed52ffc7aa           ;   {runtime_call}
             0x00007fed52ffc7af:   hlt    
....................................................................................................
  45.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 756 

              0x00007fed52ffeff5:   mov    0x18(%rsp),%rsi
              0x00007fed52ffeffa:   nopw   0x0(%rax,%rax,1)
              0x00007fed52fff000:   cmpb   $0x0,0x94(%rsi)
              0x00007fed52fff007:   jne    0x00007fed52fff08e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fed52fff00d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fed52fff016:   jmp    0x00007fed52fff02f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          │   0x00007fed52fff01b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
   2.74%  │↗  0x00007fed52fff020:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fed52fff027:   test   %eax,(%r11)                  ;   {poll}
   0.88%  ││  0x00007fed52fff02a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fed52fff02f:   mov    0x8(%rsp),%r10
   1.99%   │  0x00007fed52fff034:   mov    %r10,%rsi
           │  0x00007fed52fff037:   call   0x00007fed4b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fed52fff03c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 232)
           │  0x00007fed52fff03d:   mov    0x20(%rsp),%r10
   9.82%   │  0x00007fed52fff042:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 233)
   2.92%   │  0x00007fed52fff045:   mov    0x18(%rsp),%rsi
           │  0x00007fed52fff04a:   cmpb   $0x0,0x94(%rsi)
  11.63%   ╰  0x00007fed52fff051:   je     0x00007fed52fff020           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 234)
              0x00007fed52fff053:   mov    %r10,0x20(%rsp)
              0x00007fed52fff058:   call   0x00007fed6b6126f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fed52fff05d:   nop
              0x00007fed52fff05e:   mov    0x10(%rsp),%rdx
              0x00007fed52fff063:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 235)
              0x00007fed52fff067:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 236)
              0x00007fed52fff06f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  29.99%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 733 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
               0x00007fed52ffc2b5:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
            ↗  0x00007fed52ffc2b9:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
   1.52%   ↗│  0x00007fed52ffc2bd:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
   4.38%   ││  0x00007fed52ffc2c1:   mov    0x4(%rsp),%r10d
   0.43%  ↗││  0x00007fed52ffc2c6:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 230)
   2.40%  │││  0x00007fed52ffc2c9:   mov    0x40(%rsp),%rbp
   0.55%  │││  0x00007fed52ffc2ce:   add    $0x48,%rsp
          │││  0x00007fed52ffc2d2:   mov    0x348(%r15),%rcx
   0.01%  │││  0x00007fed52ffc2d9:   test   %eax,(%rcx)                  ;   {poll_return}
   2.18%  │││  0x00007fed52ffc2db:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 227)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 230)
          │││  0x00007fed52ffc2dc:   mov    %edx,%eax
          │││  0x00007fed52ffc2de:   mov    0x40(%rsp),%rbp
          │││  0x00007fed52ffc2e3:   add    $0x48,%rsp
          │││  0x00007fed52ffc2e7:   mov    0x348(%r15),%rcx
          │││  0x00007fed52ffc2ee:   test   %eax,(%rcx)                  ;   {poll_return}
          │││  0x00007fed52ffc2f0:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@21 (line 228)
          │││  0x00007fed52ffc2f1:   mov    %edx,%eax
          ╰││  0x00007fed52ffc2f3:   jmp    0x00007fed52ffc2c6
   0.97%   ││  0x00007fed52ffc2f5:   mov    %edx,%eax
   0.62%   ││  0x00007fed52ffc2f7:   mov    %r10d,0x4(%rsp)
   1.10%   ╰│  0x00007fed52ffc2fc:   jmp    0x00007fed52ffc2bd
            │  0x00007fed52ffc2fe:   mov    %edx,%eax
            │  0x00007fed52ffc300:   mov    %r10d,0x4(%rsp)
            ╰  0x00007fed52ffc305:   jmp    0x00007fed52ffc2b9
               0x00007fed52ffc307:   mov    %edx,%eax
               0x00007fed52ffc309:   mov    %r10d,0x4(%rsp)
               0x00007fed52ffc30e:   jmp    0x00007fed52ffc2b5
               0x00007fed52ffc310:   mov    %edx,%eax
               0x00007fed52ffc312:   mov    %r10d,0x4(%rsp)
               0x00007fed52ffc317:   jmp    0x00007fed52ffc2b1
             [Exception Handler]
....................................................................................................
  14.16%  <total for region 3>

....[Hottest Regions]...............................................................................
  45.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 734 
  29.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 756 
  14.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 733 
   7.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 733 
   0.68%               kernel  [unknown] 
   0.17%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.80%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 734 
  29.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 756 
  21.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 733 
   1.70%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  HighResTimeSampler::take_sample 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%       jvmci, level 4
   1.70%               kernel
   0.14%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:08

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

Benchmark                                                  Mode  Cnt   Score   Error  Units
LockElisionBenchmark.baseline                              avgt    5   6.586 ± 0.068  ns/op
LockElisionBenchmark.baseline:·asm                         avgt          NaN            ---
LockElisionBenchmark.chain_method_calls                    avgt    5   6.578 ± 0.011  ns/op
LockElisionBenchmark.chain_method_calls:·asm               avgt          NaN            ---
LockElisionBenchmark.conditional_chain_method_calls        avgt    5   8.752 ± 0.033  ns/op
LockElisionBenchmark.conditional_chain_method_calls:·asm   avgt          NaN            ---
LockElisionBenchmark.conditional_nested_method_calls       avgt    5   8.746 ± 0.075  ns/op
LockElisionBenchmark.conditional_nested_method_calls:·asm  avgt          NaN            ---
LockElisionBenchmark.nested_synchronized                   avgt    5   6.575 ± 0.001  ns/op
LockElisionBenchmark.nested_synchronized:·asm              avgt          NaN            ---
LockElisionBenchmark.recursive_method_calls                avgt    5  13.224 ± 0.126  ns/op
LockElisionBenchmark.recursive_method_calls:·asm           avgt          NaN            ---
