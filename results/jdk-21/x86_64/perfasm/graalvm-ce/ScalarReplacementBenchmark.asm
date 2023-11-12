# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 7.037 ns/op
# Warmup Iteration   2: 6.962 ns/op
# Warmup Iteration   3: 6.992 ns/op
# Warmup Iteration   4: 6.963 ns/op
# Warmup Iteration   5: 6.964 ns/op
Iteration   1: 6.958 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.976 ns/op
Iteration   5: 6.963 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.964 ±(99.9%) 0.026 ns/op [Average]
  (min, avg, max) = (6.958, 6.964, 6.976), stdev = 0.007
  CI (99.9%): [6.938, 6.991] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 218188 total address lines.
Perf output processed (skipped 60.349 seconds):
 Column 1: cycles (50578 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 997 

              0x00007f61af243790:   mov    0x18(%rsp),%rsi
              0x00007f61af243795:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f61af2437a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f61af2437a7:   jne    0x00007f61af24383a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007f61af2437ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f61af2437b6:   jmp    0x00007f61af2437cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007f61af2437bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   5.36%  │↗  0x00007f61af2437c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   0.02%  ││  0x00007f61af2437c7:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007f61af2437ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f61af2437cf:   mov    0x8(%rsp),%r10
   5.53%   │  0x00007f61af2437d4:   mov    %r10,%rsi
   0.02%   │  0x00007f61af2437d7:   call   0x00007f61aec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  21.77%   │  0x00007f61af2437dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f61af2437e4:   mov    0x20(%rsp),%r10
   2.87%   │  0x00007f61af2437e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 195)
   5.45%   │  0x00007f61af2437ec:   mov    0x18(%rsp),%rsi
           │  0x00007f61af2437f1:   cmpb   $0x0,0x94(%rsi)
  21.49%   ╰  0x00007f61af2437f8:   je     0x00007f61af2437c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007f61af2437fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 197)
              0x00007f61af2437ff:   nop
              0x00007f61af243800:   call   0x00007f61c67afdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f61af243805:   nop
              0x00007f61af243806:   mov    0x10(%rsp),%rdx
              0x00007f61af24380b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007f61af24380f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  62.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 967 

             # {method} {0x00007f612847d770} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f61af23ed00:   mov    0x8(%rsi),%r10d
             0x00007f61af23ed04:   movabs $0x7f6133000000,%r12
             0x00007f61af23ed0e:   add    %r12,%r10
             0x00007f61af23ed11:   xor    %r12,%r12
             0x00007f61af23ed14:   cmp    %r10,%rax
             0x00007f61af23ed17:   jne    0x00007f61aec2f080           ;   {runtime_call ic_miss_stub}
             0x00007f61af23ed1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.03%     0x00007f61af23ed20:   mov    %eax,-0x14000(%rsp)
   5.62%     0x00007f61af23ed27:   sub    $0x18,%rsp
   0.02%     0x00007f61af23ed2b:   nop
             0x00007f61af23ed2c:   cmpl   $0x0,0x20(%r15)
   5.40%     0x00007f61af23ed34:   jne    0x00007f61af23ed91
   2.86%     0x00007f61af23ed3a:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f61af23ed3f:   nop
             0x00007f61af23ed40:   cmpl   $0x0,0x10(%rsi)
   2.63%  ╭  0x00007f61af23ed44:   jl     0x00007f61af23ed6e           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
   2.81%  │  0x00007f61af23ed4a:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 128)
   0.01%  │  0x00007f61af23ed4f:   mov    0x10(%rsp),%rbp
  15.88%  │  0x00007f61af23ed54:   add    $0x18,%rsp
          │  0x00007f61af23ed58:   nopl   0x0(%rax,%rax,1)
   0.04%  │  0x00007f61af23ed60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f61af23ed67:   ja     0x00007f61af23ed9e
   0.01%  │  0x00007f61af23ed6d:   ret    
          ↘  0x00007f61af23ed6e:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
             0x00007f61af23ed79:   movq   $0x0,0x490(%r15)
             0x00007f61af23ed84:   call   0x00007f61aec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 118)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f61af23ed89:   nopl   0x0(%rax,%rax,1)
             0x00007f61af23ed91:   mov    %rbp,0x10(%rsp)
....................................................................................................
  35.34%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 997 
  35.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 967 
   0.31%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   1.02%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 997 
  35.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 967 
   1.81%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%      jvmci, level 4
   1.81%              kernel
   0.13%           libjvm.so
   0.11%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.351 ns/op
# Warmup Iteration   2: 7.279 ns/op
# Warmup Iteration   3: 7.161 ns/op
# Warmup Iteration   4: 7.144 ns/op
# Warmup Iteration   5: 7.101 ns/op
Iteration   1: 7.086 ns/op
Iteration   2: 7.097 ns/op
Iteration   3: 7.092 ns/op
Iteration   4: 7.080 ns/op
Iteration   5: 7.115 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  7.094 ±(99.9%) 0.052 ns/op [Average]
  (min, avg, max) = (7.080, 7.094, 7.115), stdev = 0.013
  CI (99.9%): [7.042, 7.146] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 219957 total address lines.
Perf output processed (skipped 60.339 seconds):
 Column 1: cycles (50949 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 989 

              0x00007fe647246190:   mov    0x18(%rsp),%rsi
              0x00007fe647246195:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fe6472461a0:   cmpb   $0x0,0x94(%rsi)
              0x00007fe6472461a7:   jne    0x00007fe64724623a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fe6472461ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fe6472461b6:   jmp    0x00007fe6472461cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007fe6472461bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   3.61%  │↗  0x00007fe6472461c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   1.65%  ││  0x00007fe6472461c7:   test   %eax,(%r11)                  ;   {poll}
   0.91%  ││  0x00007fe6472461ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fe6472461cf:   mov    0x8(%rsp),%r10
   3.11%   │  0x00007fe6472461d4:   mov    %r10,%rsi
   1.61%   │  0x00007fe6472461d7:   call   0x00007fe646c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  35.89%   │  0x00007fe6472461dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007fe6472461e4:   mov    0x20(%rsp),%r10
   0.10%   │  0x00007fe6472461e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 195)
   5.39%   │  0x00007fe6472461ec:   mov    0x18(%rsp),%rsi
           │  0x00007fe6472461f1:   cmpb   $0x0,0x94(%rsi)
  17.32%   ╰  0x00007fe6472461f8:   je     0x00007fe6472461c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007fe6472461fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 197)
              0x00007fe6472461ff:   nop
              0x00007fe647246200:   call   0x00007fe65ffb0df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe647246205:   nop
              0x00007fe647246206:   mov    0x10(%rsp),%rdx
              0x00007fe64724620b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007fe64724620f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 957 

             # {method} {0x00007fe5c747d698} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fe647241e00:   mov    0x8(%rsi),%r10d
             0x00007fe647241e04:   movabs $0x7fe5cb000000,%r12
             0x00007fe647241e0e:   add    %r12,%r10
             0x00007fe647241e11:   xor    %r12,%r12
             0x00007fe647241e14:   cmp    %r10,%rax
             0x00007fe647241e17:   jne    0x00007fe646c2f080           ;   {runtime_call ic_miss_stub}
             0x00007fe647241e1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.55%     0x00007fe647241e20:   mov    %eax,-0x14000(%rsp)
   8.36%     0x00007fe647241e27:   sub    $0x18,%rsp
   0.61%     0x00007fe647241e2b:   nop
             0x00007fe647241e2c:   cmpl   $0x1,0x20(%r15)
   2.04%     0x00007fe647241e34:   jne    0x00007fe647241ea9
   3.25%     0x00007fe647241e3a:   mov    %rbp,0x10(%rsp)
   0.31%     0x00007fe647241e3f:   nop
             0x00007fe647241e40:   cmpb   $0x0,0x14(%rsi)
   1.72%  ╭  0x00007fe647241e44:   jne    0x00007fe647241e72           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 106)
   3.27%  │  0x00007fe647241e4a:   cmpl   $0x0,0x10(%rsi)
   0.31%  │  0x00007fe647241e4e:   jl     0x00007fe647241e9a           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
   0.81%  │  0x00007fe647241e54:   mov    0x18(%rsi),%eax
   1.51%  │  0x00007fe647241e57:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 109)
   2.63%  │  0x00007fe647241e5b:   mov    0x10(%rsp),%rbp
   0.27%  │  0x00007fe647241e60:   add    $0x18,%rsp
   0.85%  │  0x00007fe647241e64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fe647241e6b:   ja     0x00007fe647241eb6
   1.49%  │  0x00007fe647241e71:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 112)
          ↘  0x00007fe647241e72:   mov    $0x14,%r11
             0x00007fe647241e79:   mov    $0xffffffed,%r10d
             0x00007fe647241e7f:   mov    %r10d,0x484(%r15)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
             0x00007fe647241e86:   mov    %r11,0x490(%r15)
             0x00007fe647241e8d:   call   0x00007fe646c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@0 (line 102)
....................................................................................................
  27.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 989 
  27.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 957 
   1.00%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  xmlStream::write_text 
   0.84%  <...other 307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 989 
  27.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 957 
   2.02%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  fileStream::flush 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  os::current_thread_id 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%      jvmci, level 4
   2.02%              kernel
   0.15%           libjvm.so
   0.13%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.636 ns/op
# Warmup Iteration   2: 6.627 ns/op
# Warmup Iteration   3: 6.575 ns/op
# Warmup Iteration   4: 6.581 ns/op
# Warmup Iteration   5: 6.573 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.573 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  6.574 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.573, 6.574, 6.574), stdev = 0.001
  CI (99.9%): [6.572, 6.576] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 215815 total address lines.
Perf output processed (skipped 60.152 seconds):
 Column 1: cycles (50802 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 977 

              0x00007f458b244c90:   mov    0x18(%rsp),%rsi
              0x00007f458b244c95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f458b244ca0:   cmpb   $0x0,0x94(%rsi)
              0x00007f458b244ca7:   jne    0x00007f458b244d3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f458b244cad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f458b244cb6:   jmp    0x00007f458b244ccf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          │   0x00007f458b244cbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   5.73%  │↗  0x00007f458b244cc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   0.00%  ││  0x00007f458b244cc7:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││  0x00007f458b244cca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f458b244ccf:   mov    0x8(%rsp),%r10
   5.81%   │  0x00007f458b244cd4:   mov    %r10,%rsi
           │  0x00007f458b244cd7:   call   0x00007f458ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  34.94%   │  0x00007f458b244cdc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f458b244ce4:   mov    0x20(%rsp),%r10
   0.00%   │  0x00007f458b244ce9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 195)
   5.57%   │  0x00007f458b244cec:   mov    0x18(%rsp),%rsi
           │  0x00007f458b244cf1:   cmpb   $0x0,0x94(%rsi)
  23.04%   ╰  0x00007f458b244cf8:   je     0x00007f458b244cc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f458b244cfa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 197)
              0x00007f458b244cff:   nop
              0x00007f458b244d00:   call   0x00007f45a2034df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f458b244d05:   nop
              0x00007f458b244d06:   mov    0x10(%rsp),%rdx
              0x00007f458b244d0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
              0x00007f458b244d0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  75.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 951 

                # {method} {0x00007f450447d2a8} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f458b241480:   mov    0x8(%rsi),%r10d
                0x00007f458b241484:   movabs $0x7f450f000000,%r12
                0x00007f458b24148e:   add    %r12,%r10
                0x00007f458b241491:   xor    %r12,%r12
                0x00007f458b241494:   cmp    %r10,%rax
                0x00007f458b241497:   jne    0x00007f458ac2f080           ;   {runtime_call ic_miss_stub}
                0x00007f458b24149d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.00%        0x00007f458b2414a0:   mov    %eax,-0x14000(%rsp)
   5.72%        0x00007f458b2414a7:   sub    $0x18,%rsp
   0.00%        0x00007f458b2414ab:   nop
                0x00007f458b2414ac:   cmpl   $0x1,0x20(%r15)
   5.69%  ╭     0x00007f458b2414b4:   jne    0x00007f458b2414db
   2.95%  │ ↗   0x00007f458b2414ba:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
          │ │   0x00007f458b2414bd:   mov    %eax,%r10d
          │ │   0x00007f458b2414c0:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 155)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 76)
   2.67%  │ │   0x00007f458b2414c3:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   2.95%  │ │   0x00007f458b2414c6:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 77)
          │ │   0x00007f458b2414c9:   add    $0x18,%rsp
          │ │↗  0x00007f458b2414cd:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f458b2414d4:   ja     0x00007f458b2414e8
   2.76%  ││││  0x00007f458b2414da:   ret    
          ↘│││  0x00007f458b2414db:   mov    %rbp,0x10(%rsp)
           │││  0x00007f458b2414e0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f458b2414e5:   jmp    0x00007f458b2414ba
           │ │  0x00007f458b2414e7:   hlt    
           ↘ ╰  0x00007f458b2414e8:   lea    -0x22(%rip),%rcx        # 0x00007f458b2414cd
                0x00007f458b2414ef:   mov    %rcx,0x468(%r15)
                0x00007f458b2414f6:   jmp    0x00007f458ac36000           ;   {runtime_call SafepointBlob}
                0x00007f458b2414fb:   hlt    
                0x00007f458b2414fc:   nopl   0x0(%rax)
              [Exception Handler]
....................................................................................................
  22.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 977 
  22.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 951 
   0.47%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   1.03%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 5, compile id 977 
  22.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 951 
   1.74%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  _IO_setb 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%      jvmci, level 4
   1.74%              kernel
   0.17%           libjvm.so
   0.09%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.784 ns/op
# Warmup Iteration   2: 7.694 ns/op
# Warmup Iteration   3: 7.618 ns/op
# Warmup Iteration   4: 7.594 ns/op
# Warmup Iteration   5: 7.585 ns/op
Iteration   1: 7.591 ns/op
Iteration   2: 7.585 ns/op
Iteration   3: 7.582 ns/op
Iteration   4: 7.667 ns/op
Iteration   5: 7.651 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.615 ±(99.9%) 0.156 ns/op [Average]
  (min, avg, max) = (7.582, 7.615, 7.667), stdev = 0.040
  CI (99.9%): [7.460, 7.771] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 216986 total address lines.
Perf output processed (skipped 60.413 seconds):
 Column 1: cycles (50660 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 984 

              0x00007f237f21ff90:   mov    0x18(%rsp),%rsi
              0x00007f237f21ff95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f237f21ffa0:   cmpb   $0x0,0x94(%rsi)
              0x00007f237f21ffa7:   jne    0x00007f237f22003a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007f237f21ffad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f237f21ffb6:   jmp    0x00007f237f21ffcf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          │   0x00007f237f21ffbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   1.02%  │↗  0x00007f237f21ffc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
  32.73%  ││  0x00007f237f21ffc7:   test   %eax,(%r11)                  ;   {poll}
  26.23%  ││  0x00007f237f21ffca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f237f21ffcf:   mov    0x8(%rsp),%r10
   0.00%   │  0x00007f237f21ffd4:   mov    %r10,%rsi
           │  0x00007f237f21ffd7:   call   0x00007f237ec0b380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   4.95%   │  0x00007f237f21ffdc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f237f21ffe4:   mov    0x20(%rsp),%r10
   0.00%   │  0x00007f237f21ffe9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 195)
   5.17%   │  0x00007f237f21ffec:   mov    0x18(%rsp),%rsi
           │  0x00007f237f21fff1:   cmpb   $0x0,0x94(%rsi)
   2.75%   ╰  0x00007f237f21fff8:   je     0x00007f237f21ffc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007f237f21fffa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 197)
              0x00007f237f21ffff:   nop
              0x00007f237f220000:   call   0x00007f2394f5fdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f237f220005:   nop
              0x00007f237f220006:   mov    0x10(%rsp),%rdx
              0x00007f237f22000b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
              0x00007f237f22000f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  72.85%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 958 

             # {method} {0x00007f22f847d430} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f237f21c600:   mov    0x8(%rsi),%r10d
             0x00007f237f21c604:   movabs $0x7f2303000000,%r12
             0x00007f237f21c60e:   add    %r12,%r10
             0x00007f237f21c611:   xor    %r12,%r12
             0x00007f237f21c614:   cmp    %r10,%rax
             0x00007f237f21c617:   jne    0x00007f237ec0b080           ;   {runtime_call ic_miss_stub}
             0x00007f237f21c61d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   4.99%     0x00007f237f21c620:   mov    %eax,-0x14000(%rsp)
   0.00%     0x00007f237f21c627:   sub    $0x18,%rsp
   4.88%     0x00007f237f21c62b:   nop
             0x00007f237f21c62c:   cmpl   $0x1,0x20(%r15)
             0x00007f237f21c634:   jne    0x00007f237f21c697
   0.00%     0x00007f237f21c63a:   mov    %rbp,0x10(%rsp)
   5.02%     0x00007f237f21c63f:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 89)
   0.00%     0x00007f237f21c642:   test   %eax,%eax
          ╭  0x00007f237f21c644:   jl     0x00007f237f21c674           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
   0.00%  │  0x00007f237f21c64a:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 89)
   0.00%  │  0x00007f237f21c64e:   mov    %r10d,%r11d
   5.06%  │  0x00007f237f21c651:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
          │  0x00007f237f21c654:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 90)
          │  0x00007f237f21c657:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 90)
   0.01%  │  0x00007f237f21c65a:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 90)
   5.00%  │  0x00007f237f21c65d:   mov    0x10(%rsp),%rbp
   0.01%  │  0x00007f237f21c662:   add    $0x18,%rsp
          │  0x00007f237f21c666:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f237f21c66d:   ja     0x00007f237f21c6a4
   0.01%  │  0x00007f237f21c673:   ret    
          ↘  0x00007f237f21c674:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
             0x00007f237f21c67f:   movq   $0x0,0x490(%r15)
             0x00007f237f21c68a:   call   0x00007f237ec1117a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 89)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f237f21c68f:   nopl   0x0(%rax,%rax,1)
             0x00007f237f21c697:   mov    %rbp,0x10(%rsp)
....................................................................................................
  25.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 984 
  25.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 958 
   0.34%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.02%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 984 
  25.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 958 
   1.86%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  os::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  defaultStream::write 
   0.11%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%      jvmci, level 4
   1.86%              kernel
   0.10%           libjvm.so
   0.09%                    
   0.07%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-2128638.map
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:33

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

Benchmark                                           (objectEscapes)  (size)  (value)  Mode  Cnt  Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  6.964 ± 0.026  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  7.094 ± 0.052  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5  6.574 ± 0.002  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5  7.615 ± 0.156  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt         NaN            ---
