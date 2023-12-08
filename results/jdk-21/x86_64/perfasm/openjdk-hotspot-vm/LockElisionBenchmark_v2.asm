# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 3.381 ns/op
# Warmup Iteration   2: 3.302 ns/op
# Warmup Iteration   3: 3.326 ns/op
# Warmup Iteration   4: 3.252 ns/op
# Warmup Iteration   5: 3.257 ns/op
Iteration   1: 3.270 ns/op
Iteration   2: 3.224 ns/op
Iteration   3: 3.270 ns/op
Iteration   4: 3.238 ns/op
Iteration   5: 3.456 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline":
  3.292 ±(99.9%) 0.362 ns/op [Average]
  (min, avg, max) = (3.224, 3.292, 3.456), stdev = 0.094
  CI (99.9%): [2.930, 3.654] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.baseline:asm":
PrintAssembly processed: 124666 total address lines.
Perf output processed (skipped 69.372 seconds):
 Column 1: cycles (50941 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 668 

              0x00007fb01c4f81a0:   movzbl 0x94(%r14),%r11d             ; implicit exception: dispatches to 0x00007fb01c4f8274
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 238)
              0x00007fb01c4f81a8:   mov    $0x1,%ebp
              0x00007fb01c4f81ad:   test   %r11d,%r11d
          ╭   0x00007fb01c4f81b0:   jne    0x00007fb01c4f81fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
          │   0x00007fb01c4f81b2:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb01c4f81bc:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
   6.31%  │↗  0x00007fb01c4f81c0:   mov    0x10(%rcx),%r8d
   6.43%  ││  0x00007fb01c4f81c4:   movzbl 0x94(%r14),%r9d              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 238)
   6.25%  ││  0x00007fb01c4f81cc:   mov    0x14(%rcx),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@9 (line 195)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   6.37%  ││  0x00007fb01c4f81d0:   lea    (%r11,%r8,2),%r8d
   6.43%  ││  0x00007fb01c4f81d4:   add    %r11d,%r8d
   6.38%  ││  0x00007fb01c4f81d7:   add    %r11d,%r8d
   6.32%  ││  0x00007fb01c4f81da:   add    %r11d,%r8d
   6.50%  ││  0x00007fb01c4f81dd:   add    %r11d,%r8d
   6.62%  ││  0x00007fb01c4f81e0:   add    %r11d,%r8d
   6.38%  ││  0x00007fb01c4f81e3:   add    %r11d,%r8d
   6.42%  ││  0x00007fb01c4f81e6:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::baseline@61 (line 202)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 236)
   6.27%  ││  0x00007fb01c4f81e9:   add    $0x1,%rbp                    ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 238)
   6.25%  ││  0x00007fb01c4f81ed:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rcx=Oop rbx=Oop r13=Oop r14=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 238)
   6.22%  ││  0x00007fb01c4f81f4:   test   %eax,(%r11)                  ;   {poll}
   6.61%  ││  0x00007fb01c4f81f7:   test   %r9d,%r9d
          │╰  0x00007fb01c4f81fa:   je     0x00007fb01c4f81c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 239)
          ↘   0x00007fb01c4f81fc:   movabs $0x7fb0314c8b90,%r10
              0x00007fb01c4f8206:   call   *%r10
              0x00007fb01c4f8209:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007fb01c4f8211:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 239)
              0x00007fb01c4f8215:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  95.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.77%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 668 
   0.58%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.67%  <...other 273 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.77%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 668 
   3.53%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libjvm.so  Mutex::lock 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___pthread_mutex_unlock_usercnt 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.32%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.77%           c2, level 4
   3.53%                kernel
   0.38%             libjvm.so
   0.23%             libc.so.6
   0.04%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%           interpreter
   0.01%                [vdso]
   0.00%                      
   0.00%            libjava.so
   0.00%        libz.so.1.2.11
   0.00%         perf-7493.map
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:10:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.312 ns/op
# Warmup Iteration   2: 3.230 ns/op
# Warmup Iteration   3: 3.272 ns/op
# Warmup Iteration   4: 3.228 ns/op
# Warmup Iteration   5: 3.245 ns/op
Iteration   1: 3.265 ns/op
Iteration   2: 3.280 ns/op
Iteration   3: 3.219 ns/op
Iteration   4: 3.219 ns/op
Iteration   5: 3.251 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls":
  3.247 ±(99.9%) 0.105 ns/op [Average]
  (min, avg, max) = (3.219, 3.247, 3.280), stdev = 0.027
  CI (99.9%): [3.142, 3.352] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.chain_method_calls:asm":
PrintAssembly processed: 127343 total address lines.
Perf output processed (skipped 67.148 seconds):
 Column 1: cycles (51122 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 678 

              0x00007f8f904f9320:   movzbl 0x94(%r14),%r11d             ; implicit exception: dispatches to 0x00007f8f904f93f4
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 238)
              0x00007f8f904f9328:   mov    $0x1,%ebp
              0x00007f8f904f932d:   test   %r11d,%r11d
          ╭   0x00007f8f904f9330:   jne    0x00007f8f904f937c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
          │   0x00007f8f904f9332:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f8f904f933c:   data16 data16 xchg %ax,%ax          ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 236)
   6.29%  │↗  0x00007f8f904f9340:   mov    0x10(%rcx),%r8d
   6.39%  ││  0x00007f8f904f9344:   mov    0x14(%rcx),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@33 (line 117)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   6.48%  ││  0x00007f8f904f9348:   movzbl 0x94(%r14),%r9d              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 238)
   6.24%  ││  0x00007f8f904f9350:   lea    (%r11,%r8,2),%r8d
   6.43%  ││  0x00007f8f904f9354:   add    %r11d,%r8d
   6.48%  ││  0x00007f8f904f9357:   add    %r11d,%r8d
   6.52%  ││  0x00007f8f904f935a:   add    %r11d,%r8d
   6.36%  ││  0x00007f8f904f935d:   add    %r11d,%r8d
   6.50%  ││  0x00007f8f904f9360:   add    %r11d,%r8d
   6.58%  ││  0x00007f8f904f9363:   add    %r11d,%r8d
   6.19%  ││  0x00007f8f904f9366:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::chain_method_calls@51 (line 120)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 236)
   6.30%  ││  0x00007f8f904f9369:   add    $0x1,%rbp                    ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 238)
   6.64%  ││  0x00007f8f904f936d:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rcx=Oop rbx=Oop r13=Oop r14=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 238)
   6.47%  ││  0x00007f8f904f9374:   test   %eax,(%r11)                  ;   {poll}
   6.41%  ││  0x00007f8f904f9377:   test   %r9d,%r9d
          │╰  0x00007f8f904f937a:   je     0x00007f8f904f9340           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007f8f904f937c:   movabs $0x7f8fa82c8b90,%r10
              0x00007f8f904f9386:   call   *%r10
              0x00007f8f904f9389:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f8f904f9391:   mov    %rax,0x30(%rbx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007f8f904f9395:   mov    %r12,0x20(%rbx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.30%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 678 
   0.76%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   1.52%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.30%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 678 
   3.01%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libjvm.so  defaultStream::has_log_file 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __GI___libc_write 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libjvm.so  outputStream::print 
   0.32%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.30%           c2, level 4
   3.01%                kernel
   0.34%             libjvm.so
   0.24%             libc.so.6
   0.05%        hsdis-amd64.so
   0.04%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:08:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.555 ns/op
# Warmup Iteration   2: 5.828 ns/op
# Warmup Iteration   3: 6.122 ns/op
# Warmup Iteration   4: 6.012 ns/op
# Warmup Iteration   5: 6.014 ns/op
Iteration   1: 6.956 ns/op
Iteration   2: 6.129 ns/op
Iteration   3: 6.011 ns/op
Iteration   4: 6.007 ns/op
Iteration   5: 6.036 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls":
  6.228 ±(99.9%) 1.580 ns/op [Average]
  (min, avg, max) = (6.007, 6.228, 6.956), stdev = 0.410
  CI (99.9%): [4.648, 7.808] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 127568 total address lines.
Perf output processed (skipped 66.714 seconds):
 Column 1: cycles (51038 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 675 

              0x00007ffaec4fc73f:   nop
              0x00007ffaec4fc740:   movzbl 0x94(%r9),%ecx               ; implicit exception: dispatches to 0x00007ffaec4fcb44
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 238)
              0x00007ffaec4fc748:   mov    $0x1,%ebx
              0x00007ffaec4fc74d:   test   %ecx,%ecx
          ╭   0x00007ffaec4fc74f:   jne    0x00007ffaec4fc80b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
          │   0x00007ffaec4fc755:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
   0.61%  │↗  0x00007ffaec4fc760:   mov    0x10(%r10),%r8d
   1.80%  ││  0x00007ffaec4fc764:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@5 (line 127)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.11%  ││  0x00007ffaec4fc767:   cmp    $0x20,%r8d
   0.00%  ││  0x00007ffaec4fc76b:   jle    0x00007ffaec4fc846           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@10 (line 130)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
  11.02%  ││  0x00007ffaec4fc771:   mov    0x14(%r10),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 140)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.61%  ││  0x00007ffaec4fc775:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@15 (line 131)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   1.91%  ││  0x00007ffaec4fc778:   nopl   0x0(%rax,%rax,1)
   0.11%  ││  0x00007ffaec4fc780:   cmp    $0x20,%r8d
          ││  0x00007ffaec4fc784:   jle    0x00007ffaec4fc874           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@22 (line 133)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
  11.21%  ││  0x00007ffaec4fc78a:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@27 (line 134)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.59%  ││  0x00007ffaec4fc78d:   cmp    $0x20,%r8d                   ;   {no_reloc}
          ││  0x00007ffaec4fc791:   jle    0x00007ffaec4fc8a4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@34 (line 136)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   1.93%  ││  0x00007ffaec4fc797:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@39 (line 137)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.12%  ││  0x00007ffaec4fc79a:   nopw   0x0(%rax,%rax,1)
  10.74%  ││  0x00007ffaec4fc7a0:   cmp    $0x20,%r8d
   0.00%  ││  0x00007ffaec4fc7a4:   jle    0x00007ffaec4fc8d4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@46 (line 139)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.62%  ││  0x00007ffaec4fc7aa:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@51 (line 140)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   1.88%  ││  0x00007ffaec4fc7ad:   cmp    $0x20,%r8d
          ││  0x00007ffaec4fc7b1:   jle    0x00007ffaec4fc904           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@58 (line 142)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.15%  ││  0x00007ffaec4fc7b7:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@63 (line 143)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
  11.03%  ││  0x00007ffaec4fc7ba:   nopw   0x0(%rax,%rax,1)
   0.69%  ││  0x00007ffaec4fc7c0:   cmp    $0x20,%r8d
          ││  0x00007ffaec4fc7c4:   jle    0x00007ffaec4fc934           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@70 (line 145)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   2.04%  ││  0x00007ffaec4fc7ca:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@75 (line 146)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.12%  ││  0x00007ffaec4fc7cd:   cmp    $0x20,%r8d
   0.00%  ││  0x00007ffaec4fc7d1:   jle    0x00007ffaec4fc964           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@82 (line 148)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
  11.32%  ││  0x00007ffaec4fc7d7:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_chain_method_calls@87 (line 149)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 236)
   0.63%  ││  0x00007ffaec4fc7da:   nopw   0x0(%rax,%rax,1)
   1.84%  ││  0x00007ffaec4fc7e0:   cmp    $0x20,%r8d
          ││  0x00007ffaec4fc7e4:   jle    0x00007ffaec4fc994           ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
   0.17%  ││  0x00007ffaec4fc7ea:   add    %edi,%r8d                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 388)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@20 (line 236)
  10.78%  ││  0x00007ffaec4fc7ed:   add    $0x1,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@26 (line 237)
   0.62%  ││  0x00007ffaec4fc7f1:   movzbl 0x94(%r9),%r8d               ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 238)
   1.97%  ││  0x00007ffaec4fc7f9:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r10=Oop r11=Oop r9=Oop r13=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 238)
   0.12%  ││  0x00007ffaec4fc800:   test   %eax,(%rcx)                  ;   {poll}
  11.47%  ││  0x00007ffaec4fc802:   test   %r8d,%r8d
   0.00%  │╰  0x00007ffaec4fc805:   je     0x00007ffaec4fc760           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007ffaec4fc80b:   movabs $0x7ffb020c8b90,%r10
              0x00007ffaec4fc815:   call   *%r10
              0x00007ffaec4fc818:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007ffaec4fc820:   mov    %rax,0x30(%r13)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@40 (line 239)
              0x00007ffaec4fc824:   mov    %r12,0x20(%r13)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@46 (line 240)
....................................................................................................
  96.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.23%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 675 
   0.61%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.54%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.23%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 675 
   3.10%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%                        <unknown> 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libjvm.so  Invoke::Invoke 
   0.31%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.23%           c2, level 4
   3.10%                kernel
   0.35%             libjvm.so
   0.21%             libc.so.6
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.01%                      
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%         perf-7656.map
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:06:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.309 ns/op
# Warmup Iteration   2: 5.819 ns/op
# Warmup Iteration   3: 6.108 ns/op
# Warmup Iteration   4: 6.059 ns/op
# Warmup Iteration   5: 5.992 ns/op
Iteration   1: 6.115 ns/op
Iteration   2: 6.020 ns/op
Iteration   3: 5.987 ns/op
Iteration   4: 5.973 ns/op
Iteration   5: 6.121 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls":
  6.043 ±(99.9%) 0.272 ns/op [Average]
  (min, avg, max) = (5.973, 6.043, 6.121), stdev = 0.071
  CI (99.9%): [5.772, 6.315] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 127154 total address lines.
Perf output processed (skipped 66.673 seconds):
 Column 1: cycles (51104 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 676 

              0x00007fd7184fadbf:   nop
              0x00007fd7184fadc0:   movzbl 0x94(%r9),%ecx               ; implicit exception: dispatches to 0x00007fd7184fb1c4
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 238)
              0x00007fd7184fadc8:   mov    $0x1,%ebx
              0x00007fd7184fadcd:   test   %ecx,%ecx
          ╭   0x00007fd7184fadcf:   jne    0x00007fd7184fae8b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
          │   0x00007fd7184fadd5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
   0.32%  │↗  0x00007fd7184fade0:   mov    0x10(%r10),%r8d
   1.67%  ││  0x00007fd7184fade4:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@5 (line 160)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.06%  ││  0x00007fd7184fade7:   cmp    $0x20,%r8d
          ││  0x00007fd7184fadeb:   jle    0x00007fd7184faec6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@10 (line 163)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
  11.78%  ││  0x00007fd7184fadf1:   mov    0x14(%r10),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@14 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 170)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.29%  ││  0x00007fd7184fadf5:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@15 (line 164)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   1.61%  ││  0x00007fd7184fadf8:   nopl   0x0(%rax,%rax,1)
   0.07%  ││  0x00007fd7184fae00:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae04:   jle    0x00007fd7184faef4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@22 (line 165)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
  11.81%  ││  0x00007fd7184fae0a:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@27 (line 166)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.34%  ││  0x00007fd7184fae0d:   cmp    $0x20,%r8d                   ;   {no_reloc}
          ││  0x00007fd7184fae11:   jle    0x00007fd7184faf24           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@34 (line 167)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   1.54%  ││  0x00007fd7184fae17:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@39 (line 168)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.05%  ││  0x00007fd7184fae1a:   nopw   0x0(%rax,%rax,1)
  11.83%  ││  0x00007fd7184fae20:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae24:   jle    0x00007fd7184faf54           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@46 (line 169)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.35%  ││  0x00007fd7184fae2a:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@51 (line 170)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   1.60%  ││  0x00007fd7184fae2d:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae31:   jle    0x00007fd7184faf84           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@58 (line 171)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.06%  ││  0x00007fd7184fae37:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@63 (line 172)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
  11.64%  ││  0x00007fd7184fae3a:   nopw   0x0(%rax,%rax,1)
   0.31%  ││  0x00007fd7184fae40:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae44:   jle    0x00007fd7184fafb4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@70 (line 173)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   1.64%  ││  0x00007fd7184fae4a:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@75 (line 174)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.07%  ││  0x00007fd7184fae4d:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae51:   jle    0x00007fd7184fafe4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@82 (line 175)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
  11.59%  ││  0x00007fd7184fae57:   add    %edi,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::sum@17 (line 210)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::conditional_nested_method_calls@87 (line 176)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 236)
   0.29%  ││  0x00007fd7184fae5a:   nopw   0x0(%rax,%rax,1)
   1.60%  ││  0x00007fd7184fae60:   cmp    $0x20,%r8d
          ││  0x00007fd7184fae64:   jle    0x00007fd7184fb014           ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
   0.05%  ││  0x00007fd7184fae6a:   add    %edi,%r8d                    ;*invokestatic consumeCompiler {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@7 (line 388)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@20 (line 236)
  11.53%  ││  0x00007fd7184fae6d:   add    $0x1,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@26 (line 237)
   0.29%  ││  0x00007fd7184fae71:   movzbl 0x94(%r9),%r8d               ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 238)
   1.71%  ││  0x00007fd7184fae79:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r10=Oop r11=Oop r9=Oop r13=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 238)
   0.07%  ││  0x00007fd7184fae80:   test   %eax,(%rcx)                  ;   {poll}
  11.95%  ││  0x00007fd7184fae82:   test   %r8d,%r8d
          │╰  0x00007fd7184fae85:   je     0x00007fd7184fade0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 239)
          ↘   0x00007fd7184fae8b:   movabs $0x7fd72e6c8b90,%r10
              0x00007fd7184fae95:   call   *%r10
              0x00007fd7184fae98:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007fd7184faea0:   mov    %rax,0x30(%r13)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@40 (line 239)
              0x00007fd7184faea4:   mov    %r12,0x20(%r13)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.13%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 676 
   0.61%                kernel  [unknown] 
   0.48%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.45%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.13%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 676 
   3.31%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%                        <unknown> 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  printf_to_env 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  xmlStream::write_text 
   0.23%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.13%           c2, level 4
   3.31%                kernel
   0.25%             libjvm.so
   0.23%             libc.so.6
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.01%                      
   0.00%  ld-linux-x86-64.so.2
   0.00%         perf-7730.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 685.483 ns/op
# Warmup Iteration   2: 671.764 ns/op
# Warmup Iteration   3: 674.828 ns/op
# Warmup Iteration   4: 684.825 ns/op
# Warmup Iteration   5: 676.649 ns/op
Iteration   1: 677.357 ns/op
Iteration   2: 674.857 ns/op
Iteration   3: 683.110 ns/op
Iteration   4: 677.531 ns/op
Iteration   5: 683.532 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized":
  679.278 ±(99.9%) 14.798 ns/op [Average]
  (min, avg, max) = (674.857, 679.278, 683.532), stdev = 3.843
  CI (99.9%): [664.480, 694.075] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.nested_synchronized:asm":
PrintAssembly processed: 126530 total address lines.
Perf output processed (skipped 66.713 seconds):
 Column 1: cycles (51202 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                                     --------------------------------------------------------------------------------
                                     ----------------------------------------------------------------------
                                     monitorenter  194 monitorenter  [0x00007f5cf7f51400, 0x00007f5cf7f51540]  320 bytes
                                     --------------------------------------------------------------------------------
   0.32%                               0x00007f5cf7f51400:   pop    %rax
   0.69%                               0x00007f5cf7f51401:   cmp    (%rax),%rax
   0.04%                               0x00007f5cf7f51404:   xor    %esi,%esi
   0.22%                               0x00007f5cf7f51406:   mov    -0x48(%rbp),%rcx
   0.01%                               0x00007f5cf7f5140a:   lea    -0x48(%rbp),%rdx
   0.69%  ╭                            0x00007f5cf7f5140e:   jmp    0x00007f5cf7f51423
   0.87%  │ ↗                          0x00007f5cf7f51410:   cmpq   $0x0,0x8(%rcx)
   0.00%  │ │                          0x00007f5cf7f51415:   cmove  %rcx,%rsi
          │ │                          0x00007f5cf7f51419:   cmp    0x8(%rcx),%rax
          │╭│                          0x00007f5cf7f5141d:   je     0x00007f5cf7f51428
          │││                          0x00007f5cf7f5141f:   add    $0x10,%rcx
   0.02%  ↘││                          0x00007f5cf7f51423:   cmp    %rdx,%rcx
           │╰                          0x00007f5cf7f51426:   jne    0x00007f5cf7f51410
   0.91%   ↘                           0x00007f5cf7f51428:   test   %rsi,%rsi
             ╭                         0x00007f5cf7f5142b:   jne    0x00007f5cf7f51459
   0.00%     │                         0x00007f5cf7f51431:   mov    -0x48(%rbp),%rsi
             │                         0x00007f5cf7f51435:   sub    $0x10,%rsp
   0.99%     │                         0x00007f5cf7f51439:   sub    $0x10,%rsi
   0.01%     │                         0x00007f5cf7f5143d:   mov    %rsp,%rcx
             │                         0x00007f5cf7f51440:   mov    %rsi,-0x48(%rbp)
   0.01%     │╭                        0x00007f5cf7f51444:   jmp    0x00007f5cf7f51454
             ││↗                       0x00007f5cf7f51449:   mov    0x10(%rcx),%rdx
             │││                       0x00007f5cf7f5144d:   mov    %rdx,(%rcx)
             │││                       0x00007f5cf7f51450:   add    $0x8,%rcx
   0.94%     │↘│                       0x00007f5cf7f51454:   cmp    %rsi,%rcx
             │ ╰                       0x00007f5cf7f51457:   jne    0x00007f5cf7f51449
   0.00%     ↘                         0x00007f5cf7f51459:   inc    %r13
                                       0x00007f5cf7f5145c:   mov    %rax,0x8(%rsi)
   0.02%                               0x00007f5cf7f51460:   mov    0x8(%rsi),%rcx
   0.99%                               0x00007f5cf7f51464:   mov    $0x1,%eax
                                       0x00007f5cf7f51469:   or     (%rcx),%rax
   0.23%                               0x00007f5cf7f5146c:   mov    %rax,(%rsi)
   0.22%                               0x00007f5cf7f5146f:   lock cmpxchg %rsi,(%rcx)
  17.24%        ╭                      0x00007f5cf7f51474:   je     0x00007f5cf7f5148c
   0.01%        │                      0x00007f5cf7f5147a:   sub    %rsp,%rax
   0.82%        │                      0x00007f5cf7f5147d:   and    $0xfffffffffffff007,%rax
   0.00%        │                      0x00007f5cf7f51483:   mov    %rax,(%rsi)
   0.93%        │╭                     0x00007f5cf7f51486:   jne    0x00007f5cf7f51498
   0.01%        ↘│                     0x00007f5cf7f5148c:   incq   0x550(%r15)
   1.00%         │╭                    0x00007f5cf7f51493:   jmp    0x00007f5cf7f51522
                 ↘│╭                   0x00007f5cf7f51498:   call   0x00007f5cf7f514a2
                  ││╭                  0x00007f5cf7f5149d:   jmp    0x00007f5cf7f51522
                  │↘│                  0x00007f5cf7f514a2:   lea    0x8(%rsp),%rax
                  │ │                  0x00007f5cf7f514a7:   mov    %r13,-0x40(%rbp)
                  │ │                  0x00007f5cf7f514ab:   mov    %r15,%rdi
                  │ │                  0x00007f5cf7f514ae:   vzeroupper 
                  │ │                  0x00007f5cf7f514b1:   mov    %rbp,0x3a8(%r15)
                  │ │                  0x00007f5cf7f514b8:   mov    %rax,0x398(%r15)
                  │ │                  0x00007f5cf7f514bf:   test   $0xf,%spl
                  │ │╭                 0x00007f5cf7f514c3:   je     0x00007f5cf7f514db
                  │ ││                 0x00007f5cf7f514c9:   sub    $0x8,%rsp
                  │ ││                 0x00007f5cf7f514cd:   call   0x00007f5d0cad04a0 = InterpreterRuntime::monitorenter(JavaThread*, BasicObjectLock*)
                  │ ││                 0x00007f5cf7f514d2:   add    $0x8,%rsp
                  │ ││╭                0x00007f5cf7f514d6:   jmp    0x00007f5cf7f514e0
                  │ │↘│                0x00007f5cf7f514db:   call   0x00007f5d0cad04a0 = InterpreterRuntime::monitorenter(JavaThread*, BasicObjectLock*)
                  │ │ ↘                0x00007f5cf7f514e0:   movq   $0x0,0x398(%r15)
                  │ │                  0x00007f5cf7f514eb:   movq   $0x0,0x3a8(%r15)
                  │ │                  0x00007f5cf7f514f6:   movq   $0x0,0x3a0(%r15)
                  │ │                  0x00007f5cf7f51501:   vzeroupper 
                  │ │                  0x00007f5cf7f51504:   cmpq   $0x0,0x8(%r15)
                  │ │  ╭               0x00007f5cf7f51509:   je     0x00007f5cf7f51514
                  │ │  │               0x00007f5cf7f5150f:   jmp    0x00007f5cf7f37c00
                  │ │  ↘               0x00007f5cf7f51514:   mov    -0x40(%rbp),%r13
                  │ │                  0x00007f5cf7f51518:   mov    -0x38(%rbp),%r14
                  │ │                  0x00007f5cf7f5151c:   lea    0x0(%rbp,%r14,8),%r14
                  │ │                  0x00007f5cf7f51521:   ret    
   0.00%          ↘ ↘                  0x00007f5cf7f51522:   mov    %r13,-0x40(%rbp)
   0.13%                               0x00007f5cf7f51526:   mov    %eax,-0x14000(%rsp)
   0.01%                               0x00007f5cf7f5152d:   movzbl 0x0(%r13),%ebx
   0.81%                               0x00007f5cf7f51532:   movabs $0x7f5d0d657a20,%r10
                                       0x00007f5cf7f5153c:   jmp    *(%r10,%rbx,8)
                                     --------------------------------------------------------------------------------
                                     ----------------------------------------------------------------------
                                     monitorexit  195 monitorexit  [0x00007f5cf7f51560, 0x00007f5cf7f516a0]  320 bytes
                                     --------------------------------------------------------------------------------
                                       0x00007f5cf7f51560:   pop    %rax
   0.71%                               0x00007f5cf7f51561:   cmp    (%rax),%rax
   2.08%                               0x00007f5cf7f51564:   mov    -0x48(%rbp),%rsi
   0.11%                               0x00007f5cf7f51568:   lea    -0x48(%rbp),%rdx
   0.01%                ╭              0x00007f5cf7f5156c:   jmp    0x00007f5cf7f5157c
   4.12%                │ ↗            0x00007f5cf7f5156e:   cmp    0x8(%rsi),%rax
                        │╭│            0x00007f5cf7f51572:   je     0x00007f5cf7f5161f
   0.32%                │││            0x00007f5cf7f51578:   add    $0x10,%rsi
   0.12%                ↘││            0x00007f5cf7f5157c:   cmp    %rdx,%rsi
                         │╰            0x00007f5cf7f5157f:   jne    0x00007f5cf7f5156e
                         │ ╭           0x00007f5cf7f51581:   call   0x00007f5cf7f5158b
                         │ │╭          0x00007f5cf7f51586:   jmp    0x00007f5cf7f5160b
                         │ ↘│          0x00007f5cf7f5158b:   lea    0x8(%rsp),%rax
                         │  │          0x00007f5cf7f51590:   mov    %r13,-0x40(%rbp)
                         │  │          0x00007f5cf7f51594:   mov    %r15,%rdi
                         │  │          0x00007f5cf7f51597:   vzeroupper 
                         │  │          0x00007f5cf7f5159a:   mov    %rbp,0x3a8(%r15)
                         │  │          0x00007f5cf7f515a1:   mov    %rax,0x398(%r15)
                         │  │          0x00007f5cf7f515a8:   test   $0xf,%spl
                         │  │╭         0x00007f5cf7f515ac:   je     0x00007f5cf7f515c4
                         │  ││         0x00007f5cf7f515b2:   sub    $0x8,%rsp
                         │  ││         0x00007f5cf7f515b6:   call   0x00007f5d0cad0790 = InterpreterRuntime::throw_illegal_monitor_state_exception(JavaThread*)
                         │  ││         0x00007f5cf7f515bb:   add    $0x8,%rsp
                         │  ││╭        0x00007f5cf7f515bf:   jmp    0x00007f5cf7f515c9
                         │  │↘│        0x00007f5cf7f515c4:   call   0x00007f5d0cad0790 = InterpreterRuntime::throw_illegal_monitor_state_exception(JavaThread*)
                         │  │ ↘        0x00007f5cf7f515c9:   movq   $0x0,0x398(%r15)
                         │  │          0x00007f5cf7f515d4:   movq   $0x0,0x3a8(%r15)
                         │  │          0x00007f5cf7f515df:   movq   $0x0,0x3a0(%r15)
                         │  │          0x00007f5cf7f515ea:   vzeroupper 
                         │  │          0x00007f5cf7f515ed:   cmpq   $0x0,0x8(%r15)
                         │  │  ╭       0x00007f5cf7f515f2:   je     0x00007f5cf7f515fd
                         │  │  │       0x00007f5cf7f515f8:   jmp    0x00007f5cf7f37c00
                         │  │  ↘       0x00007f5cf7f515fd:   mov    -0x40(%rbp),%r13
                         │  │          0x00007f5cf7f51601:   mov    -0x38(%rbp),%r14
                         │  │          0x00007f5cf7f51605:   lea    0x0(%rbp,%r14,8),%r14
                         │  │          0x00007f5cf7f5160a:   ret    
                         │  ↘          0x00007f5cf7f5160b:   movabs $0x7f5d0d238486,%rdi
                         │             0x00007f5cf7f51615:   and    $0xfffffffffffffff0,%rsp
                         │             0x00007f5cf7f51619:   call   0x00007f5d0cdbb190 = MacroAssembler::debug64(char*, long, long*)
                         │             0x00007f5cf7f5161e:   hlt    
   1.25%                 ↘             0x00007f5cf7f5161f:   push   %rax
   0.76%                               0x00007f5cf7f51620:   mov    %r13,-0x40(%rbp)
   0.23%                               0x00007f5cf7f51624:   lea    (%rsi),%rax
                                       0x00007f5cf7f51627:   mov    0x8(%rsi),%rcx
   0.63%                               0x00007f5cf7f5162b:   movq   $0x0,0x8(%rsi)
   0.71%                               0x00007f5cf7f51633:   mov    (%rax),%rdx
   0.02%                               0x00007f5cf7f51636:   test   %rdx,%rdx
                                ╭      0x00007f5cf7f51639:   je     0x00007f5cf7f5164a
   0.01%                        │      0x00007f5cf7f5163f:   lock cmpxchg %rdx,(%rcx)
   2.42%                        │╭     0x00007f5cf7f51644:   jne    0x00007f5cf7f51656
   0.04%                        ↘│     0x00007f5cf7f5164a:   decq   0x550(%r15)
   1.01%                         │╭    0x00007f5cf7f51651:   jmp    0x00007f5cf7f5167e
                                 ↘│    0x00007f5cf7f51656:   mov    %rcx,0x8(%rsi)
                                  │    0x00007f5cf7f5165a:   mov    %rsi,%rdi
                                  │    0x00007f5cf7f5165d:   test   $0xf,%spl
                                  │╭   0x00007f5cf7f51661:   je     0x00007f5cf7f51679
                                  ││   0x00007f5cf7f51667:   sub    $0x8,%rsp
                                  ││   0x00007f5cf7f5166b:   call   0x00007f5d0cad0700 = InterpreterRuntime::monitorexit(BasicObjectLock*)
                                  ││   0x00007f5cf7f51670:   add    $0x8,%rsp
                                  ││╭  0x00007f5cf7f51674:   jmp    0x00007f5cf7f5167e
                                  │↘│  0x00007f5cf7f51679:   call   0x00007f5d0cad0700 = InterpreterRuntime::monitorexit(BasicObjectLock*)
                                  ↘ ↘  0x00007f5cf7f5167e:   mov    -0x40(%rbp),%r13
   0.67%                               0x00007f5cf7f51682:   pop    %rax
   0.21%                               0x00007f5cf7f51683:   movzbl 0x1(%r13),%ebx
   0.37%                               0x00007f5cf7f51688:   inc    %r13
....................................................................................................
  44.59%  <total for region 1>

....[Hottest Regions]...............................................................................
  44.59%           interpreter  monitorenter  194 monitorenter  
   7.69%           interpreter  goto  167 goto  
   6.08%           interpreter  aload  25 aload  
   5.83%           interpreter  dup  89 dup  
   4.63%           interpreter  fast_iaccess_0  221 fast_iaccess_0  
   4.18%         perf-7796.map  [unknown] 
   4.10%           interpreter  astore  58 astore  
   4.08%           interpreter  method entry point (kind = zerolocals)  
   2.85%           interpreter  return entry points  
   2.27%           interpreter  ireturn  172 ireturn  
   2.20%           interpreter  aload_1  43 aload_1  
   1.73%           interpreter  new  187 new  
   1.69%           interpreter  astore_2  77 astore_2  
   1.19%           interpreter  invokespecial  183 invokespecial  
   0.86%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 677 
   0.66%                kernel  [unknown] 
   0.52%                kernel  [unknown] 
   0.39%           interpreter  ishl  120 ishl  
   0.37%           c2, level 4  java.lang.Object::&lt;init&gt;, version 2, compile id 36 
   0.33%                kernel  [unknown] 
   3.74%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  44.59%           interpreter  monitorenter  194 monitorenter  
   7.69%           interpreter  goto  167 goto  
   6.08%           interpreter  aload  25 aload  
   5.83%           interpreter  dup  89 dup  
   4.63%           interpreter  fast_iaccess_0  221 fast_iaccess_0  
   4.18%         perf-7796.map  [unknown] 
   4.10%           interpreter  astore  58 astore  
   4.08%           interpreter  method entry point (kind = zerolocals)  
   3.69%                kernel  [unknown] 
   2.85%           interpreter  return entry points  
   2.27%           interpreter  ireturn  172 ireturn  
   2.20%           interpreter  aload_1  43 aload_1  
   1.73%           interpreter  new  187 new  
   1.69%           interpreter  astore_2  77 astore_2  
   1.19%           interpreter  invokespecial  183 invokespecial  
   0.86%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 677 
   0.39%           interpreter  ishl  120 ishl  
   0.37%           c2, level 4  java.lang.Object::&lt;init&gt;, version 2, compile id 36 
   0.12%             libjvm.so  CompilationPolicy::create_mdo 
   0.11%             libjvm.so  CallPredicate::apply 
   1.33%  <...other 127 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.45%           interpreter
   4.18%         perf-7796.map
   3.69%                kernel
   1.22%           c2, level 4
   1.17%             libjvm.so
   0.21%             libc.so.6
   0.04%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%                      
   0.00%           c1, level 3
   0.00%          runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.190 ns/op
# Warmup Iteration   2: 24.907 ns/op
# Warmup Iteration   3: 26.922 ns/op
# Warmup Iteration   4: 25.044 ns/op
# Warmup Iteration   5: 25.060 ns/op
Iteration   1: 24.918 ns/op
Iteration   2: 25.297 ns/op
Iteration   3: 24.916 ns/op
Iteration   4: 24.822 ns/op
Iteration   5: 25.069 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls":
  25.004 ±(99.9%) 0.716 ns/op [Average]
  (min, avg, max) = (24.822, 25.004, 25.297), stdev = 0.186
  CI (99.9%): [24.288, 25.721] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 128190 total address lines.
Perf output processed (skipped 69.031 seconds):
 Column 1: cycles (51124 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 660 

                   # parm1:    rcx       = int
                   #           [sp+0x30]  (sp of caller)
                   0x00007fcb704f62a0:   mov    0x8(%rsi),%r10d
                   0x00007fcb704f62a4:   movabs $0x7fcaef000000,%r11
                   0x00007fcb704f62ae:   add    %r11,%r10
                   0x00007fcb704f62b1:   cmp    %r10,%rax
                   0x00007fcb704f62b4:   jne    0x00007fcb6ff85080           ;   {runtime_call ic_miss_stub}
                   0x00007fcb704f62ba:   xchg   %ax,%ax
                   0x00007fcb704f62bc:   nopl   0x0(%rax)
                 [Verified Entry Point]
   6.75%    ↗      0x00007fcb704f62c0:   mov    %eax,-0x14000(%rsp)
   6.69%    │      0x00007fcb704f62c7:   push   %rbp
   1.57%    │      0x00007fcb704f62c8:   sub    $0x20,%rsp
   6.51%    │      0x00007fcb704f62cc:   cmpl   $0x1,0x20(%r15)
   5.18%    │      0x00007fcb704f62d4:   jne    0x00007fcb704f633a           ;*synchronization entry
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 215)
   1.38%    │      0x00007fcb704f62da:   test   %ecx,%ecx
          ╭ │      0x00007fcb704f62dc:   je     0x00007fcb704f630f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 217)
   4.69%  │ │      0x00007fcb704f62de:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 220)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   0.77%  │ │      0x00007fcb704f62e1:   cmp    $0x1,%ecx
          │╭│      0x00007fcb704f62e4:   je     0x00007fcb704f6313           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@14 (line 217)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   2.99%  │││      0x00007fcb704f62e6:   add    $0xfffffffe,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@30 (line 220)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   1.46%  │││      0x00007fcb704f62e9:   xchg   %ax,%ax
   4.62%  ││╰      0x00007fcb704f62eb:   call   0x00007fcb704f62c0           ; ImmutableOopMap {}
          ││                                                                 ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
          ││                                                                 ;   {optimized virtual_call}
   9.43%  ││       0x00007fcb704f62f0:   nopl   0x1e0(%rax,%rax,1)           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
          ││                                                                 ;   {other}
   0.80%  ││       0x00007fcb704f62f8:   add    %ebp,%eax                    ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
   3.04%  ││   ↗   0x00007fcb704f62fa:   add    %ebp,%eax
   5.59%  ││  ↗│   0x00007fcb704f62fc:   add    $0x20,%rsp
   3.64%  ││  ││   0x00007fcb704f6300:   pop    %rbp
   3.35%  ││  ││↗  0x00007fcb704f6301:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ╭│││  0x00007fcb704f6308:   ja     0x00007fcb704f6324
   9.50%  ││ ││││  0x00007fcb704f630e:   ret    
   0.44%  ↘│ ││││  0x00007fcb704f630f:   mov    %edx,%eax
   0.59%   │ │╰││  0x00007fcb704f6311:   jmp    0x00007fcb704f62fc
           ↘ │ ││  0x00007fcb704f6313:   mov    %edx,%eax
             │ ╰│  0x00007fcb704f6315:   jmp    0x00007fcb704f62fa           ;*synchronization entry
             │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@-1 (line 215)
             │  │  0x00007fcb704f6317:   mov    %rax,%rsi
             │  │  0x00007fcb704f631a:   add    $0x20,%rsp
             │  │  0x00007fcb704f631e:   pop    %rbp
             │  │  0x00007fcb704f631f:   jmp    0x00007fcb70061700           ;   {runtime_call _rethrow_Java}
             ↘  ╰  0x00007fcb704f6324:   movabs $0x7fcb704f6301,%r10         ;   {internal_word}
                   0x00007fcb704f632e:   mov    %r10,0x468(%r15)
                   0x00007fcb704f6335:   jmp    0x00007fcb6ff8c000           ;   {runtime_call SafepointBlob}
....................................................................................................
  78.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 7, compile id 697 

              0x00007fcb704f93ce:   movzbl 0x94(%r8),%r10d              ; implicit exception: dispatches to 0x00007fcb704f94dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 238)
              0x00007fcb704f93d6:   test   %r10d,%r10d
              0x00007fcb704f93d9:   jne    0x00007fcb704f9485           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
              0x00007fcb704f93df:   mov    $0x1,%r10d
              0x00007fcb704f93e5:   mov    %r10,0x8(%rsp)
          ╭   0x00007fcb704f93ea:   jmp    0x00007fcb704f93f5
          │   0x00007fcb704f93ec:   nopl   0x0(%rax)
   0.45%  │↗  0x00007fcb704f93f0:   mov    %rbx,0x8(%rsp)               ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@4 (line 215)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.71%  ↘│  0x00007fcb704f93f5:   mov    0x50(%rsp),%r10
   2.12%   │  0x00007fcb704f93fa:   mov    0x10(%r10),%edx
   0.06%   │  0x00007fcb704f93fe:   mov    0x14(%r10),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@23 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.50%   │  0x00007fcb704f9402:   shl    %edx                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@5 (line 104)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.66%   │  0x00007fcb704f9404:   mov    0x50(%rsp),%rsi
   2.02%   │  0x00007fcb704f9409:   mov    $0x6,%ecx
   0.05%   │  0x00007fcb704f940e:   nop
   0.50%   │  0x00007fcb704f940f:   call   0x00007fcb6ff85380           ; ImmutableOopMap {[0]=Oop [64]=Oop [72]=Oop [80]=Oop }
           │                                                            ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@31 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.72%   │  0x00007fcb704f9414:   nopl   0x1000284(%rax,%rax,1)       ;*invokevirtual consume {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   2.07%   │  0x00007fcb704f941c:   mov    0x48(%rsp),%r8
   0.60%   │  0x00007fcb704f9421:   movzbl 0x94(%r8),%r10d              ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@30 (line 238)
   0.76%   │  0x00007fcb704f9429:   add    %ebp,%eax
   2.23%   │  0x00007fcb704f942b:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum@34 (line 220)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursive_method_calls@11 (line 105)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 236)
   0.03%   │  0x00007fcb704f942d:   mov    0x8(%rsp),%rbx
   0.45%   │  0x00007fcb704f9432:   add    $0x1,%rbx                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   0.66%   │  0x00007fcb704f9436:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [64]=Oop [72]=Oop [80]=Oop }
           │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 238)
   2.09%   │  0x00007fcb704f943d:   test   %eax,(%r11)                  ;   {poll}
   0.05%   │  0x00007fcb704f9440:   test   %r10d,%r10d
           ╰  0x00007fcb704f9443:   je     0x00007fcb704f93f0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@36 (line 239)
              0x00007fcb704f9445:   movabs $0x7fcb882c8b90,%r10
              0x00007fcb704f944f:   call   *%r10
              0x00007fcb704f9452:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007fcb704f945a:   mov    0x40(%rsp),%r10
              0x00007fcb704f945f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 239)
....................................................................................................
  16.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.99%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 660 
  16.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 7, compile id 697 
   0.62%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.82%  <...other 270 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.99%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockElisionBenchmark::recursiveSum, version 2, compile id 660 
  16.74%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockElisionBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 7, compile id 697 
   3.58%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libjvm.so  xmlStream::write_text 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  _IO_fflush 
   0.32%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.73%           c2, level 4
   3.58%                kernel
   0.34%             libjvm.so
   0.25%             libc.so.6
   0.04%           interpreter
   0.03%        hsdis-amd64.so
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%         perf-7862.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:12:14

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

Benchmark                                                 Mode  Cnt    Score    Error  Units
LockElisionBenchmark.baseline                             avgt    5    3.292 ±  0.362  ns/op
LockElisionBenchmark.baseline:asm                         avgt           NaN             ---
LockElisionBenchmark.chain_method_calls                   avgt    5    3.247 ±  0.105  ns/op
LockElisionBenchmark.chain_method_calls:asm               avgt           NaN             ---
LockElisionBenchmark.conditional_chain_method_calls       avgt    5    6.228 ±  1.580  ns/op
LockElisionBenchmark.conditional_chain_method_calls:asm   avgt           NaN             ---
LockElisionBenchmark.conditional_nested_method_calls      avgt    5    6.043 ±  0.272  ns/op
LockElisionBenchmark.conditional_nested_method_calls:asm  avgt           NaN             ---
LockElisionBenchmark.nested_synchronized                  avgt    5  679.278 ± 14.798  ns/op
LockElisionBenchmark.nested_synchronized:asm              avgt           NaN             ---
LockElisionBenchmark.recursive_method_calls               avgt    5   25.004 ±  0.716  ns/op
LockElisionBenchmark.recursive_method_calls:asm           avgt           NaN             ---
