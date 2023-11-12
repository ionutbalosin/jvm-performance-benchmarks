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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 520.036 us/op
# Warmup Iteration   2: 516.709 us/op
# Warmup Iteration   3: 516.774 us/op
# Warmup Iteration   4: 516.447 us/op
# Warmup Iteration   5: 516.368 us/op
Iteration   1: 516.441 us/op
Iteration   2: 516.274 us/op
Iteration   3: 516.467 us/op
Iteration   4: 516.372 us/op
Iteration   5: 516.500 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  516.411 ±(99.9%) 0.346 us/op [Average]
  (min, avg, max) = (516.274, 516.411, 516.500), stdev = 0.090
  CI (99.9%): [516.064, 516.757] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 225199 total address lines.
Perf output processed (skipped 60.616 seconds):
 Column 1: cycles (50706 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 963 

              0x00007f7052d7cab4:   nopl   0x0(%rax,%rax,1)
              0x00007f7052d7cabc:   data16 data16 xchg %ax,%ax
              0x00007f7052d7cac0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f7052d7cac7:   ja     0x00007f7052d7cbbe
              0x00007f7052d7cacd:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
              0x00007f7052d7cace:   lea    -0x4(%r10),%r9d
              0x00007f7052d7cad2:   cmp    %ebx,%r9d
          ╭   0x00007f7052d7cad5:   jle    0x00007f7052d7cb48
          │   0x00007f7052d7cadb:   nopl   0x0(%rax,%rax,1)
   0.23%  │↗  0x00007f7052d7cae0:   mov    0x10(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.01%  ││  0x00007f7052d7cae5:   add    0xc(%r11,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.68%  ││  0x00007f7052d7caea:   mov    %edi,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.09%  ││  0x00007f7052d7caef:   add    0x10(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%  ││  0x00007f7052d7caf4:   mov    %edi,0x10(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.81%  ││  0x00007f7052d7caf8:   mov    0x14(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.02%  ││  0x00007f7052d7cafd:   add    0x10(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.56%  ││  0x00007f7052d7cb02:   mov    %edi,0x14(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.01%  ││  0x00007f7052d7cb07:   add    0x14(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%  ││  0x00007f7052d7cb0c:   mov    %edi,0x14(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.71%  ││  0x00007f7052d7cb10:   mov    0x18(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%  ││  0x00007f7052d7cb15:   add    0x14(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.57%  ││  0x00007f7052d7cb1a:   mov    %edi,0x18(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   9.94%  ││  0x00007f7052d7cb1f:   add    0x18(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.05%  ││  0x00007f7052d7cb24:   mov    %edi,0x18(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.79%  ││  0x00007f7052d7cb28:   mov    0x1c(%r8,%rbx,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
          ││  0x00007f7052d7cb2d:   add    0x18(%r11,%rbx,4),%edi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.50%  ││  0x00007f7052d7cb32:   mov    %edi,0x1c(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.14%  ││  0x00007f7052d7cb37:   add    0x1c(%r8,%rbx,4),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%  ││  0x00007f7052d7cb3c:   mov    %edi,0x1c(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.79%  ││  0x00007f7052d7cb40:   lea    0x4(%rbx),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
          ││  0x00007f7052d7cb43:   cmp    %ebx,%r9d
          │╰  0x00007f7052d7cb46:   jg     0x00007f7052d7cae0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
          ↘   0x00007f7052d7cb48:   cmp    %ebx,%r10d
              0x00007f7052d7cb4b:   jle    0x00007f7052d7caab
              0x00007f7052d7cb51:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f7052d7cb5c:   data16 data16 xchg %ax,%ax
   0.00%      0x00007f7052d7cb60:   mov    0x10(%r8,%rbx,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
              0x00007f7052d7cb65:   add    0xc(%r11,%rbx,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
              0x00007f7052d7cb6a:   mov    %r9d,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
              0x00007f7052d7cb6f:   add    0x10(%r8,%rbx,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
              0x00007f7052d7cb74:   mov    %r9d,0x10(%rcx,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
              0x00007f7052d7cb79:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 963 
   0.57%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.81%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 963 
   1.58%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 4, compile id 998 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%      jvmci, level 4
   1.58%              kernel
   0.12%           libjvm.so
   0.11%                    
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%    perf-2132786.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 247.446 us/op
# Warmup Iteration   2: 243.288 us/op
# Warmup Iteration   3: 243.113 us/op
# Warmup Iteration   4: 243.082 us/op
# Warmup Iteration   5: 243.080 us/op
Iteration   1: 243.078 us/op
Iteration   2: 243.059 us/op
Iteration   3: 243.072 us/op
Iteration   4: 232.569 us/op
Iteration   5: 243.080 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  240.972 ±(99.9%) 18.087 us/op [Average]
  (min, avg, max) = (232.569, 240.972, 243.080), stdev = 4.697
  CI (99.9%): [222.885, 259.059] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 224305 total address lines.
Perf output processed (skipped 60.494 seconds):
 Column 1: cycles (50776 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 4, compile id 964 

                0x00007f0702d25f93:   jg     0x00007f0702d25f80
                0x00007f0702d25f95:   lea    -0x8(%r8),%r11d              ;   {no_reloc}
                0x00007f0702d25f99:   cmp    $0x80000008,%r8d
                0x00007f0702d25fa0:   mov    $0x80000000,%edx
                0x00007f0702d25fa5:   cmovl  %edx,%r11d
          ╭     0x00007f0702d25fa9:   jmp    0x00007f0702d26010
          │     0x00007f0702d25fae:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f0702d25fb9:   data16 data16 xchg %ax,%ax
          │     0x00007f0702d25fbd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
   0.10%  │↗    0x00007f0702d25fc0:   mov    0x10(%rdi,%rbx,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.02%  ││    0x00007f0702d25fc4:   add    0xc(%r10,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
  12.22%  ││    0x00007f0702d25fc9:   mov    %edx,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
  10.81%  ││    0x00007f0702d25fce:   add    0x14(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.03%  ││    0x00007f0702d25fd2:   mov    %edx,0x14(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.39%  ││    0x00007f0702d25fd7:   add    0x18(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   1.51%  ││    0x00007f0702d25fdb:   mov    %edx,0x18(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.35%  ││    0x00007f0702d25fe0:   add    0x1c(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.14%  ││    0x00007f0702d25fe4:   mov    %edx,0x1c(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.11%  ││    0x00007f0702d25fe9:   add    0x20(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.01%  ││    0x00007f0702d25fed:   mov    %edx,0x20(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.32%  ││    0x00007f0702d25ff2:   add    0x24(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.02%  ││    0x00007f0702d25ff6:   mov    %edx,0x24(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.10%  ││    0x00007f0702d25ffb:   add    0x28(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.01%  ││    0x00007f0702d25fff:   mov    %edx,0x28(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.19%  ││    0x00007f0702d26004:   add    0x2c(%rdi,%rbx,4),%edx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.01%  ││    0x00007f0702d26008:   mov    %edx,0x2c(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.11%  ││    0x00007f0702d2600d:   lea    0x8(%rbx),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          ↘│    0x00007f0702d26010:   cmp    %ebx,%r11d
           ╰    0x00007f0702d26013:   jg     0x00007f0702d25fc0
            ╭   0x00007f0702d26015:   jmp    0x00007f0702d26040
            │   0x00007f0702d2601a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
   0.01%    │↗  0x00007f0702d26020:   mov    0x10(%rdi,%rbx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.01%    ││  0x00007f0702d26025:   add    0xc(%r10,%rbx,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.00%    ││  0x00007f0702d2602a:   mov    %r11d,0x10(%r10,%rbx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   0.00%    ││  0x00007f0702d2602f:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
            ││  0x00007f0702d26031:   data16 data16 nopw 0x0(%rax,%rax,1)
            ││  0x00007f0702d2603c:   data16 data16 xchg %ax,%ax
            ↘│  0x00007f0702d26040:   cmp    %ebx,%r8d
             ╰  0x00007f0702d26043:   jg     0x00007f0702d26020           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
                0x00007f0702d26045:   mov    0x14(%rsi),%r11d             ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@37 (line 105)
                0x00007f0702d26049:   test   %eax,0x0(,%r11,8)            ; implicit exception: deoptimizes
....................................................................................................
  61.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 4, compile id 964 

             0x00007f0702d2608b:   je     0x00007f0702d260e5           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             0x00007f0702d26091:   shl    $0x3,%r11                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
             0x00007f0702d26095:   lea    0x14(%r11),%r11              ;   {no_reloc}
             0x00007f0702d26099:   lea    0x14(%r10),%r10
             0x00007f0702d2609d:   lea    0x14(%rdi),%r9
             0x00007f0702d260a1:   cmp    $0x8,%r8
             0x00007f0702d260a5:   jb     0x00007f0702d26163
             0x00007f0702d260ab:   lea    -0x8(%r8),%rcx
   0.00%     0x00007f0702d260af:   mov    $0x0,%rbx
             0x00007f0702d260b6:   data16 nopw 0x0(%rax,%rax,1)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.47%  ↗  0x00007f0702d260c0:   vmovdqu (%r9,%rbx,4),%ymm0
  12.46%  │  0x00007f0702d260c6:   vmovdqu (%r10,%rbx,4),%ymm1
  11.35%  │  0x00007f0702d260cc:   vpaddd %ymm1,%ymm0,%ymm0            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   8.65%  │  0x00007f0702d260d0:   vmovdqu %ymm0,(%r11,%rbx,4)
   1.87%  │  0x00007f0702d260d6:   lea    0x8(%rbx),%rbx
   1.58%  │  0x00007f0702d260da:   cmp    %rcx,%rbx
          ╰  0x00007f0702d260dd:   jle    0x00007f0702d260c0
             0x00007f0702d260df:   nop
             0x00007f0702d260e0:   jmp    0x00007f0702d260ff
             0x00007f0702d260e5:   mov    0x10(%rsp),%rbp
             0x00007f0702d260ea:   add    $0x18,%rsp
             0x00007f0702d260ee:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f0702d260f5:   ja     0x00007f0702d261c7
             0x00007f0702d260fb:   vzeroupper 
             0x00007f0702d260fe:   ret    
             0x00007f0702d260ff:   lea    -0x4(%r8),%rcx
....................................................................................................
  36.38%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 4, compile id 964 
  36.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 4, compile id 964 
   0.74%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.85%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 4, compile id 964 
   1.74%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  stringStream::write 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_manual_loop_fission_jmhTest::manual_loop_fission_avgt_jmhStub, version 4, compile id 993 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.17%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%       jvmci, level 4
   1.74%               kernel
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
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

Benchmark                                     (size)  Mode  Cnt    Score    Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  516.411 ±  0.346  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt           NaN             ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5  240.972 ± 18.087  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt           NaN             ---
