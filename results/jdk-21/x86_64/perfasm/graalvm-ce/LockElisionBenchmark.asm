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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.005 ns/op
# Warmup Iteration   2: 6.960 ns/op
# Warmup Iteration   3: 6.987 ns/op
# Warmup Iteration   4: 6.962 ns/op
# Warmup Iteration   5: 6.973 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.968 ns/op
Iteration   3: 6.966 ns/op
Iteration   4: 6.966 ns/op
Iteration   5: 6.968 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  6.966 ±(99.9%) 0.011 ns/op [Average]
  (min, avg, max) = (6.961, 6.966, 6.968), stdev = 0.003
  CI (99.9%): [6.955, 6.977] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 215834 total address lines.
Perf output processed (skipped 60.317 seconds):
 Column 1: cycles (50881 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 987 

              0x00007f3d4f240090:   mov    0x18(%rsp),%rsi
              0x00007f3d4f240095:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f3d4f2400a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f3d4f2400a7:   jne    0x00007f3d4f24013a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007f3d4f2400ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f3d4f2400b6:   jmp    0x00007f3d4f2400cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007f3d4f2400bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   5.26%  │↗  0x00007f3d4f2400c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
          ││  0x00007f3d4f2400c7:   test   %eax,(%r11)                  ;   {poll}
   0.07%  ││  0x00007f3d4f2400ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f3d4f2400cf:   mov    0x8(%rsp),%r10
   5.53%   │  0x00007f3d4f2400d4:   mov    %r10,%rsi
           │  0x00007f3d4f2400d7:   call   0x00007f3d4ec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  29.18%   │  0x00007f3d4f2400dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f3d4f2400e4:   mov    0x20(%rsp),%r10
   2.82%   │  0x00007f3d4f2400e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
   5.50%   │  0x00007f3d4f2400ec:   mov    0x18(%rsp),%rsi
           │  0x00007f3d4f2400f1:   cmpb   $0x0,0x94(%rsi)
  21.59%   ╰  0x00007f3d4f2400f8:   je     0x00007f3d4f2400c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007f3d4f2400fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
              0x00007f3d4f2400ff:   nop
              0x00007f3d4f240100:   call   0x00007f3d67ff5df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f3d4f240105:   nop
              0x00007f3d4f240106:   mov    0x10(%rsp),%rdx
              0x00007f3d4f24010b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007f3d4f24010f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  69.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 956 

                # {method} {0x00007f3ccf47c828} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f3d4f239c00:   mov    0x8(%rsi),%r10d
                0x00007f3d4f239c04:   movabs $0x7f3cd3000000,%r12
                0x00007f3d4f239c0e:   add    %r12,%r10
                0x00007f3d4f239c11:   xor    %r12,%r12
                0x00007f3d4f239c14:   cmp    %r10,%rax
                0x00007f3d4f239c17:   jne    0x00007f3d4ec2f080           ;   {runtime_call ic_miss_stub}
                0x00007f3d4f239c1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.05%        0x00007f3d4f239c20:   mov    %eax,-0x14000(%rsp)
   5.35%        0x00007f3d4f239c27:   sub    $0x18,%rsp
   0.06%        0x00007f3d4f239c2b:   nop
                0x00007f3d4f239c2c:   cmpl   $0x1,0x20(%r15)
   5.44%  ╭     0x00007f3d4f239c34:   jne    0x00007f3d4f239c5c
   2.68%  │ ↗   0x00007f3d4f239c3a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 200)
   0.01%  │ │   0x00007f3d4f239c3d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 202)
          │ │   0x00007f3d4f239c41:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 200)
   3.33%  │ │   0x00007f3d4f239c43:   shl    $0x3,%r10d
   2.01%  │ │   0x00007f3d4f239c47:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 209)
   8.80%  │ │   0x00007f3d4f239c4a:   add    $0x18,%rsp
          │ │↗  0x00007f3d4f239c4e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f3d4f239c55:   ja     0x00007f3d4f239c69
   0.02%  ││││  0x00007f3d4f239c5b:   ret    
          ↘│││  0x00007f3d4f239c5c:   mov    %rbp,0x10(%rsp)
           │││  0x00007f3d4f239c61:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f3d4f239c66:   jmp    0x00007f3d4f239c3a
           │ │  0x00007f3d4f239c68:   hlt    
           ↘ ╰  0x00007f3d4f239c69:   lea    -0x22(%rip),%rcx        # 0x00007f3d4f239c4e
                0x00007f3d4f239c70:   mov    %rcx,0x468(%r15)
                0x00007f3d4f239c77:   jmp    0x00007f3d4ec36000           ;   {runtime_call SafepointBlob}
                0x00007f3d4f239c7c:   hlt    
                0x00007f3d4f239c7d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 987 
  27.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 956 
   0.96%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.79%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 987 
  27.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 956 
   1.97%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%      jvmci, level 4
   1.97%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%    perf-2111772.map
   0.00%         c1, level 3
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.042 ns/op
# Warmup Iteration   2: 6.983 ns/op
# Warmup Iteration   3: 6.968 ns/op
# Warmup Iteration   4: 6.964 ns/op
# Warmup Iteration   5: 6.971 ns/op
Iteration   1: 6.974 ns/op
Iteration   2: 6.964 ns/op
Iteration   3: 6.957 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.965 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  6.964 ±(99.9%) 0.023 ns/op [Average]
  (min, avg, max) = (6.957, 6.964, 6.974), stdev = 0.006
  CI (99.9%): [6.941, 6.988] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 216722 total address lines.
Perf output processed (skipped 60.354 seconds):
 Column 1: cycles (50804 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 967 

              0x00007f161f240c10:   mov    0x18(%rsp),%rsi
              0x00007f161f240c15:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f161f240c20:   cmpb   $0x0,0x94(%rsi)
              0x00007f161f240c27:   jne    0x00007f161f240cba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f161f240c2d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f161f240c36:   jmp    0x00007f161f240c4f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f161f240c3b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   5.54%  │↗  0x00007f161f240c40:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f161f240c47:   test   %eax,(%r11)                  ;   {poll}
   0.22%  ││  0x00007f161f240c4a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f161f240c4f:   mov    0x8(%rsp),%r10
   5.28%   │  0x00007f161f240c54:   mov    %r10,%rsi
           │  0x00007f161f240c57:   call   0x00007f161ec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  29.28%   │  0x00007f161f240c5c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f161f240c64:   mov    0x20(%rsp),%r10
   2.75%   │  0x00007f161f240c69:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   5.54%   │  0x00007f161f240c6c:   mov    0x18(%rsp),%rsi
           │  0x00007f161f240c71:   cmpb   $0x0,0x94(%rsi)
  21.85%   ╰  0x00007f161f240c78:   je     0x00007f161f240c40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f161f240c7a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f161f240c7f:   nop
              0x00007f161f240c80:   call   0x00007f1636ddfdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f161f240c85:   nop
              0x00007f161f240c86:   mov    0x10(%rsp),%rdx
              0x00007f161f240c8b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f161f240c8f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  70.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 939 

                # {method} {0x00007f159f47c440} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f161f23d300:   mov    0x8(%rsi),%r10d
                0x00007f161f23d304:   movabs $0x7f15a3000000,%r12
                0x00007f161f23d30e:   add    %r12,%r10
                0x00007f161f23d311:   xor    %r12,%r12
                0x00007f161f23d314:   cmp    %r10,%rax
                0x00007f161f23d317:   jne    0x00007f161ec2f080           ;   {runtime_call ic_miss_stub}
                0x00007f161f23d31d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.16%        0x00007f161f23d320:   mov    %eax,-0x14000(%rsp)
   5.24%        0x00007f161f23d327:   sub    $0x18,%rsp
   0.16%        0x00007f161f23d32b:   nop
                0x00007f161f23d32c:   cmpl   $0x1,0x20(%r15)
   5.16%  ╭     0x00007f161f23d334:   jne    0x00007f161f23d35c
   2.71%  │ ↗   0x00007f161f23d33a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 115)
   0.08%  │ │   0x00007f161f23d33d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 117)
          │ │   0x00007f161f23d341:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 115)
   3.20%  │ │   0x00007f161f23d343:   shl    $0x3,%r10d
   2.20%  │ │   0x00007f161f23d347:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 124)
   8.42%  │ │   0x00007f161f23d34a:   add    $0x18,%rsp
          │ │↗  0x00007f161f23d34e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f161f23d355:   ja     0x00007f161f23d369
   0.05%  ││││  0x00007f161f23d35b:   ret    
          ↘│││  0x00007f161f23d35c:   mov    %rbp,0x10(%rsp)
           │││  0x00007f161f23d361:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f161f23d366:   jmp    0x00007f161f23d33a
           │ │  0x00007f161f23d368:   hlt    
           ↘ ╰  0x00007f161f23d369:   lea    -0x22(%rip),%rcx        # 0x00007f161f23d34e
                0x00007f161f23d370:   mov    %rcx,0x468(%r15)
                0x00007f161f23d377:   jmp    0x00007f161ec36000           ;   {runtime_call SafepointBlob}
                0x00007f161f23d37c:   hlt    
                0x00007f161f23d37d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 967 
  27.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 939 
   0.69%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.87%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 967 
  27.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 939 
   1.75%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  xmlStream::write_text 
   0.23%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%       jvmci, level 4
   1.75%               kernel
   0.12%            libjvm.so
   0.10%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.126 ns/op
# Warmup Iteration   2: 9.038 ns/op
# Warmup Iteration   3: 9.667 ns/op
# Warmup Iteration   4: 9.489 ns/op
# Warmup Iteration   5: 9.475 ns/op
Iteration   1: 9.538 ns/op
Iteration   2: 9.502 ns/op
Iteration   3: 9.492 ns/op
Iteration   4: 9.532 ns/op
Iteration   5: 9.489 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  9.511 ±(99.9%) 0.088 ns/op [Average]
  (min, avg, max) = (9.489, 9.511, 9.538), stdev = 0.023
  CI (99.9%): [9.423, 9.599] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 214241 total address lines.
Perf output processed (skipped 60.138 seconds):
 Column 1: cycles (51004 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 982 

              0x00007f1573242290:   mov    0x18(%rsp),%rsi
              0x00007f1573242295:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f15732422a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f15732422a7:   jne    0x00007f157324233a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f15732422ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f15732422b6:   jmp    0x00007f15732422cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f15732422bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   4.03%  │↗  0x00007f15732422c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   0.03%  ││  0x00007f15732422c7:   test   %eax,(%r11)                  ;   {poll}
   0.68%  ││  0x00007f15732422ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f15732422cf:   mov    0x8(%rsp),%r10
   3.53%   │  0x00007f15732422d4:   mov    %r10,%rsi
   0.01%   │  0x00007f15732422d7:   call   0x00007f1572c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  21.65%   │  0x00007f15732422dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f15732422e4:   mov    0x20(%rsp),%r10
   2.18%   │  0x00007f15732422e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   3.95%   │  0x00007f15732422ec:   mov    0x18(%rsp),%rsi
           │  0x00007f15732422f1:   cmpb   $0x0,0x94(%rsi)
  19.07%   ╰  0x00007f15732422f8:   je     0x00007f15732422c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f15732422fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f15732422ff:   nop
              0x00007f1573242300:   call   0x00007f15893c4df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1573242305:   nop
              0x00007f1573242306:   mov    0x10(%rsp),%rdx
              0x00007f157324230b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f157324230f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  55.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 950 

             # {method} {0x00007f14ec4864e0} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f157323de80:   mov    0x8(%rsi),%r10d
             0x00007f157323de84:   movabs $0x7f14f7000000,%r12
             0x00007f157323de8e:   add    %r12,%r10
             0x00007f157323de91:   xor    %r12,%r12
             0x00007f157323de94:   cmp    %r10,%rax
             0x00007f157323de97:   jne    0x00007f1572c2f080           ;   {runtime_call ic_miss_stub}
             0x00007f157323de9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.44%     0x00007f157323dea0:   mov    %eax,-0x14000(%rsp)
   5.49%     0x00007f157323dea7:   sub    $0x18,%rsp
   0.35%     0x00007f157323deab:   nop
             0x00007f157323deac:   cmpl   $0x1,0x20(%r15)
   2.35%     0x00007f157323deb4:   jne    0x00007f157323dfb4
   1.74%     0x00007f157323deba:   mov    %rbp,0x10(%rsp)
   0.25%     0x00007f157323debf:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 132)
             0x00007f157323dec2:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 132)
   2.17%     0x00007f157323dec4:   cmp    $0x21,%eax
          ╭  0x00007f157323dec7:   jl     0x00007f157323df4f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
   1.97%  │  0x00007f157323decd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   0.21%  │  0x00007f157323ded1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
          │  0x00007f157323ded4:   cmp    $0x21,%eax
          │  0x00007f157323ded7:   jl     0x00007f157323dfa2           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 138)
   2.41%  │  0x00007f157323dedd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 139)
   1.38%  │  0x00007f157323dee0:   cmp    $0x21,%eax
          │  0x00007f157323dee3:   jl     0x00007f157323df75           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
   2.45%  │  0x00007f157323dee9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 142)
          │  0x00007f157323deec:   cmp    $0x21,%eax
          │  0x00007f157323deef:   jl     0x00007f157323dfab           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 144)
   1.88%  │  0x00007f157323def5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 145)
   1.06%  │  0x00007f157323def8:   nopl   0x0(%rax,%rax,1)
   2.75%  │  0x00007f157323df00:   cmp    $0x21,%eax
          │  0x00007f157323df03:   jl     0x00007f157323df99           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 147)
          │  0x00007f157323df09:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
   1.48%  │  0x00007f157323df0c:   cmp    $0x21,%eax
          │  0x00007f157323df0f:   jl     0x00007f157323df87           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 150)
   0.99%  │  0x00007f157323df15:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 151)
   1.39%  │  0x00007f157323df18:   nopl   0x0(%rax,%rax,1)
          │  0x00007f157323df20:   cmp    $0x21,%eax
          │  0x00007f157323df23:   jl     0x00007f157323df7e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 153)
   3.20%  │  0x00007f157323df29:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 154)
   0.99%  │  0x00007f157323df2c:   cmp    $0x21,%eax
          │  0x00007f157323df2f:   jl     0x00007f157323df90           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 156)
   1.46%  │  0x00007f157323df35:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 157)
   0.38%  │  0x00007f157323df38:   mov    0x10(%rsp),%rbp
   3.16%  │  0x00007f157323df3d:   add    $0x18,%rsp
   1.04%  │  0x00007f157323df41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f157323df48:   ja     0x00007f157323dfc6
   1.00%  │  0x00007f157323df4e:   ret    
          ↘  0x00007f157323df4f:   mov    $0x14,%r10
             0x00007f157323df56:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
             0x00007f157323df61:   mov    %r10,0x490(%r15)
             0x00007f157323df68:   call   0x00007f1572c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 132)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f157323df6d:   nopl   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
....................................................................................................
  42.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 982 
  42.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 950 
   1.08%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.08%  <...other 378 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 982 
  42.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 950 
   2.50%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  stringStream::write 
   0.20%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.15%       jvmci, level 4
   2.50%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%          c1, level 3
   0.00%          c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.156 ns/op
# Warmup Iteration   2: 8.998 ns/op
# Warmup Iteration   3: 9.682 ns/op
# Warmup Iteration   4: 9.540 ns/op
# Warmup Iteration   5: 9.527 ns/op
Iteration   1: 9.563 ns/op
Iteration   2: 9.536 ns/op
Iteration   3: 9.535 ns/op
Iteration   4: 9.609 ns/op
Iteration   5: 9.598 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  9.568 ±(99.9%) 0.131 ns/op [Average]
  (min, avg, max) = (9.535, 9.568, 9.609), stdev = 0.034
  CI (99.9%): [9.437, 9.700] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 215702 total address lines.
Perf output processed (skipped 60.273 seconds):
 Column 1: cycles (50680 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 986 

              0x00007f035f246310:   mov    0x18(%rsp),%rsi
              0x00007f035f246315:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f035f246320:   cmpb   $0x0,0x94(%rsi)
              0x00007f035f246327:   jne    0x00007f035f2463ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f035f24632d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f035f246336:   jmp    0x00007f035f24634f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f035f24633b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   3.98%  │↗  0x00007f035f246340:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   0.00%  ││  0x00007f035f246347:   test   %eax,(%r11)                  ;   {poll}
   0.95%  ││  0x00007f035f24634a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f035f24634f:   mov    0x8(%rsp),%r10
   3.28%   │  0x00007f035f246354:   mov    %r10,%rsi
   0.01%   │  0x00007f035f246357:   call   0x00007f035ec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  22.06%   │  0x00007f035f24635c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f035f246364:   mov    0x20(%rsp),%r10
   2.89%   │  0x00007f035f246369:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   4.03%   │  0x00007f035f24636c:   mov    0x18(%rsp),%rsi
           │  0x00007f035f246371:   cmpb   $0x0,0x94(%rsi)
  17.65%   ╰  0x00007f035f246378:   je     0x00007f035f246340           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f035f24637a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f035f24637f:   nop
              0x00007f035f246380:   call   0x00007f037798ddf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f035f246385:   nop
              0x00007f035f246386:   mov    0x10(%rsp),%rdx
              0x00007f035f24638b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f035f24638f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  54.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 956 

                     # {method} {0x00007f02df486660} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                     #           [sp+0x20]  (sp of caller)
                     0x00007f035f240880:   mov    0x8(%rsi),%r10d
                     0x00007f035f240884:   movabs $0x7f02e3000000,%r12
                     0x00007f035f24088e:   add    %r12,%r10
                     0x00007f035f240891:   xor    %r12,%r12
                     0x00007f035f240894:   cmp    %r10,%rax
                     0x00007f035f240897:   jne    0x00007f035ec2f080           ;   {runtime_call ic_miss_stub}
                     0x00007f035f24089d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   0.68%             0x00007f035f2408a0:   mov    %eax,-0x14000(%rsp)
   5.50%             0x00007f035f2408a7:   sub    $0x18,%rsp
   0.70%             0x00007f035f2408ab:   nop
                     0x00007f035f2408ac:   cmpl   $0x1,0x20(%r15)
   2.13%  ╭          0x00007f035f2408b4:   jne    0x00007f035f240972
   1.89%  │          0x00007f035f2408ba:   mov    %rbp,0x10(%rsp)
   0.27%  │          0x00007f035f2408bf:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 166)
          │          0x00007f035f2408c2:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 166)
   1.93%  │          0x00007f035f2408c4:   cmp    $0x21,%eax
          │╭         0x00007f035f2408c7:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
   2.20%  ││         0x00007f035f2408cd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   0.30%  ││         0x00007f035f2408d1:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
          ││         0x00007f035f2408d4:   cmp    $0x21,%eax
          ││╭        0x00007f035f2408d7:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 171)
   2.08%  │││        0x00007f035f2408dd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 172)
   1.59%  │││        0x00007f035f2408e0:   cmp    $0x21,%eax
          │││╭       0x00007f035f2408e3:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 173)
   2.17%  ││││       0x00007f035f2408e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 174)
          ││││       0x00007f035f2408ec:   cmp    $0x21,%eax
          ││││╭      0x00007f035f2408ef:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 175)
   2.25%  │││││      0x00007f035f2408f5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 176)
   1.09%  │││││      0x00007f035f2408f8:   nopl   0x0(%rax,%rax,1)
   2.43%  │││││      0x00007f035f240900:   cmp    $0x21,%eax
          │││││╭     0x00007f035f240903:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 177)
          ││││││     0x00007f035f240909:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   1.72%  ││││││     0x00007f035f24090c:   cmp    $0x21,%eax
          ││││││╭    0x00007f035f24090f:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 179)
   1.10%  │││││││    0x00007f035f240915:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 180)
   1.22%  │││││││    0x00007f035f240918:   nopl   0x0(%rax,%rax,1)
          │││││││    0x00007f035f240920:   cmp    $0x21,%eax
          │││││││╭   0x00007f035f240923:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 181)
   4.09%  ││││││││   0x00007f035f240929:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 182)
   1.16%  ││││││││   0x00007f035f24092c:   cmp    $0x21,%eax
          ││││││││╭  0x00007f035f24092f:   jl     0x00007f035f24094f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 183)
   1.19%  │││││││││  0x00007f035f240935:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 184)
   0.33%  │││││││││  0x00007f035f240938:   mov    0x10(%rsp),%rbp
   3.32%  │││││││││  0x00007f035f24093d:   add    $0x18,%rsp
   1.03%  │││││││││  0x00007f035f240941:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││  0x00007f035f240948:   ja     0x00007f035f240986
   0.88%  │││││││││  0x00007f035f24094e:   ret    
          │↘↘↘↘↘↘↘↘  0x00007f035f24094f:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
          │          0x00007f035f24095a:   movq   $0x14,0x490(%r15)
          │          0x00007f035f240965:   call   0x00007f035ec3517a           ; ImmutableOopMap {rsi=Oop }
          │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 166)
          │                                                                    ;   {runtime_call DeoptimizationBlob}
          │          0x00007f035f24096a:   nopl   0x0(%rax,%rax,1)
          ↘          0x00007f035f240972:   mov    %rbp,0x10(%rsp)
                     0x00007f035f240977:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  43.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 986 
  43.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 956 
   0.56%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.81%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 986 
  43.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 956 
   1.55%               kernel  [unknown] 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%                       <unknown> 
   0.01%            libjvm.so  defaultStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.09%       jvmci, level 4
   1.55%               kernel
   0.12%            libjvm.so
   0.11%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.077 ns/op
# Warmup Iteration   2: 7.039 ns/op
# Warmup Iteration   3: 6.961 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.961 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.961 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.961 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  6.961 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.961, 6.961, 6.961), stdev = 0.001
  CI (99.9%): [6.961, 6.962] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 215684 total address lines.
Perf output processed (skipped 60.187 seconds):
 Column 1: cycles (50884 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 976 

              0x00007fcaa323de90:   mov    0x18(%rsp),%rsi
              0x00007fcaa323de95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fcaa323dea0:   cmpb   $0x0,0x94(%rsi)
              0x00007fcaa323dea7:   jne    0x00007fcaa323df3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007fcaa323dead:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fcaa323deb6:   jmp    0x00007fcaa323decf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007fcaa323debb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   5.22%  │↗  0x00007fcaa323dec0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
          ││  0x00007fcaa323dec7:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007fcaa323deca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fcaa323decf:   mov    0x8(%rsp),%r10
   5.44%   │  0x00007fcaa323ded4:   mov    %r10,%rsi
           │  0x00007fcaa323ded7:   call   0x00007fcaa2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  28.99%   │  0x00007fcaa323dedc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fcaa323dee4:   mov    0x20(%rsp),%r10
   2.82%   │  0x00007fcaa323dee9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   5.61%   │  0x00007fcaa323deec:   mov    0x18(%rsp),%rsi
           │  0x00007fcaa323def1:   cmpb   $0x0,0x94(%rsi)
  21.92%   ╰  0x00007fcaa323def8:   je     0x00007fcaa323dec0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007fcaa323defa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@36 (line 239)
              0x00007fcaa323deff:   nop
              0x00007fcaa323df00:   call   0x00007fcab9fdcdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcaa323df05:   nop
              0x00007fcaa323df06:   mov    0x10(%rsp),%rdx
              0x00007fcaa323df0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007fcaa323df0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  70.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 947 

                # {method} {0x00007fca1c47c1b8} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fcaa3238180:   mov    0x8(%rsi),%r10d
                0x00007fcaa3238184:   movabs $0x7fca27000000,%r12
                0x00007fcaa323818e:   add    %r12,%r10
                0x00007fcaa3238191:   xor    %r12,%r12
                0x00007fcaa3238194:   cmp    %r10,%rax
                0x00007fcaa3238197:   jne    0x00007fcaa2c2f080           ;   {runtime_call ic_miss_stub}
                0x00007fcaa323819d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.02%        0x00007fcaa32381a0:   mov    %eax,-0x14000(%rsp)
   5.29%        0x00007fcaa32381a7:   sub    $0x18,%rsp
   0.01%        0x00007fcaa32381ab:   nop
                0x00007fcaa32381ac:   cmpl   $0x1,0x20(%r15)
   5.42%  ╭     0x00007fcaa32381b4:   jne    0x00007fcaa32381dc
   2.82%  │ ↗   0x00007fcaa32381ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 72)
   0.01%  │ │   0x00007fcaa32381bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 77)
          │ │   0x00007fcaa32381c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 72)
   3.38%  │ │   0x00007fcaa32381c3:   shl    $0x3,%r10d
   2.09%  │ │   0x00007fcaa32381c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 91)
   8.64%  │ │   0x00007fcaa32381ca:   add    $0x18,%rsp
   0.00%  │ │↗  0x00007fcaa32381ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fcaa32381d5:   ja     0x00007fcaa32381e9
   0.01%  ││││  0x00007fcaa32381db:   ret    
          ↘│││  0x00007fcaa32381dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007fcaa32381e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fcaa32381e6:   jmp    0x00007fcaa32381ba
           │ │  0x00007fcaa32381e8:   hlt    
           ↘ ╰  0x00007fcaa32381e9:   lea    -0x22(%rip),%rcx        # 0x00007fcaa32381ce
                0x00007fcaa32381f0:   mov    %rcx,0x468(%r15)
                0x00007fcaa32381f7:   jmp    0x00007fcaa2c36000           ;   {runtime_call SafepointBlob}
                0x00007fcaa32381fc:   hlt    
                0x00007fcaa32381fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 976 
  27.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 947 
   0.98%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.78%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 976 
  27.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 947 
   2.00%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%      jvmci, level 4
   2.00%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.866 ns/op
# Warmup Iteration   2: 13.874 ns/op
# Warmup Iteration   3: 13.669 ns/op
# Warmup Iteration   4: 13.892 ns/op
# Warmup Iteration   5: 13.738 ns/op
Iteration   1: 14.225 ns/op
Iteration   2: 13.754 ns/op
Iteration   3: 14.223 ns/op
Iteration   4: 13.976 ns/op
Iteration   5: 13.959 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  14.027 ±(99.9%) 0.768 ns/op [Average]
  (min, avg, max) = (13.754, 14.027, 14.225), stdev = 0.199
  CI (99.9%): [13.260, 14.795] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 212242 total address lines.
Perf output processed (skipped 60.171 seconds):
 Column 1: cycles (50770 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 976 

              0x00007f5c6b240790:   mov    0x18(%rsp),%rsi
              0x00007f5c6b240795:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5c6b2407a0:   cmpb   $0x0,0x94(%rsi)
              0x00007f5c6b2407a7:   jne    0x00007f5c6b24083a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f5c6b2407ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f5c6b2407b6:   jmp    0x00007f5c6b2407cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007f5c6b2407bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   2.67%  │↗  0x00007f5c6b2407c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007f5c6b2407c7:   test   %eax,(%r11)                  ;   {poll}
   1.37%  ││  0x00007f5c6b2407ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f5c6b2407cf:   mov    0x8(%rsp),%r10
   1.56%   │  0x00007f5c6b2407d4:   mov    %r10,%rsi
           │  0x00007f5c6b2407d7:   call   0x00007f5c6ac2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.13%   │  0x00007f5c6b2407dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f5c6b2407e4:   mov    0x20(%rsp),%r10
  21.72%   │  0x00007f5c6b2407e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
   2.56%   │  0x00007f5c6b2407ec:   mov    0x18(%rsp),%rsi
           │  0x00007f5c6b2407f1:   cmpb   $0x0,0x94(%rsi)
  11.22%   ╰  0x00007f5c6b2407f8:   je     0x00007f5c6b2407c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007f5c6b2407fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 239)
              0x00007f5c6b2407ff:   nop
              0x00007f5c6b240800:   call   0x00007f5c84765df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f5c6b240805:   nop
              0x00007f5c6b240806:   mov    0x10(%rsp),%rdx
              0x00007f5c6b24080b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f5c6b24080f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  41.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 945 

                # {method} {0x00007f5beb47c308} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x50]  (sp of caller)
                0x00007f5c6b2399a0:   mov    0x8(%rsi),%r10d
                0x00007f5c6b2399a4:   movabs $0x7f5bef000000,%r12
                0x00007f5c6b2399ae:   add    %r12,%r10
                0x00007f5c6b2399b1:   xor    %r12,%r12
                0x00007f5c6b2399b4:   cmp    %r10,%rax
                0x00007f5c6b2399b7:   jne    0x00007f5c6ac2f080           ;   {runtime_call ic_miss_stub}
                0x00007f5c6b2399bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.13%        0x00007f5c6b2399c0:   mov    %eax,-0x14000(%rsp)
   4.00%        0x00007f5c6b2399c7:   sub    $0x48,%rsp
   0.85%        0x00007f5c6b2399cb:   nop
                0x00007f5c6b2399cc:   cmpl   $0x1,0x20(%r15)
   0.91%  ╭     0x00007f5c6b2399d4:   jne    0x00007f5c6b239a2e
   1.38%  │ ↗   0x00007f5c6b2399da:   mov    %rbp,0x40(%rsp)
   0.38%  │ │   0x00007f5c6b2399df:   mov    0x10(%rsi),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 107)
          │ │   0x00007f5c6b2399e2:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.89%  │ │   0x00007f5c6b2399e6:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 107)
   1.43%  │ │   0x00007f5c6b2399e8:   mov    $0x2,%ecx                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   0.40%  │ │   0x00007f5c6b2399ed:   mov    %r10d,0x4(%rsp)
   1.48%  │ │   0x00007f5c6b2399f2:   nop
   0.75%  │ │   0x00007f5c6b2399f3:   call   0x00007f5c6b239440           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
          │ │                                                             ;   {optimized virtual_call}
   7.96%  │ │   0x00007f5c6b2399f8:   nopl   0x1e8(%rax,%rax,1)           ;   {other}
          │ │   0x00007f5c6b239a00:   mov    0x4(%rsp),%r10d
   0.54%  │ │   0x00007f5c6b239a05:   mov    %r10d,%r11d
   2.13%  │ │   0x00007f5c6b239a08:   shl    $0x2,%r11d
   0.56%  │ │   0x00007f5c6b239a0c:   shl    %r10d
   0.21%  │ │   0x00007f5c6b239a0f:   add    %r10d,%r11d
   2.33%  │ │   0x00007f5c6b239a12:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   2.88%  │ │   0x00007f5c6b239a15:   mov    0x40(%rsp),%rbp
          │ │   0x00007f5c6b239a1a:   add    $0x48,%rsp
          │ │   0x00007f5c6b239a1e:   xchg   %ax,%ax
          │ │↗  0x00007f5c6b239a20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f5c6b239a27:   ja     0x00007f5c6b239a3b
   2.81%  ││││  0x00007f5c6b239a2d:   ret    
          ↘│││  0x00007f5c6b239a2e:   mov    %rbp,0x40(%rsp)
           │││  0x00007f5c6b239a33:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f5c6b239a38:   jmp    0x00007f5c6b2399da
           │ │  0x00007f5c6b239a3a:   hlt    
           ↘ ╰  0x00007f5c6b239a3b:   lea    -0x22(%rip),%rcx        # 0x00007f5c6b239a20
                0x00007f5c6b239a42:   mov    %rcx,0x468(%r15)
                0x00007f5c6b239a49:   jmp    0x00007f5c6ac36000           ;   {runtime_call SafepointBlob}
                0x00007f5c6b239a4e:   hlt    
              [Exception Handler]
                0x00007f5c6b239a4f:   call   0x00007f5c6adb3e00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  33.02%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 944 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
            0x00007f5c6b2394cc:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
            0x00007f5c6b2394d0:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   1.49%    0x00007f5c6b2394d4:   add    0x4(%rsp),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
   6.27%    0x00007f5c6b2394d8:   mov    0x4(%rsp),%r10d
   0.21%    0x00007f5c6b2394dd:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
   3.06%    0x00007f5c6b2394e0:   mov    0x40(%rsp),%rbp
            0x00007f5c6b2394e5:   add    $0x48,%rsp
            0x00007f5c6b2394e9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007f5c6b2394f0:   ja     0x00007f5c6b239548
            0x00007f5c6b2394f6:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 224)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 227)
            0x00007f5c6b2394f7:   mov    %edx,%eax
            0x00007f5c6b2394f9:   mov    0x40(%rsp),%rbp
            0x00007f5c6b2394fe:   add    $0x48,%rsp
....................................................................................................
  11.03%  <total for region 3>

....[Hottest Regions]...............................................................................
  41.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 976 
  33.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 945 
  11.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 944 
   8.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 944 
   4.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 944 
   0.36%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   1.14%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  41.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 976 
  33.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 945 
  23.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 944 
   1.61%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%           libjvm.so  PlatformMonitor::wait 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.18%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%      jvmci, level 4
   1.61%              kernel
   0.19%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.05%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:20

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

Benchmark                                                 Mode  Cnt   Score    Error  Units
LockElisionBenchmark.baseline                             avgt    5   6.966 ±  0.011  ns/op
LockElisionBenchmark.baseline:asm                         avgt          NaN             ---
LockElisionBenchmark.chain_method_calls                   avgt    5   6.964 ±  0.023  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt          NaN             ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5   9.511 ±  0.088  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt          NaN             ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5   9.568 ±  0.131  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt          NaN             ---
LockElisionBenchmark.nested_synchronized                  avgt    5   6.961 ±  0.001  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt          NaN             ---
LockElisionBenchmark.recursive_method_calls               avgt    5  14.027 ±  0.768  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt          NaN             ---
