# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 0.804 ns/op
# Warmup Iteration   2: 0.776 ns/op
# Warmup Iteration   3: 0.779 ns/op
# Warmup Iteration   4: 0.836 ns/op
# Warmup Iteration   5: 0.850 ns/op
Iteration   1: 0.851 ns/op
Iteration   2: 0.797 ns/op
Iteration   3: 0.813 ns/op
Iteration   4: 0.868 ns/op
Iteration   5: 0.817 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls":
  0.829 ±(99.9%) 0.112 ns/op [Average]
  (min, avg, max) = (0.797, 0.829, 0.868), stdev = 0.029
  CI (99.9%): [0.717, 0.942] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls:asm":
PrintAssembly processed: 126249 total address lines.
Perf output processed (skipped 56.270 seconds):
 Column 1: cycles (50334 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 608 

              0x00007fc08c63c380:   movzbl 0x94(%r14),%r10d             ; implicit exception: dispatches to 0x00007fc08c63c43c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 192)
              0x00007fc08c63c388:   mov    $0x1,%ebp
              0x00007fc08c63c38d:   test   %r10d,%r10d
          ╭   0x00007fc08c63c390:   jne    0x00007fc08c63c3c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
          │   0x00007fc08c63c392:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fc08c63c39c:   data16 data16 xchg %ax,%ax          ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 190)
   4.23%  │↗  0x00007fc08c63c3a0:   mov    0x10(%r8),%r10d              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls@71 (line 93)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 190)
   0.34%  ││  0x00007fc08c63c3a4:   movzbl 0x94(%r14),%r11d
  30.60%  ││  0x00007fc08c63c3ac:   add    $0x1,%rbp                    ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 192)
  11.44%  ││  0x00007fc08c63c3b0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop rbx=Oop r13=Oop r14=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
   4.08%  ││  0x00007fc08c63c3b7:   test   %eax,(%r10)                  ;   {poll}
  36.08%  ││  0x00007fc08c63c3ba:   nopw   0x0(%rax,%rax,1)
  11.38%  ││  0x00007fc08c63c3c0:   test   %r11d,%r11d
          │╰  0x00007fc08c63c3c3:   je     0x00007fc08c63c3a0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 193)
          ↘   0x00007fc08c63c3c5:   movabs $0x7fc0a4579b90,%r10
              0x00007fc08c63c3cf:   call   *%r10
              0x00007fc08c63c3d2:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007fc08c63c3da:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 193)
              0x00007fc08c63c3de:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 608 
   0.23%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.05%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 608 
   1.63%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  nmethod::reloc_string_for 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%      hsdis-amd64.so  print_displacement 
   0.00%      hsdis-amd64.so  putop 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.15%         c2, level 4
   1.63%              kernel
   0.10%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%    perf-2082987.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.072 ns/op
# Warmup Iteration   2: 7.442 ns/op
# Warmup Iteration   3: 6.209 ns/op
# Warmup Iteration   4: 6.233 ns/op
# Warmup Iteration   5: 6.219 ns/op
Iteration   1: 6.229 ns/op
Iteration   2: 6.210 ns/op
Iteration   3: 6.209 ns/op
Iteration   4: 6.235 ns/op
Iteration   5: 6.211 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink":
  6.219 ±(99.9%) 0.047 ns/op [Average]
  (min, avg, max) = (6.209, 6.219, 6.235), stdev = 0.012
  CI (99.9%): [6.172, 6.266] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm":
PrintAssembly processed: 126640 total address lines.
Perf output processed (skipped 56.309 seconds):
 Column 1: cycles (50590 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 5, compile id 614 

            0x00007f2b2063c265:   xchg   %ax,%ax
            0x00007f2b2063c267:   call   0x00007f2b200c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
                                                                      ;   {optimized virtual_call}
            0x00007f2b2063c26c:   nopl   0x100025c(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 107)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
                                                                      ;   {other}
   6.16%    0x00007f2b2063c274:   mov    0x40(%rsp),%r10
  12.59%    0x00007f2b2063c279:   mov    0x10(%r10),%r11d             ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 109)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
  30.55%    0x00007f2b2063c27d:   mov    0x38(%rsp),%r10
   0.00%    0x00007f2b2063c282:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@30 (line 192)
   6.13%    0x00007f2b2063c28a:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
            0x00007f2b2063c28e:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
            0x00007f2b2063c295:   test   %eax,(%r11)                  ;   {poll}
  12.15%    0x00007f2b2063c298:   test   %r10d,%r10d
            0x00007f2b2063c29b:   je     0x00007f2b2063c260           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@36 (line 193)
            0x00007f2b2063c29d:   movabs $0x7f2b3731ab90,%r10
            0x00007f2b2063c2a7:   call   *%r10
            0x00007f2b2063c2aa:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@37 (line 193)
                                                                      ;   {other}
            0x00007f2b2063c2b2:   mov    0x30(%rsp),%r10
            0x00007f2b2063c2b7:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@40 (line 193)
....................................................................................................
  67.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 577 

                # {method} {0x00007f2a9c483280} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f2b20638100:   mov    0x8(%rsi),%r10d
                0x00007f2b20638104:   movabs $0x7f2aa7000000,%r11
                0x00007f2b2063810e:   add    %r11,%r10
                0x00007f2b20638111:   cmp    %r10,%rax
                0x00007f2b20638114:   jne    0x00007f2b200c4080           ;   {runtime_call ic_miss_stub}
                0x00007f2b2063811a:   xchg   %ax,%ax
                0x00007f2b2063811c:   nopl   0x0(%rax)
              [Verified Entry Point]
   6.03%        0x00007f2b20638120:   sub    $0x18,%rsp
                0x00007f2b20638127:   mov    %rbp,0x10(%rsp)
   6.34%        0x00007f2b2063812c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f2b20638134:   jne    0x00007f2b20638163           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink@-1 (line 183)
          │  ↗  0x00007f2b2063813a:   add    $0x10,%rsp
          │  │  0x00007f2b2063813e:   pop    %rbp
  18.09%  │ ↗│  0x00007f2b2063813f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f2b20638146:   ja     0x00007f2b2063814d
          ││││  0x00007f2b2063814c:   ret    
          │↘╰│  0x00007f2b2063814d:   movabs $0x7f2b2063813f,%r10         ;   {internal_word}
          │  │  0x00007f2b20638157:   mov    %r10,0x468(%r15)
          │  │  0x00007f2b2063815e:   jmp    0x00007f2b200cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f2b20638163:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f2b20638168:   jmp    0x00007f2b2063813a
                0x00007f2b2063816d:   hlt    
                0x00007f2b2063816e:   hlt    
                0x00007f2b2063816f:   hlt    
....................................................................................................
  30.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 5, compile id 614 
  30.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 577 
   0.59%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.87%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 5, compile id 614 
  30.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink, version 2, compile id 577 
   1.71%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  PerfLongVariant::sample 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%         c2, level 4
   1.71%              kernel
   0.11%           libjvm.so
   0.05%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 74.383 ns/op
# Warmup Iteration   2: 64.541 ns/op
# Warmup Iteration   3: 72.811 ns/op
# Warmup Iteration   4: 63.995 ns/op
# Warmup Iteration   5: 63.988 ns/op
Iteration   1: 64.088 ns/op
Iteration   2: 63.931 ns/op
Iteration   3: 63.911 ns/op
Iteration   4: 64.028 ns/op
Iteration   5: 64.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls":
  64.029 ±(99.9%) 0.442 ns/op [Average]
  (min, avg, max) = (63.911, 64.029, 64.189), stdev = 0.115
  CI (99.9%): [63.588, 64.471] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 126824 total address lines.
Perf output processed (skipped 56.229 seconds):
 Column 1: cycles (50989 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 559 

                 # parm8:    [sp+0x68]   = &apos;java/lang/Object&apos;
                 # parm9:    [sp+0x70]   = &apos;java/lang/Object&apos;
                 0x00007f60a06396a0:   mov    0x8(%rsi),%r10d
                 0x00007f60a06396a4:   movabs $0x7f6027000000,%r11
                 0x00007f60a06396ae:   add    %r11,%r10
                 0x00007f60a06396b1:   cmp    %r10,%rax
                 0x00007f60a06396b4:   jne    0x00007f60a00c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f60a06396ba:   xchg   %ax,%ax
                 0x00007f60a06396bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   1.10%    ↗    0x00007f60a06396c0:   mov    %eax,-0x14000(%rsp)
   2.05%    │    0x00007f60a06396c7:   push   %rbp
   1.68%    │    0x00007f60a06396c8:   sub    $0x40,%rsp
   0.30%    │    0x00007f60a06396cc:   cmpl   $0x1,0x20(%r15)
   7.98%    │    0x00007f60a06396d4:   jne    0x00007f60a0639766           ;*synchronization entry
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@-1 (line 123)
   1.63%    │    0x00007f60a06396da:   test   %edx,%edx
          ╭ │    0x00007f60a06396dc:   je     0x00007f60a063973b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 123)
   0.05%  │ │    0x00007f60a06396de:   xchg   %ax,%ax
   0.23%  │ │    0x00007f60a06396e0:   cmp    $0x1,%edx
          │╭│    0x00007f60a06396e3:   je     0x00007f60a063973f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 123)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
   0.43%  │││    0x00007f60a06396e5:   add    $0xfffffffe,%edx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@9 (line 126)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
   1.06%  │││    0x00007f60a06396e8:   rex.W push 0x50(%rsp)
   0.30%  │││    0x00007f60a06396ed:   rex.W pop (%rsp)
   4.35%  │││    0x00007f60a06396f1:   rex.W push 0x58(%rsp)
   1.13%  │││    0x00007f60a06396f6:   rex.W pop 0x8(%rsp)
   3.89%  │││    0x00007f60a06396fb:   rex.W push 0x60(%rsp)
   1.27%  │││    0x00007f60a0639700:   rex.W pop 0x10(%rsp)
   4.32%  │││    0x00007f60a0639705:   rex.W push 0x68(%rsp)
   0.66%  │││    0x00007f60a063970a:   rex.W pop 0x18(%rsp)
   5.47%  │││    0x00007f60a063970f:   rex.W push 0x70(%rsp)
   0.76%  │││    0x00007f60a0639714:   rex.W pop 0x20(%rsp)
   5.09%  │││    0x00007f60a0639719:   xchg   %ax,%ax
   0.73%  ││╰    0x00007f60a063971b:   call   0x00007f60a06396c0           ; ImmutableOopMap {}
          ││                                                               ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                               ;   {optimized virtual_call}
   2.88%  ││     0x00007f60a0639720:   nopl   0x210(%rax,%rax,1)           ;*synchronization entry
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@-1 (line 123)
          ││                                                               ;   {other}
   1.27%  ││ ↗↗  0x00007f60a0639728:   add    $0x40,%rsp
   0.59%  ││ ││  0x00007f60a063972c:   pop    %rbp
   0.60%  ││ ││  0x00007f60a063972d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││  0x00007f60a0639734:   ja     0x00007f60a0639750
   1.63%  ││ ││  0x00007f60a063973a:   ret    
   0.00%  ↘│ ││  0x00007f60a063973b:   mov    %ecx,%eax
           │ ╰│  0x00007f60a063973d:   jmp    0x00007f60a0639728
           ↘  │  0x00007f60a063973f:   mov    %ecx,%eax
              ╰  0x00007f60a0639741:   jmp    0x00007f60a0639728           ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
                 0x00007f60a0639743:   mov    %rax,%rsi
                 0x00007f60a0639746:   add    $0x40,%rsp
                 0x00007f60a063974a:   pop    %rbp
                 0x00007f60a063974b:   jmp    0x00007f60a019d380           ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
....................................................................................................
  51.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 600 

              0x00007f60a06406dc:   nopl   0x0(%rax)
              0x00007f60a06406e0:   movzbl 0x94(%r11),%r9d              ; implicit exception: dispatches to 0x00007f60a0640ed0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 192)
              0x00007f60a06406e8:   test   %r9d,%r9d
              0x00007f60a06406eb:   jne    0x00007f60a0640c58
              0x00007f60a06406f1:   mov    $0x1,%ebp
          ╭   0x00007f60a06406f6:   jmp    0x00007f60a06407d9
          │   0x00007f60a06406fb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   0.03%  │↗  0x00007f60a0640700:   mov    %rsi,0x1b8(%r15)
   0.16%  ││  0x00007f60a0640707:   prefetchw 0xc0(%rsi)
   0.73%  ││  0x00007f60a064070e:   movq   $0x1,(%rax)
   1.19%  ││  0x00007f60a0640715:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.61%  ││  0x00007f60a064071c:   mov    %r12d,0xc(%rax)
   0.31%  ││  0x00007f60a0640720:   mov    %r11,0xb8(%rsp)
   0.03%  ││  0x00007f60a0640728:   mov    %r10,0x28(%rsp)
   0.09%  ││  0x00007f60a064072d:   mov    %r8,0x30(%rsp)
   0.15%  ││  0x00007f60a0640732:   mov    %r9,0x38(%rsp)
   0.27%  ││  0x00007f60a0640737:   mov    %rcx,0x40(%rsp)
   0.05%  ││  0x00007f60a064073c:   mov    %rbx,0x48(%rsp)
   0.08%  ││  0x00007f60a0640741:   mov    %rdi,0x50(%rsp)
   0.14%  ││  0x00007f60a0640746:   mov    %rdx,0x58(%rsp)              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 123)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.34%  ││  0x00007f60a064074b:   mov    0xc0(%rsp),%r10
   0.05%  ││  0x00007f60a0640753:   mov    0x10(%r10),%ecx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@73 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
   0.13%  ││  0x00007f60a0640757:   mov    0xc0(%rsp),%rsi
   0.14%  ││  0x00007f60a064075f:   mov    $0x6,%edx
   0.34%  ││  0x00007f60a0640764:   mov    0x30(%rsp),%r8
   0.20%  ││  0x00007f60a0640769:   mov    0x38(%rsp),%r9
   0.09%  ││  0x00007f60a064076e:   mov    0x40(%rsp),%rdi
   0.15%  ││  0x00007f60a0640773:   mov    0x48(%rsp),%r10
   0.37%  ││  0x00007f60a0640778:   mov    %r10,(%rsp)
   0.05%  ││  0x00007f60a064077c:   mov    0x50(%rsp),%r10
   0.10%  ││  0x00007f60a0640781:   mov    %r10,0x8(%rsp)
   0.15%  ││  0x00007f60a0640786:   mov    0x58(%rsp),%r10
   0.35%  ││  0x00007f60a064078b:   mov    %r10,0x10(%rsp)
   0.06%  ││  0x00007f60a0640790:   mov    %rbp,0x18(%rsp)
   0.27%  ││  0x00007f60a0640795:   mov    %rax,0x20(%rsp)
   0.28%  ││  0x00007f60a064079a:   nop
   0.29%  ││  0x00007f60a064079b:   call   0x00007f60a00c4380           ; ImmutableOopMap {[40]=Oop [176]=Oop [184]=Oop [192]=Oop }
          ││                                                            ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f60a06407a0:   nopl   0x1000610(%rax,%rax,1)       ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 126)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 79)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
          ││  0x00007f60a06407a8:   mov    0xb8(%rsp),%r11
   3.60%  ││  0x00007f60a06407b0:   movzbl 0x94(%r11),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 192)
   2.85%  ││  0x00007f60a06407b8:   mov    0x70(%rsp),%rbp
          ││  0x00007f60a06407bd:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   0.00%  ││  0x00007f60a06407c1:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r11=Oop [40]=Oop [176]=Oop [184]=Oop [192]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
          ││  0x00007f60a06407c8:   test   %eax,(%r8)                   ;   {poll}
   0.65%  ││  0x00007f60a06407cb:   test   %r10d,%r10d
          ││  0x00007f60a06407ce:   jne    0x00007f60a0640c5d
   0.01%  ││  0x00007f60a06407d4:   mov    0x28(%rsp),%r10
          ↘│  0x00007f60a06407d9:   mov    0x1b8(%r15),%rax
   0.00%   │  0x00007f60a06407e0:   mov    %rax,%r8
   0.64%   │  0x00007f60a06407e3:   add    $0x10,%r8
   0.01%   │  0x00007f60a06407e7:   cmp    0x1c8(%r15),%r8
           │  0x00007f60a06407ee:   jae    0x00007f60a06409f9
           │  0x00007f60a06407f4:   mov    %r8,0x1b8(%r15)
   0.00%   │  0x00007f60a06407fb:   prefetchw 0xc0(%r8)
   1.30%   │  0x00007f60a0640803:   movq   $0x1,(%rax)
   0.02%   │  0x00007f60a064080a:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.60%   │  0x00007f60a0640811:   mov    %r12d,0xc(%rax)
   1.89%   │  0x00007f60a0640815:   mov    %rax,%r8
   0.00%   │  0x00007f60a0640818:   mov    0x1b8(%r15),%rax
   0.03%   │  0x00007f60a064081f:   mov    %rax,%r9
           │  0x00007f60a0640822:   add    $0x10,%r9
   0.61%   │  0x00007f60a0640826:   cmp    0x1c8(%r15),%r9
           │  0x00007f60a064082d:   jae    0x00007f60a0640a32
   0.17%   │  0x00007f60a0640833:   mov    %r9,0x1b8(%r15)
   0.58%   │  0x00007f60a064083a:   prefetchw 0xc0(%r9)
   1.83%   │  0x00007f60a0640842:   movq   $0x1,(%rax)
   0.04%   │  0x00007f60a0640849:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   2.26%   │  0x00007f60a0640850:   mov    %r12d,0xc(%rax)
   0.01%   │  0x00007f60a0640854:   mov    %rax,%r9
   0.00%   │  0x00007f60a0640857:   mov    0x1b8(%r15),%rax
   0.03%   │  0x00007f60a064085e:   mov    %rax,%rcx
   0.57%   │  0x00007f60a0640861:   add    $0x10,%rcx
   0.01%   │  0x00007f60a0640865:   cmp    0x1c8(%r15),%rcx
           │  0x00007f60a064086c:   jae    0x00007f60a0640a73
   0.06%   │  0x00007f60a0640872:   mov    %rcx,0x1b8(%r15)
   0.06%   │  0x00007f60a0640879:   prefetchw 0xc0(%rcx)
   1.73%   │  0x00007f60a0640880:   movq   $0x1,(%rax)
   1.31%   │  0x00007f60a0640887:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.54%   │  0x00007f60a064088e:   mov    %r12d,0xc(%rax)
   0.07%   │  0x00007f60a0640892:   mov    %rax,%rcx
   0.01%   │  0x00007f60a0640895:   mov    0x1b8(%r15),%rax
   0.48%   │  0x00007f60a064089c:   mov    %rax,%rbx
   0.09%   │  0x00007f60a064089f:   add    $0x10,%rbx
   0.07%   │  0x00007f60a06408a3:   cmp    0x1c8(%r15),%rbx
           │  0x00007f60a06408aa:   jae    0x00007f60a0640ac5
   0.02%   │  0x00007f60a06408b0:   mov    %rbx,0x1b8(%r15)
   0.45%   │  0x00007f60a06408b7:   prefetchw 0xc0(%rbx)
   2.42%   │  0x00007f60a06408be:   movq   $0x1,(%rax)
   0.08%   │  0x00007f60a06408c5:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.38%   │  0x00007f60a06408cc:   mov    %r12d,0xc(%rax)
   0.06%   │  0x00007f60a06408d0:   mov    %rax,%rbx
   0.11%   │  0x00007f60a06408d3:   mov    0x1b8(%r15),%rax
   0.03%   │  0x00007f60a06408da:   mov    %rax,%rdi
   0.37%   │  0x00007f60a06408dd:   add    $0x10,%rdi
   0.02%   │  0x00007f60a06408e1:   cmp    0x1c8(%r15),%rdi
           │  0x00007f60a06408e8:   jae    0x00007f60a0640b19
   0.11%   │  0x00007f60a06408ee:   mov    %rdi,0x1b8(%r15)
   0.40%   │  0x00007f60a06408f5:   prefetchw 0xc0(%rdi)
   2.13%   │  0x00007f60a06408fc:   movq   $0x1,(%rax)
   1.25%   │  0x00007f60a0640903:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.33%   │  0x00007f60a064090a:   mov    %r12d,0xc(%rax)
   0.31%   │  0x00007f60a064090e:   mov    %rax,%rdi
   0.13%   │  0x00007f60a0640911:   mov    0x1b8(%r15),%rax
   0.06%   │  0x00007f60a0640918:   mov    %rax,%rdx
   0.12%   │  0x00007f60a064091b:   add    $0x10,%rdx
   0.31%   │  0x00007f60a064091f:   nop
   0.16%   │  0x00007f60a0640920:   cmp    0x1c8(%r15),%rdx
           │  0x00007f60a0640927:   jae    0x00007f60a0640b7a
   0.04%   │  0x00007f60a064092d:   mov    %rdx,0x1b8(%r15)
   0.13%   │  0x00007f60a0640934:   prefetchw 0xc0(%rdx)
   0.54%   │  0x00007f60a064093b:   movq   $0x1,(%rax)
   0.50%   │  0x00007f60a0640942:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.52%   │  0x00007f60a0640949:   mov    %r12d,0xc(%rax)
   0.29%   │  0x00007f60a064094d:   mov    %rax,%rdx
   0.01%   │  0x00007f60a0640950:   mov    0x1b8(%r15),%rax
   0.21%   │  0x00007f60a0640957:   mov    %rax,%rsi
   0.15%   │  0x00007f60a064095a:   add    $0x10,%rsi
   0.22%   │  0x00007f60a064095e:   xchg   %ax,%ax
   0.02%   │  0x00007f60a0640960:   cmp    0x1c8(%r15),%rsi
           │  0x00007f60a0640967:   jae    0x00007f60a0640be5
   0.16%   │  0x00007f60a064096d:   mov    %rsi,0x1b8(%r15)
   0.21%   │  0x00007f60a0640974:   prefetchw 0xc0(%rsi)
   0.85%   │  0x00007f60a064097b:   movq   $0x1,(%rax)
   0.73%   │  0x00007f60a0640982:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.24%   │  0x00007f60a0640989:   mov    %r12d,0xc(%rax)
   0.32%   │  0x00007f60a064098d:   mov    %rbp,0x70(%rsp)
   0.12%   │  0x00007f60a0640992:   mov    %rax,%rbp
   0.02%   │  0x00007f60a0640995:   mov    0x1b8(%r15),%rax
   0.22%   │  0x00007f60a064099c:   mov    %rax,%rsi
   0.35%   │  0x00007f60a064099f:   add    $0x10,%rsi                   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   0.10%   │  0x00007f60a06409a3:   cmp    0x1c8(%r15),%rsi
           ╰  0x00007f60a06409aa:   jb     0x00007f60a0640700
              0x00007f60a06409b0:   mov    %rdx,0x58(%rsp)
              0x00007f60a06409b5:   mov    %rdi,0x50(%rsp)
              0x00007f60a06409ba:   mov    %rbx,0x48(%rsp)
              0x00007f60a06409bf:   mov    %rcx,0x40(%rsp)
              0x00007f60a06409c4:   mov    %r9,0x38(%rsp)
              0x00007f60a06409c9:   mov    %r8,0x30(%rsp)
              0x00007f60a06409ce:   mov    %r10,0x28(%rsp)
              0x00007f60a06409d3:   mov    %r11,0xb8(%rsp)              ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  45.50%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 559 
  45.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 600 
   1.22%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.30%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 559 
  45.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 600 
   2.12%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardTable::is_in_young 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.01%           libjvm.so  ObjAllocator::initialize 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.44%  <...other 141 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.97%         c2, level 4
   2.12%              kernel
   0.63%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.04%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:27

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

Benchmark                                                           Mode  Cnt   Score   Error  Units
DeadArgumentEliminationBenchmark.chain_method_calls                 avgt    5   0.829 ± 0.112  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls:asm             avgt          NaN            ---
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink      avgt    5   6.219 ± 0.047  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm  avgt          NaN            ---
DeadArgumentEliminationBenchmark.recursive_method_calls             avgt    5  64.029 ± 0.442  ns/op
DeadArgumentEliminationBenchmark.recursive_method_calls:asm         avgt          NaN            ---
