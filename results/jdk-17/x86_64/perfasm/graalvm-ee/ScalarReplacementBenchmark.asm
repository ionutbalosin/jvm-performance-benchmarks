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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.230 ns/op
# Warmup Iteration   2: 6.591 ns/op
# Warmup Iteration   3: 6.622 ns/op
# Warmup Iteration   4: 6.575 ns/op
# Warmup Iteration   5: 6.571 ns/op
Iteration   1: 6.579 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.577 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.575 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.576 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (6.574, 6.576, 6.579), stdev = 0.002
  CI (99.9%): [6.569, 6.583] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:·asm":
PrintAssembly processed: 187420 total address lines.
Perf output processed (skipped 58.727 seconds):
 Column 1: cycles (51262 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 

              0x00007f662eb1fa58:   call   0x00007f66478cb4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f662eb1fa5d:   nop
              0x00007f662eb1fa5e:   mov    0x10(%rsp),%rdx
              0x00007f662eb1fa63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@10 (line 188)
              0x00007f662eb1fa67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f662eb1fa70:   jmp    0x00007f662eb1fa8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 190)
          │   0x00007f662eb1fa75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
   2.87%  │↗  0x00007f662eb1fa80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
   2.62%  ││  0x00007f662eb1fa87:   test   %eax,(%r11)                  ;   {poll}
   0.19%  ││  0x00007f662eb1fa8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f662eb1fa8f:   mov    0x8(%rsp),%r10
   2.84%   │  0x00007f662eb1fa94:   mov    %r10,%rsi
   2.74%   │  0x00007f662eb1fa97:   call   0x00007f662701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  36.65%   │  0x00007f662eb1fa9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 190)
           │  0x00007f662eb1fa9d:   mov    0x20(%rsp),%r10
   0.03%   │  0x00007f662eb1faa2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 191)
   5.60%   │  0x00007f662eb1faa5:   mov    0x18(%rsp),%rsi
           │  0x00007f662eb1faaa:   cmpb   $0x0,0x94(%rsi)
  12.11%   ╰  0x00007f662eb1fab1:   je     0x00007f662eb1fa80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007f662eb1fab3:   mov    %r10,0x20(%rsp)
              0x00007f662eb1fab8:   call   0x00007f66478cb4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f662eb1fabd:   nop
              0x00007f662eb1fabe:   mov    0x10(%rsp),%rdx
              0x00007f662eb1fac3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007f662eb1fac7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@46 (line 194)
              0x00007f662eb1facb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  65.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 733 

             #           [sp+0x20]  (sp of caller)
             0x00007f662eb1d000:   mov    0x8(%rsi),%r10d
             0x00007f662eb1d004:   movabs $0x800000000,%r12
             0x00007f662eb1d00e:   add    %r12,%r10
             0x00007f662eb1d011:   xor    %r12,%r12
             0x00007f662eb1d014:   cmp    %r10,%rax
             0x00007f662eb1d017:   jne    0x00007f662701e780           ;   {runtime_call ic_miss_stub}
             0x00007f662eb1d01d:   nop
             0x00007f662eb1d01e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.14%     0x00007f662eb1d020:   mov    %eax,-0x14000(%rsp)
   5.46%     0x00007f662eb1d027:   sub    $0x18,%rsp
   0.15%     0x00007f662eb1d02b:   mov    %rbp,0x10(%rsp)
   2.81%     0x00007f662eb1d030:   cmpl   $0x0,0x10(%rsi)
   2.85%  ╭  0x00007f662eb1d034:   jl     0x00007f662eb1d052           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
   5.46%  │  0x00007f662eb1d03a:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 130)
   0.07%  │  0x00007f662eb1d03f:   mov    0x10(%rsp),%rbp
   2.94%  │  0x00007f662eb1d044:   add    $0x18,%rsp
   0.01%  │  0x00007f662eb1d048:   mov    0x348(%r15),%rcx
   2.74%  │  0x00007f662eb1d04f:   test   %eax,(%rcx)                  ;   {poll_return}
   8.77%  │  0x00007f662eb1d051:   ret    
          ↘  0x00007f662eb1d052:   movl   $0xffffff8f,0x370(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
             0x00007f662eb1d05d:   mov    %r12,0x378(%r15)
             0x00007f662eb1d064:   call   0x00007f662702427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 120)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f662eb1d069:   nop
           [Exception Handler]
....................................................................................................
  31.42%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 
  31.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 733 
   1.83%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.62%  <...other 205 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 758 
  31.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 733 
   2.73%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%            libjvm.so  strlen@plt 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%   libpthread-2.31.so  __pthread_mutex_lock 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  jio_print 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%  libjvmcicompiler.so  IsolateEnterStub_JNIFunctions_ExceptionCheck_58d6e5b3e7f9e77fa71a316c155f7e7a40618b7f_19b3cc17c6bf1c1883532a2918712cb500661570 
   0.00%       hsdis-amd64.so  print_displacement 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%            libjvm.so  GrowableArrayResourceAllocator::allocate 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.07%       jvmci, level 4
   2.73%               kernel
   0.09%            libjvm.so
   0.05%         libc-2.31.so
   0.02%                     
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%       perf-46684.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.023 ns/op
# Warmup Iteration   2: 6.994 ns/op
# Warmup Iteration   3: 6.964 ns/op
# Warmup Iteration   4: 6.958 ns/op
# Warmup Iteration   5: 6.950 ns/op
Iteration   1: 6.960 ns/op
Iteration   2: 6.965 ns/op
Iteration   3: 6.962 ns/op
Iteration   4: 6.960 ns/op
Iteration   5: 6.966 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  6.963 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (6.960, 6.963, 6.966), stdev = 0.003
  CI (99.9%): [6.952, 6.973] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:·asm":
PrintAssembly processed: 187140 total address lines.
Perf output processed (skipped 58.807 seconds):
 Column 1: cycles (50513 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 750 

              0x00007fe836b1c1d8:   call   0x00007fe84df224f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe836b1c1dd:   nop
              0x00007fe836b1c1de:   mov    0x10(%rsp),%rdx
              0x00007fe836b1c1e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@10 (line 188)
              0x00007fe836b1c1e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe836b1c1f0:   jmp    0x00007fe836b1c20f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 190)
          │   0x00007fe836b1c1f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   5.32%  │↗  0x00007fe836b1c200:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007fe836b1c207:   test   %eax,(%r11)                  ;   {poll}
   0.07%  ││  0x00007fe836b1c20a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fe836b1c20f:   mov    0x8(%rsp),%r10
   5.60%   │  0x00007fe836b1c214:   mov    %r10,%rsi
   0.04%   │  0x00007fe836b1c217:   call   0x00007fe82f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  16.85%   │  0x00007fe836b1c21c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 190)
           │  0x00007fe836b1c21d:   mov    0x20(%rsp),%r10
   1.47%   │  0x00007fe836b1c222:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 191)
   5.42%   │  0x00007fe836b1c225:   mov    0x18(%rsp),%rsi
           │  0x00007fe836b1c22a:   cmpb   $0x0,0x94(%rsi)
  21.96%   ╰  0x00007fe836b1c231:   je     0x00007fe836b1c200           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
              0x00007fe836b1c233:   mov    %r10,0x20(%rsp)
              0x00007fe836b1c238:   call   0x00007fe84df224f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe836b1c23d:   nop
              0x00007fe836b1c23e:   mov    0x10(%rsp),%rdx
              0x00007fe836b1c243:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007fe836b1c247:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@46 (line 194)
              0x00007fe836b1c24b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  56.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 731 

             #           [sp+0x20]  (sp of caller)
             0x00007fe836b18d00:   mov    0x8(%rsi),%r10d
             0x00007fe836b18d04:   movabs $0x800000000,%r12
             0x00007fe836b18d0e:   add    %r12,%r10
             0x00007fe836b18d11:   xor    %r12,%r12
             0x00007fe836b18d14:   cmp    %r10,%rax
             0x00007fe836b18d17:   jne    0x00007fe82f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fe836b18d1d:   nop
             0x00007fe836b18d1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.08%     0x00007fe836b18d20:   mov    %eax,-0x14000(%rsp)
   5.91%     0x00007fe836b18d27:   sub    $0x18,%rsp
   0.07%     0x00007fe836b18d2b:   mov    %rbp,0x10(%rsp)
   0.03%     0x00007fe836b18d30:   cmpb   $0x0,0x14(%rsi)
   5.41%  ╭  0x00007fe836b18d34:   jne    0x00007fe836b18d64           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 108)
   0.59%  │  0x00007fe836b18d3a:   nopw   0x0(%rax,%rax,1)
   0.09%  │  0x00007fe836b18d40:   cmpl   $0x0,0x10(%rsi)
          │  0x00007fe836b18d44:   jl     0x00007fe836b18d86           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
   5.00%  │  0x00007fe836b18d4a:   mov    0x18(%rsi),%eax
   0.53%  │  0x00007fe836b18d4d:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 111)
   0.05%  │  0x00007fe836b18d51:   mov    0x10(%rsp),%rbp
   1.48%  │  0x00007fe836b18d56:   add    $0x18,%rsp
   3.48%  │  0x00007fe836b18d5a:   mov    0x348(%r15),%rcx
   0.50%  │  0x00007fe836b18d61:   test   %eax,(%rcx)                  ;   {poll_return}
  18.55%  │  0x00007fe836b18d63:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 114)
          ↘  0x00007fe836b18d64:   mov    $0x10,%r11
             0x00007fe836b18d6b:   mov    $0xffffffed,%r10d
             0x00007fe836b18d71:   mov    %r10d,0x370(%r15)
             0x00007fe836b18d78:   mov    %r11,0x378(%r15)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
             0x00007fe836b18d7f:   nop
             0x00007fe836b18d80:   call   0x00007fe82f02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  41.77%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 750 
  41.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 731 
   0.51%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.54%  <...other 187 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 750 
  41.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 731 
   1.32%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  fileStream::write 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  os::current_thread_id 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.00%  libjvmcicompiler.so  BasicBlockOrderUtils$BlockList_add_6b0699609cc8300c87fe74eb0087d33ffe15197a 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  xmlStream::end_head 
   0.00%  libjvmcicompiler.so  IsolateEnterStub_JNIFunctions_NewStringUTF_c237fd4ef354165a4519a443538676a09b4268ca_8487846bdae23bf72bacc261e4b0382d7811b319 
   0.00%            libjvm.so  ciConstantPoolCache::ciConstantPoolCache 
   0.08%  <...other 38 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.51%       jvmci, level 4
   1.32%               kernel
   0.08%            libjvm.so
   0.04%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%   libpthread-2.31.so
   0.00%          interpreter
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.213 ns/op
# Warmup Iteration   2: 5.838 ns/op
# Warmup Iteration   3: 5.807 ns/op
# Warmup Iteration   4: 5.802 ns/op
# Warmup Iteration   5: 5.808 ns/op
Iteration   1: 5.846 ns/op
Iteration   2: 5.797 ns/op
Iteration   3: 5.808 ns/op
Iteration   4: 5.807 ns/op
Iteration   5: 5.804 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  5.813 ±(99.9%) 0.075 ns/op [Average]
  (min, avg, max) = (5.797, 5.813, 5.846), stdev = 0.019
  CI (99.9%): [5.738, 5.887] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:·asm":
PrintAssembly processed: 194438 total address lines.
Perf output processed (skipped 58.724 seconds):
 Column 1: cycles (50420 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 751 

              0x00007fa516b1f558:   call   0x00007fa52e5cf4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa516b1f55d:   nop
              0x00007fa516b1f55e:   mov    0x10(%rsp),%rdx
              0x00007fa516b1f563:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@10 (line 188)
              0x00007fa516b1f567:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa516b1f570:   jmp    0x00007fa516b1f58f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 190)
          │   0x00007fa516b1f575:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
   6.53%  │↗  0x00007fa516b1f580:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
          ││  0x00007fa516b1f587:   test   %eax,(%r11)                  ;   {poll}
   5.56%  ││  0x00007fa516b1f58a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fa516b1f58f:   mov    0x8(%rsp),%r10
   1.36%   │  0x00007fa516b1f594:   mov    %r10,%rsi
           │  0x00007fa516b1f597:   call   0x00007fa50f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   1.31%   │  0x00007fa516b1f59c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 190)
           │  0x00007fa516b1f59d:   mov    0x20(%rsp),%r10
  21.00%   │  0x00007fa516b1f5a2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 191)
   5.33%   │  0x00007fa516b1f5a5:   mov    0x18(%rsp),%rsi
   1.25%   │  0x00007fa516b1f5aa:   cmpb   $0x0,0x94(%rsi)
  32.65%   ╰  0x00007fa516b1f5b1:   je     0x00007fa516b1f580           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
              0x00007fa516b1f5b3:   mov    %r10,0x20(%rsp)
              0x00007fa516b1f5b8:   call   0x00007fa52e5cf4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa516b1f5bd:   nop
              0x00007fa516b1f5be:   mov    0x10(%rsp),%rdx
              0x00007fa516b1f5c3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 193)
              0x00007fa516b1f5c7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@46 (line 194)
              0x00007fa516b1f5cb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  74.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 730 

            #           [sp+0x10]  (sp of caller)
            0x00007fa516b1d180:   mov    0x8(%rsi),%r10d
            0x00007fa516b1d184:   movabs $0x800000000,%r12
            0x00007fa516b1d18e:   add    %r12,%r10
            0x00007fa516b1d191:   xor    %r12,%r12
            0x00007fa516b1d194:   cmp    %r10,%rax
            0x00007fa516b1d197:   jne    0x00007fa50f01e780           ;   {runtime_call ic_miss_stub}
            0x00007fa516b1d19d:   nop
            0x00007fa516b1d19e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.26%    0x00007fa516b1d1a0:   nopl   0x0(%rax,%rax,1)
   1.32%    0x00007fa516b1d1a5:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 78)
            0x00007fa516b1d1a8:   mov    %eax,%r10d
   5.16%    0x00007fa516b1d1ab:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 157)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 78)
            0x00007fa516b1d1ae:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 79)
   1.33%    0x00007fa516b1d1b1:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 79)
            0x00007fa516b1d1b4:   mov    0x348(%r15),%rcx
   5.29%    0x00007fa516b1d1bb:   test   %eax,(%rcx)                  ;   {poll_return}
   5.09%    0x00007fa516b1d1bd:   ret    
            0x00007fa516b1d1be:   xchg   %ax,%ax
          [Exception Handler]
            0x00007fa516b1d1c0:   call   0x00007fa50f169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fa516b1d1c5:   nop
          [Deopt Handler Code]
            0x00007fa516b1d1c6:   call   0x00007fa50f024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fa516b1d1cb:   nop
          [Stub Code]
            0x00007fa516b1d1cc:   hlt    
            0x00007fa516b1d1cd:   hlt    
....................................................................................................
  23.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 751 
  23.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 730 
   0.17%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.91%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 751 
  23.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 730 
   1.30%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%          interpreter  invokestatic  184 invokestatic  
   0.00%            libjvm.so  pthread_mutex_unlock@plt 
   0.00%         libc-2.31.so  [unknown] 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  defaultStream::hold 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%       jvmci, level 4
   1.30%               kernel
   0.11%            libjvm.so
   0.05%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.198 ns/op
# Warmup Iteration   2: 7.310 ns/op
# Warmup Iteration   3: 7.392 ns/op
# Warmup Iteration   4: 7.373 ns/op
# Warmup Iteration   5: 7.525 ns/op
Iteration   1: 7.501 ns/op
Iteration   2: 7.378 ns/op
Iteration   3: 7.376 ns/op
Iteration   4: 7.495 ns/op
Iteration   5: 7.442 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.438 ±(99.9%) 0.234 ns/op [Average]
  (min, avg, max) = (7.376, 7.438, 7.501), stdev = 0.061
  CI (99.9%): [7.204, 7.672] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:·asm":
PrintAssembly processed: 185317 total address lines.
Perf output processed (skipped 58.514 seconds):
 Column 1: cycles (50886 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 741 

              0x00007f9a1ab1f5d8:   call   0x00007f9a343704f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9a1ab1f5dd:   nop
              0x00007f9a1ab1f5de:   mov    0x10(%rsp),%rdx
              0x00007f9a1ab1f5e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@10 (line 188)
              0x00007f9a1ab1f5e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f9a1ab1f5f0:   jmp    0x00007f9a1ab1f60f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 190)
          │   0x00007f9a1ab1f5f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
   5.22%  │↗  0x00007f9a1ab1f600:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
          ││  0x00007f9a1ab1f607:   test   %eax,(%r11)                  ;   {poll}
   0.74%  ││  0x00007f9a1ab1f60a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f9a1ab1f60f:   mov    0x8(%rsp),%r10
   4.39%   │  0x00007f9a1ab1f614:   mov    %r10,%rsi
           │  0x00007f9a1ab1f617:   call   0x00007f9a1301ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  24.05%   │  0x00007f9a1ab1f61c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 190)
           │  0x00007f9a1ab1f61d:   mov    0x20(%rsp),%r10
   8.62%   │  0x00007f9a1ab1f622:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 191)
   5.12%   │  0x00007f9a1ab1f625:   mov    0x18(%rsp),%rsi
           │  0x00007f9a1ab1f62a:   cmpb   $0x0,0x94(%rsi)
  22.45%   ╰  0x00007f9a1ab1f631:   je     0x00007f9a1ab1f600           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
              0x00007f9a1ab1f633:   mov    %r10,0x20(%rsp)
              0x00007f9a1ab1f638:   call   0x00007f9a343704f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9a1ab1f63d:   nop
              0x00007f9a1ab1f63e:   mov    0x10(%rsp),%rdx
              0x00007f9a1ab1f643:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 193)
              0x00007f9a1ab1f647:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@46 (line 194)
              0x00007f9a1ab1f64b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  70.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 723 

             #           [sp+0x20]  (sp of caller)
             0x00007f9a1ab1c280:   mov    0x8(%rsi),%r10d
             0x00007f9a1ab1c284:   movabs $0x800000000,%r12
             0x00007f9a1ab1c28e:   add    %r12,%r10
             0x00007f9a1ab1c291:   xor    %r12,%r12
             0x00007f9a1ab1c294:   cmp    %r10,%rax
             0x00007f9a1ab1c297:   jne    0x00007f9a1301e780           ;   {runtime_call ic_miss_stub}
             0x00007f9a1ab1c29d:   nop
             0x00007f9a1ab1c29e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.64%     0x00007f9a1ab1c2a0:   mov    %eax,-0x14000(%rsp)
   5.48%     0x00007f9a1ab1c2a7:   sub    $0x18,%rsp
   0.12%     0x00007f9a1ab1c2ab:   mov    %rbp,0x10(%rsp)
   1.13%     0x00007f9a1ab1c2b0:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 91)
   2.72%     0x00007f9a1ab1c2b3:   test   %eax,%eax
          ╭  0x00007f9a1ab1c2b5:   jl     0x00007f9a1ab1c2e1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
   2.34%  │  0x00007f9a1ab1c2bb:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 91)
   0.04%  │  0x00007f9a1ab1c2bf:   mov    %r10d,%r11d
          │  0x00007f9a1ab1c2c2:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 140)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
   2.76%  │  0x00007f9a1ab1c2c5:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 92)
   2.20%  │  0x00007f9a1ab1c2c8:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 92)
   0.14%  │  0x00007f9a1ab1c2cb:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 92)
          │  0x00007f9a1ab1c2ce:   mov    0x10(%rsp),%rbp
   4.58%  │  0x00007f9a1ab1c2d3:   add    $0x18,%rsp
   2.14%  │  0x00007f9a1ab1c2d7:   mov    0x348(%r15),%rcx
   0.07%  │  0x00007f9a1ab1c2de:   test   %eax,(%rcx)                  ;   {poll_return}
   2.82%  │  0x00007f9a1ab1c2e0:   ret    
          ↘  0x00007f9a1ab1c2e1:   movl   $0xffffff8f,0x370(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
             0x00007f9a1ab1c2ec:   mov    %r12,0x378(%r15)
             0x00007f9a1ab1c2f3:   call   0x00007f9a1302427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 91)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f9a1ab1c2f8:   nop
           [Exception Handler]
....................................................................................................
  27.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 741 
  27.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 723 
   1.15%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.65%  <...other 215 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 5, compile id 741 
  27.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 723 
   2.00%               kernel  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  fileStream::write 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  outputStream::print 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  gethostbyaddr 
   0.09%  <...other 46 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.77%       jvmci, level 4
   2.00%               kernel
   0.08%            libjvm.so
   0.07%         libc-2.31.so
   0.02%                     
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%               [vdso]
   0.00%       perf-47540.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:27

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
ScalarReplacementBenchmark.arg_escape_obj                      false     128        3  avgt    5  6.576 ± 0.007  ns/op
ScalarReplacementBenchmark.arg_escape_obj:·asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                   false     128        3  avgt    5  6.963 ± 0.011  ns/op
ScalarReplacementBenchmark.branch_escape_obj:·asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                           false     128        3  avgt    5  5.813 ± 0.075  ns/op
ScalarReplacementBenchmark.no_escape:·asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                 false     128        3  avgt    5  7.438 ± 0.234  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:·asm            false     128        3  avgt         NaN            ---
