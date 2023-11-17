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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.785 ns/op
# Warmup Iteration   2: 0.774 ns/op
# Warmup Iteration   3: 0.780 ns/op
# Warmup Iteration   4: 0.774 ns/op
# Warmup Iteration   5: 0.773 ns/op
Iteration   1: 0.774 ns/op
Iteration   2: 0.774 ns/op
Iteration   3: 0.774 ns/op
Iteration   4: 0.774 ns/op
Iteration   5: 0.774 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls":
  0.774 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.774, 0.774, 0.774), stdev = 0.001
  CI (99.9%): [0.773, 0.775] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls:asm":
PrintAssembly processed: 224002 total address lines.
Perf output processed (skipped 60.536 seconds):
 Column 1: cycles (50885 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 998 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 188)
              0x00007fcaaed82756:   mov    $0x0,%r11
              0x00007fcaaed8275d:   mov    0x10(%rsp),%r10
              0x00007fcaaed82762:   mov    (%rsp),%rsi
          ╭   0x00007fcaaed82766:   jmp    0x00007fcaaed8278a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007fcaaed8276b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fcaaed82776:   data16 data16 xchg %ax,%ax
          │   0x00007fcaaed8277a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
  34.12%  │↗  0x00007fcaaed82780:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
          ││  0x00007fcaaed82787:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
          ││                                                            ;   {poll}
  48.03%  ↘│  0x00007fcaaed8278a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls@71 (line 93)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 190)
   0.00%   │  0x00007fcaaed8278e:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 191)
  15.06%   │  0x00007fcaaed82791:   cmpb   $0x0,0x94(%rsi)
   0.47%   ╰  0x00007fcaaed82798:   je     0x00007fcaaed82780           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007fcaaed8279a:   mov    %r11,0x20(%rsp)
              0x00007fcaaed8279f:   nop
              0x00007fcaaed827a0:   call   0x00007fcac8853df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fcaaed827a5:   nop
              0x00007fcaaed827a6:   mov    0x18(%rsp),%rdx
              0x00007fcaaed827ab:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 193)
              0x00007fcaaed827af:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 194)
....................................................................................................
  97.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 998 
   0.95%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.85%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 998 
   2.00%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.68%       jvmci, level 4
   2.00%               kernel
   0.12%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.055 ns/op
# Warmup Iteration   2: 5.899 ns/op
# Warmup Iteration   3: 6.559 ns/op
# Warmup Iteration   4: 6.169 ns/op
# Warmup Iteration   5: 6.170 ns/op
Iteration   1: 6.167 ns/op
Iteration   2: 6.172 ns/op
Iteration   3: 6.167 ns/op
Iteration   4: 6.168 ns/op
Iteration   5: 6.168 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink":
  6.168 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (6.167, 6.168, 6.172), stdev = 0.002
  CI (99.9%): [6.161, 6.176] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm":
PrintAssembly processed: 229406 total address lines.
Perf output processed (skipped 60.631 seconds):
 Column 1: cycles (51085 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 996 

               0x00007f0566d8380e:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
               0x00007f0566d83811:   mov    0x20(%rsp),%rsi
               0x00007f0566d83816:   data16 nopw 0x0(%rax,%rax,1)
               0x00007f0566d83820:   cmpb   $0x0,0x94(%rsi)
               0x00007f0566d83827:   jne    0x00007f0566d83d99
               0x00007f0566d8382d:   movl   $0x1,0x3c(%rsp)
          ╭    0x00007f0566d83835:   jmp    0x00007f0566d83c12
          │    0x00007f0566d8383a:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.41%  │ ↗  0x00007f0566d83840:   mov    %r11,0x28(%rsp)
          │ │  0x00007f0566d83845:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83848:   data16 xchg %ax,%ax
          │ │  0x00007f0566d8384b:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.28%  │ │  0x00007f0566d83850:   nopl   0x4000340(%rax,%rax,1)       ;   {other}
   0.00%  │ │  0x00007f0566d83858:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d8385d:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.52%  │ │  0x00007f0566d83861:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83866:   lea    0x2(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d8386a:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d8386f:   cmpb   $0x0,0x94(%rsi)
   0.36%  │ │  0x00007f0566d83876:   jne    0x00007f0566d83d1d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.37%  │ │  0x00007f0566d8387c:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83881:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83884:   data16 xchg %ax,%ax
   0.00%  │ │  0x00007f0566d83887:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.41%  │ │  0x00007f0566d8388c:   nopl   0x500037c(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83894:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83899:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.49%  │ │  0x00007f0566d8389d:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d838a2:   lea    0x3(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d838a6:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d838ab:   cmpb   $0x0,0x94(%rsi)
   0.33%  │ │  0x00007f0566d838b2:   jne    0x00007f0566d83d24           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.36%  │ │  0x00007f0566d838b8:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d838bd:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d838c0:   data16 xchg %ax,%ax
          │ │  0x00007f0566d838c3:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.57%  │ │  0x00007f0566d838c8:   nopl   0x60003b8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d838d0:   mov    0x10(%rsp),%r10
   0.17%  │ │  0x00007f0566d838d5:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.66%  │ │  0x00007f0566d838d9:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d838de:   lea    0x4(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d838e2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d838e7:   cmpb   $0x0,0x94(%rsi)
   0.38%  │ │  0x00007f0566d838ee:   jne    0x00007f0566d83d2b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.18%  │ │  0x00007f0566d838f4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d838f9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d838fc:   data16 xchg %ax,%ax
   0.19%  │ │  0x00007f0566d838ff:   nop
   0.20%  │ │  0x00007f0566d83900:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83903:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.53%  │ │  0x00007f0566d83908:   nopl   0x70003f8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83910:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83915:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.48%  │ │  0x00007f0566d83919:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d8391e:   lea    0x5(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83922:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83927:   cmpb   $0x0,0x94(%rsi)
   0.52%  │ │  0x00007f0566d8392e:   jne    0x00007f0566d83d32           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.20%  │ │  0x00007f0566d83934:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83939:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d8393c:   data16 xchg %ax,%ax
   0.15%  │ │  0x00007f0566d8393f:   nop
   0.21%  │ │  0x00007f0566d83940:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83943:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.26%  │ │  0x00007f0566d83948:   nopl   0x8000438(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83950:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83955:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.53%  │ │  0x00007f0566d83959:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d8395e:   lea    0x6(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83962:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83967:   cmpb   $0x0,0x94(%rsi)
   0.59%  │ │  0x00007f0566d8396e:   jne    0x00007f0566d83d39           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.18%  │ │  0x00007f0566d83974:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83979:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d8397c:   data16 xchg %ax,%ax
   0.19%  │ │  0x00007f0566d8397f:   nop
   0.21%  │ │  0x00007f0566d83980:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83983:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.18%  │ │  0x00007f0566d83988:   nopl   0x9000478(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83990:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83995:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.50%  │ │  0x00007f0566d83999:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d8399e:   lea    0x7(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d839a2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d839a7:   cmpb   $0x0,0x94(%rsi)
   0.58%  │ │  0x00007f0566d839ae:   jne    0x00007f0566d83d40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.23%  │ │  0x00007f0566d839b4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d839b9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d839bc:   data16 xchg %ax,%ax
   0.19%  │ │  0x00007f0566d839bf:   nop
   0.20%  │ │  0x00007f0566d839c0:   data16 xchg %ax,%ax
          │ │  0x00007f0566d839c3:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.31%  │ │  0x00007f0566d839c8:   nopl   0xa0004b8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d839d0:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d839d5:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.51%  │ │  0x00007f0566d839d9:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d839de:   lea    0x8(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d839e2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d839e7:   cmpb   $0x0,0x94(%rsi)
   0.57%  │ │  0x00007f0566d839ee:   jne    0x00007f0566d83d47           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.19%  │ │  0x00007f0566d839f4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d839f9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d839fc:   data16 xchg %ax,%ax
   0.17%  │ │  0x00007f0566d839ff:   nop
   0.17%  │ │  0x00007f0566d83a00:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83a03:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.25%  │ │  0x00007f0566d83a08:   nopl   0xb0004f8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83a10:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83a15:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.53%  │ │  0x00007f0566d83a19:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83a1e:   lea    0x9(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83a22:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83a27:   cmpb   $0x0,0x94(%rsi)
   0.53%  │ │  0x00007f0566d83a2e:   jne    0x00007f0566d83d4e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.19%  │ │  0x00007f0566d83a34:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83a39:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83a3c:   data16 xchg %ax,%ax
   0.21%  │ │  0x00007f0566d83a3f:   nop
   0.21%  │ │  0x00007f0566d83a40:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83a43:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.33%  │ │  0x00007f0566d83a48:   nopl   0xc000538(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83a50:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83a55:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.44%  │ │  0x00007f0566d83a59:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83a5e:   lea    0xa(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83a62:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83a67:   cmpb   $0x0,0x94(%rsi)
   0.55%  │ │  0x00007f0566d83a6e:   jne    0x00007f0566d83d55           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.19%  │ │  0x00007f0566d83a74:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83a79:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83a7c:   data16 xchg %ax,%ax
   0.18%  │ │  0x00007f0566d83a7f:   nop
   0.18%  │ │  0x00007f0566d83a80:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83a83:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.37%  │ │  0x00007f0566d83a88:   nopl   0xd000578(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83a90:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83a95:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.49%  │ │  0x00007f0566d83a99:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83a9e:   lea    0xb(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83aa2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83aa7:   cmpb   $0x0,0x94(%rsi)
   0.61%  │ │  0x00007f0566d83aae:   jne    0x00007f0566d83d5c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.20%  │ │  0x00007f0566d83ab4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83ab9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83abc:   data16 xchg %ax,%ax
   0.13%  │ │  0x00007f0566d83abf:   nop
   0.23%  │ │  0x00007f0566d83ac0:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83ac3:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.23%  │ │  0x00007f0566d83ac8:   nopl   0xe0005b8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83ad0:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83ad5:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.47%  │ │  0x00007f0566d83ad9:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83ade:   lea    0xc(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83ae2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83ae7:   cmpb   $0x0,0x94(%rsi)
   0.53%  │ │  0x00007f0566d83aee:   jne    0x00007f0566d83d63           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.18%  │ │  0x00007f0566d83af4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83af9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83afc:   data16 xchg %ax,%ax
   0.15%  │ │  0x00007f0566d83aff:   nop
   0.20%  │ │  0x00007f0566d83b00:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83b03:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.29%  │ │  0x00007f0566d83b08:   nopl   0xf0005f8(%rax,%rax,1)       ;   {other}
          │ │  0x00007f0566d83b10:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83b15:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.49%  │ │  0x00007f0566d83b19:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83b1e:   lea    0xd(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83b22:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83b27:   cmpb   $0x0,0x94(%rsi)
   0.57%  │ │  0x00007f0566d83b2e:   jne    0x00007f0566d83d6d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.21%  │ │  0x00007f0566d83b34:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83b39:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83b3c:   data16 xchg %ax,%ax
   0.15%  │ │  0x00007f0566d83b3f:   nop
   0.17%  │ │  0x00007f0566d83b40:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83b43:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.28%  │ │  0x00007f0566d83b48:   nopl   0x10000638(%rax,%rax,1)      ;   {other}
          │ │  0x00007f0566d83b50:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83b55:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.51%  │ │  0x00007f0566d83b59:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83b5e:   lea    0xe(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83b62:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83b67:   cmpb   $0x0,0x94(%rsi)
   0.57%  │ │  0x00007f0566d83b6e:   jne    0x00007f0566d83d77           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.17%  │ │  0x00007f0566d83b74:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83b79:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83b7c:   data16 xchg %ax,%ax
   0.19%  │ │  0x00007f0566d83b7f:   nop
   0.22%  │ │  0x00007f0566d83b80:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83b83:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.26%  │ │  0x00007f0566d83b88:   nopl   0x11000678(%rax,%rax,1)      ;   {other}
          │ │  0x00007f0566d83b90:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83b95:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.46%  │ │  0x00007f0566d83b99:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83b9e:   lea    0xf(%r11),%r8                ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83ba2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83ba7:   cmpb   $0x0,0x94(%rsi)
   0.57%  │ │  0x00007f0566d83bae:   jne    0x00007f0566d83d85           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.20%  │ │  0x00007f0566d83bb4:   mov    %r8,0x28(%rsp)
          │ │  0x00007f0566d83bb9:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │  0x00007f0566d83bbc:   data16 xchg %ax,%ax
   0.19%  │ │  0x00007f0566d83bbf:   nop
   0.20%  │ │  0x00007f0566d83bc0:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83bc3:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
          │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
          │ │                                                            ;   {optimized virtual_call}
   2.30%  │ │  0x00007f0566d83bc8:   nopl   0x120006b8(%rax,%rax,1)      ;   {other}
          │ │  0x00007f0566d83bd0:   mov    0x10(%rsp),%r10
          │ │  0x00007f0566d83bd5:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   1.39%  │ │  0x00007f0566d83bd9:   mov    0x30(%rsp),%r11
          │ │  0x00007f0566d83bde:   lea    0x10(%r11),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
          │ │  0x00007f0566d83be2:   mov    0x20(%rsp),%rsi
          │ │  0x00007f0566d83be7:   cmpb   $0x0,0x94(%rsi)
   0.58%  │ │  0x00007f0566d83bee:   jne    0x00007f0566d83d8f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.45%  │ │  0x00007f0566d83bf4:   mov    0x3c(%rsp),%r8d
          │ │  0x00007f0566d83bf9:   lea    0x10(%r8),%r8d
          │ │  0x00007f0566d83bfd:   data16 xchg %ax,%ax
          │ │  0x00007f0566d83c00:   cmp    $0x1ff0,%r8d
          │╭│  0x00007f0566d83c07:   jge    0x00007f0566d83c52
   0.37%  │││  0x00007f0566d83c0d:   mov    %r8d,0x3c(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@13 (line 190)
          ↘││  0x00007f0566d83c12:   mov    %r11,0x30(%rsp)
   0.01%   ││  0x00007f0566d83c17:   mov    %r10,%rsi                    ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   0.00%   ││  0x00007f0566d83c1a:   nop
   0.33%   ││  0x00007f0566d83c1b:   call   0x00007f0566764380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [32]=Oop }
           ││                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
           ││                                                            ;   {optimized virtual_call}
   2.76%   ││  0x00007f0566d83c20:   nopl   0x13000710(%rax,%rax,1)      ;   {other}
           ││  0x00007f0566d83c28:   mov    0x10(%rsp),%r10
           ││  0x00007f0566d83c2d:   mov    0x10(%r10),%esi              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
   0.74%   ││  0x00007f0566d83c31:   mov    0x30(%rsp),%r11
           ││  0x00007f0566d83c36:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
           ││  0x00007f0566d83c39:   mov    0x20(%rsp),%rsi
           ││  0x00007f0566d83c3e:   xchg   %ax,%ax
   0.40%   ││  0x00007f0566d83c40:   cmpb   $0x0,0x94(%rsi)
   0.40%   │╰  0x00007f0566d83c47:   je     0x00007f0566d83840
           │   0x00007f0566d83c4d:   jmp    0x00007f0566d83cde           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.00%   ↘   0x00007f0566d83c52:   cmp    $0x2000,%r8d
               0x00007f0566d83c59:   jl     0x00007f0566d83c95           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@36 (line 193)
               0x00007f0566d83c5f:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rsi=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop }
                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
               0x00007f0566d83c66:   test   %eax,(%r8)                   ;   {poll}
               0x00007f0566d83c69:   mov    %r11,0x40(%rsp)
               0x00007f0566d83c6e:   jmp    0x00007f0566d837f0
               0x00007f0566d83c73:   nopw   0x0(%rax,%rax,1)
....................................................................................................
  78.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 961 

                # {method} {0x00007f04e0485e98} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0566d7d480:   mov    0x8(%rsi),%r10d
                0x00007f0566d7d484:   movabs $0x7f04eb000000,%r12
                0x00007f0566d7d48e:   add    %r12,%r10
                0x00007f0566d7d491:   xor    %r12,%r12
                0x00007f0566d7d494:   cmp    %r10,%rax
                0x00007f0566d7d497:   jne    0x00007f0566764080           ;   {runtime_call ic_miss_stub}
                0x00007f0566d7d49d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   3.30%        0x00007f0566d7d4a0:   mov    %eax,-0x14000(%rsp)
   2.82%        0x00007f0566d7d4a7:   sub    $0x18,%rsp
   1.19%        0x00007f0566d7d4ab:   nop
   2.28%        0x00007f0566d7d4ac:   cmpl   $0x1,0x20(%r15)
   2.32%  ╭     0x00007f0566d7d4b4:   jne    0x00007f0566d7d4ce
   1.04%  │ ↗   0x00007f0566d7d4ba:   add    $0x18,%rsp
   0.57%  │ │   0x00007f0566d7d4be:   xchg   %ax,%ax
   2.20%  │ │↗  0x00007f0566d7d4c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0566d7d4c7:   ja     0x00007f0566d7d4db
   2.38%  ││││  0x00007f0566d7d4cd:   ret    
          ↘│││  0x00007f0566d7d4ce:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0566d7d4d3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0566d7d4d8:   jmp    0x00007f0566d7d4ba
           │ │  0x00007f0566d7d4da:   hlt    
           ↘ ╰  0x00007f0566d7d4db:   lea    -0x22(%rip),%rcx        # 0x00007f0566d7d4c0
                0x00007f0566d7d4e2:   mov    %rcx,0x468(%r15)
                0x00007f0566d7d4e9:   jmp    0x00007f056676b000           ;   {runtime_call SafepointBlob}
                0x00007f0566d7d4ee:   hlt    
              [Exception Handler]
                0x00007f0566d7d4ef:   call   0x00007f05668e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  18.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 996 
  18.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 961 
   0.97%              kernel  [unknown] 
   0.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 996 
   0.14%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   1.30%  <...other 400 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 996 
  18.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 961 
   2.47%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%           libjvm.so  LIR_OpVisitState::visit 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  clock_gettime@plt 
   0.20%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.08%      jvmci, level 4
   2.47%              kernel
   0.16%           libjvm.so
   0.10%                    
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls

# Run progress: 66.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.355 ns/op
# Warmup Iteration   2: 0.774 ns/op
# Warmup Iteration   3: 16.695 ns/op
# Warmup Iteration   4: 0.774 ns/op
# Warmup Iteration   5: 0.774 ns/op
Iteration   1: 0.774 ns/op
Iteration   2: 0.774 ns/op
Iteration   3: 0.774 ns/op
Iteration   4: 0.774 ns/op
Iteration   5: 0.774 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls":
  0.774 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.774, 0.774, 0.774), stdev = 0.001
  CI (99.9%): [0.774, 0.774] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 231468 total address lines.
Perf output processed (skipped 60.947 seconds):
 Column 1: cycles (50832 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1003 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 188)
              0x00007fd8f2d82fd6:   mov    $0x0,%r11
              0x00007fd8f2d82fdd:   mov    0x10(%rsp),%r10
              0x00007fd8f2d82fe2:   mov    (%rsp),%rsi
          ╭   0x00007fd8f2d82fe6:   jmp    0x00007fd8f2d8300a           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007fd8f2d82feb:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd8f2d82ff6:   data16 data16 xchg %ax,%ax
          │   0x00007fd8f2d82ffa:   nopw   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
  34.44%  │↗  0x00007fd8f2d83000:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop [8]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
          ││  0x00007fd8f2d83007:   test   %eax,(%r8)                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
          ││                                                            ;   {poll}
  47.81%  ↘│  0x00007fd8f2d8300a:   mov    0x10(%r10),%r8d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@73 (line 79)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
           │  0x00007fd8f2d8300e:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 191)
  14.94%   │  0x00007fd8f2d83011:   cmpb   $0x0,0x94(%rsi)
   0.40%   ╰  0x00007fd8f2d83018:   je     0x00007fd8f2d83000           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
              0x00007fd8f2d8301a:   mov    %r11,0x20(%rsp)
              0x00007fd8f2d8301f:   nop
              0x00007fd8f2d83020:   call   0x00007fd90bbd5df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd8f2d83025:   nop
              0x00007fd8f2d83026:   mov    0x18(%rsp),%rdx
              0x00007fd8f2d8302b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 193)
              0x00007fd8f2d8302f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 194)
....................................................................................................
  97.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1003 
   0.62%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  syscall 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.09%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1003 
   1.93%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  syscall 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.24%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   1.93%               kernel
   0.16%            libjvm.so
   0.12%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.03%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:43

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

Benchmark                                                           Mode  Cnt  Score    Error  Units
DeadArgumentEliminationBenchmark.chain_method_calls                 avgt    5  0.774 ±  0.001  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls:asm             avgt         NaN             ---
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink      avgt    5  6.168 ±  0.008  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm  avgt         NaN             ---
DeadArgumentEliminationBenchmark.recursive_method_calls             avgt    5  0.774 ±  0.001  ns/op
DeadArgumentEliminationBenchmark.recursive_method_calls:asm         avgt         NaN             ---
