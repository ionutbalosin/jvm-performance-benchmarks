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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.728 ns/op
# Warmup Iteration   2: 6.965 ns/op
# Warmup Iteration   3: 6.995 ns/op
# Warmup Iteration   4: 6.962 ns/op
# Warmup Iteration   5: 6.962 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.965 ns/op
Iteration   3: 6.968 ns/op
Iteration   4: 6.963 ns/op
Iteration   5: 6.964 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  6.964 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (6.961, 6.964, 6.968), stdev = 0.002
  CI (99.9%): [6.955, 6.974] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.arg_escape_obj:asm":
PrintAssembly processed: 225289 total address lines.
Perf output processed (skipped 60.584 seconds):
 Column 1: cycles (50663 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 988 

              0x00007f7326d83ef3:   mov    0x10(%rsp),%rdx
              0x00007f7326d83ef8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@10 (line 192)
              0x00007f7326d83efc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f7326d83f05:   jmp    0x00007f7326d83f2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007f7326d83f0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f7326d83f15:   data16 data16 xchg %ax,%ax
          │   0x00007f7326d83f19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   5.45%  │↗  0x00007f7326d83f20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
   0.00%  ││  0x00007f7326d83f27:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f7326d83f2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f7326d83f2f:   mov    0x8(%rsp),%r10
   5.48%   │  0x00007f7326d83f34:   mov    %r10,%rsi
           │  0x00007f7326d83f37:   call   0x00007f7326764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  22.01%   │  0x00007f7326d83f3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f7326d83f44:   mov    0x20(%rsp),%r10
   2.74%   │  0x00007f7326d83f49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@26 (line 195)
   5.41%   │  0x00007f7326d83f4c:   mov    0x18(%rsp),%rsi
           │  0x00007f7326d83f51:   cmpb   $0x0,0x94(%rsi)
  21.55%   ╰  0x00007f7326d83f58:   je     0x00007f7326d83f20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007f7326d83f5a:   mov    %r10,0x20(%rsp)
              0x00007f7326d83f5f:   nop
              0x00007f7326d83f60:   call   0x00007f733f4bfdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f7326d83f65:   nop
              0x00007f7326d83f66:   mov    0x10(%rsp),%rdx
              0x00007f7326d83f6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007f7326d83f6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  62.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 958 

             # {method} {0x00007f72a747d750} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f7326d7d800:   mov    0x8(%rsi),%r10d
             0x00007f7326d7d804:   movabs $0x7f72ab000000,%r12
             0x00007f7326d7d80e:   add    %r12,%r10
             0x00007f7326d7d811:   xor    %r12,%r12
             0x00007f7326d7d814:   cmp    %r10,%rax
             0x00007f7326d7d817:   jne    0x00007f7326764080           ;   {runtime_call ic_miss_stub}
             0x00007f7326d7d81d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f7326d7d820:   mov    %eax,-0x14000(%rsp)
   5.42%     0x00007f7326d7d827:   sub    $0x18,%rsp
   0.01%     0x00007f7326d7d82b:   nop
             0x00007f7326d7d82c:   cmpl   $0x1,0x20(%r15)
   5.53%     0x00007f7326d7d834:   jne    0x00007f7326d7d88d
   2.71%     0x00007f7326d7d83a:   mov    %rbp,0x10(%rsp)
   0.01%     0x00007f7326d7d83f:   nop
             0x00007f7326d7d840:   cmpl   $0x0,0x10(%rsi)
   2.71%  ╭  0x00007f7326d7d844:   jl     0x00007f7326d7d86e           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
   2.78%  │  0x00007f7326d7d84a:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@45 (line 128)
          │  0x00007f7326d7d84f:   mov    0x10(%rsp),%rbp
  16.32%  │  0x00007f7326d7d854:   add    $0x18,%rsp
          │  0x00007f7326d7d858:   nopl   0x0(%rax,%rax,1)
   0.01%  │  0x00007f7326d7d860:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f7326d7d867:   ja     0x00007f7326d7d89a
          │  0x00007f7326d7d86d:   ret    
          ↘  0x00007f7326d7d86e:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 118)
             0x00007f7326d7d879:   mov    %r12,0x490(%r15)
             0x00007f7326d7d880:   call   0x00007f732676a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj@0 (line 118)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  35.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 988 
  35.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 958 
   0.19%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.98%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 988 
  35.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 958 
   1.45%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.00%    perf-2149188.map  [unknown] 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%      jvmci, level 4
   1.45%              kernel
   0.15%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-2149188.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.392 ns/op
# Warmup Iteration   2: 7.559 ns/op
# Warmup Iteration   3: 7.376 ns/op
# Warmup Iteration   4: 7.446 ns/op
# Warmup Iteration   5: 7.518 ns/op
Iteration   1: 7.480 ns/op
Iteration   2: 7.527 ns/op
Iteration   3: 7.327 ns/op
Iteration   4: 7.515 ns/op
Iteration   5: 7.362 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  7.442 ±(99.9%) 0.353 ns/op [Average]
  (min, avg, max) = (7.327, 7.442, 7.527), stdev = 0.092
  CI (99.9%): [7.089, 7.796] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.branch_escape_obj:asm":
PrintAssembly processed: 224362 total address lines.
Perf output processed (skipped 60.635 seconds):
 Column 1: cycles (50740 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 982 

              0x00007feb52d85f73:   mov    0x10(%rsp),%rdx
              0x00007feb52d85f78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@10 (line 192)
              0x00007feb52d85f7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007feb52d85f85:   jmp    0x00007feb52d85faf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          │   0x00007feb52d85f8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007feb52d85f95:   data16 data16 xchg %ax,%ax
          │   0x00007feb52d85f99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   3.25%  │↗  0x00007feb52d85fa0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
   2.05%  ││  0x00007feb52d85fa7:   test   %eax,(%r11)                  ;   {poll}
   0.29%  ││  0x00007feb52d85faa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007feb52d85faf:   mov    0x8(%rsp),%r10
   2.93%   │  0x00007feb52d85fb4:   mov    %r10,%rsi
   1.81%   │  0x00007feb52d85fb7:   call   0x00007feb52764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  41.70%   │  0x00007feb52d85fbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007feb52d85fc4:   mov    0x20(%rsp),%r10
   1.42%   │  0x00007feb52d85fc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@26 (line 195)
   5.04%   │  0x00007feb52d85fcc:   mov    0x18(%rsp),%rsi
           │  0x00007feb52d85fd1:   cmpb   $0x0,0x94(%rsi)
  13.61%   ╰  0x00007feb52d85fd8:   je     0x00007feb52d85fa0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 196)
              0x00007feb52d85fda:   mov    %r10,0x20(%rsp)
              0x00007feb52d85fdf:   nop
              0x00007feb52d85fe0:   call   0x00007feb6ce37df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007feb52d85fe5:   nop
              0x00007feb52d85fe6:   mov    0x10(%rsp),%rdx
              0x00007feb52d85feb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 197)
              0x00007feb52d85fef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  72.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 958 

             # {method} {0x00007fead347d670} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007feb52d82c80:   mov    0x8(%rsi),%r10d
             0x00007feb52d82c84:   movabs $0x7fead7000000,%r12
             0x00007feb52d82c8e:   add    %r12,%r10
             0x00007feb52d82c91:   xor    %r12,%r12
             0x00007feb52d82c94:   cmp    %r10,%rax
             0x00007feb52d82c97:   jne    0x00007feb52764080           ;   {runtime_call ic_miss_stub}
             0x00007feb52d82c9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.18%     0x00007feb52d82ca0:   mov    %eax,-0x14000(%rsp)
   5.28%     0x00007feb52d82ca7:   sub    $0x18,%rsp
   0.22%     0x00007feb52d82cab:   nop
             0x00007feb52d82cac:   cmpl   $0x1,0x20(%r15)
   2.79%     0x00007feb52d82cb4:   jne    0x00007feb52d82d29
   2.96%     0x00007feb52d82cba:   mov    %rbp,0x10(%rsp)
   0.08%     0x00007feb52d82cbf:   nop
             0x00007feb52d82cc0:   cmpb   $0x0,0x14(%rsi)
   2.13%  ╭  0x00007feb52d82cc4:   jne    0x00007feb52d82cf2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 106)
   3.01%  │  0x00007feb52d82cca:   cmpl   $0x0,0x10(%rsi)
   0.08%  │  0x00007feb52d82cce:   jl     0x00007feb52d82d1a           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
   2.83%  │  0x00007feb52d82cd4:   mov    0x18(%rsi),%eax
   1.08%  │  0x00007feb52d82cd7:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 109)
   1.17%  │  0x00007feb52d82cdb:   mov    0x10(%rsp),%rbp
   0.09%  │  0x00007feb52d82ce0:   add    $0x18,%rsp
   2.69%  │  0x00007feb52d82ce4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007feb52d82ceb:   ja     0x00007feb52d82d36
   1.06%  │  0x00007feb52d82cf1:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@34 (line 112)
          ↘  0x00007feb52d82cf2:   mov    $0x14,%r11
             0x00007feb52d82cf9:   mov    $0xffffffed,%r10d
             0x00007feb52d82cff:   mov    %r10d,0x484(%r15)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 102)
             0x00007feb52d82d06:   mov    %r11,0x490(%r15)
             0x00007feb52d82d0d:   call   0x00007feb5276a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj@0 (line 102)
....................................................................................................
  25.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 982 
  25.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 958 
   0.58%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.99%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 5, compile id 982 
  25.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 958 
   1.87%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%      jvmci, level 4
   1.87%              kernel
   0.14%           libjvm.so
   0.12%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.337 ns/op
# Warmup Iteration   2: 6.582 ns/op
# Warmup Iteration   3: 6.607 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.575 ns/op
Iteration   1: 6.575 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.575 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape":
  6.574 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.575), stdev = 0.001
  CI (99.9%): [6.572, 6.577] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape:asm":
PrintAssembly processed: 229211 total address lines.
Perf output processed (skipped 60.814 seconds):
 Column 1: cycles (50799 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1001 

              0x00007f6722d82df3:   mov    0x10(%rsp),%rdx
              0x00007f6722d82df8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@10 (line 192)
              0x00007f6722d82dfc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f6722d82e05:   jmp    0x00007f6722d82e2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          │   0x00007f6722d82e0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f6722d82e15:   data16 data16 xchg %ax,%ax
          │   0x00007f6722d82e19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
   5.72%  │↗  0x00007f6722d82e20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
          ││  0x00007f6722d82e27:   test   %eax,(%r11)                  ;   {poll}
   0.04%  ││  0x00007f6722d82e2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f6722d82e2f:   mov    0x8(%rsp),%r10
   5.74%   │  0x00007f6722d82e34:   mov    %r10,%rsi
           │  0x00007f6722d82e37:   call   0x00007f6722764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  27.92%   │  0x00007f6722d82e3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f6722d82e44:   mov    0x20(%rsp),%r10
   1.23%   │  0x00007f6722d82e49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@26 (line 195)
   4.55%   │  0x00007f6722d82e4c:   mov    0x18(%rsp),%rsi
           │  0x00007f6722d82e51:   cmpb   $0x0,0x94(%rsi)
  29.84%   ╰  0x00007f6722d82e58:   je     0x00007f6722d82e20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 196)
              0x00007f6722d82e5a:   mov    %r10,0x20(%rsp)
              0x00007f6722d82e5f:   nop
              0x00007f6722d82e60:   call   0x00007f673b8e8df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f6722d82e65:   nop
              0x00007f6722d82e66:   mov    0x10(%rsp),%rdx
              0x00007f6722d82e6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@40 (line 197)
              0x00007f6722d82e6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@46 (line 198)
....................................................................................................
  75.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 974 

                # {method} {0x00007f66a347d270} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6722d7bf80:   mov    0x8(%rsi),%r10d
                0x00007f6722d7bf84:   movabs $0x7f66a7000000,%r12
                0x00007f6722d7bf8e:   add    %r12,%r10
                0x00007f6722d7bf91:   xor    %r12,%r12
                0x00007f6722d7bf94:   cmp    %r10,%rax
                0x00007f6722d7bf97:   jne    0x00007f6722764080           ;   {runtime_call ic_miss_stub}
                0x00007f6722d7bf9d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.02%        0x00007f6722d7bfa0:   mov    %eax,-0x14000(%rsp)
   5.61%        0x00007f6722d7bfa7:   sub    $0x18,%rsp
   0.03%        0x00007f6722d7bfab:   nop
                0x00007f6722d7bfac:   cmpl   $0x1,0x20(%r15)
   5.68%  ╭     0x00007f6722d7bfb4:   jne    0x00007f6722d7bfdb
   2.49%  │ ↗   0x00007f6722d7bfba:   mov    0xc(%rsi),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@5 (line 76)
   0.01%  │ │   0x00007f6722d7bfbd:   mov    %eax,%r10d
          │ │   0x00007f6722d7bfc0:   shl    %r10d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$LightWrapper::&lt;init&gt;@12 (line 155)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@8 (line 76)
   3.31%  │ │   0x00007f6722d7bfc3:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@20 (line 77)
   2.41%  │ │   0x00007f6722d7bfc6:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape@21 (line 77)
   0.01%  │ │   0x00007f6722d7bfc9:   add    $0x18,%rsp
          │ │↗  0x00007f6722d7bfcd:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f6722d7bfd4:   ja     0x00007f6722d7bfe8
   3.26%  ││││  0x00007f6722d7bfda:   ret    
          ↘│││  0x00007f6722d7bfdb:   mov    %rbp,0x10(%rsp)
           │││  0x00007f6722d7bfe0:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f6722d7bfe5:   jmp    0x00007f6722d7bfba
           │ │  0x00007f6722d7bfe7:   hlt    
           ↘ ╰  0x00007f6722d7bfe8:   lea    -0x22(%rip),%rcx        # 0x00007f6722d7bfcd
                0x00007f6722d7bfef:   mov    %rcx,0x468(%r15)
                0x00007f6722d7bff6:   jmp    0x00007f672276b000           ;   {runtime_call SafepointBlob}
                0x00007f6722d7bffb:   hlt    
                0x00007f6722d7bffc:   nopl   0x0(%rax)
              [Exception Handler]
....................................................................................................
  22.83%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1001 
  22.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 974 
   0.52%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.98%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 1001 
  22.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 974 
   1.77%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  printf_to_env 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.16%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%      jvmci, level 4
   1.77%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.07%                    
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.783 ns/op
# Warmup Iteration   2: 7.431 ns/op
# Warmup Iteration   3: 7.608 ns/op
# Warmup Iteration   4: 7.445 ns/op
# Warmup Iteration   5: 7.418 ns/op
Iteration   1: 7.439 ns/op
Iteration   2: 7.435 ns/op
Iteration   3: 7.422 ns/op
Iteration   4: 7.436 ns/op
Iteration   5: 7.453 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  7.437 ±(99.9%) 0.043 ns/op [Average]
  (min, avg, max) = (7.422, 7.437, 7.453), stdev = 0.011
  CI (99.9%): [7.395, 7.480] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark.no_escape_array_obj:asm":
PrintAssembly processed: 225885 total address lines.
Perf output processed (skipped 60.688 seconds):
 Column 1: cycles (51047 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 989 

              0x00007f68ced852f3:   mov    0x10(%rsp),%rdx
              0x00007f68ced852f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@10 (line 192)
              0x00007f68ced852fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f68ced85305:   jmp    0x00007f68ced8532f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          │   0x00007f68ced8530a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f68ced85315:   data16 data16 xchg %ax,%ax
          │   0x00007f68ced85319:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
   4.95%  │↗  0x00007f68ced85320:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
          ││  0x00007f68ced85327:   test   %eax,(%r11)                  ;   {poll}
   3.97%  ││  0x00007f68ced8532a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@13 (line 194)
          ↘│  0x00007f68ced8532f:   mov    0x8(%rsp),%r10
   2.32%   │  0x00007f68ced85334:   mov    %r10,%rsi
           │  0x00007f68ced85337:   call   0x00007f68ce764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  20.37%   │  0x00007f68ced8533c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f68ced85344:   mov    0x20(%rsp),%r10
   6.67%   │  0x00007f68ced85349:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@26 (line 195)
   5.00%   │  0x00007f68ced8534c:   mov    0x18(%rsp),%rsi
           │  0x00007f68ced85351:   cmpb   $0x0,0x94(%rsi)
  19.94%   ╰  0x00007f68ced85358:   je     0x00007f68ced85320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 196)
              0x00007f68ced8535a:   mov    %r10,0x20(%rsp)
              0x00007f68ced8535f:   nop
              0x00007f68ced85360:   call   0x00007f68e65aadf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f68ced85365:   nop
              0x00007f68ced85366:   mov    0x10(%rsp),%rdx
              0x00007f68ced8536b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@40 (line 197)
              0x00007f68ced8536f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@46 (line 198)
....................................................................................................
  63.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 959 

             # {method} {0x00007f684847d430} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f68ced7e100:   mov    0x8(%rsi),%r10d
             0x00007f68ced7e104:   movabs $0x7f6853000000,%r12
             0x00007f68ced7e10e:   add    %r12,%r10
             0x00007f68ced7e111:   xor    %r12,%r12
             0x00007f68ced7e114:   cmp    %r10,%rax
             0x00007f68ced7e117:   jne    0x00007f68ce764080           ;   {runtime_call ic_miss_stub}
             0x00007f68ced7e11d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.85%     0x00007f68ced7e120:   mov    %eax,-0x14000(%rsp)
   2.29%     0x00007f68ced7e127:   sub    $0x18,%rsp
   2.82%     0x00007f68ced7e12b:   nop
             0x00007f68ced7e12c:   cmpl   $0x1,0x20(%r15)
   2.19%     0x00007f68ced7e134:   jne    0x00007f68ced7e193
   2.80%     0x00007f68ced7e13a:   mov    %rbp,0x10(%rsp)
   1.16%     0x00007f68ced7e13f:   mov    0x10(%rsi),%eax              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 89)
             0x00007f68ced7e142:   test   %eax,%eax
          ╭  0x00007f68ced7e144:   jl     0x00007f68ced7e174           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
   0.95%  │  0x00007f68ced7e14a:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 89)
   2.89%  │  0x00007f68ced7e14e:   mov    %r10d,%r11d
   1.13%  │  0x00007f68ced7e151:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
          │  0x00007f68ced7e154:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@24 (line 90)
   1.03%  │  0x00007f68ced7e157:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 90)
   3.97%  │  0x00007f68ced7e15a:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@31 (line 90)
   1.07%  │  0x00007f68ced7e15d:   mov    0x10(%rsp),%rbp
   9.00%  │  0x00007f68ced7e162:   add    $0x18,%rsp
          │  0x00007f68ced7e166:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f68ced7e16d:   ja     0x00007f68ced7e1a0
   0.00%  │  0x00007f68ced7e173:   ret    
          ↘  0x00007f68ced7e174:   movl   $0xffffff8f,0x484(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 139)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 89)
             0x00007f68ced7e17f:   mov    %r12,0x490(%r15)
             0x00007f68ced7e186:   call   0x00007f68ce76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj@0 (line 89)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f68ced7e18b:   nopl   0x0(%rax,%rax,1)
             0x00007f68ced7e193:   mov    %rbp,0x10(%rsp)
....................................................................................................
  34.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 989 
  34.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 959 
   0.86%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.98%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 989 
  34.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 959 
   2.18%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strlen_avx2 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.16%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.39%      jvmci, level 4
   2.18%              kernel
   0.14%           libjvm.so
   0.12%        libc-2.31.so
   0.11%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-2149397.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:36

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
ScalarReplacementBenchmark.arg_escape_obj                     false     128        3  avgt    5  6.964 ± 0.009  ns/op
ScalarReplacementBenchmark.arg_escape_obj:asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                  false     128        3  avgt    5  7.442 ± 0.353  ns/op
ScalarReplacementBenchmark.branch_escape_obj:asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                          false     128        3  avgt    5  6.574 ± 0.002  ns/op
ScalarReplacementBenchmark.no_escape:asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                false     128        3  avgt    5  7.437 ± 0.043  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:asm            false     128        3  avgt         NaN            ---
