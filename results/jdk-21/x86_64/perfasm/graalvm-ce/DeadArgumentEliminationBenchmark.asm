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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.785 ns/op
# Warmup Iteration   2: 0.781 ns/op
# Warmup Iteration   3: 0.774 ns/op
# Warmup Iteration   4: 0.774 ns/op
# Warmup Iteration   5: 0.774 ns/op
Iteration   1: 0.774 ns/op
Iteration   2: 0.774 ns/op
Iteration   3: 0.774 ns/op
Iteration   4: 0.774 ns/op
Iteration   5: 0.774 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls":
  0.774 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.774, 0.774, 0.774), stdev = 0.001
  CI (99.9%): [0.773, 0.774] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls:asm":
PrintAssembly processed: 218351 total address lines.
Perf output processed (skipped 60.469 seconds):
 Column 1: cycles (50985 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 994 

              0x00007f51cf243ed9:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 188)
              0x00007f51cf243edd:   mov    0x8(%rsp),%rsi
              0x00007f51cf243ee2:   cmpb   $0x0,0x94(%rsi)
              0x00007f51cf243ee9:   jne    0x00007f51cf243f5a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007f51cf243eef:   mov    $0x1,%r11
              0x00007f51cf243ef6:   mov    0x18(%rsp),%r10
          ╭   0x00007f51cf243efb:   jmp    0x00007f51cf243f0a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
  34.31%  │↗  0x00007f51cf243f00:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [16]=Oop [32]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
          ││  0x00007f51cf243f07:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
          ││                                                            ;   {poll}
  47.46%  ↘│  0x00007f51cf243f0a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls@71 (line 93)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 190)
   0.00%   │  0x00007f51cf243f0e:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 191)
  15.27%   │  0x00007f51cf243f11:   cmpb   $0x0,0x94(%rsi)
   0.47%   ╰  0x00007f51cf243f18:   je     0x00007f51cf243f00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007f51cf243f1a:   mov    %r11,0x28(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 193)
              0x00007f51cf243f1f:   nop
              0x00007f51cf243f20:   call   0x00007f51e749adf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f51cf243f25:   nop
              0x00007f51cf243f26:   mov    0x20(%rsp),%rdx
              0x00007f51cf243f2b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 193)
              0x00007f51cf243f2f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 994 
   1.00%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.94%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 5, compile id 994 
   2.15%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.51%      jvmci, level 4
   2.15%              kernel
   0.13%           libjvm.so
   0.07%                    
   0.07%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-2083876.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink

# Run progress: 33.33% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.667 ns/op
# Warmup Iteration   2: 6.575 ns/op
# Warmup Iteration   3: 6.247 ns/op
# Warmup Iteration   4: 6.186 ns/op
# Warmup Iteration   5: 6.186 ns/op
Iteration   1: 6.184 ns/op
Iteration   2: 6.185 ns/op
Iteration   3: 6.186 ns/op
Iteration   4: 6.185 ns/op
Iteration   5: 6.187 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink":
  6.186 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.184, 6.186, 6.187), stdev = 0.001
  CI (99.9%): [6.181, 6.190] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm":
PrintAssembly processed: 223245 total address lines.
Perf output processed (skipped 60.551 seconds):
 Column 1: cycles (50830 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1004 

              0x00007f34c3248019:   mov    0x18(%rsp),%rsi
              0x00007f34c324801e:   xchg   %ax,%ax
              0x00007f34c3248020:   cmpb   $0x0,0x94(%rsi)
              0x00007f34c3248027:   jne    0x00007f34c32480be           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
              0x00007f34c324802d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f34c3248036:   jmp    0x00007f34c324804f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@13 (line 190)
          │   0x00007f34c324803b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.07%  │↗  0x00007f34c3248040:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
          ││  0x00007f34c3248047:   test   %eax,(%r8)                   ;   {poll}
          ││  0x00007f34c324804a:   mov    %r11,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@13 (line 190)
   5.87%  ↘│  0x00007f34c324804f:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   0.07%   │  0x00007f34c3248052:   nop
           │  0x00007f34c3248053:   call   0x00007f34c2c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  32.65%   │  0x00007f34c3248058:   nopl   0x5000248(%rax,%rax,1)       ;   {other}
           │  0x00007f34c3248060:   mov    0x8(%rsp),%r10
   8.34%   │  0x00007f34c3248065:   mov    0x10(%r10),%r11d             ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
  26.40%   │  0x00007f34c3248069:   mov    0x20(%rsp),%r11
           │  0x00007f34c324806e:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
           │  0x00007f34c3248071:   mov    0x18(%rsp),%rsi
           │  0x00007f34c3248076:   cmpb   $0x0,0x94(%rsi)
   6.17%   ╰  0x00007f34c324807d:   je     0x00007f34c3248040           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
              0x00007f34c324807f:   mov    %r11,0x20(%rsp)
              0x00007f34c3248084:   call   0x00007f34da118df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f34c3248089:   nop
              0x00007f34c324808a:   mov    0x10(%rsp),%rdx
              0x00007f34c324808f:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@40 (line 193)
              0x00007f34c3248093:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@46 (line 194)
              0x00007f34c324809b:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  79.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 965 

                # {method} {0x00007f343c485e98} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f34c3240d00:   mov    0x8(%rsi),%r10d
                0x00007f34c3240d04:   movabs $0x7f3447000000,%r12
                0x00007f34c3240d0e:   add    %r12,%r10
                0x00007f34c3240d11:   xor    %r12,%r12
                0x00007f34c3240d14:   cmp    %r10,%rax
                0x00007f34c3240d17:   jne    0x00007f34c2c2f080           ;   {runtime_call ic_miss_stub}
                0x00007f34c3240d1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   6.15%        0x00007f34c3240d20:   mov    %eax,-0x14000(%rsp)
   0.05%        0x00007f34c3240d27:   sub    $0x18,%rsp
                0x00007f34c3240d2b:   nop
   6.02%        0x00007f34c3240d2c:   cmpl   $0x0,0x20(%r15)
   0.05%  ╭     0x00007f34c3240d34:   jne    0x00007f34c3240d4e
          │ ↗   0x00007f34c3240d3a:   add    $0x18,%rsp
          │ │   0x00007f34c3240d3e:   xchg   %ax,%ax
   5.71%  │ │↗  0x00007f34c3240d40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f34c3240d47:   ja     0x00007f34c3240d5b
   0.05%  ││││  0x00007f34c3240d4d:   ret    
          ↘│││  0x00007f34c3240d4e:   mov    %rbp,0x10(%rsp)
           │││  0x00007f34c3240d53:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f34c3240d58:   jmp    0x00007f34c3240d3a
           │ │  0x00007f34c3240d5a:   hlt    
           ↘ ╰  0x00007f34c3240d5b:   lea    -0x22(%rip),%rcx        # 0x00007f34c3240d40
                0x00007f34c3240d62:   mov    %rcx,0x468(%r15)
                0x00007f34c3240d69:   jmp    0x00007f34c2c36000           ;   {runtime_call SafepointBlob}
                0x00007f34c3240d6e:   hlt    
              [Exception Handler]
                0x00007f34c3240d6f:   call   0x00007f34c2db4780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  18.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1004 
  18.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 965 
   0.57%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   1.23%  <...other 399 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1004 
  18.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 965 
   1.97%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%      jvmci, level 4
   1.97%              kernel
   0.15%           libjvm.so
   0.09%                    
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.486 ns/op
# Warmup Iteration   2: 23.852 ns/op
# Warmup Iteration   3: 24.160 ns/op
# Warmup Iteration   4: 23.831 ns/op
# Warmup Iteration   5: 23.683 ns/op
Iteration   1: 23.673 ns/op
Iteration   2: 23.676 ns/op
Iteration   3: 23.679 ns/op
Iteration   4: 23.649 ns/op
Iteration   5: 23.694 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls":
  23.674 ±(99.9%) 0.063 ns/op [Average]
  (min, avg, max) = (23.649, 23.674, 23.694), stdev = 0.016
  CI (99.9%): [23.611, 23.737] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 217778 total address lines.
Perf output processed (skipped 60.210 seconds):
 Column 1: cycles (50767 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 982 

                                                                        ;   {other}
              0x00007f26972470f0:   mov    0x48(%rsp),%rsi
              0x00007f26972470f5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f2697247100:   cmpb   $0x0,0x94(%rsi)
              0x00007f2697247107:   jne    0x00007f269724760a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
              0x00007f269724710d:   movq   $0x1,0x50(%rsp)
          ╭   0x00007f2697247116:   jmp    0x00007f269724735b           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007f269724711b:   nopl   0x0(%rax,%rax,1)
   0.93%  │↗  0x00007f2697247120:   mov    %rcx,0x1b8(%r15)
   0.05%  ││  0x00007f2697247127:   prefetchw 0xd0(%rdx)
   0.48%  ││  0x00007f269724712e:   movq   $0x1,(%rdx)
   0.77%  ││  0x00007f2697247135:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.83%  ││  0x00007f269724713c:   movl   $0x0,0xc(%rdx)
   0.02%  ││  0x00007f2697247143:   mov    %rdx,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 70)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.03%  ││  0x00007f2697247146:   mov    0x1b8(%r15),%rdx
   0.71%  ││  0x00007f269724714d:   lea    0x10(%rdx),%rcx
   0.80%  ││  0x00007f2697247151:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f2697247158:   ja     0x00007f26972473a6
   0.09%  ││  0x00007f269724715e:   mov    %rcx,0x1b8(%r15)
   0.06%  ││  0x00007f2697247165:   prefetchw 0xd0(%rdx)
   1.14%  ││  0x00007f269724716c:   movq   $0x1,(%rdx)
   1.09%  ││  0x00007f2697247173:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.22%  ││  0x00007f269724717a:   movl   $0x0,0xc(%rdx)
   0.12%  ││  0x00007f2697247181:   mov    %rdx,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@8 (line 71)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.65%  ││  0x00007f2697247184:   mov    0x1b8(%r15),%rdx
   1.10%  ││  0x00007f269724718b:   lea    0x10(%rdx),%rcx
   0.08%  ││  0x00007f269724718f:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f2697247196:   ja     0x00007f269724741c
   0.17%  ││  0x00007f269724719c:   mov    %rcx,0x1b8(%r15)
   0.63%  ││  0x00007f26972471a3:   prefetchw 0xd0(%rdx)
   1.34%  ││  0x00007f26972471aa:   movq   $0x1,(%rdx)
   0.95%  ││  0x00007f26972471b1:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.69%  ││  0x00007f26972471b8:   movl   $0x0,0xc(%rdx)
   0.57%  ││  0x00007f26972471bf:   mov    %rdx,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@16 (line 72)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.55%  ││  0x00007f26972471c2:   mov    0x1b8(%r15),%rdx
   1.15%  ││  0x00007f26972471c9:   lea    0x10(%rdx),%rcx
   0.41%  ││  0x00007f26972471cd:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f26972471d4:   ja     0x00007f26972473cc
   0.61%  ││  0x00007f26972471da:   mov    %rcx,0x1b8(%r15)
   0.97%  ││  0x00007f26972471e1:   prefetchw 0xd0(%rdx)
   2.46%  ││  0x00007f26972471e8:   movq   $0x1,(%rdx)
   1.58%  ││  0x00007f26972471ef:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.39%  ││  0x00007f26972471f6:   movl   $0x0,0xc(%rdx)
   0.71%  ││  0x00007f26972471fd:   mov    %rdx,%rbp                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@24 (line 73)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.19%  ││  0x00007f2697247200:   mov    0x1b8(%r15),%rdx
   0.58%  ││  0x00007f2697247207:   lea    0x10(%rdx),%rcx
   0.69%  ││  0x00007f269724720b:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f2697247212:   ja     0x00007f26972473f2
   0.68%  ││  0x00007f2697247218:   mov    %rcx,0x1b8(%r15)
   0.32%  ││  0x00007f269724721f:   prefetchw 0xd0(%rdx)
   1.89%  ││  0x00007f2697247226:   movq   $0x1,(%rdx)
   3.60%  ││  0x00007f269724722d:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   3.25%  ││  0x00007f2697247234:   movl   $0x0,0xc(%rdx)
   1.04%  ││  0x00007f269724723b:   mov    %rdx,%r13                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@33 (line 74)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.05%  ││  0x00007f269724723e:   mov    0x1b8(%r15),%rdx
   0.71%  ││  0x00007f2697247245:   lea    0x10(%rdx),%rcx
   0.76%  ││  0x00007f2697247249:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f2697247250:   ja     0x00007f2697247445
   0.74%  ││  0x00007f2697247256:   mov    %rcx,0x1b8(%r15)
   0.16%  ││  0x00007f269724725d:   prefetchw 0xd0(%rdx)
   2.36%  ││  0x00007f2697247264:   movq   $0x1,(%rdx)
   3.49%  ││  0x00007f269724726b:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.50%  ││  0x00007f2697247272:   movl   $0x0,0xc(%rdx)
   1.42%  ││  0x00007f2697247279:   mov    %rdx,%r14                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@42 (line 75)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.06%  ││  0x00007f269724727c:   mov    0x1b8(%r15),%rdx
   0.64%  ││  0x00007f2697247283:   lea    0x10(%rdx),%rcx
   0.54%  ││  0x00007f2697247287:   cmp    0x1c8(%r15),%rcx
          ││  0x00007f269724728e:   ja     0x00007f269724746b
   0.87%  ││  0x00007f2697247294:   mov    %rcx,0x1b8(%r15)
   0.13%  ││  0x00007f269724729b:   prefetchw 0xd0(%rdx)
   3.85%  ││  0x00007f26972472a2:   movq   $0x1,(%rdx)
   3.65%  ││  0x00007f26972472a9:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.12%  ││  0x00007f26972472b0:   movl   $0x0,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@51 (line 76)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.94%  ││  0x00007f26972472b7:   mov    0x1b8(%r15),%rcx
   0.93%  ││  0x00007f26972472be:   lea    0x10(%rcx),%rax
   0.20%  ││  0x00007f26972472c2:   cmp    0x1c8(%r15),%rax
          ││  0x00007f26972472c9:   ja     0x00007f2697247491
   0.54%  ││  0x00007f26972472cf:   mov    %rax,0x1b8(%r15)
   0.70%  ││  0x00007f26972472d6:   prefetchw 0xd0(%rcx)
   3.07%  ││  0x00007f26972472dd:   movq   $0x1,(%rcx)
   2.48%  ││  0x00007f26972472e4:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.96%  ││  0x00007f26972472eb:   movl   $0x0,0xc(%rcx)
   0.58%  ││  0x00007f26972472f2:   mov    %rcx,%rbx
   0.25%  ││  0x00007f26972472f5:   mov    %rdx,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@60 (line 77)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.21%  ││  0x00007f26972472f8:   mov    0x10(%r10),%edx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@73 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.82%  ││  0x00007f26972472fc:   mov    %r10,%rsi
   0.45%  ││  0x00007f26972472ff:   mov    %edx,%r10d
   0.18%  ││  0x00007f2697247302:   mov    $0x2,%edx
   0.21%  ││  0x00007f2697247307:   mov    %r10d,%ecx
   0.76%  ││  0x00007f269724730a:   mov    %rbp,(%rsp)
   0.51%  ││  0x00007f269724730e:   mov    %r13,0x8(%rsp)
   0.22%  ││  0x00007f2697247313:   mov    %r14,0x10(%rsp)
   0.20%  ││  0x00007f2697247318:   mov    %r11,0x18(%rsp)
   0.72%  ││  0x00007f269724731d:   mov    %rbx,0x20(%rsp)              ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.53%  ││  0x00007f2697247322:   nop
   0.22%  ││  0x00007f2697247323:   call   0x00007f2696c2f380           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          ││                                                            ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   0.13%  ││  0x00007f2697247328:   nopl   0x4000718(%rax,%rax,1)       ;* unwind (locked if synchronized)
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 190)
          ││                                                            ;   {other}
          ││  0x00007f2697247330:   mov    0x50(%rsp),%r10
   1.72%  ││  0x00007f2697247335:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 191)
   0.06%  ││  0x00007f2697247338:   mov    0x48(%rsp),%rcx
   0.01%  ││  0x00007f269724733d:   data16 xchg %ax,%ax
   0.68%  ││  0x00007f2697247340:   cmpb   $0x0,0x94(%rcx)
   1.07%  ││  0x00007f2697247347:   jne    0x00007f26972474bc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   0.08%  ││  0x00007f269724734d:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   0.01%  ││  0x00007f2697247354:   test   %eax,(%rsi)                  ;   {poll}
   0.80%  ││  0x00007f2697247356:   mov    %r10,0x50(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
   0.85%  ↘│  0x00007f269724735b:   mov    0x38(%rsp),%r10
   0.06%   │  0x00007f2697247360:   mov    0x1b8(%r15),%rdx
   0.01%   │  0x00007f2697247367:   lea    0x10(%rdx),%rcx
   0.75%   │  0x00007f269724736b:   cmp    0x1c8(%r15),%rcx
           ╰  0x00007f2697247372:   jbe    0x00007f2697247120
              0x00007f2697247378:   nopl   0x0(%rax,%rax,1)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 70)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
              0x00007f2697247380:   mov    0x48(%rsp),%rcx
              0x00007f2697247385:   mov    0x58(%rsp),%rsi
              0x00007f269724738a:   call   0x00007f2696db6900           ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop [72]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
                                                                        ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
....................................................................................................
  84.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 982 
   8.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 947 
   2.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 947 
   0.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 947 
   0.14%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%           libjvm.so  G1CardSet::reset_table_scanner 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  ObjAllocator::initialize 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.35%  <...other 509 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 982 
  12.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 947 
   1.46%              kernel  [unknown] 
   0.15%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.14%                      <unknown> 
   0.09%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.05%           libjvm.so  ObjAllocator::initialize 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  FreeListAllocator::reset 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%           libjvm.so  G1CardSet::clear 
   0.03%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.03%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.03%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.92%  <...other 174 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.65%      jvmci, level 4
   1.46%              kernel
   1.36%           libjvm.so
   0.22%        libc-2.31.so
   0.14%                    
   0.07%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.04%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%    perf-2084072.map
   0.00%    Unknown, level 0
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

Benchmark                                                           Mode  Cnt   Score    Error  Units
DeadArgumentEliminationBenchmark.chain_method_calls                 avgt    5   0.774 ±  0.001  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls:asm             avgt          NaN             ---
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink      avgt    5   6.186 ±  0.004  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm  avgt          NaN             ---
DeadArgumentEliminationBenchmark.recursive_method_calls             avgt    5  23.674 ±  0.063  ns/op
DeadArgumentEliminationBenchmark.recursive_method_calls:asm         avgt          NaN             ---
