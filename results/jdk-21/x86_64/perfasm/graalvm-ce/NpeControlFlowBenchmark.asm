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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 237.713 us/op
# Warmup Iteration   2: 236.942 us/op
# Warmup Iteration   3: 237.175 us/op
# Warmup Iteration   4: 230.305 us/op
# Warmup Iteration   5: 230.295 us/op
Iteration   1: 230.296 us/op
Iteration   2: 230.306 us/op
Iteration   3: 230.311 us/op
Iteration   4: 230.301 us/op
Iteration   5: 236.964 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  231.636 ±(99.9%) 11.470 us/op [Average]
  (min, avg, max) = (230.296, 231.636, 236.964), stdev = 2.979
  CI (99.9%): [220.165, 243.106] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 217003 total address lines.
Perf output processed (skipped 60.359 seconds):
 Column 1: cycles (50618 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 973 

               0x00007f9ffb23e61d:   mov    %r11d,%r8d
               0x00007f9ffb23e620:   mov    $0x1,%r11d
          ╭    0x00007f9ffb23e626:   jmp    0x00007f9ffb23e656           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          │    0x00007f9ffb23e62b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f9ffb23e636:   data16 data16 xchg %ax,%ax
          │    0x00007f9ffb23e63a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │↗   0x00007f9ffb23e640:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
  26.31%  ││   0x00007f9ffb23e645:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.00%  ││   0x00007f9ffb23e648:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f9ffb23e720
  54.67%  ││   0x00007f9ffb23e650:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
          ││   0x00007f9ffb23e653:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
  17.20%  ↘│   0x00007f9ffb23e656:   cmp    %r11d,%eax
           ╰   0x00007f9ffb23e659:   jg     0x00007f9ffb23e640           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
            ↗  0x00007f9ffb23e65b:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
            │  0x00007f9ffb23e65e:   mov    0x10(%rsp),%rbp
            │  0x00007f9ffb23e663:   add    $0x18,%rsp
            │  0x00007f9ffb23e667:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f9ffb23e66e:   ja     0x00007f9ffb23e6c6
   0.00%    │  0x00007f9ffb23e674:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
            │  0x00007f9ffb23e675:   mov    $0x0,%r8d
            ╰  0x00007f9ffb23e67b:   jmp    0x00007f9ffb23e65b           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@39 (line 105)
               0x00007f9ffb23e67d:   mov    $0x298,%r10
               0x00007f9ffb23e684:   movl   $0xffffffe5,0x484(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
               0x00007f9ffb23e68f:   mov    %r10,0x490(%r15)
               0x00007f9ffb23e696:   call   0x00007f9ffac3517a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 973 
   0.52%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 973 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 1005 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.78%  <...other 270 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 973 
   1.39%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 1005 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.13%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%      jvmci, level 4
   1.39%              kernel
   0.15%           libjvm.so
   0.09%                    
   0.08%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2117320.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:13:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1510.260 us/op
# Warmup Iteration   2: 1506.542 us/op
# Warmup Iteration   3: 1506.096 us/op
# Warmup Iteration   4: 1506.054 us/op
# Warmup Iteration   5: 1505.987 us/op
Iteration   1: 1506.012 us/op
Iteration   2: 1506.072 us/op
Iteration   3: 1506.003 us/op
Iteration   4: 1506.047 us/op
Iteration   5: 1505.596 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1505.946 ±(99.9%) 0.762 us/op [Average]
  (min, avg, max) = (1505.596, 1505.946, 1506.072), stdev = 0.198
  CI (99.9%): [1505.184, 1506.708] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 219073 total address lines.
Perf output processed (skipped 60.555 seconds):
 Column 1: cycles (50709 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 966 

               0x00007f3357241998:   nopl   0x0(%rax,%rax,1)
               0x00007f33572419a0:   cmp    $0x2,%r11d
               0x00007f33572419a4:   jb     0x00007f3357241a0d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
               0x00007f33572419aa:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@13 (line 101)
               0x00007f33572419ae:   mov    $0x1,%r11d
               0x00007f33572419b4:   nopl   0x0(%rax,%rax,1)
               0x00007f33572419bc:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
  16.96%   ↗↗  0x00007f33572419c0:   cmp    %r11d,%eax
          ╭││  0x00007f33572419c3:   jle    0x00007f33572419e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
  10.05%  │││  0x00007f33572419c9:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
  11.35%  │││  0x00007f33572419ce:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   3.18%  │││  0x00007f33572419d1:   test   %r9d,%r9d
          │╰│  0x00007f33572419d4:   je     0x00007f33572419c0           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
  22.71%  │ │  0x00007f33572419d6:   add    0xc(,%r9,8),%r8d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  33.75%  │ ╰  0x00007f33572419de:   jmp    0x00007f33572419c0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
          ↘    0x00007f33572419e0:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
               0x00007f33572419e3:   mov    0x10(%rsp),%rbp
   0.00%       0x00007f33572419e8:   add    $0x18,%rsp
               0x00007f33572419ec:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f33572419f3:   ja     0x00007f3357241a66
               0x00007f33572419f9:   ret                                 ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
               0x00007f33572419fa:   mov    $0x0,%r8d
               0x00007f3357241a00:   jmp    0x00007f3357241979           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
               0x00007f3357241a05:   mov    $0x0,%r8d
               0x00007f3357241a0b:   jmp    0x00007f33572419e0           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@39 (line 105)
....................................................................................................
  98.00%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 966 
   0.53%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.87%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 966 
   1.57%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%    perf-2117394.map  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         interpreter  lload  22 lload  
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%         interpreter  fast_aload_0  220 fast_aload_0  
   0.00%         interpreter  lstore  55 lstore  
   0.19%  <...other 85 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%      jvmci, level 4
   1.57%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.04%         interpreter
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%    perf-2117394.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:11:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 230.744 us/op
# Warmup Iteration   2: 230.208 us/op
# Warmup Iteration   3: 229.574 us/op
# Warmup Iteration   4: 228.889 us/op
# Warmup Iteration   5: 229.796 us/op
Iteration   1: 229.785 us/op
Iteration   2: 229.886 us/op
Iteration   3: 229.887 us/op
Iteration   4: 229.807 us/op
Iteration   5: 229.813 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  229.836 ±(99.9%) 0.183 us/op [Average]
  (min, avg, max) = (229.785, 229.836, 229.887), stdev = 0.048
  CI (99.9%): [229.652, 230.019] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 215007 total address lines.
Perf output processed (skipped 60.224 seconds):
 Column 1: cycles (50658 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 967 

              0x00007f81cb23ea1d:   mov    %r11d,%r8d
              0x00007f81cb23ea20:   mov    $0x1,%r11d
          ╭   0x00007f81cb23ea26:   jmp    0x00007f81cb23ea56           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          │   0x00007f81cb23ea2b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f81cb23ea36:   data16 data16 xchg %ax,%ax
          │   0x00007f81cb23ea3a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
          │↗  0x00007f81cb23ea40:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
  26.35%  ││  0x00007f81cb23ea45:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.00%  ││  0x00007f81cb23ea48:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f81cb23eb20
  54.51%  ││  0x00007f81cb23ea50:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.01%  ││  0x00007f81cb23ea53:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
  17.23%  ↘│  0x00007f81cb23ea56:   cmp    %r11d,%eax
           ╰  0x00007f81cb23ea59:   jg     0x00007f81cb23ea40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
              0x00007f81cb23ea5b:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
              0x00007f81cb23ea5e:   mov    0x10(%rsp),%rbp
              0x00007f81cb23ea63:   add    $0x18,%rsp
              0x00007f81cb23ea67:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f81cb23ea6e:   ja     0x00007f81cb23eac6
              0x00007f81cb23ea74:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.11%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 967 
   0.41%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.84%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 967 
   1.52%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 998 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  defaultStream::hold 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.00%        libc-2.31.so  syscall 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.13%      jvmci, level 4
   1.52%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1511.774 us/op
# Warmup Iteration   2: 1506.743 us/op
# Warmup Iteration   3: 1506.794 us/op
# Warmup Iteration   4: 1506.793 us/op
# Warmup Iteration   5: 1505.629 us/op
Iteration   1: 1506.670 us/op
Iteration   2: 1506.686 us/op
Iteration   3: 1506.754 us/op
Iteration   4: 1506.698 us/op
Iteration   5: 1505.100 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1506.382 ±(99.9%) 2.762 us/op [Average]
  (min, avg, max) = (1505.100, 1506.382, 1506.754), stdev = 0.717
  CI (99.9%): [1503.619, 1509.144] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 217992 total address lines.
Perf output processed (skipped 60.451 seconds):
 Column 1: cycles (51056 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 969 

               0x00007f729f23fa98:   nopl   0x0(%rax,%rax,1)
               0x00007f729f23faa0:   cmp    $0x2,%r11d
               0x00007f729f23faa4:   jb     0x00007f729f23fb0d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
               0x00007f729f23faaa:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@13 (line 113)
               0x00007f729f23faae:   mov    $0x1,%r11d
               0x00007f729f23fab4:   nopl   0x0(%rax,%rax,1)
               0x00007f729f23fabc:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
  16.94%   ↗↗  0x00007f729f23fac0:   cmp    %r11d,%eax
          ╭││  0x00007f729f23fac3:   jle    0x00007f729f23fae0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
  10.13%  │││  0x00007f729f23fac9:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
  10.95%  │││  0x00007f729f23face:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   3.22%  │││  0x00007f729f23fad1:   test   %r9d,%r9d
          │╰│  0x00007f729f23fad4:   je     0x00007f729f23fac0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
  22.63%  │ │  0x00007f729f23fad6:   add    0xc(,%r9,8),%r8d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  33.16%  │ ╰  0x00007f729f23fade:   jmp    0x00007f729f23fac0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
          ↘    0x00007f729f23fae0:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
               0x00007f729f23fae3:   mov    0x10(%rsp),%rbp
               0x00007f729f23fae8:   add    $0x18,%rsp
               0x00007f729f23faec:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f729f23faf3:   ja     0x00007f729f23fb66
               0x00007f729f23faf9:   ret                                 ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
....................................................................................................
  97.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 969 
   1.32%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.05%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 969 
   2.55%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%          interpreter  lstore  55 lstore  
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%     perf-2117523.map  [unknown] 
   0.21%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.03%       jvmci, level 4
   2.55%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.05%          interpreter
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%     perf-2117523.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6352.671 us/op
# Warmup Iteration   2: 6039.050 us/op
# Warmup Iteration   3: 6027.445 us/op
# Warmup Iteration   4: 6037.867 us/op
# Warmup Iteration   5: 6027.835 us/op
Iteration   1: 5991.519 us/op
Iteration   2: 6021.230 us/op
Iteration   3: 6031.694 us/op
Iteration   4: 6014.743 us/op
Iteration   5: 6041.179 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  6020.073 ±(99.9%) 72.694 us/op [Average]
  (min, avg, max) = (5991.519, 6020.073, 6041.179), stdev = 18.878
  CI (99.9%): [5947.379, 6092.767] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 233729 total address lines.
Perf output processed (skipped 60.376 seconds):
 Column 1: cycles (50964 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 

                                                                           ;   {section_word}
                 0x00007fbcbb23ce4f:   je     0x00007fbcbb23d2a5
                 0x00007fbcbb23ce55:   cmp    -0x17c(%rip),%rax        # 0x00007fbcbb23cce0
                                                                           ;   {section_word}
                 0x00007fbcbb23ce5c:   nopl   0x0(%rax)
                 0x00007fbcbb23ce60:   je     0x00007fbcbb23d3af
                 0x00007fbcbb23ce66:   jmp    0x00007fbcbb23d904
                 0x00007fbcbb23ce6b:   mov    0x10(,%r9,8),%eax            ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.02%         0x00007fbcbb23ce73:   mov    0x34(,%rax,8),%eax           ; implicit exception: dispatches to 0x00007fbcbb23da70
   1.67%         0x00007fbcbb23ce7a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.03%         0x00007fbcbb23ce80:   cmpl   $0x102bb68,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007fbcbb23da93
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007fbc4002bb68&apos;)}
   6.90%         0x00007fbcbb23ce8b:   jne    0x00007fbcbb23d8cd           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.56%         0x00007fbcbb23ce91:   mov    0xc(,%r9,8),%r9d             ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.01%         0x00007fbcbb23ce99:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.01%         0x00007fbcbb23cea0:   cmpl   $0x103b468,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007fbcbb23dab6
                                                                           ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
   1.62%         0x00007fbcbb23ceac:   jne    0x00007fbcbb23d8a5           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.03%         0x00007fbcbb23ceb2:   mov    0x14(,%r9,8),%eax            ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.00%         0x00007fbcbb23ceba:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.01%         0x00007fbcbb23cec0:   cmpl   $0x102bda0,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007fbcbb23dad9
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007fbc4002bda0&apos;)}
   1.58%         0x00007fbcbb23cecb:   jne    0x00007fbcbb23d96e           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.38%         0x00007fbcbb23ced1:   test   %rdx,%rdx
          ╭      0x00007fbcbb23ced4:   je     0x00007fbcbb23cee9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fbc4002bb68::apply@1
          │                                                                ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │                                                                ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.02%  │      0x00007fbcbb23ceda:   nopw   0x0(%rax,%rax,1)
   0.23%  │      0x00007fbcbb23cee0:   cmp    %r11,%r8
          │      0x00007fbcbb23cee3:   jne    0x00007fbcbb23d936           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
          │                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.02%  ↘      0x00007fbcbb23cee9:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fbcbb23dafc
   1.38%         0x00007fbcbb23ceec:   mov    0xc(,%r9,8),%r11d            ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.02%         0x00007fbcbb23cef4:   test   %r11d,%r11d
                 0x00007fbcbb23cef7:   je     0x00007fbcbb23d070
   0.23%         0x00007fbcbb23cefd:   mov    0x8(,%r11,8),%r8d
   0.03%         0x00007fbcbb23cf05:   movabs $0x7fbc3f000000,%rcx
   1.35%         0x00007fbcbb23cf0f:   lea    (%rcx,%r8,1),%r8
   0.01%         0x00007fbcbb23cf13:   test   %r11d,%r11d
           ╭     0x00007fbcbb23cf16:   je     0x00007fbcbb23cf2f
   0.28%   │     0x00007fbcbb23cf1c:   movabs $0x7fbc3f025c88,%rcx         ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.02%   │     0x00007fbcbb23cf26:   cmp    %r8,%rcx
           │     0x00007fbcbb23cf29:   jne    0x00007fbcbb23d980           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fbc4002bda0::apply@1
           │                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.46%   ↘     0x00007fbcbb23cf2f:   mov    %eax,%r8d                    ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop r11=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.01%         0x00007fbcbb23cf32:   add    0xc(,%r11,8),%r8d            ; implicit exception: dispatches to 0x00007fbcbb23db1f
   0.24%         0x00007fbcbb23cf3a:   lea    0x80(%r8),%eax
   0.00%         0x00007fbcbb23cf41:   cmp    $0x100,%eax
            ╭    0x00007fbcbb23cf47:   jb     0x00007fbcbb23d011
   1.31%    │    0x00007fbcbb23cf4d:   mov    0x1b8(%r15),%rax
   0.02%    │    0x00007fbcbb23cf54:   lea    0x10(%rax),%r11
   0.27%    │    0x00007fbcbb23cf58:   nopl   0x0(%rax,%rax,1)
   0.02%    │    0x00007fbcbb23cf60:   cmp    0x1c8(%r15),%r11
            │    0x00007fbcbb23cf67:   ja     0x00007fbcbb23d0cb
   1.38%    │    0x00007fbcbb23cf6d:   mov    %r11,0x1b8(%r15)
   0.02%    │    0x00007fbcbb23cf74:   prefetchw 0xd0(%rax)
   0.36%    │    0x00007fbcbb23cf7b:   movq   $0x1,(%rax)
   0.16%    │    0x00007fbcbb23cf82:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   4.57%    │    0x00007fbcbb23cf89:   movl   $0x0,0xc(%rax)
   0.02%    │    0x00007fbcbb23cf90:   mov    %r8d,0xc(%rax)               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Integer::valueOf@-3
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fbc4002bda0::apply@17
            │                                                              ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.24%    │    0x00007fbcbb23cf94:   cmpb   $0x0,0x40(%r15)
   0.04%    │    0x00007fbcbb23cf99:   jne    0x00007fbcbb23d037
   1.33%    │    0x00007fbcbb23cf9f:   mov    %rax,%rsi
   0.02%    │    0x00007fbcbb23cfa2:   shr    $0x3,%rsi
   0.21%    │    0x00007fbcbb23cfa6:   mov    %esi,0xc(,%r9,8)             ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.13%    │    0x00007fbcbb23cfae:   shl    $0x3,%r9                     ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.26%    │    0x00007fbcbb23cfb2:   mov    %r9,%rsi
   0.02%    │    0x00007fbcbb23cfb5:   xor    %rax,%rsi
   0.20%    │    0x00007fbcbb23cfb8:   nopl   0x0(%rax,%rax,1)
   0.10%    │    0x00007fbcbb23cfc0:   test   $0xffffffffffe00000,%rsi
            │╭   0x00007fbcbb23cfc7:   je     0x00007fbcbb23cfeb
   1.02%    ││   0x00007fbcbb23cfcd:   test   %rax,%rax
            ││╭  0x00007fbcbb23cfd0:   je     0x00007fbcbb23cfeb
   0.01%    │││  0x00007fbcbb23cfd6:   shr    $0x9,%r9
   0.15%    │││  0x00007fbcbb23cfda:   nopw   0x0(%rax,%rax,1)
   0.07%    │││  0x00007fbcbb23cfe0:   cmpb   $0x2,(%r9,%rdi,1)
   1.11%    │││  0x00007fbcbb23cfe5:   jne    0x00007fbcbb23d07c           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.41%    │↘↘  0x00007fbcbb23cfeb:   mov    0x30(%rsp),%rbp
   0.09%    │    0x00007fbcbb23cff0:   add    $0x38,%rsp
   1.10%    │    0x00007fbcbb23cff4:   nopl   0x0(%rax,%rax,1)
   0.06%    │    0x00007fbcbb23cffc:   data16 data16 xchg %ax,%ax
   0.49%    │    0x00007fbcbb23d000:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │    0x00007fbcbb23d007:   ja     0x00007fbcbb23d9cc
   0.12%    │    0x00007fbcbb23d00d:   vzeroupper 
   1.60%    │    0x00007fbcbb23d010:   ret    
            ↘    0x00007fbcbb23d011:   movabs $0x7ffece048,%rsi            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffece048})}
                 0x00007fbcbb23d01b:   mov    0x10(%rsi,%rax,4),%esi
                 0x00007fbcbb23d01f:   shl    $0x3,%rsi
                 0x00007fbcbb23d023:   mov    %rsi,%rax
                 0x00007fbcbb23d026:   jmp    0x00007fbcbb23cf94           ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Integer::valueOf@-3
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fbc4002bda0::apply@17
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
....................................................................................................
  38.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 

            0x00007fbcbb23ccf0:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007fbcbb23ccf4:   0xf4f4f4f4                              
            0x00007fbcbb23ccf8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007fbcbb23ccfc:   0xf4f4f4f4                              
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007fbc3f227558} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x40]  (sp of caller)
   0.07%    0x00007fbcbb23cd00:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   1.51%    0x00007fbcbb23cd04:   movabs $0x7fbc3f000000,%r12
   0.01%    0x00007fbcbb23cd0e:   add    %r12,%r10
   0.07%    0x00007fbcbb23cd11:   xor    %r12,%r12
   0.01%    0x00007fbcbb23cd14:   cmp    %r10,%rax
            0x00007fbcbb23cd17:   jne    0x00007fbcbac2f080           ;   {runtime_call ic_miss_stub}
   1.60%    0x00007fbcbb23cd1d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.01%    0x00007fbcbb23cd20:   mov    %eax,-0x14000(%rsp)
   1.48%    0x00007fbcbb23cd27:   sub    $0x38,%rsp
   0.23%    0x00007fbcbb23cd2b:   nop
   0.01%    0x00007fbcbb23cd2c:   cmpl   $0x1,0x20(%r15)
   0.06%    0x00007fbcbb23cd34:   jne    0x00007fbcbb23d9bc
   1.28%    0x00007fbcbb23cd3a:   mov    %rbp,0x30(%rsp)
   2.31%    0x00007fbcbb23cd3f:   mov    %rdx,0x18(%rsp)
   0.04%    0x00007fbcbb23cd44:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.15%    0x00007fbcbb23cd47:   mov    0x34(,%rax,8),%r10d          ; implicit exception: dispatches to 0x00007fbcbb23d9e0
                                                                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   5.80%    0x00007fbcbb23cd4f:   mov    0x8(,%r10,8),%eax            ; implicit exception: dispatches to 0x00007fbcbb23da03
   7.85%    0x00007fbcbb23cd57:   test   %rdx,%rdx
            0x00007fbcbb23cd5a:   je     0x00007fbcbb23d02b
            0x00007fbcbb23cd60:   mov    0x8(%rdx),%r11d
   1.33%    0x00007fbcbb23cd64:   movabs $0x7fbc3f000000,%r8          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.module.DefaultRoots$$Lambda/0x80000000b::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   0.00%    0x00007fbcbb23cd6e:   lea    (%r8,%r11,1),%r11
   1.61%    0x00007fbcbb23cd72:   movabs $0x7fbc4002b328,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
   0.00%    0x00007fbcbb23cd7c:   movabs $0x7fbc3f000000,%r9
   0.02%    0x00007fbcbb23cd86:   lea    (%r9,%rax,1),%rax
   0.00%    0x00007fbcbb23cd8a:   cmp    -0xf1(%rip),%rax        # 0x00007fbcbb23cca0
                                                                      ;   {section_word}
   1.58%    0x00007fbcbb23cd91:   je     0x00007fbcbb23cddf
            0x00007fbcbb23cd97:   cmp    -0xf6(%rip),%rax        # 0x00007fbcbb23cca8
                                                                      ;   {section_word}
            0x00007fbcbb23cd9e:   xchg   %ax,%ax
            0x00007fbcbb23cda0:   je     0x00007fbcbb23d165
            0x00007fbcbb23cda6:   cmp    -0xfd(%rip),%rax        # 0x00007fbcbb23ccb0
                                                                      ;   {section_word}
            0x00007fbcbb23cdad:   je     0x00007fbcbb23d0f4
            0x00007fbcbb23cdb3:   cmp    -0x102(%rip),%rax        # 0x00007fbcbb23ccb8
                                                                      ;   {section_word}
....................................................................................................
  27.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 1008 

                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
                0x00007fbcbb240078:   mov    0x24(%rsp),%r11d
                0x00007fbcbb24007d:   data16 xchg %ax,%ax
                0x00007fbcbb240080:   cmp    %r10d,%r11d
          ╭     0x00007fbcbb240083:   jg     0x00007fbcbb2400f3
          │╭    0x00007fbcbb240089:   jmp    0x00007fbcbb24010c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││    0x00007fbcbb24008e:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    0x00007fbcbb240099:   data16 data16 xchg %ax,%ax
          ││    0x00007fbcbb24009d:   data16 xchg %ax,%ax
   1.49%  ││ ↗  0x00007fbcbb2400a0:   mov    0x10(%r8,%r10,4),%esi
   1.07%  ││ │  0x00007fbcbb2400a5:   mov    %esi,%ecx
   0.01%  ││ │  0x00007fbcbb2400a7:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
   1.58%  ││ │  0x00007fbcbb2400ab:   mov    %rdx,%rsi
   0.01%  ││ │  0x00007fbcbb2400ae:   mov    %rcx,%rdx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%  ││ │  0x00007fbcbb2400b1:   mov    %r10d,0x1c(%rsp)
   0.01%  ││ │  0x00007fbcbb2400b6:   data16 xchg %ax,%ax
   1.54%  ││ │  0x00007fbcbb2400b9:   movabs $0xffffffffffffffff,%rax
   0.01%  ││ │  0x00007fbcbb2400c3:   call   0x00007fbcbac2f680           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││ │                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││ │                                                            ;   {virtual_call}
   2.08%  ││ │  0x00007fbcbb2400c8:   nopl   0x30002b8(%rax,%rax,1)       ;   {other}
   0.07%  ││ │  0x00007fbcbb2400d0:   mov    0x1c(%rsp),%r10d
   6.65%  ││ │  0x00007fbcbb2400d5:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
   1.55%  ││ │  0x00007fbcbb2400d8:   mov    0x24(%rsp),%r11d
   0.02%  ││ │  0x00007fbcbb2400dd:   data16 xchg %ax,%ax
   0.07%  ││ │  0x00007fbcbb2400e0:   cmp    %r10d,%r11d
          ││╭│  0x00007fbcbb2400e3:   jle    0x00007fbcbb24010c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
   1.50%  ││││  0x00007fbcbb2400e9:   mov    0x458(%r15),%r8              ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
   0.06%  ││││  0x00007fbcbb2400f0:   test   %eax,(%r8)                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││││                                                            ;   {poll}
   5.76%  ↘│││  0x00007fbcbb2400f3:   mov    0x8(%rsp),%r8
   0.07%   │││  0x00007fbcbb2400f8:   mov    0x20(%rsp),%r9d
   0.02%   │││  0x00007fbcbb2400fd:   mov    0x10(%rsp),%rdx
   0.04%   │││  0x00007fbcbb240102:   cmp    %r10d,%r9d
           ││╰  0x00007fbcbb240105:   ja     0x00007fbcbb2400a0
           ││   0x00007fbcbb240107:   jmp    0x00007fbcbb240156           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
           ↘↘   0x00007fbcbb24010c:   mov    0x30(%rsp),%rbp
                0x00007fbcbb240111:   add    $0x38,%rsp
                0x00007fbcbb240115:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fbcbb240120:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007fbcbb240127:   ja     0x00007fbcbb2401b6
                0x00007fbcbb24012d:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 1022)
....................................................................................................
  23.67%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.04%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 
  27.03%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 
  23.67%      jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 1008 
   8.66%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 
   0.78%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.13%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.74%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 998 
  23.67%      jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 1008 
   2.01%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1CardSet::is_empty 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  java.util.stream.ReduceOps$ReduceOp::evaluateSequential, version 2, compile id 1101 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.29%  <...other 118 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%      jvmci, level 4
   2.01%              kernel
   0.28%           libjvm.so
   0.12%        libc-2.31.so
   0.11%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2117593.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5435.468 us/op
# Warmup Iteration   2: 5181.729 us/op
# Warmup Iteration   3: 5163.101 us/op
# Warmup Iteration   4: 5158.302 us/op
# Warmup Iteration   5: 5161.558 us/op
Iteration   1: 5159.363 us/op
Iteration   2: 5165.863 us/op
Iteration   3: 5164.899 us/op
Iteration   4: 5154.099 us/op
Iteration   5: 5161.415 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  5161.128 ±(99.9%) 18.189 us/op [Average]
  (min, avg, max) = (5154.099, 5161.128, 5165.863), stdev = 4.724
  CI (99.9%): [5142.939, 5179.317] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 233847 total address lines.
Perf output processed (skipped 60.424 seconds):
 Column 1: cycles (50680 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 

            0x00007f752723f6f0:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007f752723f6f4:   0xf4f4f4f4                              
            0x00007f752723f6f8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007f752723f6fc:   0xf4f4f4f4                              
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007f74ab227558} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x40]  (sp of caller)
   0.44%    0x00007f752723f700:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   1.35%    0x00007f752723f704:   movabs $0x7f74ab000000,%r12
   0.13%    0x00007f752723f70e:   add    %r12,%r10
   0.39%    0x00007f752723f711:   xor    %r12,%r12
   0.00%    0x00007f752723f714:   cmp    %r10,%rax
            0x00007f752723f717:   jne    0x00007f7526c2f080           ;   {runtime_call ic_miss_stub}
   1.36%    0x00007f752723f71d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.08%    0x00007f752723f720:   mov    %eax,-0x14000(%rsp)
   1.37%    0x00007f752723f727:   sub    $0x38,%rsp
   0.38%    0x00007f752723f72b:   nop
   0.11%    0x00007f752723f72c:   cmpl   $0x1,0x20(%r15)
   0.43%    0x00007f752723f734:   jne    0x00007f7527240370
   0.95%    0x00007f752723f73a:   mov    %rbp,0x30(%rsp)
   3.63%    0x00007f752723f73f:   mov    %rdx,0x18(%rsp)
   0.15%    0x00007f752723f744:   mov    0x10(%rsi),%eax              ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.34%    0x00007f752723f747:   mov    0x34(,%rax,8),%r10d          ; implicit exception: dispatches to 0x00007f7527240394
                                                                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   3.74%    0x00007f752723f74f:   mov    0x8(,%r10,8),%eax            ; implicit exception: dispatches to 0x00007f75272403b7
   8.31%    0x00007f752723f757:   test   %rdx,%rdx
            0x00007f752723f75a:   je     0x00007f752723fa33
   0.10%    0x00007f752723f760:   mov    0x8(%rdx),%r11d
   4.58%    0x00007f752723f764:   movabs $0x7f74ab000000,%r8          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.module.DefaultRoots$$Lambda/0x80000000b::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
            0x00007f752723f76e:   lea    (%r8,%r11,1),%r11
   2.06%    0x00007f752723f772:   movabs $0x7f74ac02b328,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
            0x00007f752723f77c:   movabs $0x7f74ab000000,%r9
   0.16%    0x00007f752723f786:   lea    (%r9,%rax,1),%rax
   0.83%    0x00007f752723f78a:   cmp    -0xf1(%rip),%rax        # 0x00007f752723f6a0
                                                                      ;   {section_word}
   5.22%    0x00007f752723f791:   je     0x00007f752723f7df
            0x00007f752723f797:   cmp    -0xf6(%rip),%rax        # 0x00007f752723f6a8
                                                                      ;   {section_word}
            0x00007f752723f79e:   xchg   %ax,%ax
            0x00007f752723f7a0:   je     0x00007f752723fb39
            0x00007f752723f7a6:   cmp    -0xfd(%rip),%rax        # 0x00007f752723f6b0
                                                                      ;   {section_word}
            0x00007f752723f7ad:   je     0x00007f752723fad1
            0x00007f752723f7b3:   cmp    -0x102(%rip),%rax        # 0x00007f752723f6b8
                                                                      ;   {section_word}
....................................................................................................
  36.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 

                                                                           ;   {section_word}
   0.00%         0x00007f752723f842:   je     0x00007f752723f86b
                 0x00007f752723f848:   cmp    -0x177(%rip),%rax        # 0x00007f752723f6d8
                                                                           ;   {section_word}
                 0x00007f752723f84f:   je     0x00007f752723fc25
                 0x00007f752723f855:   cmp    -0x17c(%rip),%rax        # 0x00007f752723f6e0
                                                                           ;   {section_word}
                 0x00007f752723f85c:   nopl   0x0(%rax)
                 0x00007f752723f860:   je     0x00007f752723fe1d
                 0x00007f752723f866:   jmp    0x00007f75272402ac
   0.54%         0x00007f752723f86b:   mov    0x10(,%r9,8),%eax            ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.52%         0x00007f752723f873:   mov    0x34(,%rax,8),%eax           ; implicit exception: dispatches to 0x00007f75272403fd
   0.78%         0x00007f752723f87a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
                 0x00007f752723f880:   cmpl   $0x102bb68,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f7527240420
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007f74ac02bb68&apos;)}
   4.41%         0x00007f752723f88b:   jne    0x00007f752724028e           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.97%         0x00007f752723f891:   mov    0xc(,%r9,8),%r9d             ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                 0x00007f752723f899:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.06%         0x00007f752723f8a0:   cmpl   $0x103b468,0x8(,%r9,8)       ; implicit exception: dispatches to 0x00007f7527240443
                                                                           ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
   0.97%         0x00007f752723f8ac:   jne    0x00007f7527240266           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.00%         0x00007f752723f8b2:   mov    0x14(,%r9,8),%eax            ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.05%         0x00007f752723f8ba:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.00%         0x00007f752723f8c0:   cmpl   $0x102bda0,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f7527240466
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007f74ac02bda0&apos;)}
   0.94%         0x00007f752723f8cb:   jne    0x00007f752724029d           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.08%         0x00007f752723f8d1:   test   %rdx,%rdx
          ╭      0x00007f752723f8d4:   je     0x00007f752723f8e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f74ac02bb68::apply@1
          │                                                                ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │                                                                ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │      0x00007f752723f8da:   nopw   0x0(%rax,%rax,1)
   1.01%  │      0x00007f752723f8e0:   cmp    %r11,%r8
          │      0x00007f752723f8e3:   jne    0x00007f752724034c           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop }
          │                                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.00%  ↘      0x00007f752723f8e9:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f752724048d
   0.06%         0x00007f752723f8ec:   mov    0xc(,%r9,8),%r11d            ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
                                                                           ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                           ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.01%         0x00007f752723f8f4:   test   %r11d,%r11d
                 0x00007f752723f8f7:   je     0x00007f752723fa7f
   0.99%         0x00007f752723f8fd:   mov    0x8(,%r11,8),%r8d
   0.00%         0x00007f752723f905:   movabs $0x7f74ab000000,%rcx
   0.06%         0x00007f752723f90f:   lea    (%rcx,%r8,1),%r8
   0.01%         0x00007f752723f913:   test   %r11d,%r11d
           ╭     0x00007f752723f916:   je     0x00007f752723f92f
   0.97%   │     0x00007f752723f91c:   movabs $0x7f74ab025c88,%rcx         ;   {metadata(&apos;java/lang/Integer&apos;)}
           │     0x00007f752723f926:   cmp    %r8,%rcx
           │     0x00007f752723f929:   jne    0x00007f752724032b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f74ac02bda0::apply@1
           │                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.06%   ↘     0x00007f752723f92f:   mov    %eax,%r8d                    ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop r11=NarrowOop }
                                                                           ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.00%         0x00007f752723f932:   add    0xc(,%r11,8),%r8d            ; implicit exception: dispatches to 0x00007f75272404b0
   1.02%         0x00007f752723f93a:   lea    0x80(%r8),%eax
   0.00%         0x00007f752723f941:   cmp    $0x100,%eax
            ╭    0x00007f752723f947:   jb     0x00007f752723fa19
   0.06%    │    0x00007f752723f94d:   mov    0x1b8(%r15),%rax
   0.01%    │    0x00007f752723f954:   lea    0x10(%rax),%r11
   0.93%    │    0x00007f752723f958:   nopl   0x0(%rax,%rax,1)
            │    0x00007f752723f960:   cmp    0x1c8(%r15),%r11
            │    0x00007f752723f967:   ja     0x00007f752723fbfc
   0.07%    │    0x00007f752723f96d:   mov    %r11,0x1b8(%r15)
   0.01%    │    0x00007f752723f974:   prefetchw 0xd0(%rax)
   1.05%    │    0x00007f752723f97b:   movq   $0x1,(%rax)
            │    0x00007f752723f982:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.08%    │    0x00007f752723f989:   movl   $0x0,0xc(%rax)
   0.00%    │    0x00007f752723f990:   mov    %r8d,0xc(%rax)               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Integer::valueOf@-3
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f74ac02bda0::apply@17
            │                                                              ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.94%    │    0x00007f752723f994:   cmpb   $0x0,0x40(%r15)
   0.00%    │    0x00007f752723f999:   jne    0x00007f752723fa3f
   0.05%    │    0x00007f752723f99f:   mov    %rax,%rsi
   0.00%    │    0x00007f752723f9a2:   shr    $0x3,%rsi
   0.89%    │    0x00007f752723f9a6:   mov    %esi,0xc(,%r9,8)             ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.00%    │    0x00007f752723f9ae:   shl    $0x3,%r9                     ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.07%    │    0x00007f752723f9b2:   mov    %r9,%rsi
            │    0x00007f752723f9b5:   xor    %rax,%rsi
   0.89%    │    0x00007f752723f9b8:   nopl   0x0(%rax,%rax,1)
   0.00%    │    0x00007f752723f9c0:   test   $0xffffffffffe00000,%rsi
            │╭   0x00007f752723f9c7:   je     0x00007f752723f9eb
   0.03%    ││   0x00007f752723f9cd:   test   %rax,%rax
            ││╭  0x00007f752723f9d0:   je     0x00007f752723f9eb
   0.00%    │││  0x00007f752723f9d6:   shr    $0x9,%r9
   0.48%    │││  0x00007f752723f9da:   nopw   0x0(%rax,%rax,1)
   0.01%    │││  0x00007f752723f9e0:   cmpb   $0x2,(%r9,%rdi,1)
   0.05%    │││  0x00007f752723f9e5:   jne    0x00007f752723fa8b           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.37%    │↘↘  0x00007f752723f9eb:   mov    0x30(%rsp),%rbp
   2.20%    │    0x00007f752723f9f0:   add    $0x38,%rsp
   0.48%    │    0x00007f752723f9f4:   nopl   0x0(%rax,%rax,1)
            │    0x00007f752723f9fc:   data16 data16 xchg %ax,%ax
   0.88%    │    0x00007f752723fa00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │    0x00007f752723fa07:   ja     0x00007f7527240380
   1.67%    │    0x00007f752723fa0d:   vzeroupper 
   1.98%    │    0x00007f752723fa10:   ret                                 ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f74ac02b920::test@1
            │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   0.90%    │    0x00007f752723fa11:   mov    %eax,%r10d
            │    0x00007f752723fa14:   jmp    0x00007f752723f7fd
            ↘    0x00007f752723fa19:   movabs $0x7ffece048,%rsi            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffece048})}
                 0x00007f752723fa23:   mov    0x10(%rsi,%rax,4),%esi
                 0x00007f752723fa27:   shl    $0x3,%rsi
                 0x00007f752723fa2b:   mov    %rsi,%rax
                 0x00007f752723fa2e:   jmp    0x00007f752723f994           ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Integer::valueOf@-3
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007f74ac02bda0::apply@17
....................................................................................................
  28.61%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 993 

                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
                0x00007f7527243c78:   mov    0x24(%rsp),%r11d
                0x00007f7527243c7d:   data16 xchg %ax,%ax
                0x00007f7527243c80:   cmp    %r10d,%r11d
          ╭     0x00007f7527243c83:   jg     0x00007f7527243cf3
          │╭    0x00007f7527243c89:   jmp    0x00007f7527243d0c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
          ││    0x00007f7527243c8e:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    0x00007f7527243c99:   data16 data16 xchg %ax,%ax
          ││    0x00007f7527243c9d:   data16 xchg %ax,%ax
   1.20%  ││ ↗  0x00007f7527243ca0:   mov    0x10(%r8,%r10,4),%esi
   1.38%  ││ │  0x00007f7527243ca5:   mov    %esi,%ecx
   0.01%  ││ │  0x00007f7527243ca7:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
   1.37%  ││ │  0x00007f7527243cab:   mov    %rdx,%rsi
   0.11%  ││ │  0x00007f7527243cae:   mov    %rcx,%rdx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.42%  ││ │  0x00007f7527243cb1:   mov    %r10d,0x1c(%rsp)
          ││ │  0x00007f7527243cb6:   data16 xchg %ax,%ax
   1.40%  ││ │  0x00007f7527243cb9:   movabs $0x7f74ab2270b0,%rax
   0.09%  ││ │  0x00007f7527243cc3:   call   0x00007f752723f700           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││ │                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ││ │                                                            ;   {virtual_call}
   1.23%  ││ │  0x00007f7527243cc8:   nopl   0x30002b8(%rax,%rax,1)       ;   {other}
   0.00%  ││ │  0x00007f7527243cd0:   mov    0x1c(%rsp),%r10d
   6.59%  ││ │  0x00007f7527243cd5:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
   1.17%  ││ │  0x00007f7527243cd8:   mov    0x24(%rsp),%r11d
   0.01%  ││ │  0x00007f7527243cdd:   data16 xchg %ax,%ax
   0.73%  ││ │  0x00007f7527243ce0:   cmp    %r10d,%r11d
          ││╭│  0x00007f7527243ce3:   jle    0x00007f7527243d0c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 1024)
   0.68%  ││││  0x00007f7527243ce9:   mov    0x458(%r15),%r8              ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 1024)
   0.63%  ││││  0x00007f7527243cf0:   test   %eax,(%r8)                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 1024)
          ││││                                                            ;   {poll}
   3.64%  ↘│││  0x00007f7527243cf3:   mov    0x8(%rsp),%r8
   0.58%   │││  0x00007f7527243cf8:   mov    0x20(%rsp),%r9d
   0.00%   │││  0x00007f7527243cfd:   mov    0x10(%rsp),%rdx
   0.20%   │││  0x00007f7527243d02:   cmp    %r10d,%r9d
           ││╰  0x00007f7527243d05:   ja     0x00007f7527243ca0
           ││   0x00007f7527243d07:   jmp    0x00007f7527243d56           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
           ↘↘   0x00007f7527243d0c:   mov    0x30(%rsp),%rbp
                0x00007f7527243d11:   add    $0x38,%rsp
                0x00007f7527243d15:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f7527243d20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007f7527243d27:   ja     0x00007f7527243db6
                0x00007f7527243d2d:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 1022)
....................................................................................................
  21.44%  <total for region 3>

....[Hottest Regions]...............................................................................
  36.11%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 
  28.61%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 
  21.44%      jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 993 
   8.61%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 
   3.16%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 
   0.27%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::occupied 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   1.24%  <...other 410 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.50%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 982 
  21.44%      jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 993 
   1.30%              kernel  [unknown] 
   0.11%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%                      <unknown> 
   0.04%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   0.03%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.03%           libjvm.so  G1CardSet::occupied 
   0.02%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      jvmci, level 4  java.util.stream.ReduceOps$ReduceOp::evaluateSequential, version 2, compile id 1078 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%           libjvm.so  SpinPause 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.33%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%      jvmci, level 4
   1.30%              kernel
   0.49%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2117659.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 231.968 us/op
# Warmup Iteration   2: 237.181 us/op
# Warmup Iteration   3: 237.210 us/op
# Warmup Iteration   4: 236.572 us/op
# Warmup Iteration   5: 236.544 us/op
Iteration   1: 236.550 us/op
Iteration   2: 236.603 us/op
Iteration   3: 236.554 us/op
Iteration   4: 236.516 us/op
Iteration   5: 235.670 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  236.379 ±(99.9%) 1.530 us/op [Average]
  (min, avg, max) = (235.670, 236.379, 236.603), stdev = 0.397
  CI (99.9%): [234.848, 237.909] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 218571 total address lines.
Perf output processed (skipped 60.412 seconds):
 Column 1: cycles (50614 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 968 

               0x00007efc7723c51d:   mov    %r11d,%r8d
               0x00007efc7723c520:   mov    $0x1,%r11d
          ╭    0x00007efc7723c526:   jmp    0x00007efc7723c556           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          │    0x00007efc7723c52b:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007efc7723c536:   data16 data16 xchg %ax,%ax
          │    0x00007efc7723c53a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
          │↗   0x00007efc7723c540:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  25.92%  ││   0x00007efc7723c545:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.00%  ││   0x00007efc7723c548:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007efc7723c620
  54.64%  ││   0x00007efc7723c550:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
          ││   0x00007efc7723c553:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
  17.10%  ↘│   0x00007efc7723c556:   cmp    %r11d,%eax
           ╰   0x00007efc7723c559:   jg     0x00007efc7723c540           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
            ↗  0x00007efc7723c55b:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@40 (line 93)
   0.00%    │  0x00007efc7723c55e:   mov    0x10(%rsp),%rbp
            │  0x00007efc7723c563:   add    $0x18,%rsp
            │  0x00007efc7723c567:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007efc7723c56e:   ja     0x00007efc7723c5c6
            │  0x00007efc7723c574:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
            │  0x00007efc7723c575:   mov    $0x0,%r8d
            ╰  0x00007efc7723c57b:   jmp    0x00007efc7723c55b           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@39 (line 93)
               0x00007efc7723c57d:   mov    $0x18,%r10
....................................................................................................
  97.67%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 968 
   0.31%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.37%  <...other 410 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 968 
   1.97%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 1003 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.14%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.69%      jvmci, level 4
   1.97%              kernel
   0.14%           libjvm.so
   0.07%                    
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1834000.463 us/op
# Warmup Iteration   2: 1826361.298 us/op
# Warmup Iteration   3: 1823493.504 us/op
# Warmup Iteration   4: 1825887.905 us/op
# Warmup Iteration   5: 1826107.631 us/op
Iteration   1: 1826345.313 us/op
Iteration   2: 1824858.411 us/op
Iteration   3: 1824080.882 us/op
Iteration   4: 1824563.394 us/op
Iteration   5: 1825512.846 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  1825072.169 ±(99.9%) 3391.129 us/op [Average]
  (min, avg, max) = (1824080.882, 1825072.169, 1826345.313), stdev = 880.665
  CI (99.9%): [1821681.041, 1828463.298] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 219586 total address lines.
Perf output processed (skipped 65.021 seconds):
 Column 1: cycles (55391 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.78%        libc-2.31.so  __vfprintf_internal 
   5.99%           libjvm.so  stringStream::write 
   5.45%        libc-2.31.so  __strchrnul_avx2 
   4.31%        libc-2.31.so  __vsnprintf_internal 
   3.40%        libc-2.31.so  _IO_default_xsputn 
   2.94%        libc-2.31.so  __vfprintf_internal 
   2.77%        libc-2.31.so  __vfprintf_internal 
   2.63%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.36%        libc-2.31.so  __strchr_avx2 
   2.32%           libjvm.so  frame::sender 
   2.15%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.99%        libc-2.31.so  _IO_old_init 
   1.91%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.87%           libjvm.so  CodeBlob::is_upcall_stub 
   1.64%           libjvm.so  vframeStream::vframeStream 
   1.62%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.47%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.42%           libjvm.so  CodeHeap::find_blob 
   1.41%           libjvm.so  CodeCache::find_blob 
   1.34%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
  44.26%  <...other 705 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  14.85%        libc-2.31.so  __vfprintf_internal 
   7.55%           libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.62%        libc-2.31.so  __strchrnul_avx2 
   6.09%           libjvm.so  stringStream::write 
   4.81%        libc-2.31.so  _IO_default_xsputn 
   4.31%        libc-2.31.so  __vsnprintf_internal 
   3.80%        libc-2.31.so  __strchr_avx2 
   3.34%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.78%           libjvm.so  frame::sender 
   2.22%           libjvm.so  outputStream::print 
   2.22%           libjvm.so  vframeStream::vframeStream 
   2.15%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.99%        libc-2.31.so  _IO_old_init 
   1.87%           libjvm.so  CodeBlob::is_upcall_stub 
   1.71%              kernel  [unknown] 
   1.70%        libc-2.31.so  _IO_str_init_static_internal 
   1.62%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   1.58%           libjvm.so  frame::sender_for_interpreter_frame 
   1.47%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.42%           libjvm.so  CodeHeap::find_blob 
  25.91%  <...other 210 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  50.16%           libjvm.so
  45.49%        libc-2.31.so
   1.71%              kernel
   0.88%      jvmci, level 4
   0.50%          ld-2.31.so
   0.32%  libpthread-2.31.so
   0.27%              [vdso]
   0.20%        runtime stub
   0.19%                    
   0.12%    perf-2117786.map
   0.11%    Unknown, level 0
   0.03%          libjava.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:16

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
NpeControlFlowBenchmark.if_not_npe_do_statement                    0  262144  avgt    5      231.636 ±   11.470  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm                0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_not_npe_do_statement                   16  262144  avgt    5     1505.946 ±    0.762  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm               16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                            0  262144  avgt    5      229.836 ±    0.183  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                        0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                           16  262144  avgt    5     1506.382 ±    2.762  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                       16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                          0  262144  avgt    5     6020.073 ±   72.694  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                      0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                         16  262144  avgt    5     5161.128 ±   18.189  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                     16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                              0  262144  avgt    5      236.379 ±    1.530  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                          0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                             16  262144  avgt    5  1825072.169 ± 3391.129  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                         16  262144  avgt               NaN               ---
