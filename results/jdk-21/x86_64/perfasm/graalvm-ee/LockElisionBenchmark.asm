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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.780 ns/op
# Warmup Iteration   2: 6.962 ns/op
# Warmup Iteration   3: 6.997 ns/op
# Warmup Iteration   4: 6.962 ns/op
# Warmup Iteration   5: 6.963 ns/op
Iteration   1: 6.963 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.962 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.962 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  6.962 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (6.962, 6.962, 6.963), stdev = 0.001
  CI (99.9%): [6.961, 6.964] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 224828 total address lines.
Perf output processed (skipped 60.603 seconds):
 Column 1: cycles (50421 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 7, compile id 1010 

              0x00007ff67ad83373:   mov    0x10(%rsp),%rdx
              0x00007ff67ad83378:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@10 (line 234)
              0x00007ff67ad8337c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007ff67ad83385:   jmp    0x00007ff67ad833af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          │   0x00007ff67ad8338a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ff67ad83395:   data16 data16 xchg %ax,%ax
          │   0x00007ff67ad83399:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   5.39%  │↗  0x00007ff67ad833a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
          ││  0x00007ff67ad833a7:   test   %eax,(%r11)                  ;   {poll}
   0.00%  ││  0x00007ff67ad833aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 236)
          ↘│  0x00007ff67ad833af:   mov    0x8(%rsp),%r10
   5.50%   │  0x00007ff67ad833b4:   mov    %r10,%rsi
           │  0x00007ff67ad833b7:   call   0x00007ff67a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  27.30%   │  0x00007ff67ad833bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007ff67ad833c4:   mov    0x20(%rsp),%r10
   2.67%   │  0x00007ff67ad833c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 237)
   5.43%   │  0x00007ff67ad833cc:   mov    0x18(%rsp),%rsi
           │  0x00007ff67ad833d1:   cmpb   $0x0,0x94(%rsi)
  25.77%   ╰  0x00007ff67ad833d8:   je     0x00007ff67ad833a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
              0x00007ff67ad833da:   mov    %r10,0x20(%rsp)
              0x00007ff67ad833df:   nop
              0x00007ff67ad833e0:   call   0x00007ff692ce6df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff67ad833e5:   nop
              0x00007ff67ad833e6:   mov    0x10(%rsp),%rdx
              0x00007ff67ad833eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007ff67ad833ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 240)
....................................................................................................
  72.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 980 

                # {method} {0x00007ff5f4485608} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007ff67ad80400:   mov    0x8(%rsi),%r10d
                0x00007ff67ad80404:   movabs $0x7ff5ff000000,%r12
                0x00007ff67ad8040e:   add    %r12,%r10
                0x00007ff67ad80411:   xor    %r12,%r12
                0x00007ff67ad80414:   cmp    %r10,%rax
                0x00007ff67ad80417:   jne    0x00007ff67a764080           ;   {runtime_call ic_miss_stub}
                0x00007ff67ad8041d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.00%        0x00007ff67ad80420:   mov    %eax,-0x14000(%rsp)
   5.41%        0x00007ff67ad80427:   sub    $0x18,%rsp
   0.01%        0x00007ff67ad8042b:   nop
                0x00007ff67ad8042c:   cmpl   $0x1,0x20(%r15)
   5.39%  ╭     0x00007ff67ad80434:   jne    0x00007ff67ad8045c
   2.18%  │ ↗   0x00007ff67ad8043a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@1 (line 200)
          │ │   0x00007ff67ad8043d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 202)
          │ │   0x00007ff67ad80441:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@5 (line 200)
   3.73%  │ │   0x00007ff67ad80443:   shl    $0x3,%r10d
   1.72%  │ │   0x00007ff67ad80447:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 209)
   6.94%  │ │   0x00007ff67ad8044a:   add    $0x18,%rsp
          │ │↗  0x00007ff67ad8044e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007ff67ad80455:   ja     0x00007ff67ad80469
   1.16%  ││││  0x00007ff67ad8045b:   ret    
          ↘│││  0x00007ff67ad8045c:   mov    %rbp,0x10(%rsp)
           │││  0x00007ff67ad80461:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007ff67ad80466:   jmp    0x00007ff67ad8043a
           │ │  0x00007ff67ad80468:   hlt    
           ↘ ╰  0x00007ff67ad80469:   lea    -0x22(%rip),%rcx        # 0x00007ff67ad8044e
                0x00007ff67ad80470:   mov    %rcx,0x468(%r15)
                0x00007ff67ad80477:   jmp    0x00007ff67a76b000           ;   {runtime_call SafepointBlob}
                0x00007ff67ad8047c:   hlt    
                0x00007ff67ad8047d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  26.54%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 7, compile id 1010 
  26.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 980 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.82%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 7, compile id 1010 
  26.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline, version 2, compile id 980 
   1.06%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  __strncmp_avx2 
   0.00%         libc-2.31.so  __stpcpy_avx2 
   0.18%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.59%       jvmci, level 4
   1.06%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2132283.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.798 ns/op
# Warmup Iteration   2: 6.962 ns/op
# Warmup Iteration   3: 7.013 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.963 ns/op
Iteration   1: 6.964 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.963 ns/op
Iteration   4: 6.962 ns/op
Iteration   5: 6.964 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  6.963 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.962, 6.963, 6.964), stdev = 0.001
  CI (99.9%): [6.960, 6.967] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 224829 total address lines.
Perf output processed (skipped 60.657 seconds):
 Column 1: cycles (50523 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 974 

              0x00007fd5eed822f3:   mov    0x10(%rsp),%rdx
              0x00007fd5eed822f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fd5eed822fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fd5eed82305:   jmp    0x00007fd5eed8232f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fd5eed8230a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd5eed82315:   data16 data16 xchg %ax,%ax
          │   0x00007fd5eed82319:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   5.60%  │↗  0x00007fd5eed82320:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fd5eed82327:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fd5eed8232a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fd5eed8232f:   mov    0x8(%rsp),%r10
   5.42%   │  0x00007fd5eed82334:   mov    %r10,%rsi
           │  0x00007fd5eed82337:   call   0x00007fd5ee764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  29.31%   │  0x00007fd5eed8233c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fd5eed82344:   mov    0x20(%rsp),%r10
   2.64%   │  0x00007fd5eed82349:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 237)
   5.61%   │  0x00007fd5eed8234c:   mov    0x18(%rsp),%rsi
           │  0x00007fd5eed82351:   cmpb   $0x0,0x94(%rsi)
  21.99%   ╰  0x00007fd5eed82358:   je     0x00007fd5eed82320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fd5eed8235a:   mov    %r10,0x20(%rsp)
              0x00007fd5eed8235f:   nop
              0x00007fd5eed82360:   call   0x00007fd605b39df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd5eed82365:   nop
              0x00007fd5eed82366:   mov    0x10(%rsp),%rdx
              0x00007fd5eed8236b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fd5eed8236f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  70.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 946 

                #           [sp+0x20]  (sp of caller)
                0x00007fd5eed7f680:   mov    0x8(%rsi),%r10d
                0x00007fd5eed7f684:   movabs $0x7fd573000000,%r12
                0x00007fd5eed7f68e:   add    %r12,%r10
                0x00007fd5eed7f691:   xor    %r12,%r12
                0x00007fd5eed7f694:   cmp    %r10,%rax
                0x00007fd5eed7f697:   jne    0x00007fd5ee764080           ;   {runtime_call ic_miss_stub}
                0x00007fd5eed7f69d:   data16 xchg %ax,%ax
              [Verified Entry Point]
                0x00007fd5eed7f6a0:   mov    %eax,-0x14000(%rsp)
   5.36%        0x00007fd5eed7f6a7:   sub    $0x18,%rsp
   0.00%        0x00007fd5eed7f6ab:   nop
                0x00007fd5eed7f6ac:   cmpl   $0x1,0x20(%r15)
   5.42%  ╭     0x00007fd5eed7f6b4:   jne    0x00007fd5eed7f6dc
   2.71%  │ ↗   0x00007fd5eed7f6ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@1 (line 115)
          │ │   0x00007fd5eed7f6bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@9 (line 117)
          │ │   0x00007fd5eed7f6c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@5 (line 115)
   3.19%  │ │   0x00007fd5eed7f6c3:   shl    $0x3,%r10d
   2.22%  │ │   0x00007fd5eed7f6c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 124)
   8.91%  │ │   0x00007fd5eed7f6ca:   add    $0x18,%rsp
          │ │↗  0x00007fd5eed7f6ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fd5eed7f6d5:   ja     0x00007fd5eed7f6e9
   0.00%  ││││  0x00007fd5eed7f6db:   ret    
          ↘│││  0x00007fd5eed7f6dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007fd5eed7f6e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fd5eed7f6e6:   jmp    0x00007fd5eed7f6ba
           │ │  0x00007fd5eed7f6e8:   hlt    
           ↘ ╰  0x00007fd5eed7f6e9:   lea    -0x22(%rip),%rcx        # 0x00007fd5eed7f6ce
                0x00007fd5eed7f6f0:   mov    %rcx,0x468(%r15)
                0x00007fd5eed7f6f7:   jmp    0x00007fd5ee76b000           ;   {runtime_call SafepointBlob}
                0x00007fd5eed7f6fc:   hlt    
                0x00007fd5eed7f6fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 974 
  27.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 946 
   0.19%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.86%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 974 
  27.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls, version 2, compile id 946 
   1.23%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_old_init 
   0.14%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%      jvmci, level 4
   1.23%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.120 ns/op
# Warmup Iteration   2: 9.022 ns/op
# Warmup Iteration   3: 9.676 ns/op
# Warmup Iteration   4: 9.410 ns/op
# Warmup Iteration   5: 9.427 ns/op
Iteration   1: 9.427 ns/op
Iteration   2: 9.428 ns/op
Iteration   3: 9.420 ns/op
Iteration   4: 9.418 ns/op
Iteration   5: 9.420 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  9.422 ±(99.9%) 0.016 ns/op [Average]
  (min, avg, max) = (9.418, 9.422, 9.428), stdev = 0.004
  CI (99.9%): [9.406, 9.439] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 223667 total address lines.
Perf output processed (skipped 60.521 seconds):
 Column 1: cycles (51471 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 985 

              0x00007fc80ed826f3:   mov    0x10(%rsp),%rdx
              0x00007fc80ed826f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fc80ed826fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fc80ed82705:   jmp    0x00007fc80ed8272f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fc80ed8270a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc80ed82715:   data16 data16 xchg %ax,%ax
          │   0x00007fc80ed82719:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   3.98%  │↗  0x00007fc80ed82720:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fc80ed82727:   test   %eax,(%r11)                  ;   {poll}
   2.17%  ││  0x00007fc80ed8272a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fc80ed8272f:   mov    0x8(%rsp),%r10
   2.40%   │  0x00007fc80ed82734:   mov    %r10,%rsi
           │  0x00007fc80ed82737:   call   0x00007fc80e764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  22.16%   │  0x00007fc80ed8273c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fc80ed82744:   mov    0x20(%rsp),%r10
   1.35%   │  0x00007fc80ed82749:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   4.01%   │  0x00007fc80ed8274c:   mov    0x18(%rsp),%rsi
           │  0x00007fc80ed82751:   cmpb   $0x0,0x94(%rsi)
  15.64%   ╰  0x00007fc80ed82758:   je     0x00007fc80ed82720           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fc80ed8275a:   mov    %r10,0x20(%rsp)
              0x00007fc80ed8275f:   nop
              0x00007fc80ed82760:   call   0x00007fc826b80df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fc80ed82765:   nop
              0x00007fc80ed82766:   mov    0x10(%rsp),%rdx
              0x00007fc80ed8276b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fc80ed8276f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  51.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 958 

             # {method} {0x00007fc7884864e0} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fc80ed7f700:   mov    0x8(%rsi),%r10d
             0x00007fc80ed7f704:   movabs $0x7fc793000000,%r12
             0x00007fc80ed7f70e:   add    %r12,%r10
             0x00007fc80ed7f711:   xor    %r12,%r12
             0x00007fc80ed7f714:   cmp    %r10,%rax
             0x00007fc80ed7f717:   jne    0x00007fc80e764080           ;   {runtime_call ic_miss_stub}
             0x00007fc80ed7f71d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   1.55%     0x00007fc80ed7f720:   mov    %eax,-0x14000(%rsp)
   2.55%     0x00007fc80ed7f727:   sub    $0x18,%rsp
   1.61%     0x00007fc80ed7f72b:   nop
             0x00007fc80ed7f72c:   cmpl   $0x1,0x20(%r15)
   2.39%     0x00007fc80ed7f734:   jne    0x00007fc80ed7f834
   1.59%     0x00007fc80ed7f73a:   mov    %rbp,0x10(%rsp)
   0.92%     0x00007fc80ed7f73f:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@1 (line 132)
             0x00007fc80ed7f742:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 132)
   2.05%     0x00007fc80ed7f744:   cmp    $0x21,%eax
          ╭  0x00007fc80ed7f747:   jl     0x00007fc80ed7f7cf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
   1.89%  │  0x00007fc80ed7f74d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
   0.88%  │  0x00007fc80ed7f751:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 136)
          │  0x00007fc80ed7f754:   cmp    $0x21,%eax
          │  0x00007fc80ed7f757:   jl     0x00007fc80ed7f822           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 138)
   2.54%  │  0x00007fc80ed7f75d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 139)
   0.68%  │  0x00007fc80ed7f760:   cmp    $0x21,%eax
          │  0x00007fc80ed7f763:   jl     0x00007fc80ed7f7f5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
   5.15%  │  0x00007fc80ed7f769:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 142)
          │  0x00007fc80ed7f76c:   cmp    $0x21,%eax
          │  0x00007fc80ed7f76f:   jl     0x00007fc80ed7f82b           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 144)
   1.33%  │  0x00007fc80ed7f775:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 145)
   0.07%  │  0x00007fc80ed7f778:   nopl   0x0(%rax,%rax,1)
   5.78%  │  0x00007fc80ed7f780:   cmp    $0x21,%eax
          │  0x00007fc80ed7f783:   jl     0x00007fc80ed7f819           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 147)
          │  0x00007fc80ed7f789:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 148)
   0.87%  │  0x00007fc80ed7f78c:   cmp    $0x21,%eax
          │  0x00007fc80ed7f78f:   jl     0x00007fc80ed7f807           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 150)
   0.09%  │  0x00007fc80ed7f795:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 151)
   2.93%  │  0x00007fc80ed7f798:   nopl   0x0(%rax,%rax,1)
          │  0x00007fc80ed7f7a0:   cmp    $0x21,%eax
          │  0x00007fc80ed7f7a3:   jl     0x00007fc80ed7f7fe           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 153)
   2.08%  │  0x00007fc80ed7f7a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 154)
   0.10%  │  0x00007fc80ed7f7ac:   cmp    $0x21,%eax
          │  0x00007fc80ed7f7af:   jl     0x00007fc80ed7f810           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@94 (line 156)
   2.88%  │  0x00007fc80ed7f7b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@99 (line 157)
   0.81%  │  0x00007fc80ed7f7b8:   mov    0x10(%rsp),%rbp
   1.78%  │  0x00007fc80ed7f7bd:   add    $0x18,%rsp
   0.10%  │  0x00007fc80ed7f7c1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc80ed7f7c8:   ja     0x00007fc80ed7f846
   2.24%  │  0x00007fc80ed7f7ce:   ret    
          ↘  0x00007fc80ed7f7cf:   mov    $0x14,%r10
             0x00007fc80ed7f7d6:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 135)
             0x00007fc80ed7f7e1:   mov    %r10,0x490(%r15)
             0x00007fc80ed7f7e8:   call   0x00007fc80e76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@0 (line 132)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fc80ed7f7ed:   nopl   0x0(%rax,%rax,1)             ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 141)
....................................................................................................
  44.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 985 
  44.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 958 
   2.01%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.85%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 985 
  44.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls, version 2, compile id 958 
   3.01%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.58%      jvmci, level 4
   3.01%              kernel
   0.17%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-2132424.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.217 ns/op
# Warmup Iteration   2: 9.007 ns/op
# Warmup Iteration   3: 9.564 ns/op
# Warmup Iteration   4: 9.434 ns/op
# Warmup Iteration   5: 9.450 ns/op
Iteration   1: 9.415 ns/op
Iteration   2: 9.445 ns/op
Iteration   3: 9.425 ns/op
Iteration   4: 9.419 ns/op
Iteration   5: 9.411 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  9.423 ±(99.9%) 0.051 ns/op [Average]
  (min, avg, max) = (9.411, 9.423, 9.445), stdev = 0.013
  CI (99.9%): [9.372, 9.474] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 229187 total address lines.
Perf output processed (skipped 60.838 seconds):
 Column 1: cycles (50594 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 997 

              0x00007fa692d84173:   mov    0x10(%rsp),%rdx
              0x00007fa692d84178:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fa692d8417c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa692d84185:   jmp    0x00007fa692d841af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fa692d8418a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa692d84195:   data16 data16 xchg %ax,%ax
          │   0x00007fa692d84199:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   4.11%  │↗  0x00007fa692d841a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fa692d841a7:   test   %eax,(%r11)                  ;   {poll}
   2.88%  ││  0x00007fa692d841aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fa692d841af:   mov    0x8(%rsp),%r10
   1.69%   │  0x00007fa692d841b4:   mov    %r10,%rsi
           │  0x00007fa692d841b7:   call   0x00007fa692764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  23.52%   │  0x00007fa692d841bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fa692d841c4:   mov    0x20(%rsp),%r10
   1.73%   │  0x00007fa692d841c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   4.12%   │  0x00007fa692d841cc:   mov    0x18(%rsp),%rsi
           │  0x00007fa692d841d1:   cmpb   $0x0,0x94(%rsi)
  17.07%   ╰  0x00007fa692d841d8:   je     0x00007fa692d841a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fa692d841da:   mov    %r10,0x20(%rsp)
              0x00007fa692d841df:   nop
              0x00007fa692d841e0:   call   0x00007fa6abd9adf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa692d841e5:   nop
              0x00007fa692d841e6:   mov    0x10(%rsp),%rdx
              0x00007fa692d841eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fa692d841ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  55.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 969 

                     # {method} {0x00007fa613486648} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                     #           [sp+0x20]  (sp of caller)
                     0x00007fa692d80f00:   mov    0x8(%rsi),%r10d
                     0x00007fa692d80f04:   movabs $0x7fa617000000,%r12
                     0x00007fa692d80f0e:   add    %r12,%r10
                     0x00007fa692d80f11:   xor    %r12,%r12
                     0x00007fa692d80f14:   cmp    %r10,%rax
                     0x00007fa692d80f17:   jne    0x00007fa692764080           ;   {runtime_call ic_miss_stub}
                     0x00007fa692d80f1d:   data16 xchg %ax,%ax
                   [Verified Entry Point]
   2.27%             0x00007fa692d80f20:   mov    %eax,-0x14000(%rsp)
   1.87%             0x00007fa692d80f27:   sub    $0x18,%rsp
   2.27%             0x00007fa692d80f2b:   nop
                     0x00007fa692d80f2c:   cmpl   $0x1,0x20(%r15)
   1.65%  ╭          0x00007fa692d80f34:   jne    0x00007fa692d80ff2
   1.05%  │          0x00007fa692d80f3a:   mov    %rbp,0x10(%rsp)
   1.58%  │          0x00007fa692d80f3f:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@1 (line 166)
          │          0x00007fa692d80f42:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 166)
   1.67%  │          0x00007fa692d80f44:   cmp    $0x21,%eax
          │╭         0x00007fa692d80f47:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
   1.12%  ││         0x00007fa692d80f4d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
   1.53%  ││         0x00007fa692d80f51:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 170)
          ││         0x00007fa692d80f54:   cmp    $0x21,%eax
          ││╭        0x00007fa692d80f57:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 171)
   1.90%  │││        0x00007fa692d80f5d:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 172)
   0.52%  │││        0x00007fa692d80f60:   cmp    $0x21,%eax
          │││╭       0x00007fa692d80f63:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 173)
   3.29%  ││││       0x00007fa692d80f69:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 174)
          ││││       0x00007fa692d80f6c:   cmp    $0x21,%eax
          ││││╭      0x00007fa692d80f6f:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 175)
   1.92%  │││││      0x00007fa692d80f75:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 176)
   0.09%  │││││      0x00007fa692d80f78:   nopl   0x0(%rax,%rax,1)
   4.22%  │││││      0x00007fa692d80f80:   cmp    $0x21,%eax
          │││││╭     0x00007fa692d80f83:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 177)
          ││││││     0x00007fa692d80f89:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 178)
   1.51%  ││││││     0x00007fa692d80f8c:   cmp    $0x21,%eax
          ││││││╭    0x00007fa692d80f8f:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 179)
   0.09%  │││││││    0x00007fa692d80f95:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 180)
   2.50%  │││││││    0x00007fa692d80f98:   nopl   0x0(%rax,%rax,1)
          │││││││    0x00007fa692d80fa0:   cmp    $0x21,%eax
          │││││││╭   0x00007fa692d80fa3:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 181)
   3.97%  ││││││││   0x00007fa692d80fa9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 182)
   0.09%  ││││││││   0x00007fa692d80fac:   cmp    $0x21,%eax
          ││││││││╭  0x00007fa692d80faf:   jl     0x00007fa692d80fcf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@94 (line 183)
   2.48%  │││││││││  0x00007fa692d80fb5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 217)
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@99 (line 184)
   0.45%  │││││││││  0x00007fa692d80fb8:   mov    0x10(%rsp),%rbp
   2.88%  │││││││││  0x00007fa692d80fbd:   add    $0x18,%rsp
   0.08%  │││││││││  0x00007fa692d80fc1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││  0x00007fa692d80fc8:   ja     0x00007fa692d81006
   1.92%  │││││││││  0x00007fa692d80fce:   ret    
          │↘↘↘↘↘↘↘↘  0x00007fa692d80fcf:   movl   $0xffffffed,0x484(%r15)      ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 169)
          │          0x00007fa692d80fda:   movq   $0x14,0x490(%r15)
          │          0x00007fa692d80fe5:   call   0x00007fa69276a17a           ; ImmutableOopMap {rsi=Oop }
          │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@0 (line 166)
          │                                                                    ;   {runtime_call DeoptimizationBlob}
          │          0x00007fa692d80fea:   nopl   0x0(%rax,%rax,1)
          ↘          0x00007fa692d80ff2:   mov    %rbp,0x10(%rsp)
                     0x00007fa692d80ff7:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  42.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 997 
  42.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 969 
   0.36%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.94%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 997 
  42.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls, version 2, compile id 969 
   1.69%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.11%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.02%      jvmci, level 4
   1.69%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.782 ns/op
# Warmup Iteration   2: 6.983 ns/op
# Warmup Iteration   3: 6.984 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.963 ns/op
Iteration   1: 6.963 ns/op
Iteration   2: 6.963 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.961 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  6.962 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (6.961, 6.962, 6.963), stdev = 0.001
  CI (99.9%): [6.959, 6.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 228472 total address lines.
Perf output processed (skipped 60.700 seconds):
 Column 1: cycles (50787 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 996 

              0x00007f9816d81373:   mov    0x10(%rsp),%rdx
              0x00007f9816d81378:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@10 (line 234)
              0x00007f9816d8137c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f9816d81385:   jmp    0x00007f9816d813af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          │   0x00007f9816d8138a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f9816d81395:   data16 data16 xchg %ax,%ax
          │   0x00007f9816d81399:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
   5.41%  │↗  0x00007f9816d813a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
          ││  0x00007f9816d813a7:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f9816d813aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f9816d813af:   mov    0x8(%rsp),%r10
   5.29%   │  0x00007f9816d813b4:   mov    %r10,%rsi
           │  0x00007f9816d813b7:   call   0x00007f9816764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual nested_synchronized {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  29.71%   │  0x00007f9816d813bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f9816d813c4:   mov    0x20(%rsp),%r10
   2.70%   │  0x00007f9816d813c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@26 (line 237)
   5.36%   │  0x00007f9816d813cc:   mov    0x18(%rsp),%rsi
           │  0x00007f9816d813d1:   cmpb   $0x0,0x94(%rsi)
  21.73%   ╰  0x00007f9816d813d8:   je     0x00007f9816d813a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@33 (line 238)
              0x00007f9816d813da:   mov    %r10,0x20(%rsp)
              0x00007f9816d813df:   nop
              0x00007f9816d813e0:   call   0x00007f98304c2df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f9816d813e5:   nop
              0x00007f9816d813e6:   mov    0x10(%rsp),%rdx
              0x00007f9816d813eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@40 (line 239)
              0x00007f9816d813ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub@46 (line 240)
....................................................................................................
  70.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 967 

                # {method} {0x00007f979747c1b8} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f9816d7e700:   mov    0x8(%rsi),%r10d
                0x00007f9816d7e704:   movabs $0x7f979b000000,%r12
                0x00007f9816d7e70e:   add    %r12,%r10
                0x00007f9816d7e711:   xor    %r12,%r12
                0x00007f9816d7e714:   cmp    %r10,%rax
                0x00007f9816d7e717:   jne    0x00007f9816764080           ;   {runtime_call ic_miss_stub}
                0x00007f9816d7e71d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.01%        0x00007f9816d7e720:   mov    %eax,-0x14000(%rsp)
   5.37%        0x00007f9816d7e727:   sub    $0x18,%rsp
   0.00%        0x00007f9816d7e72b:   nop
                0x00007f9816d7e72c:   cmpl   $0x1,0x20(%r15)
   5.48%  ╭     0x00007f9816d7e734:   jne    0x00007f9816d7e75c
   2.80%  │ ↗   0x00007f9816d7e73a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@1 (line 72)
          │ │   0x00007f9816d7e73d:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@21 (line 77)
          │ │   0x00007f9816d7e741:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@5 (line 72)
   3.13%  │ │   0x00007f9816d7e743:   shl    $0x3,%r10d
   2.16%  │ │   0x00007f9816d7e747:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized@108 (line 91)
   8.70%  │ │   0x00007f9816d7e74a:   add    $0x18,%rsp
          │ │↗  0x00007f9816d7e74e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f9816d7e755:   ja     0x00007f9816d7e769
   0.00%  ││││  0x00007f9816d7e75b:   ret    
          ↘│││  0x00007f9816d7e75c:   mov    %rbp,0x10(%rsp)
           │││  0x00007f9816d7e761:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f9816d7e766:   jmp    0x00007f9816d7e73a
           │ │  0x00007f9816d7e768:   hlt    
           ↘ ╰  0x00007f9816d7e769:   lea    -0x22(%rip),%rcx        # 0x00007f9816d7e74e
                0x00007f9816d7e770:   mov    %rcx,0x468(%r15)
                0x00007f9816d7e777:   jmp    0x00007f981676b000           ;   {runtime_call SafepointBlob}
                0x00007f9816d7e77c:   hlt    
                0x00007f9816d7e77d:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.66%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 996 
  27.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 967 
   0.63%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.89%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 996 
  27.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::nested_synchronized, version 1, compile id 967 
   1.72%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%      jvmci, level 4
   1.72%              kernel
   0.13%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.796 ns/op
# Warmup Iteration   2: 7.017 ns/op
# Warmup Iteration   3: 7.023 ns/op
# Warmup Iteration   4: 6.972 ns/op
# Warmup Iteration   5: 6.981 ns/op
Iteration   1: 7.002 ns/op
Iteration   2: 6.992 ns/op
Iteration   3: 6.983 ns/op
Iteration   4: 6.997 ns/op
Iteration   5: 6.996 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  6.994 ±(99.9%) 0.027 ns/op [Average]
  (min, avg, max) = (6.983, 6.994, 7.002), stdev = 0.007
  CI (99.9%): [6.967, 7.021] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 228242 total address lines.
Perf output processed (skipped 60.714 seconds):
 Column 1: cycles (50730 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1011 

              0x00007fa406d830f3:   mov    0x10(%rsp),%rdx
              0x00007fa406d830f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 234)
              0x00007fa406d830fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa406d83105:   jmp    0x00007fa406d8312f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          │   0x00007fa406d8310a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa406d83115:   data16 data16 xchg %ax,%ax
          │   0x00007fa406d83119:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   5.31%  │↗  0x00007fa406d83120:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
          ││  0x00007fa406d83127:   test   %eax,(%r11)                  ;   {poll}
   0.06%  ││  0x00007fa406d8312a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fa406d8312f:   mov    0x8(%rsp),%r10
   5.26%   │  0x00007fa406d83134:   mov    %r10,%rsi
           │  0x00007fa406d83137:   call   0x00007fa406764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
  29.35%   │  0x00007fa406d8313c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fa406d83144:   mov    0x20(%rsp),%r10
   3.21%   │  0x00007fa406d83149:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 237)
   5.50%   │  0x00007fa406d8314c:   mov    0x18(%rsp),%rsi
           │  0x00007fa406d83151:   cmpb   $0x0,0x94(%rsi)
  21.44%   ╰  0x00007fa406d83158:   je     0x00007fa406d83120           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fa406d8315a:   mov    %r10,0x20(%rsp)
              0x00007fa406d8315f:   nop
              0x00007fa406d83160:   call   0x00007fa41ef6cdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa406d83165:   nop
              0x00007fa406d83166:   mov    0x10(%rsp),%rdx
              0x00007fa406d8316b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fa406d8316f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  70.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 980 

                # {method} {0x00007fa38747c308} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fa406d7c580:   mov    0x8(%rsi),%r10d
                0x00007fa406d7c584:   movabs $0x7fa38b000000,%r12
                0x00007fa406d7c58e:   add    %r12,%r10
                0x00007fa406d7c591:   xor    %r12,%r12
                0x00007fa406d7c594:   cmp    %r10,%rax
                0x00007fa406d7c597:   jne    0x00007fa406764080           ;   {runtime_call ic_miss_stub}
                0x00007fa406d7c59d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.06%        0x00007fa406d7c5a0:   mov    %eax,-0x14000(%rsp)
   5.34%        0x00007fa406d7c5a7:   sub    $0x18,%rsp
   0.04%        0x00007fa406d7c5ab:   nop
                0x00007fa406d7c5ac:   cmpl   $0x1,0x20(%r15)
   5.40%  ╭     0x00007fa406d7c5b4:   jne    0x00007fa406d7c5dc
   2.85%  │ ↗   0x00007fa406d7c5ba:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@1 (line 107)
   0.01%  │ │   0x00007fa406d7c5bd:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
          │ │   0x00007fa406d7c5c1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 107)
   3.13%  │ │   0x00007fa406d7c5c3:   shl    $0x3,%r10d
   2.12%  │ │   0x00007fa406d7c5c7:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 227)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 108)
   8.54%  │ │   0x00007fa406d7c5ca:   add    $0x18,%rsp
          │ │↗  0x00007fa406d7c5ce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fa406d7c5d5:   ja     0x00007fa406d7c5e9
   0.07%  ││││  0x00007fa406d7c5db:   ret    
          ↘│││  0x00007fa406d7c5dc:   mov    %rbp,0x10(%rsp)
           │││  0x00007fa406d7c5e1:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fa406d7c5e6:   jmp    0x00007fa406d7c5ba
           │ │  0x00007fa406d7c5e8:   hlt    
           ↘ ╰  0x00007fa406d7c5e9:   lea    -0x22(%rip),%rcx        # 0x00007fa406d7c5ce
                0x00007fa406d7c5f0:   mov    %rcx,0x468(%r15)
                0x00007fa406d7c5f7:   jmp    0x00007fa40676b000           ;   {runtime_call SafepointBlob}
                0x00007fa406d7c5fc:   hlt    
                0x00007fa406d7c5fd:   data16 xchg %ax,%ax
              [Exception Handler]
....................................................................................................
  27.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1011 
  27.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 980 
   0.27%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.33%  <...other 395 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1011 
  27.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls, version 2, compile id 980 
   1.90%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.17%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.69%      jvmci, level 4
   1.90%              kernel
   0.17%           libjvm.so
   0.07%        libc-2.31.so
   0.07%                    
   0.05%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:22

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

Benchmark                                                 Mode  Cnt  Score   Error  Units
LockElisionBenchmark.baseline                             avgt    5  6.962 ± 0.001  ns/op
LockElisionBenchmark.baseline:asm                         avgt         NaN            ---
LockElisionBenchmark.chain_method_calls                   avgt    5  6.963 ± 0.004  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt         NaN            ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5  9.422 ± 0.016  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt         NaN            ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5  9.423 ± 0.051  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt         NaN            ---
LockElisionBenchmark.nested_synchronized                  avgt    5  6.962 ± 0.003  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt         NaN            ---
LockElisionBenchmark.recursive_method_calls               avgt    5  6.994 ± 0.027  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt         NaN            ---
