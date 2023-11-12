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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 514.479 us/op
# Warmup Iteration   2: 511.401 us/op
# Warmup Iteration   3: 511.415 us/op
# Warmup Iteration   4: 510.996 us/op
# Warmup Iteration   5: 510.971 us/op
Iteration   1: 511.007 us/op
Iteration   2: 510.977 us/op
Iteration   3: 510.946 us/op
Iteration   4: 510.974 us/op
Iteration   5: 510.938 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  510.968 ±(99.9%) 0.106 us/op [Average]
  (min, avg, max) = (510.938, 510.968, 511.007), stdev = 0.028
  CI (99.9%): [510.862, 511.075] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 218008 total address lines.
Perf output processed (skipped 60.360 seconds):
 Column 1: cycles (50670 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 959 

              0x00007fcae323e434:   nopl   0x0(%rax,%rax,1)
              0x00007fcae323e43c:   data16 data16 xchg %ax,%ax
              0x00007fcae323e440:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fcae323e447:   ja     0x00007fcae323e59b
              0x00007fcae323e44d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
              0x00007fcae323e44e:   lea    -0x4(%r10),%r8d
          ╭   0x00007fcae323e452:   jmp    0x00007fcae323e4c2
          │   0x00007fcae323e457:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
   0.23%  │↗  0x00007fcae323e460:   mov    0x10(%rcx,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%  ││  0x00007fcae323e465:   movslq %r9d,%rdx
   4.55%  ││  0x00007fcae323e468:   add    0xc(%r11,%rdx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.84%  ││  0x00007fcae323e46d:   mov    %ebx,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.25%  ││  0x00007fcae323e472:   add    0x10(%rcx,%r9,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.05%  ││  0x00007fcae323e477:   mov    %ebx,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.70%  ││  0x00007fcae323e47c:   mov    0x14(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%  ││  0x00007fcae323e480:   add    0x10(%r11,%r9,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.46%  ││  0x00007fcae323e485:   mov    %ebx,0x14(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.08%  ││  0x00007fcae323e48a:   add    0x14(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%  ││  0x00007fcae323e48e:   mov    %ebx,0x14(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.90%  ││  0x00007fcae323e492:   mov    0x18(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
          ││  0x00007fcae323e496:   add    0x14(%r11,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.35%  ││  0x00007fcae323e49b:   mov    %ebx,0x18(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.09%  ││  0x00007fcae323e4a0:   add    0x18(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.05%  ││  0x00007fcae323e4a4:   mov    %ebx,0x18(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   5.05%  ││  0x00007fcae323e4a8:   mov    0x1c(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
          ││  0x00007fcae323e4ac:   add    0x18(%r11,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.22%  ││  0x00007fcae323e4b1:   mov    %ebx,0x1c(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.09%  ││  0x00007fcae323e4b6:   add    0x1c(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.06%  ││  0x00007fcae323e4ba:   mov    %ebx,0x1c(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   5.06%  ││  0x00007fcae323e4be:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
   0.00%  ↘│  0x00007fcae323e4c2:   cmp    %r9d,%r8d
           ╰  0x00007fcae323e4c5:   jg     0x00007fcae323e460
              0x00007fcae323e4c7:   jmp    0x00007fcae323e500
              0x00007fcae323e4cc:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fcae323e4d7:   data16 data16 xchg %ax,%ax
              0x00007fcae323e4db:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
              0x00007fcae323e4e0:   mov    0x10(%rcx,%r9,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
              0x00007fcae323e4e5:   movslq %r9d,%rbx
....................................................................................................
  98.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 959 
   0.24%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.91%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 959 
   1.46%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.02%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 4, compile id 995 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%      jvmci, level 4
   1.46%              kernel
   0.13%           libjvm.so
   0.12%        libc-2.31.so
   0.11%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 766.886 us/op
# Warmup Iteration   2: 756.218 us/op
# Warmup Iteration   3: 756.992 us/op
# Warmup Iteration   4: 756.940 us/op
# Warmup Iteration   5: 756.797 us/op
Iteration   1: 756.504 us/op
Iteration   2: 755.303 us/op
Iteration   3: 755.269 us/op
Iteration   4: 755.384 us/op
Iteration   5: 756.214 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  755.735 ±(99.9%) 2.235 us/op [Average]
  (min, avg, max) = (755.269, 755.735, 756.504), stdev = 0.580
  CI (99.9%): [753.500, 757.969] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 214737 total address lines.
Perf output processed (skipped 60.185 seconds):
 Column 1: cycles (50857 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 955 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
             0x00007f78bb23ef4b:   mov    %edx,0x14(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
             0x00007f78bb23ef53:   mov    $0x2,%edx
             0x00007f78bb23ef58:   jmp    0x00007f78bb23f050           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@2 (line 101)
             0x00007f78bb23ef5d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          ↗  0x00007f78bb23ef60:   mov    0x10(%rcx,%rdx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   1.63%  │  0x00007f78bb23ef64:   movslq %edx,%r13
          │  0x00007f78bb23ef67:   add    0xc(%r9,%r13,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   4.32%  │  0x00007f78bb23ef6c:   mov    %ebp,0x10(%r9,%rdx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.30%  │  0x00007f78bb23ef71:   mov    0x14(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23ef76:   add    0x10(%r9,%rdx,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.01%  │  0x00007f78bb23ef7b:   mov    %ebp,0x14(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.22%  │  0x00007f78bb23ef80:   mov    0x18(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23ef85:   add    0x14(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.01%  │  0x00007f78bb23ef8a:   mov    %ebp,0x18(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.29%  │  0x00007f78bb23ef8f:   mov    0x1c(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23ef94:   add    0x18(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.89%  │  0x00007f78bb23ef99:   mov    %ebp,0x1c(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.42%  │  0x00007f78bb23ef9e:   mov    0x20(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23efa3:   add    0x1c(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.09%  │  0x00007f78bb23efa8:   mov    %ebp,0x20(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.30%  │  0x00007f78bb23efad:   mov    0x24(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23efb2:   add    0x20(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.95%  │  0x00007f78bb23efb7:   mov    %ebp,0x24(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.29%  │  0x00007f78bb23efbc:   mov    0x28(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23efc1:   add    0x24(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.96%  │  0x00007f78bb23efc6:   mov    %ebp,0x28(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.34%  │  0x00007f78bb23efcb:   mov    0x2c(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  0x00007f78bb23efd0:   add    0x28(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.11%  │  0x00007f78bb23efd5:   mov    %ebp,0x2c(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.11%  │  0x00007f78bb23efda:   lea    0x8(%rdx),%edx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          │  0x00007f78bb23efdd:   data16 xchg %ax,%ax
          │  0x00007f78bb23efe0:   cmp    %edx,%ebx
          ╰  0x00007f78bb23efe2:   jg     0x00007f78bb23ef60
             0x00007f78bb23efe8:   jmp    0x00007f78bb23f020
             0x00007f78bb23efed:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f78bb23eff8:   data16 data16 xchg %ax,%ax
             0x00007f78bb23effc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
....................................................................................................
  74.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 955 

             0x00007f78bb23f11a:   mov    %r11d,0x14(,%r13,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             0x00007f78bb23f122:   shl    $0x3,%r13                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
             0x00007f78bb23f126:   mov    $0x2,%r11d
             0x00007f78bb23f12c:   jmp    0x00007f78bb23f232           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@39 (line 105)
             0x00007f78bb23f131:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
             0x00007f78bb23f13c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
   0.04%  ↗  0x00007f78bb23f140:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   1.29%  │  0x00007f78bb23f145:   add    0x10(%r9,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.37%  │  0x00007f78bb23f14a:   mov    %r8d,0x10(%r13,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.46%  │  0x00007f78bb23f14f:   movslq %r11d,%r8
   0.04%  │  0x00007f78bb23f152:   mov    0x14(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   3.80%  │  0x00007f78bb23f157:   add    0x14(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   2.94%  │  0x00007f78bb23f15c:   mov    %edi,0x14(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.76%  │  0x00007f78bb23f161:   mov    0x18(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.22%  │  0x00007f78bb23f166:   add    0x18(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   1.31%  │  0x00007f78bb23f16b:   mov    %edi,0x18(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.94%  │  0x00007f78bb23f170:   mov    0x1c(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.26%  │  0x00007f78bb23f175:   add    0x1c(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.14%  │  0x00007f78bb23f17a:   mov    %edi,0x1c(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.32%  │  0x00007f78bb23f17f:   mov    0x20(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.32%  │  0x00007f78bb23f184:   add    0x20(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.41%  │  0x00007f78bb23f189:   mov    %edi,0x20(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.25%  │  0x00007f78bb23f18e:   mov    0x24(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.22%  │  0x00007f78bb23f193:   add    0x24(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.31%  │  0x00007f78bb23f198:   mov    %edi,0x24(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.34%  │  0x00007f78bb23f19d:   mov    0x28(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.08%  │  0x00007f78bb23f1a2:   add    0x28(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.24%  │  0x00007f78bb23f1a7:   mov    %edi,0x28(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.33%  │  0x00007f78bb23f1ac:   mov    0x2c(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.26%  │  0x00007f78bb23f1b1:   add    0x2c(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.06%  │  0x00007f78bb23f1b6:   mov    %edi,0x2c(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.32%  │  0x00007f78bb23f1bb:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
   0.20%  │  0x00007f78bb23f1bf:   nop
   0.25%  │  0x00007f78bb23f1c0:   cmp    %r11d,%ebx
          ╰  0x00007f78bb23f1c3:   jg     0x00007f78bb23f140
             0x00007f78bb23f1c9:   jmp    0x00007f78bb23f200
             0x00007f78bb23f1ce:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f78bb23f1d9:   data16 data16 xchg %ax,%ax
             0x00007f78bb23f1dd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
             0x00007f78bb23f1e0:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.00%     0x00007f78bb23f1e5:   add    0x10(%r9,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
....................................................................................................
  23.50%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 955 
  23.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 955 
   0.29%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   1.11%  <...other 385 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 955 
   1.80%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::flush 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.18%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.74%      jvmci, level 4
   1.80%              kernel
   0.16%           libjvm.so
   0.12%                    
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%         c1, level 1
   0.00%    perf-2112353.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                     (size)  Mode  Cnt    Score   Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  510.968 ± 0.106  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt           NaN            ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5  755.735 ± 2.235  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt           NaN            ---
