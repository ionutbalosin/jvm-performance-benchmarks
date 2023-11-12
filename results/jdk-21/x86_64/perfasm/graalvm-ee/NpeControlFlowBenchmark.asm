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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 230.534 us/op
# Warmup Iteration   2: 229.647 us/op
# Warmup Iteration   3: 206.203 us/op
# Warmup Iteration   4: 229.479 us/op
# Warmup Iteration   5: 228.781 us/op
Iteration   1: 229.123 us/op
Iteration   2: 228.979 us/op
Iteration   3: 229.343 us/op
Iteration   4: 229.242 us/op
Iteration   5: 234.858 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  230.309 ±(99.9%) 9.806 us/op [Average]
  (min, avg, max) = (228.979, 230.309, 234.858), stdev = 2.547
  CI (99.9%): [220.503, 240.115] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 228770 total address lines.
Perf output processed (skipped 60.911 seconds):
 Column 1: cycles (50733 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 974 

              0x00007fa606d809fa:   lea    -0x8(%r10),%r11d
              0x00007fa606d809fe:   cmp    $0x80000008,%r10d
              0x00007fa606d80a05:   mov    $0x80000000,%ecx
              0x00007fa606d80a0a:   cmovl  %ecx,%r11d
          ╭   0x00007fa606d80a0e:   jmp    0x00007fa606d80aa4
          │   0x00007fa606d80a13:   nopw   0x0(%rax,%rax,1)
          │   0x00007fa606d80a1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │↗  0x00007fa606d80a20:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   3.50%  ││  0x00007fa606d80a25:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││  0x00007fa606d80a28:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fa606d80b8d
   9.62%  ││  0x00007fa606d80a2f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││  0x00007fa606d80a34:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fa606d80bb0
          ││                                                            ;   {no_reloc}
   2.75%  ││  0x00007fa606d80a3b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││  0x00007fa606d80a40:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007fa606d80bd3
   6.78%  ││  0x00007fa606d80a47:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.68%  ││  0x00007fa606d80a4c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007fa606d80bf6
  18.02%  ││  0x00007fa606d80a53:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.00%  ││  0x00007fa606d80a58:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007fa606d80c19
  13.26%  ││  0x00007fa606d80a5f:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││  0x00007fa606d80a64:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007fa606d80c3c
   6.56%  ││  0x00007fa606d80a6c:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.00%  ││  0x00007fa606d80a71:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007fa606d80c5f
   7.33%  ││  0x00007fa606d80a79:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
          ││  0x00007fa606d80a7e:   xchg   %ax,%ax
   0.66%  ││  0x00007fa606d80a80:   test   %esi,%esi
          ││  0x00007fa606d80a82:   je     0x00007fa606d80b22           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
          ││  0x00007fa606d80a88:   add    %ecx,%ebx
   4.74%  ││  0x00007fa606d80a8a:   add    %edi,%ebx
          ││  0x00007fa606d80a8c:   add    %edx,%ebx
   0.92%  ││  0x00007fa606d80a8e:   add    %ebp,%ebx
          ││  0x00007fa606d80a90:   add    %r13d,%ebx
   4.87%  ││  0x00007fa606d80a93:   add    %r14d,%ebx
   0.50%  ││  0x00007fa606d80a96:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  15.85%  ││  0x00007fa606d80a9d:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
          ││  0x00007fa606d80aa1:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   1.88%  ↘│  0x00007fa606d80aa4:   cmp    %r9d,%r11d
           ╰  0x00007fa606d80aa7:   jg     0x00007fa606d80a20
              0x00007fa606d80aad:   jmp    0x00007fa606d80ae0
              0x00007fa606d80ab2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007fa606d80abc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
              0x00007fa606d80ac0:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
              0x00007fa606d80ac5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 974 
   0.63%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 974 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 1002 
   0.86%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 974 
   1.61%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 1002 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __GI___libc_write 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.99%      jvmci, level 4
   1.61%              kernel
   0.14%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2137831.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:13:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1278.632 us/op
# Warmup Iteration   2: 1274.531 us/op
# Warmup Iteration   3: 1274.485 us/op
# Warmup Iteration   4: 1274.486 us/op
# Warmup Iteration   5: 1275.120 us/op
Iteration   1: 1275.084 us/op
Iteration   2: 1275.233 us/op
Iteration   3: 1274.780 us/op
Iteration   4: 1274.212 us/op
Iteration   5: 1274.181 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1274.698 ±(99.9%) 1.873 us/op [Average]
  (min, avg, max) = (1274.181, 1274.698, 1275.233), stdev = 0.486
  CI (99.9%): [1272.825, 1276.571] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 227286 total address lines.
Perf output processed (skipped 60.721 seconds):
 Column 1: cycles (50700 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 970 

                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
                       0x00007f101ed7ed35:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
                       0x00007f101ed7ed3d:   jmp    0x00007f101ed7ed20
                       0x00007f101ed7ed3f:   lea    -0x8(%r10),%r11d
                       0x00007f101ed7ed43:   cmp    $0x80000008,%r10d
                       0x00007f101ed7ed4a:   mov    $0x80000000,%ecx
                       0x00007f101ed7ed4f:   cmovl  %ecx,%r11d
                       0x00007f101ed7ed53:   nopw   0x0(%rax,%rax,1)
                       0x00007f101ed7ed5c:   data16 data16 xchg %ax,%ax
   2.24%          ↗↗   0x00007f101ed7ed60:   cmp    %r9d,%r11d
          ╭       ││   0x00007f101ed7ed63:   jle    0x00007f101ed7ee20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
   1.61%  │       ││   0x00007f101ed7ed69:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   1.22%  │       ││   0x00007f101ed7ed6e:   test   %ecx,%ecx
          │╭      ││   0x00007f101ed7ed70:   je     0x00007f101ed7ed7e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.32%  ││      ││   0x00007f101ed7ed76:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.11%  │↘      ││   0x00007f101ed7ed7e:   mov    0x14(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.42%  │       ││   0x00007f101ed7ed83:   test   %ecx,%ecx
          │ ╭     ││   0x00007f101ed7ed85:   je     0x00007f101ed7ed93           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   3.07%  │ │     ││   0x00007f101ed7ed8b:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   8.11%  │ ↘     ││   0x00007f101ed7ed93:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
          │       ││                                                             ;   {no_reloc}
   2.93%  │       ││   0x00007f101ed7ed98:   test   %ecx,%ecx
          │  ╭    ││   0x00007f101ed7ed9a:   je     0x00007f101ed7eda8           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.12%  │  │    ││   0x00007f101ed7eda0:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.56%  │  ↘    ││   0x00007f101ed7eda8:   mov    0x1c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   3.60%  │       ││   0x00007f101ed7edad:   test   %ecx,%ecx
          │   ╭   ││   0x00007f101ed7edaf:   je     0x00007f101ed7edbd           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.26%  │   │   ││   0x00007f101ed7edb5:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.21%  │   ↘   ││   0x00007f101ed7edbd:   mov    0x20(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.52%  │       ││   0x00007f101ed7edc2:   test   %ecx,%ecx
          │    ╭  ││   0x00007f101ed7edc4:   je     0x00007f101ed7edd2           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.19%  │    │  ││   0x00007f101ed7edca:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.27%  │    ↘  ││   0x00007f101ed7edd2:   mov    0x24(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.59%  │       ││   0x00007f101ed7edd7:   test   %ecx,%ecx
          │     ╭ ││   0x00007f101ed7edd9:   je     0x00007f101ed7ede7           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.12%  │     │ ││   0x00007f101ed7eddf:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   6.85%  │     ↘ ││   0x00007f101ed7ede7:   mov    0x28(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.45%  │       ││   0x00007f101ed7edec:   test   %ecx,%ecx
          │      ╭││   0x00007f101ed7edee:   je     0x00007f101ed7edfc           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.06%  │      │││   0x00007f101ed7edf4:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.00%  │      ↘││   0x00007f101ed7edfc:   mov    0x2c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.50%  │       ││   0x00007f101ed7ee01:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.08%  │       ││   0x00007f101ed7ee05:   test   %ecx,%ecx
          │       ╰│   0x00007f101ed7ee07:   je     0x00007f101ed7ed60           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.08%  │        │   0x00007f101ed7ee0d:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   4.29%  │        ╰   0x00007f101ed7ee15:   jmp    0x00007f101ed7ed60
          │            0x00007f101ed7ee1a:   nopw   0x0(%rax,%rax,1)
   0.00%  ↘         ↗  0x00007f101ed7ee20:   cmp    %r9d,%r10d
                    │  0x00007f101ed7ee23:   jle    0x00007f101ed7ee40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
                    │  0x00007f101ed7ee29:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
                    │  0x00007f101ed7ee2e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
                    │  0x00007f101ed7ee31:   test   %r11d,%r11d
                    ╰  0x00007f101ed7ee34:   je     0x00007f101ed7ee20           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
                       0x00007f101ed7ee36:   add    0xc(,%r11,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 970 
   0.58%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.02%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 970 
   1.83%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  defaultStream::write 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%            libjvm.so  defaultStream::hold 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.80%       jvmci, level 4
   1.83%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:11:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.036 us/op
# Warmup Iteration   2: 231.293 us/op
# Warmup Iteration   3: 235.276 us/op
# Warmup Iteration   4: 234.780 us/op
# Warmup Iteration   5: 234.761 us/op
Iteration   1: 235.708 us/op
Iteration   2: 235.790 us/op
Iteration   3: 235.746 us/op
Iteration   4: 235.696 us/op
Iteration   5: 228.856 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  234.359 ±(99.9%) 11.847 us/op [Average]
  (min, avg, max) = (228.856, 234.359, 235.790), stdev = 3.077
  CI (99.9%): [222.513, 246.206] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 230983 total address lines.
Perf output processed (skipped 60.914 seconds):
 Column 1: cycles (50567 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 960 

              0x00007f2ed6d7fd7a:   lea    -0x8(%r10),%r11d
              0x00007f2ed6d7fd7e:   cmp    $0x80000008,%r10d
              0x00007f2ed6d7fd85:   mov    $0x80000000,%ecx
              0x00007f2ed6d7fd8a:   cmovl  %ecx,%r11d
          ╭   0x00007f2ed6d7fd8e:   jmp    0x00007f2ed6d7fe24
          │   0x00007f2ed6d7fd93:   nopw   0x0(%rax,%rax,1)
          │   0x00007f2ed6d7fd9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
          │↗  0x00007f2ed6d7fda0:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   3.65%  ││  0x00007f2ed6d7fda5:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f2ed6d7fda8:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f2ed6d7ff0d
   9.06%  ││  0x00007f2ed6d7fdaf:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.01%  ││  0x00007f2ed6d7fdb4:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f2ed6d7ff30
          ││                                                            ;   {no_reloc}
   3.51%  ││  0x00007f2ed6d7fdbb:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f2ed6d7fdc0:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007f2ed6d7ff53
   6.16%  ││  0x00007f2ed6d7fdc7:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.87%  ││  0x00007f2ed6d7fdcc:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007f2ed6d7ff76
  18.90%  ││  0x00007f2ed6d7fdd3:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.00%  ││  0x00007f2ed6d7fdd8:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007f2ed6d7ff99
  12.78%  ││  0x00007f2ed6d7fddf:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.01%  ││  0x00007f2ed6d7fde4:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f2ed6d7ffbc
   6.99%  ││  0x00007f2ed6d7fdec:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f2ed6d7fdf1:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007f2ed6d7ffdf
   7.00%  ││  0x00007f2ed6d7fdf9:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
          ││  0x00007f2ed6d7fdfe:   xchg   %ax,%ax
   0.76%  ││  0x00007f2ed6d7fe00:   test   %esi,%esi
          ││  0x00007f2ed6d7fe02:   je     0x00007f2ed6d7fea2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
          ││  0x00007f2ed6d7fe08:   add    %ecx,%ebx
   4.48%  ││  0x00007f2ed6d7fe0a:   add    %edi,%ebx
          ││  0x00007f2ed6d7fe0c:   add    %edx,%ebx
   1.05%  ││  0x00007f2ed6d7fe0e:   add    %ebp,%ebx
          ││  0x00007f2ed6d7fe10:   add    %r13d,%ebx
   4.49%  ││  0x00007f2ed6d7fe13:   add    %r14d,%ebx
   0.62%  ││  0x00007f2ed6d7fe16:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  16.31%  ││  0x00007f2ed6d7fe1d:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
          ││  0x00007f2ed6d7fe21:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   1.62%  ↘│  0x00007f2ed6d7fe24:   cmp    %r9d,%r11d
           ╰  0x00007f2ed6d7fe27:   jg     0x00007f2ed6d7fda0
              0x00007f2ed6d7fe2d:   jmp    0x00007f2ed6d7fe60
              0x00007f2ed6d7fe32:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f2ed6d7fe3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
              0x00007f2ed6d7fe40:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
              0x00007f2ed6d7fe45:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 960 
   0.34%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 960 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 989 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 960 
   1.30%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 989 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%      jvmci, level 4
   1.30%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-2137994.map
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1278.379 us/op
# Warmup Iteration   2: 1274.564 us/op
# Warmup Iteration   3: 1274.520 us/op
# Warmup Iteration   4: 1274.471 us/op
# Warmup Iteration   5: 1274.346 us/op
Iteration   1: 1274.296 us/op
Iteration   2: 1274.588 us/op
Iteration   3: 1274.233 us/op
Iteration   4: 1273.818 us/op
Iteration   5: 1274.010 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1274.189 ±(99.9%) 1.125 us/op [Average]
  (min, avg, max) = (1273.818, 1274.189, 1274.588), stdev = 0.292
  CI (99.9%): [1273.064, 1275.314] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 227482 total address lines.
Perf output processed (skipped 60.996 seconds):
 Column 1: cycles (50844 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 980 

                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
                         0x00007f1d22d7de35:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
                         0x00007f1d22d7de3d:   jmp    0x00007f1d22d7de20
                         0x00007f1d22d7de3f:   lea    -0x8(%r10),%r11d
                         0x00007f1d22d7de43:   cmp    $0x80000008,%r10d
                         0x00007f1d22d7de4a:   mov    $0x80000000,%ecx
                         0x00007f1d22d7de4f:   cmovl  %ecx,%r11d
                         0x00007f1d22d7de53:   nopw   0x0(%rax,%rax,1)
                         0x00007f1d22d7de5c:   data16 data16 xchg %ax,%ax
   2.43%          ↗↗     0x00007f1d22d7de60:   cmp    %r9d,%r11d
          ╭       ││     0x00007f1d22d7de63:   jle    0x00007f1d22d7df20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
   1.52%  │       ││     0x00007f1d22d7de69:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   1.29%  │       ││     0x00007f1d22d7de6e:   test   %ecx,%ecx
          │╭      ││     0x00007f1d22d7de70:   je     0x00007f1d22d7de7e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.32%  ││      ││     0x00007f1d22d7de76:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.01%  │↘      ││     0x00007f1d22d7de7e:   mov    0x14(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.47%  │       ││     0x00007f1d22d7de83:   test   %ecx,%ecx
          │ ╭     ││     0x00007f1d22d7de85:   je     0x00007f1d22d7de93           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   3.14%  │ │     ││     0x00007f1d22d7de8b:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   8.13%  │ ↘     ││     0x00007f1d22d7de93:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
          │       ││                                                               ;   {no_reloc}
   3.00%  │       ││     0x00007f1d22d7de98:   test   %ecx,%ecx
          │  ╭    ││     0x00007f1d22d7de9a:   je     0x00007f1d22d7dea8           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.12%  │  │    ││     0x00007f1d22d7dea0:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.49%  │  ↘    ││     0x00007f1d22d7dea8:   mov    0x1c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   3.38%  │       ││     0x00007f1d22d7dead:   test   %ecx,%ecx
          │   ╭   ││     0x00007f1d22d7deaf:   je     0x00007f1d22d7debd           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.25%  │   │   ││     0x00007f1d22d7deb5:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.30%  │   ↘   ││     0x00007f1d22d7debd:   mov    0x20(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.67%  │       ││     0x00007f1d22d7dec2:   test   %ecx,%ecx
          │    ╭  ││     0x00007f1d22d7dec4:   je     0x00007f1d22d7ded2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.31%  │    │  ││     0x00007f1d22d7deca:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.06%  │    ↘  ││     0x00007f1d22d7ded2:   mov    0x24(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.51%  │       ││     0x00007f1d22d7ded7:   test   %ecx,%ecx
          │     ╭ ││     0x00007f1d22d7ded9:   je     0x00007f1d22d7dee7           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.10%  │     │ ││     0x00007f1d22d7dedf:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   6.61%  │     ↘ ││     0x00007f1d22d7dee7:   mov    0x28(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.55%  │       ││     0x00007f1d22d7deec:   test   %ecx,%ecx
          │      ╭││     0x00007f1d22d7deee:   je     0x00007f1d22d7defc           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.15%  │      │││     0x00007f1d22d7def4:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   6.70%  │      ↘││     0x00007f1d22d7defc:   mov    0x2c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.35%  │       ││     0x00007f1d22d7df01:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.09%  │       ││     0x00007f1d22d7df05:   test   %ecx,%ecx
          │       ╰│     0x00007f1d22d7df07:   je     0x00007f1d22d7de60           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.21%  │        │     0x00007f1d22d7df0d:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   4.26%  │        ╰     0x00007f1d22d7df15:   jmp    0x00007f1d22d7de60
          │              0x00007f1d22d7df1a:   nopw   0x0(%rax,%rax,1)
          ↘          ↗↗  0x00007f1d22d7df20:   cmp    %r9d,%r10d
                    ╭││  0x00007f1d22d7df23:   jle    0x00007f1d22d7df40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
                    │││  0x00007f1d22d7df29:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.00%            │││  0x00007f1d22d7df2e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
                    │││  0x00007f1d22d7df31:   test   %r11d,%r11d
                    │╰│  0x00007f1d22d7df34:   je     0x00007f1d22d7df20           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
                    │ │  0x00007f1d22d7df36:   add    0xc(,%r11,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
                    │ ╰  0x00007f1d22d7df3e:   jmp    0x00007f1d22d7df20
                    ↘    0x00007f1d22d7df40:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
                         0x00007f1d22d7df43:   mov    0x10(%rsp),%rbp
   0.00%                 0x00007f1d22d7df48:   add    $0x18,%rsp
                         0x00007f1d22d7df4c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                         0x00007f1d22d7df53:   ja     0x00007f1d22d7df8d
                         0x00007f1d22d7df59:   ret    
                         0x00007f1d22d7df5a:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
                         0x00007f1d22d7df65:   movq   $0x318,0x490(%r15)
                         0x00007f1d22d7df70:   call   0x00007f1d2276a17a           ; ImmutableOopMap {rsi=Oop }
                                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@0 (line 111)
                                                                                   ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  97.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 980 
   0.59%               kernel  [unknown] 
   0.25%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.11%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 980 
   2.22%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%       hsdis-amd64.so  hsdis_read_memory_func 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%          interpreter  fast_bgetfield  204 fast_bgetfield  
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.18%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.43%       jvmci, level 4
   2.22%               kernel
   0.14%            libjvm.so
   0.06%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%          interpreter
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2636.223 us/op
# Warmup Iteration   2: 423.039 us/op
# Warmup Iteration   3: 249.566 us/op
# Warmup Iteration   4: 249.674 us/op
# Warmup Iteration   5: 244.215 us/op
Iteration   1: 244.346 us/op
Iteration   2: 244.268 us/op
Iteration   3: 244.333 us/op
Iteration   4: 244.338 us/op
Iteration   5: 244.177 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  244.292 ±(99.9%) 0.277 us/op [Average]
  (min, avg, max) = (244.177, 244.292, 244.346), stdev = 0.072
  CI (99.9%): [244.016, 244.569] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 248930 total address lines.
Perf output processed (skipped 60.775 seconds):
 Column 1: cycles (51073 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1105 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
              0x00007f9f2ad9943e:   xchg   %ax,%ax
              0x00007f9f2ad99440:   cmp    %r8d,%r11d
              0x00007f9f2ad99443:   ja     0x00007f9f2ad99420
              0x00007f9f2ad99445:   lea    -0x4(%r10),%r11d
              0x00007f9f2ad99449:   cmp    $0x4,%r10d
              0x00007f9f2ad9944d:   mov    $0x0,%ecx
              0x00007f9f2ad99452:   cmovb  %ecx,%r11d
          ╭   0x00007f9f2ad99456:   jmp    0x00007f9f2ad994d3
          │   0x00007f9f2ad9945b:   nopl   0x0(%rax,%rax,1)
   3.55%  │↗  0x00007f9f2ad99460:   mov    0x10(%rax,%r8,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.84%  ││  0x00007f9f2ad99465:   mov    %r9d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.71%  ││  0x00007f9f2ad99468:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f9f2ad99631
  14.70%  ││  0x00007f9f2ad9946f:   mov    %r8d,%ecx
   1.58%  ││  0x00007f9f2ad99472:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.46%  ││  0x00007f9f2ad99474:   cmp    %ecx,%r10d
          ││  0x00007f9f2ad99477:   jle    0x00007f9f2ad9954e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.55%  ││  0x00007f9f2ad9947d:   movslq %r8d,%rcx
   6.40%  ││  0x00007f9f2ad99480:   mov    0x14(%rax,%rcx,4),%edi       ; ImmutableOopMap {rax=Oop rdi=NarrowOop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.70%  ││  0x00007f9f2ad99484:   add    0xc(,%rdi,8),%ebx            ; implicit exception: dispatches to 0x00007f9f2ad99654
  15.90%  ││  0x00007f9f2ad9948b:   lea    0x2(%r8),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.45%  ││  0x00007f9f2ad9948f:   cmp    %edi,%r10d
          ││  0x00007f9f2ad99492:   jle    0x00007f9f2ad99552           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.78%  ││  0x00007f9f2ad99498:   mov    0x18(%rax,%rcx,4),%edi       ; ImmutableOopMap {rax=Oop rdi=NarrowOop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.21%  ││  0x00007f9f2ad9949c:   add    0xc(,%rdi,8),%ebx            ; implicit exception: dispatches to 0x00007f9f2ad99677
  14.60%  ││  0x00007f9f2ad994a3:   lea    0x3(%r8),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.28%  ││  0x00007f9f2ad994a7:   cmp    %edi,%r10d
          ││  0x00007f9f2ad994aa:   jle    0x00007f9f2ad99556           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.53%  ││  0x00007f9f2ad994b0:   mov    0x1c(%rax,%rcx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.13%  ││  0x00007f9f2ad994b4:   test   %ecx,%ecx
          ││  0x00007f9f2ad994b6:   je     0x00007f9f2ad99562           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::lambda$stream_filter_npe$0@1 (line 125)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f9eb002b920::test@4
          ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
          ││                                                            ;   {no_reloc}
   6.33%  ││  0x00007f9f2ad994bc:   add    0xc(,%rcx,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Integer::sum@2 (line 2032)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f9eb002bda0::apply@14
          ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
  11.81%  ││  0x00007f9f2ad994c3:   lea    0x4(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.90%  ││  0x00007f9f2ad994c7:   cmp    %r8d,%r10d
          ││  0x00007f9f2ad994ca:   jle    0x00007f9f2ad9955a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.67%  ││  0x00007f9f2ad994d0:   mov    %ebx,%r9d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.22%  ↘│  0x00007f9f2ad994d3:   cmp    %r8d,%r11d
           ╰  0x00007f9f2ad994d6:   ja     0x00007f9f2ad99460
              0x00007f9f2ad994d8:   mov    %r8d,%r11d
              0x00007f9f2ad994db:   mov    %r9d,%r8d
....................................................................................................
  97.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1105 
   0.64%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1105 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.86%  <...other 307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1105 
   2.26%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_stream_filter_npe_jmhTest::stream_filter_npe_avgt_jmhStub, version 4, compile id 1121 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  G1CardSet::occupied 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::hold 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.33%      jvmci, level 4
   2.26%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.09%                    
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-2138126.map
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3198.523 us/op
# Warmup Iteration   2: 2330.555 us/op
# Warmup Iteration   3: 1266.210 us/op
# Warmup Iteration   4: 1266.227 us/op
# Warmup Iteration   5: 1265.322 us/op
Iteration   1: 1265.434 us/op
Iteration   2: 1265.448 us/op
Iteration   3: 1265.336 us/op
Iteration   4: 1265.140 us/op
Iteration   5: 1265.455 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  1265.363 ±(99.9%) 0.513 us/op [Average]
  (min, avg, max) = (1265.140, 1265.363, 1265.455), stdev = 0.133
  CI (99.9%): [1264.850, 1265.876] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 246357 total address lines.
Perf output processed (skipped 61.020 seconds):
 Column 1: cycles (50449 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1116 

                                                                              ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                              ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                              ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                              ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
                    0x00007fd4e2d8d6a7:   lea    -0x4(%r10),%r11d
                    0x00007fd4e2d8d6ab:   cmp    %r8d,%r11d
          ╭         0x00007fd4e2d8d6ae:   jg     0x00007fd4e2d8d71d
          │╭        0x00007fd4e2d8d6b4:   jmp    0x00007fd4e2d8d728
          ││        0x00007fd4e2d8d6b9:   nopl   0x0(%rax)
   4.78%  ││    ↗   0x00007fd4e2d8d6c0:   add    0xc(,%rcx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                             ; - java.lang.Integer::sum@2 (line 2032)
          ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fd46802bda0::apply@14
          ││    │                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││    │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││    │                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││    │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││    │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    │                                                             ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
  10.05%  ││    │   0x00007fd4e2d8d6c8:   nopl   0x0(%rax,%rax,1)
   2.81%  ││    │↗  0x00007fd4e2d8d6d0:   movslq %r8d,%rcx
   0.47%  ││    ││  0x00007fd4e2d8d6d3:   mov    0x14(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.30%  ││    ││  0x00007fd4e2d8d6d7:   test   %ebx,%ebx
          ││╭   ││  0x00007fd4e2d8d6d9:   je     0x00007fd4e2d8d6e7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          │││   ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││   ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││   ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.60%  │││   ││  0x00007fd4e2d8d6df:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                            ; - java.lang.Integer::sum@2 (line 2032)
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fd46802bda0::apply@14
          │││   ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          │││   ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │││   ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │││   ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││   ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │││   ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││   ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
  15.01%  ││↘   ││  0x00007fd4e2d8d6e7:   mov    0x18(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.72%  ││    ││  0x00007fd4e2d8d6eb:   test   %ebx,%ebx
          ││ ╭  ││  0x00007fd4e2d8d6ed:   je     0x00007fd4e2d8d6fb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││ │  ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │  ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.99%  ││ │  ││  0x00007fd4e2d8d6f3:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││                                                            ; - java.lang.Integer::sum@2 (line 2032)
          ││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fd46802bda0::apply@14
          ││ │  ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││ │  ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││ │  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││ │  ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││ │  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │  ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
  13.85%  ││ ↘  ││  0x00007fd4e2d8d6fb:   mov    0x1c(%rax,%rcx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   5.14%  ││    ││  0x00007fd4e2d8d6ff:   nop
   0.15%  ││    ││  0x00007fd4e2d8d700:   test   %ecx,%ecx
          ││  ╭ ││  0x00007fd4e2d8d702:   je     0x00007fd4e2d8d710           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││  │ ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  │ ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.93%  ││  │ ││  0x00007fd4e2d8d708:   add    0xc(,%rcx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                            ; - java.lang.Integer::sum@2 (line 2032)
          ││  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fd46802bda0::apply@14
          ││  │ ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││  │ ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││  │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││  │ ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  │ ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
  13.75%  ││  ↘ ││  0x00007fd4e2d8d710:   lea    0x4(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.04%  ││    ││  0x00007fd4e2d8d714:   cmp    %r8d,%r11d                   ;   {no_reloc}
          ││   ╭││  0x00007fd4e2d8d717:   jle    0x00007fd4e2d8d728           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││   │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││   │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││   │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.07%  ↘│   │││  0x00007fd4e2d8d71d:   mov    0x10(%rax,%r8,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │   │││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
           │   │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │   │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │   │││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │   │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │   │││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
           │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.79%   │   │││  0x00007fd4e2d8d722:   test   %ecx,%ecx
           │   │╰│  0x00007fd4e2d8d724:   jne    0x00007fd4e2d8d6c0
   4.75%   │   │ ╰  0x00007fd4e2d8d726:   jmp    0x00007fd4e2d8d6d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
           │   │                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
           │   │                                                              ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │   │                                                              ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │   │                                                              ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │   │                                                              ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │   │                                                              ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
           │   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
           ↘   ↘    0x00007fd4e2d8d728:   cmp    %r8d,%r10d
                    0x00007fd4e2d8d72b:   jg     0x00007fd4e2d8d778
                    0x00007fd4e2d8d731:   movslq %r9d,%rax                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe@47 (line 127)
                    0x00007fd4e2d8d734:   mov    0x10(%rsp),%rbp
   0.00%            0x00007fd4e2d8d739:   add    $0x18,%rsp
                    0x00007fd4e2d8d73d:   data16 xchg %ax,%ax
                    0x00007fd4e2d8d740:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                    0x00007fd4e2d8d747:   ja     0x00007fd4e2d8d7bd
                    0x00007fd4e2d8d74d:   ret    
                    0x00007fd4e2d8d74e:   data16 data16 nopw 0x0(%rax,%rax,1)
                    0x00007fd4e2d8d759:   data16 data16 xchg %ax,%ax
                    0x00007fd4e2d8d75d:   data16 xchg %ax,%ax
                    0x00007fd4e2d8d760:   add    0xc(,%r11,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.Integer::sum@2 (line 2032)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fd46802bda0::apply@14
....................................................................................................
  98.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1116 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
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
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   1.04%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 1116 
   1.41%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  fast_bgetfield  204 fast_bgetfield  
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%    perf-2138190.map  [unknown] 
   0.01%           libjvm.so  G1CardSet::occupied 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%         interpreter  return entry points  
   0.18%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%      jvmci, level 4
   1.41%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.05%         interpreter
   0.04%                    
   0.01%  libpthread-2.31.so
   0.01%    perf-2138190.map
   0.01%      hsdis-amd64.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 230.266 us/op
# Warmup Iteration   2: 231.375 us/op
# Warmup Iteration   3: 230.996 us/op
# Warmup Iteration   4: 231.483 us/op
# Warmup Iteration   5: 231.422 us/op
Iteration   1: 231.450 us/op
Iteration   2: 231.506 us/op
Iteration   3: 231.096 us/op
Iteration   4: 231.433 us/op
Iteration   5: 230.860 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  231.269 ±(99.9%) 1.078 us/op [Average]
  (min, avg, max) = (230.860, 231.269, 231.506), stdev = 0.280
  CI (99.9%): [230.192, 232.347] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 228137 total address lines.
Perf output processed (skipped 60.859 seconds):
 Column 1: cycles (50583 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 976 

              0x00007fc3e2d806fa:   lea    -0x8(%r10),%r11d
              0x00007fc3e2d806fe:   cmp    $0x80000008,%r10d
              0x00007fc3e2d80705:   mov    $0x80000000,%ecx
              0x00007fc3e2d8070a:   cmovl  %ecx,%r11d
          ╭   0x00007fc3e2d8070e:   jmp    0x00007fc3e2d807a4
          │   0x00007fc3e2d80713:   nopw   0x0(%rax,%rax,1)
          │   0x00007fc3e2d8071c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
          │↗  0x00007fc3e2d80720:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   3.62%  ││  0x00007fc3e2d80725:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007fc3e2d80728:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fc3e2d8088d
   9.44%  ││  0x00007fc3e2d8072f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.01%  ││  0x00007fc3e2d80734:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fc3e2d808b0
          ││                                                            ;   {no_reloc}
   2.91%  ││  0x00007fc3e2d8073b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.00%  ││  0x00007fc3e2d80740:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007fc3e2d808d3
   6.57%  ││  0x00007fc3e2d80747:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.65%  ││  0x00007fc3e2d8074c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007fc3e2d808f6
  18.87%  ││  0x00007fc3e2d80753:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007fc3e2d80758:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007fc3e2d80919
  12.96%  ││  0x00007fc3e2d8075f:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007fc3e2d80764:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007fc3e2d8093c
   6.90%  ││  0x00007fc3e2d8076c:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007fc3e2d80771:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007fc3e2d8095f
   7.16%  ││  0x00007fc3e2d80779:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.00%  ││  0x00007fc3e2d8077e:   xchg   %ax,%ax
   0.67%  ││  0x00007fc3e2d80780:   test   %esi,%esi
          ││  0x00007fc3e2d80782:   je     0x00007fc3e2d80822           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
          ││  0x00007fc3e2d80788:   add    %ecx,%ebx
   4.55%  ││  0x00007fc3e2d8078a:   add    %edi,%ebx
          ││  0x00007fc3e2d8078c:   add    %edx,%ebx
   0.90%  ││  0x00007fc3e2d8078e:   add    %ebp,%ebx
          ││  0x00007fc3e2d80790:   add    %r13d,%ebx
   4.61%  ││  0x00007fc3e2d80793:   add    %r14d,%ebx
   0.60%  ││  0x00007fc3e2d80796:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  16.00%  ││  0x00007fc3e2d8079d:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
          ││  0x00007fc3e2d807a1:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   1.80%  ↘│  0x00007fc3e2d807a4:   cmp    %r9d,%r11d
           ╰  0x00007fc3e2d807a7:   jg     0x00007fc3e2d80720
              0x00007fc3e2d807ad:   jmp    0x00007fc3e2d807e0
              0x00007fc3e2d807b2:   data16 nopw 0x0(%rax,%rax,1)
              0x00007fc3e2d807bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
              0x00007fc3e2d807c0:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
              0x00007fc3e2d807c5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 976 
   0.23%               kernel  [unknown] 
   0.22%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 976 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.76%  <...other 262 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 976 
   1.46%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 1006 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%         libc-2.31.so  __strcmp_avx2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  PerfLongVariant::sample 
   0.00%            libjvm.so  HighResTimeSampler::take_sample 
   0.00%            libjvm.so  PcDescContainer::find_pc_desc_internal 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.jni.functions.JNIFunctions::NewStringUTF 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.00%       hsdis-amd64.so  putop 
   0.15%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.28%       jvmci, level 4
   1.46%               kernel
   0.09%            libjvm.so
   0.06%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1845993.180 us/op
# Warmup Iteration   2: 1840141.061 us/op
# Warmup Iteration   3: 1841174.908 us/op
# Warmup Iteration   4: 1839490.215 us/op
# Warmup Iteration   5: 1840268.208 us/op
Iteration   1: 1837774.716 us/op
Iteration   2: 1836588.755 us/op
Iteration   3: 1837338.144 us/op
Iteration   4: 1838907.307 us/op
Iteration   5: 1839870.078 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  1838095.800 ±(99.9%) 5003.959 us/op [Average]
  (min, avg, max) = (1836588.755, 1838095.800, 1839870.078), stdev = 1299.512
  CI (99.9%): [1833091.841, 1843099.760] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 227574 total address lines.
Perf output processed (skipped 65.856 seconds):
 Column 1: cycles (55688 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.90%        libc-2.31.so  __vfprintf_internal 
   6.06%           libjvm.so  stringStream::write 
   4.90%        libc-2.31.so  __strchrnul_avx2 
   4.25%        libc-2.31.so  __vsnprintf_internal 
   3.50%        libc-2.31.so  _IO_default_xsputn 
   2.85%        libc-2.31.so  __vfprintf_internal 
   2.80%        libc-2.31.so  __vfprintf_internal 
   2.66%        libc-2.31.so  __strchr_avx2 
   2.60%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.53%           libjvm.so  frame::sender 
   2.14%        libc-2.31.so  _IO_old_init 
   1.87%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.82%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.75%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.72%           libjvm.so  CodeBlob::is_upcall_stub 
   1.60%        libc-2.31.so  _IO_str_init_static_internal 
   1.59%           libjvm.so  CodeHeap::find_blob 
   1.57%           libjvm.so  vframeStream::vframeStream 
   1.56%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.46%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  43.88%  <...other 644 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  15.10%        libc-2.31.so  __vfprintf_internal 
   7.44%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.19%           libjvm.so  stringStream::write 
   6.11%        libc-2.31.so  __strchrnul_avx2 
   5.02%        libc-2.31.so  _IO_default_xsputn 
   4.25%        libc-2.31.so  __vsnprintf_internal 
   3.99%        libc-2.31.so  __strchr_avx2 
   3.36%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   3.05%           libjvm.so  frame::sender 
   2.16%           libjvm.so  vframeStream::vframeStream 
   2.14%        libc-2.31.so  _IO_old_init 
   2.12%           libjvm.so  outputStream::print 
   2.04%        libc-2.31.so  _IO_str_init_static_internal 
   1.87%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.82%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.72%           libjvm.so  CodeBlob::is_upcall_stub 
   1.59%           libjvm.so  CodeHeap::find_blob 
   1.55%           libjvm.so  frame::sender_for_interpreter_frame 
   1.46%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.13%              kernel  [unknown] 
  25.89%  <...other 210 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  49.96%           libjvm.so
  46.31%        libc-2.31.so
   1.13%              kernel
   0.80%      jvmci, level 4
   0.49%          ld-2.31.so
   0.45%  libpthread-2.31.so
   0.28%              [vdso]
   0.22%                    
   0.18%        runtime stub
   0.09%    Unknown, level 0
   0.05%    perf-2138324.map
   0.03%          libjava.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:22

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

Benchmark                                            (nullThreshold)  (size)  Mode  Cnt        Score      Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                    0  262144  avgt    5      230.309 ±    9.806  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm                0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_not_npe_do_statement                   16  262144  avgt    5     1274.698 ±    1.873  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm               16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                            0  262144  avgt    5      234.359 ±   11.847  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                        0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                           16  262144  avgt    5     1274.189 ±    1.125  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                       16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                          0  262144  avgt    5      244.292 ±    0.277  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                      0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                         16  262144  avgt    5     1265.363 ±    0.513  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                     16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                              0  262144  avgt    5      231.269 ±    1.078  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                          0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                             16  262144  avgt    5  1838095.800 ± 5003.959  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                         16  262144  avgt               NaN               ---
