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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1628746.461 ns/op
# Warmup Iteration   2: 1622479.048 ns/op
# Warmup Iteration   3: 1622511.705 ns/op
# Warmup Iteration   4: 1622449.737 ns/op
# Warmup Iteration   5: 1622524.354 ns/op
Iteration   1: 1622480.797 ns/op
Iteration   2: 1622565.073 ns/op
Iteration   3: 1622476.742 ns/op
Iteration   4: 1622483.282 ns/op
Iteration   5: 1622523.939 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline":
  1622505.967 ±(99.9%) 146.865 ns/op [Average]
  (min, avg, max) = (1622476.742, 1622505.967, 1622565.073), stdev = 38.140
  CI (99.9%): [1622359.101, 1622652.832] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline:asm":
PrintAssembly processed: 217704 total address lines.
Perf output processed (skipped 60.359 seconds):
 Column 1: cycles (50938 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 3, compile id 942 

              0x00007f056b23a13a:   mov    %rbp,0x10(%rsp)
              0x00007f056b23a13f:   nop
              0x00007f056b23a140:   test   %rdx,%rdx
              0x00007f056b23a143:   je     0x00007f056b23a18e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
              0x00007f056b23a149:   mov    $0x1,%rax
          ╭   0x00007f056b23a150:   jmp    0x00007f056b23a16d           ;*lload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@2 (line 90)
          │   0x00007f056b23a155:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
  75.87%  │↗  0x00007f056b23a160:   mov    0x458(%r15),%r10             ; ImmutableOopMap {}
          ││                                                            ;*lload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@2 (line 90)
          ││  0x00007f056b23a167:   test   %eax,(%r10)                  ;   {poll}
  21.71%  ││  0x00007f056b23a16a:   inc    %rax                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@10 (line 90)
   0.00%  ↘│  0x00007f056b23a16d:   cmp    %rdx,%rax
           ╰  0x00007f056b23a170:   jne    0x00007f056b23a160
              0x00007f056b23a172:   mov    0x10(%rsp),%rbp
              0x00007f056b23a177:   add    $0x18,%rsp
              0x00007f056b23a17b:   nopl   0x0(%rax,%rax,1)
              0x00007f056b23a180:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f056b23a187:   ja     0x00007f056b23a1a4
              0x00007f056b23a18d:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
              0x00007f056b23a18e:   mov    $0x0,%rax
....................................................................................................
  97.59%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 3, compile id 942 
   0.66%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   1.10%  <...other 394 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 3, compile id 942 
   1.90%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.29%  <...other 129 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%       jvmci, level 4
   1.90%               kernel
   0.18%            libjvm.so
   0.10%         libc-2.31.so
   0.09%  libjvmcicompiler.so
   0.06%                     
   0.04%   libpthread-2.31.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%           ld-2.31.so
   0.00%           libjava.so
   0.00%     perf-2105301.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3258688.019 ns/op
# Warmup Iteration   2: 3244700.398 ns/op
# Warmup Iteration   3: 3244531.542 ns/op
# Warmup Iteration   4: 3244641.137 ns/op
# Warmup Iteration   5: 3244665.108 ns/op
Iteration   1: 3244428.837 ns/op
Iteration   2: 3244476.574 ns/op
Iteration   3: 3244584.584 ns/op
Iteration   4: 3244642.067 ns/op
Iteration   5: 3244653.544 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize":
  3244557.121 ±(99.9%) 386.084 ns/op [Average]
  (min, avg, max) = (3244428.837, 3244557.121, 3244653.544), stdev = 100.265
  CI (99.9%): [3244171.037, 3244943.205] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize:asm":
PrintAssembly processed: 220664 total address lines.
Perf output processed (skipped 60.486 seconds):
 Column 1: cycles (50777 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 977 

              0x00007fbdbf23f93f:   movabs $0x101004000000,%rax         ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@1 (line 65)
              0x00007fbdbf23f949:   mov    $0x1,%r11
              0x00007fbdbf23f950:   mov    $0x2001,%r10
          ╭   0x00007fbdbf23f957:   jmp    0x00007fbdbf23f970           ;*lload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@7 (line 82)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
          │   0x00007fbdbf23f95c:   nopl   0x0(%rax)                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@14 (line 82)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  11.85%  │↗  0x00007fbdbf23f960:   mov    0x458(%r15),%r8              ; ImmutableOopMap {}
          ││                                                            ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@7 (line 82)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  10.96%  ││  0x00007fbdbf23f967:   test   %eax,(%r8)                   ;   {poll}
  26.03%  ││  0x00007fbdbf23f96a:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@19 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  11.55%  ││  0x00007fbdbf23f96d:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@24 (line 82)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  10.86%  ↘│  0x00007fbdbf23f970:   mov    %r10,%r8
  10.77%   │  0x00007fbdbf23f973:   imul   %r10,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@11 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  15.90%   │  0x00007fbdbf23f977:   cmp    %r8,%rax
           ╰  0x00007fbdbf23f97a:   jg     0x00007fbdbf23f960           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@14 (line 82)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
              0x00007fbdbf23f97c:   mov    %r11,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@7 (line 65)
              0x00007fbdbf23f97f:   mov    0x10(%rsp),%rbp
              0x00007fbdbf23f984:   add    $0x18,%rsp
              0x00007fbdbf23f988:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  97.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 977 
   0.32%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 303 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 977 
   1.68%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_fflush 
   0.18%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%      jvmci, level 4
   1.68%              kernel
   0.15%           libjvm.so
   0.11%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.00%    perf-2105376.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.621 ns/op
# Warmup Iteration   2: 6.562 ns/op
# Warmup Iteration   3: 6.604 ns/op
# Warmup Iteration   4: 6.574 ns/op
# Warmup Iteration   5: 6.574 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.574 ns/op
Iteration   3: 6.574 ns/op
Iteration   4: 6.574 ns/op
Iteration   5: 6.574 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize":
  6.574 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.574, 6.574, 6.574), stdev = 0.001
  CI (99.9%): [6.573, 6.575] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm":
PrintAssembly processed: 216754 total address lines.
Perf output processed (skipped 60.345 seconds):
 Column 1: cycles (50557 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 989 

              0x00007f62eb240010:   mov    0x18(%rsp),%rsi
              0x00007f62eb240015:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f62eb240020:   cmpb   $0x0,0x94(%rsi)
              0x00007f62eb240027:   jne    0x00007f62eb2400ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
              0x00007f62eb24002d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f62eb240036:   jmp    0x00007f62eb24004f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@13 (line 190)
          │   0x00007f62eb24003b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
   5.70%  │↗  0x00007f62eb240040:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
          ││  0x00007f62eb240047:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007f62eb24004a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f62eb24004f:   mov    0x8(%rsp),%r10
   5.87%   │  0x00007f62eb240054:   mov    %r10,%rsi
           │  0x00007f62eb240057:   call   0x00007f62eac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_canonicalize {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  39.79%   │  0x00007f62eb24005c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f62eb240064:   mov    0x20(%rsp),%r10
   0.75%   │  0x00007f62eb240069:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@26 (line 191)
   5.73%   │  0x00007f62eb24006c:   mov    0x18(%rsp),%rsi
           │  0x00007f62eb240071:   cmpb   $0x0,0x94(%rsi)
  23.12%   ╰  0x00007f62eb240078:   je     0x00007f62eb240040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
              0x00007f62eb24007a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@36 (line 193)
              0x00007f62eb24007f:   nop
              0x00007f62eb240080:   call   0x00007f63042fddf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f62eb240085:   nop
              0x00007f62eb240086:   mov    0x10(%rsp),%rdx
              0x00007f62eb24008b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@40 (line 193)
              0x00007f62eb24008f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  80.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 952 

                #           [sp+0x20]  (sp of caller)
                0x00007f62eb23a880:   mov    0x8(%rsi),%r10d
                0x00007f62eb23a884:   movabs $0x7f626f000000,%r12
                0x00007f62eb23a88e:   add    %r12,%r10
                0x00007f62eb23a891:   xor    %r12,%r12
                0x00007f62eb23a894:   cmp    %r10,%rax
                0x00007f62eb23a897:   jne    0x00007f62eac2f080           ;   {runtime_call ic_miss_stub}
                0x00007f62eb23a89d:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007f62eb23a8a0:   mov    %eax,-0x14000(%rsp)
   5.80%        0x00007f62eb23a8a7:   sub    $0x18,%rsp
                0x00007f62eb23a8ab:   nop
                0x00007f62eb23a8ac:   cmpl   $0x1,0x20(%r15)
   5.80%  ╭     0x00007f62eb23a8b4:   jne    0x00007f62eb23a8d3
   2.87%  │ ↗   0x00007f62eb23a8ba:   mov    $0x400000,%rax               ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize@11 (line 77)
          │ │   0x00007f62eb23a8c1:   add    $0x18,%rsp
          │ │↗  0x00007f62eb23a8c5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f62eb23a8cc:   ja     0x00007f62eb23a8e0
   2.90%  ││││  0x00007f62eb23a8d2:   ret    
          ↘│││  0x00007f62eb23a8d3:   mov    %rbp,0x10(%rsp)
           │││  0x00007f62eb23a8d8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f62eb23a8dd:   jmp    0x00007f62eb23a8ba
           │ │  0x00007f62eb23a8df:   hlt    
           ↘ ╰  0x00007f62eb23a8e0:   lea    -0x22(%rip),%rcx        # 0x00007f62eb23a8c5
                0x00007f62eb23a8e7:   mov    %rcx,0x468(%r15)
                0x00007f62eb23a8ee:   jmp    0x00007f62eac36000           ;   {runtime_call SafepointBlob}
                0x00007f62eb23a8f3:   hlt    
              [Exception Handler]
                0x00007f62eb23a8f4:   call   0x00007f62eadb4780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  17.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 989 
  17.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 952 
   0.20%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.89%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 989 
  17.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 952 
   1.32%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.13%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%      jvmci, level 4
   1.32%              kernel
   0.12%           libjvm.so
   0.10%                    
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%    perf-2105439.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:40

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

Benchmark                                                       Mode  Cnt        Score     Error  Units
CanonicalizeInductionVariableBenchmark.baseline                 avgt    5  1622505.967 ± 146.865  ns/op
CanonicalizeInductionVariableBenchmark.baseline:asm             avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.canonicalize             avgt    5  3244557.121 ± 386.084  ns/op
CanonicalizeInductionVariableBenchmark.canonicalize:asm         avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.manual_canonicalize      avgt    5        6.574 ±   0.001  ns/op
CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm  avgt               NaN              ---
