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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.657 ns/op
# Warmup Iteration   2: 6.590 ns/op
# Warmup Iteration   3: 6.632 ns/op
# Warmup Iteration   4: 6.576 ns/op
# Warmup Iteration   5: 6.577 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.576 ns/op
Iteration   3: 6.577 ns/op
Iteration   4: 6.575 ns/op
Iteration   5: 6.577 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.576 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (6.575, 6.576, 6.577), stdev = 0.001
  CI (99.9%): [6.573, 6.579] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:·asm":
PrintAssembly processed: 192991 total address lines.
Perf output processed (skipped 58.608 seconds):
 Column 1: cycles (50871 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 

              0x00007f562afffcf5:   mov    0x18(%rsp),%rsi
              0x00007f562afffcfa:   nopw   0x0(%rax,%rax,1)
              0x00007f562afffd00:   cmpb   $0x0,0x94(%rsi)
              0x00007f562afffd07:   jne    0x00007f562afffd8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007f562afffd0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f562afffd16:   jmp    0x00007f562afffd2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 190)
          │   0x00007f562afffd1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
   2.96%  │↗  0x00007f562afffd20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
   2.95%  ││  0x00007f562afffd27:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f562afffd2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f562afffd2f:   mov    0x8(%rsp),%r10
   2.90%   │  0x00007f562afffd34:   mov    %r10,%rsi
   2.87%   │  0x00007f562afffd37:   call   0x00007f56234ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  37.04%   │  0x00007f562afffd3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 190)
           │  0x00007f562afffd3d:   mov    0x20(%rsp),%r10
   0.01%   │  0x00007f562afffd42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 191)
   5.62%   │  0x00007f562afffd45:   mov    0x18(%rsp),%rsi
           │  0x00007f562afffd4a:   cmpb   $0x0,0x94(%rsi)
  11.67%   ╰  0x00007f562afffd51:   je     0x00007f562afffd20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007f562afffd53:   mov    %r10,0x20(%rsp)
              0x00007f562afffd58:   call   0x00007f56425d56f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f562afffd5d:   nop
              0x00007f562afffd5e:   mov    0x10(%rsp),%rdx
              0x00007f562afffd63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007f562afffd67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@46 (line 194)
              0x00007f562afffd6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  66.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 734 

             #           [sp+0x20]  (sp of caller)
             0x00007f562affac80:   mov    0x8(%rsi),%r10d
             0x00007f562affac84:   movabs $0x800000000,%r12
             0x00007f562affac8e:   add    %r12,%r10
             0x00007f562affac91:   xor    %r12,%r12
             0x00007f562affac94:   cmp    %r10,%rax
             0x00007f562affac97:   jne    0x00007f56234ff780           ;   {runtime_call ic_miss_stub}
             0x00007f562affac9d:   nop
             0x00007f562affac9e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.01%     0x00007f562affaca0:   mov    %eax,-0x14000(%rsp)
   5.85%     0x00007f562affaca7:   sub    $0x18,%rsp
   0.00%     0x00007f562affacab:   mov    %rbp,0x10(%rsp)
   2.88%     0x00007f562affacb0:   cmpl   $0x0,0x10(%rsi)
   2.98%  ╭  0x00007f562affacb4:   jl     0x00007f562affacd2           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
   5.52%  │  0x00007f562affacba:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 130)
   0.00%  │  0x00007f562affacbf:   mov    0x10(%rsp),%rbp
   2.91%  │  0x00007f562affacc4:   add    $0x18,%rsp
          │  0x00007f562affacc8:   mov    0x348(%r15),%rcx
   2.81%  │  0x00007f562affaccf:   test   %eax,(%rcx)                  ;   {poll_return}
   8.80%  │  0x00007f562affacd1:   ret    
          ↘  0x00007f562affacd2:   movl   $0xffffff8f,0x370(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
             0x00007f562affacdd:   movq   $0x0,0x378(%r15)
             0x00007f562afface8:   call   0x00007f562350527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 120)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f562affaced:   nop
           [Exception Handler]
....................................................................................................
  31.77%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 
  31.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 734 
   0.86%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.76%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 
  31.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 734 
   1.90%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  _nl_cleanup_time 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  os::elapsedTime 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  G1CollectionSet::iterate 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%       jvmci, level 4
   1.90%               kernel
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.05%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%           ld-2.31.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.010 ns/op
# Warmup Iteration   2: 6.967 ns/op
# Warmup Iteration   3: 7.018 ns/op
# Warmup Iteration   4: 6.963 ns/op
# Warmup Iteration   5: 6.964 ns/op
Iteration   1: 6.962 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.962 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.963 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  6.963 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.962, 6.963, 6.963), stdev = 0.001
  CI (99.9%): [6.960, 6.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:·asm":
PrintAssembly processed: 189889 total address lines.
Perf output processed (skipped 58.595 seconds):
 Column 1: cycles (50854 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 748 

              0x00007f7912ffe3f5:   mov    0x18(%rsp),%rsi
              0x00007f7912ffe3fa:   nopw   0x0(%rax,%rax,1)
              0x00007f7912ffe400:   cmpb   $0x0,0x94(%rsi)
              0x00007f7912ffe407:   jne    0x00007f7912ffe48e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007f7912ffe40d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f7912ffe416:   jmp    0x00007f7912ffe42f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 190)
          │   0x00007f7912ffe41b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   5.28%  │↗  0x00007f7912ffe420:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   0.00%  ││  0x00007f7912ffe427:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f7912ffe42a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f7912ffe42f:   mov    0x8(%rsp),%r10
   5.50%   │  0x00007f7912ffe434:   mov    %r10,%rsi
   0.00%   │  0x00007f7912ffe437:   call   0x00007f790b4ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  16.98%   │  0x00007f7912ffe43c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 190)
           │  0x00007f7912ffe43d:   mov    0x20(%rsp),%r10
   1.25%   │  0x00007f7912ffe442:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 191)
   5.50%   │  0x00007f7912ffe445:   mov    0x18(%rsp),%rsi
           │  0x00007f7912ffe44a:   cmpb   $0x0,0x94(%rsi)
  21.72%   ╰  0x00007f7912ffe451:   je     0x00007f7912ffe420           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007f7912ffe453:   mov    %r10,0x20(%rsp)
              0x00007f7912ffe458:   call   0x00007f7929eeb6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7912ffe45d:   nop
              0x00007f7912ffe45e:   mov    0x10(%rsp),%rdx
              0x00007f7912ffe463:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007f7912ffe467:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@46 (line 194)
              0x00007f7912ffe46f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  56.25%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 730 

             #           [sp+0x20]  (sp of caller)
             0x00007f7912ffba80:   mov    0x8(%rsi),%r10d
             0x00007f7912ffba84:   movabs $0x800000000,%r12
             0x00007f7912ffba8e:   add    %r12,%r10
             0x00007f7912ffba91:   xor    %r12,%r12
             0x00007f7912ffba94:   cmp    %r10,%rax
             0x00007f7912ffba97:   jne    0x00007f790b4ff780           ;   {runtime_call ic_miss_stub}
             0x00007f7912ffba9d:   nop
             0x00007f7912ffba9e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f7912ffbaa0:   mov    %eax,-0x14000(%rsp)
   5.96%     0x00007f7912ffbaa7:   sub    $0x18,%rsp
   0.01%     0x00007f7912ffbaab:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f7912ffbab0:   cmpb   $0x0,0x14(%rsi)
   5.51%  ╭  0x00007f7912ffbab4:   jne    0x00007f7912ffbae4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 108)
   0.52%  │  0x00007f7912ffbaba:   nopw   0x0(%rax,%rax,1)
          │  0x00007f7912ffbac0:   cmpl   $0x0,0x10(%rsi)
          │  0x00007f7912ffbac4:   jl     0x00007f7912ffbb06           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
   4.84%  │  0x00007f7912ffbaca:   mov    0x18(%rsi),%eax
   0.59%  │  0x00007f7912ffbacd:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 111)
   0.00%  │  0x00007f7912ffbad1:   mov    0x10(%rsp),%rbp
   2.06%  │  0x00007f7912ffbad6:   add    $0x18,%rsp
   2.82%  │  0x00007f7912ffbada:   mov    0x348(%r15),%rcx
   0.59%  │  0x00007f7912ffbae1:   test   %eax,(%rcx)                  ;   {poll_return}
  18.68%  │  0x00007f7912ffbae3:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 114)
          ↘  0x00007f7912ffbae4:   mov    $0x10,%r11
             0x00007f7912ffbaeb:   mov    $0xffffffed,%r10d
             0x00007f7912ffbaf1:   mov    %r10d,0x370(%r15)
             0x00007f7912ffbaf8:   mov    %r11,0x378(%r15)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
             0x00007f7912ffbaff:   nop
             0x00007f7912ffbb00:   call   0x00007f790b50527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  41.60%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 748 
  41.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 730 
   0.97%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.74%  <...other 258 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 748 
  41.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 730 
   1.88%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%  libjvmcicompiler.so  Utf8_substringToUtf8_068311f09bc929ef2d508a7195d18d93c45146e4 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.10%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%       jvmci, level 4
   1.88%               kernel
   0.09%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.852 ns/op
# Warmup Iteration   2: 5.801 ns/op
# Warmup Iteration   3: 5.839 ns/op
# Warmup Iteration   4: 5.799 ns/op
# Warmup Iteration   5: 5.801 ns/op
Iteration   1: 5.801 ns/op
Iteration   2: 5.801 ns/op
Iteration   3: 5.800 ns/op
Iteration   4: 5.800 ns/op
Iteration   5: 5.800 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  5.801 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (5.800, 5.801, 5.801), stdev = 0.001
  CI (99.9%): [5.799, 5.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:·asm":
PrintAssembly processed: 194611 total address lines.
Perf output processed (skipped 58.638 seconds):
 Column 1: cycles (50464 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 771 

              0x00007f9b5f000d75:   mov    0x18(%rsp),%rsi
              0x00007f9b5f000d7a:   nopw   0x0(%rax,%rax,1)
              0x00007f9b5f000d80:   cmpb   $0x0,0x94(%rsi)
              0x00007f9b5f000d87:   jne    0x00007f9b5f000e0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
              0x00007f9b5f000d8d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f9b5f000d96:   jmp    0x00007f9b5f000daf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 190)
          │   0x00007f9b5f000d9b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
   6.76%  │↗  0x00007f9b5f000da0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
          ││  0x00007f9b5f000da7:   test   %eax,(%r11)                  ;   {poll}
   5.25%  ││  0x00007f9b5f000daa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f9b5f000daf:   mov    0x8(%rsp),%r10
   1.20%   │  0x00007f9b5f000db4:   mov    %r10,%rsi
           │  0x00007f9b5f000db7:   call   0x00007f9b574ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   1.28%   │  0x00007f9b5f000dbc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 190)
           │  0x00007f9b5f000dbd:   mov    0x20(%rsp),%r10
  20.93%   │  0x00007f9b5f000dc2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 191)
   5.26%   │  0x00007f9b5f000dc5:   mov    0x18(%rsp),%rsi
   1.25%   │  0x00007f9b5f000dca:   cmpb   $0x0,0x94(%rsi)
  33.25%   ╰  0x00007f9b5f000dd1:   je     0x00007f9b5f000da0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
              0x00007f9b5f000dd3:   mov    %r10,0x20(%rsp)
              0x00007f9b5f000dd8:   call   0x00007f9b785da6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9b5f000ddd:   nop
              0x00007f9b5f000dde:   mov    0x10(%rsp),%rdx
              0x00007f9b5f000de3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 193)
              0x00007f9b5f000de7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@46 (line 194)
              0x00007f9b5f000def:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  75.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 746 

            #           [sp+0x10]  (sp of caller)
            0x00007f9b5effbe80:   mov    0x8(%rsi),%r10d
            0x00007f9b5effbe84:   movabs $0x800000000,%r12
            0x00007f9b5effbe8e:   add    %r12,%r10
            0x00007f9b5effbe91:   xor    %r12,%r12
            0x00007f9b5effbe94:   cmp    %r10,%rax
            0x00007f9b5effbe97:   jne    0x00007f9b574ff780           ;   {runtime_call ic_miss_stub}
            0x00007f9b5effbe9d:   nop
            0x00007f9b5effbe9e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.32%    0x00007f9b5effbea0:   nopl   0x0(%rax,%rax,1)
   1.35%    0x00007f9b5effbea5:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 78)
            0x00007f9b5effbea8:   mov    %eax,%r10d
   5.22%    0x00007f9b5effbeab:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 157)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 78)
            0x00007f9b5effbeae:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 79)
   1.34%    0x00007f9b5effbeb1:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 79)
            0x00007f9b5effbeb4:   mov    0x348(%r15),%rcx
   5.09%    0x00007f9b5effbebb:   test   %eax,(%rcx)                  ;   {poll_return}
   5.09%    0x00007f9b5effbebd:   ret    
            0x00007f9b5effbebe:   xchg   %ax,%ax
          [Exception Handler]
            0x00007f9b5effbec0:   call   0x00007f9b5764ab00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f9b5effbec5:   nop
          [Deopt Handler Code]
            0x00007f9b5effbec6:   call   0x00007f9b57505020           ;   {runtime_call DeoptimizationBlob}
            0x00007f9b5effbecb:   nop
          [Stub Code]
            0x00007f9b5effbecc:   hlt    
            0x00007f9b5effbecd:   hlt    
....................................................................................................
  23.42%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 771 
  23.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 746 
   0.25%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.01%            libjvm.so  RelocIterator::initialize 
   0.68%  <...other 222 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 771 
  23.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 746 
   1.14%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  event_to_env 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  ntp_gettime 
   0.00%            libjvm.so  UTF8::as_quoted_ascii 
   0.00%            libjvm.so  stringStream::write 
   0.09%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%       jvmci, level 4
   1.14%               kernel
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.04%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%   libpthread-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%       perf-35033.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.552 ns/op
# Warmup Iteration   2: 7.226 ns/op
# Warmup Iteration   3: 7.546 ns/op
# Warmup Iteration   4: 7.555 ns/op
# Warmup Iteration   5: 7.556 ns/op
Iteration   1: 7.522 ns/op
Iteration   2: 7.544 ns/op
Iteration   3: 7.597 ns/op
Iteration   4: 7.550 ns/op
Iteration   5: 7.551 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.553 ±(99.9%) 0.105 ns/op [Average]
  (min, avg, max) = (7.522, 7.553, 7.597), stdev = 0.027
  CI (99.9%): [7.447, 7.658] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:·asm":
PrintAssembly processed: 190575 total address lines.
Perf output processed (skipped 58.569 seconds):
 Column 1: cycles (51079 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 750 

              0x00007fe6befff275:   mov    0x18(%rsp),%rsi
              0x00007fe6befff27a:   nopw   0x0(%rax,%rax,1)
              0x00007fe6befff280:   cmpb   $0x0,0x94(%rsi)
              0x00007fe6befff287:   jne    0x00007fe6befff30e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
              0x00007fe6befff28d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fe6befff296:   jmp    0x00007fe6befff2af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 190)
          │   0x00007fe6befff29b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
   4.94%  │↗  0x00007fe6befff2a0:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
          ││  0x00007fe6befff2a7:   test   %eax,(%r11)                  ;   {poll}
   1.16%  ││  0x00007fe6befff2aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fe6befff2af:   mov    0x8(%rsp),%r10
   3.72%   │  0x00007fe6befff2b4:   mov    %r10,%rsi
           │  0x00007fe6befff2b7:   call   0x00007fe6b74ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  22.93%   │  0x00007fe6befff2bc:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 190)
           │  0x00007fe6befff2bd:   mov    0x20(%rsp),%r10
   9.97%   │  0x00007fe6befff2c2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 191)
   5.05%   │  0x00007fe6befff2c5:   mov    0x18(%rsp),%rsi
           │  0x00007fe6befff2ca:   cmpb   $0x0,0x94(%rsi)
  21.46%   ╰  0x00007fe6befff2d1:   je     0x00007fe6befff2a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
              0x00007fe6befff2d3:   mov    %r10,0x20(%rsp)
              0x00007fe6befff2d8:   call   0x00007fe6d72a66f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe6befff2dd:   nop
              0x00007fe6befff2de:   mov    0x10(%rsp),%rdx
              0x00007fe6befff2e3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 193)
              0x00007fe6befff2e7:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@46 (line 194)
              0x00007fe6befff2ef:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 733 

             #           [sp+0x20]  (sp of caller)
             0x00007fe6beffae80:   mov    0x8(%rsi),%r10d
             0x00007fe6beffae84:   movabs $0x800000000,%r12
             0x00007fe6beffae8e:   add    %r12,%r10
             0x00007fe6beffae91:   xor    %r12,%r12
             0x00007fe6beffae94:   cmp    %r10,%rax
             0x00007fe6beffae97:   jne    0x00007fe6b74ff780           ;   {runtime_call ic_miss_stub}
             0x00007fe6beffae9d:   nop
             0x00007fe6beffae9e:   xchg   %ax,%ax
           [Verified Entry Point]
   1.26%     0x00007fe6beffaea0:   mov    %eax,-0x14000(%rsp)
   4.56%     0x00007fe6beffaea7:   sub    $0x18,%rsp
   0.44%     0x00007fe6beffaeab:   mov    %rbp,0x10(%rsp)
   1.04%     0x00007fe6beffaeb0:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 91)
   2.82%     0x00007fe6beffaeb3:   test   %eax,%eax
          ╭  0x00007fe6beffaeb5:   jl     0x00007fe6beffaee1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
   2.32%  │  0x00007fe6beffaebb:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 91)
   0.04%  │  0x00007fe6beffaebf:   mov    %r10d,%r11d
          │  0x00007fe6beffaec2:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 140)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
   2.75%  │  0x00007fe6beffaec5:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 92)
   2.25%  │  0x00007fe6beffaec8:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 92)
   0.04%  │  0x00007fe6beffaecb:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 92)
          │  0x00007fe6beffaece:   mov    0x10(%rsp),%rbp
   5.01%  │  0x00007fe6beffaed3:   add    $0x18,%rsp
   2.14%  │  0x00007fe6beffaed7:   mov    0x348(%r15),%rcx
   0.05%  │  0x00007fe6beffaede:   test   %eax,(%rcx)                  ;   {poll_return}
   3.48%  │  0x00007fe6beffaee0:   ret    
          ↘  0x00007fe6beffaee1:   movl   $0xffffff8f,0x370(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
             0x00007fe6beffaeec:   movq   $0x0,0x378(%r15)
             0x00007fe6beffaef7:   call   0x00007fe6b750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 91)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fe6beffaefc:   nop
             0x00007fe6beffaefd:   data16 xchg %ax,%ax
....................................................................................................
  28.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 750 
  28.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 733 
   1.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.01%         libc-2.31.so  re_search_stub 
   0.93%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 750 
  28.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 733 
   2.28%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  AbsSeq::davg 
   0.00%            libjvm.so  printf_to_env 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.13%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.42%       jvmci, level 4
   2.28%               kernel
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%         runtime stub
   0.00%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:23

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

Benchmark                                            (objectEscapes)  (size)  (value)  Mode  Cnt  Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                      false     128        3  avgt    5  6.576 ± 0.003  ns/op
ScalarReplacementBenchmark.arg_escape_obj:·asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                   false     128        3  avgt    5  6.963 ± 0.002  ns/op
ScalarReplacementBenchmark.branch_escape_obj:·asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                           false     128        3  avgt    5  5.801 ± 0.002  ns/op
ScalarReplacementBenchmark.no_escape:·asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                 false     128        3  avgt    5  7.553 ± 0.105  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:·asm            false     128        3  avgt         NaN            ---
