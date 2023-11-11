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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 228.914 us/op
# Warmup Iteration   2: 228.247 us/op
# Warmup Iteration   3: 227.582 us/op
# Warmup Iteration   4: 227.919 us/op
# Warmup Iteration   5: 227.963 us/op
Iteration   1: 227.335 us/op
Iteration   2: 229.748 us/op
Iteration   3: 228.041 us/op
Iteration   4: 227.952 us/op
Iteration   5: 227.984 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  228.212 ±(99.9%) 3.486 us/op [Average]
  (min, avg, max) = (227.335, 228.212, 229.748), stdev = 0.905
  CI (99.9%): [224.726, 231.698] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 128461 total address lines.
Perf output processed (skipped 56.325 seconds):
 Column 1: cycles (50522 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 584 

   0.00%             0x00007f5d0063adb0:   cmovl  %r11,%r10
                     0x00007f5d0063adb4:   mov    %r10d,%r10d
                     0x00007f5d0063adb7:   mov    $0x1,%ebx
                     0x00007f5d0063adbc:   nopl   0x0(%rax)
                     0x00007f5d0063adc0:   cmp    $0x1,%r10d
                     0x00007f5d0063adc4:   jle    0x00007f5d0063ae88
                     0x00007f5d0063adca:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          ╭          0x00007f5d0063add0:   jmp    0x00007f5d0063ae3e
          │          0x00007f5d0063add5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%  │    ↗     0x00007f5d0063ade0:   mov    %ecx,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
   0.01%  │    │↗    0x00007f5d0063ade2:   mov    0x10(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
  10.78%  │    ││    0x00007f5d0063ade7:   mov    %edx,%ecx
   0.00%  │╭   ││    0x00007f5d0063ade9:   add    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f5d0063ae5e
          ││   ││                                                              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   4.28%  ││   ││    0x00007f5d0063adee:   mov    0x14(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.00%  ││   ││    0x00007f5d0063adf3:   test   %r11d,%r11d
          ││╭  ││    0x00007f5d0063adf6:   je     0x00007f5d0063ae5a           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   9.03%  │││  ││    0x00007f5d0063adfc:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   6.55%  │││  ││    0x00007f5d0063ae01:   mov    0x18(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.01%  │││  ││    0x00007f5d0063ae06:   test   %r11d,%r11d
          │││╭ ││    0x00007f5d0063ae09:   je     0x00007f5d0063ae62           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
          ││││ ││    0x00007f5d0063ae0f:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  38.80%  ││││ ││    0x00007f5d0063ae14:   mov    0x1c(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.23%  ││││ ││    0x00007f5d0063ae19:   test   %r11d,%r11d
          ││││╭││    0x00007f5d0063ae1c:   je     0x00007f5d0063ae57           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   0.04%  │││││││    0x00007f5d0063ae1e:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  28.28%  │││││││    0x00007f5d0063ae23:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.00%  │││││││    0x00007f5d0063ae26:   cmp    %esi,%ebx
          │││││╰│    0x00007f5d0063ae28:   jl     0x00007f5d0063ade0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │││││ │    0x00007f5d0063ae2a:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {r9=Oop rdi=Oop }
          │││││ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │││││ │    0x00007f5d0063ae31:   test   %eax,(%rdx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │││││ │                                                              ;   {poll}
   0.02%  │││││ │    0x00007f5d0063ae33:   cmp    %r10d,%ebx
          │││││ │    0x00007f5d0063ae36:   jge    0x00007f5d0063ae8a
          │││││ │    0x00007f5d0063ae3c:   mov    %ecx,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
          ↘││││ │    0x00007f5d0063ae3e:   mov    %r10d,%esi
           ││││ │    0x00007f5d0063ae41:   sub    %ebx,%esi
   0.01%   ││││ │    0x00007f5d0063ae43:   cmp    %ebx,%r10d
           ││││ │    0x00007f5d0063ae46:   cmovl  %eax,%esi
           ││││ │    0x00007f5d0063ae49:   cmp    $0xfa0,%esi
           ││││ │    0x00007f5d0063ae4f:   cmova  %r8d,%esi
   0.01%   ││││ │    0x00007f5d0063ae53:   add    %ebx,%esi
           ││││ ╰    0x00007f5d0063ae55:   jmp    0x00007f5d0063ade2
           │││↘      0x00007f5d0063ae57:   add    $0x2,%ebx
           │↘│       0x00007f5d0063ae5a:   inc    %ebx
           │ │   ╭   0x00007f5d0063ae5c:   jmp    0x00007f5d0063ae65
           ↘ │   │   0x00007f5d0063ae5e:   mov    %edx,%ecx
             │   │╭  0x00007f5d0063ae60:   jmp    0x00007f5d0063ae65
             ↘   ││  0x00007f5d0063ae62:   add    $0x2,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
                 ↘↘  0x00007f5d0063ae65:   mov    $0xffffff45,%esi
                     0x00007f5d0063ae6a:   mov    %ecx,%ebp
....................................................................................................
  98.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 584 
   0.45%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.91%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 584 
   1.64%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 619 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%         c2, level 4
   1.64%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:12:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1254.530 us/op
# Warmup Iteration   2: 1250.394 us/op
# Warmup Iteration   3: 1250.367 us/op
# Warmup Iteration   4: 1250.615 us/op
# Warmup Iteration   5: 1250.441 us/op
Iteration   1: 1250.350 us/op
Iteration   2: 1250.661 us/op
Iteration   3: 1250.617 us/op
Iteration   4: 1250.229 us/op
Iteration   5: 1249.880 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1250.347 ±(99.9%) 1.223 us/op [Average]
  (min, avg, max) = (1249.880, 1250.347, 1250.661), stdev = 0.318
  CI (99.9%): [1249.124, 1251.571] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:asm":
PrintAssembly processed: 128186 total address lines.
Perf output processed (skipped 56.305 seconds):
 Column 1: cycles (50835 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 583 

                      0x00007f8d6c63a612:   cmp    $0xffffffff80000000,%r10
                      0x00007f8d6c63a619:   cmovl  %r11,%r10
                      0x00007f8d6c63a61d:   mov    %r10d,%r10d
                      0x00007f8d6c63a620:   mov    $0x1,%r11d
                      0x00007f8d6c63a626:   cmp    $0x1,%r10d
          ╭           0x00007f8d6c63a62a:   jle    0x00007f8d6c63a6b0
          │           0x00007f8d6c63a630:   mov    $0xfa0,%r9d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │╭          0x00007f8d6c63a636:   jmp    0x00007f8d6c63a695
          ││          0x00007f8d6c63a63b:   nopl   0x0(%rax,%rax,1)
   4.86%  ││    ↗     0x00007f8d6c63a640:   add    0xc(%r12,%rsi,8),%eax
  11.97%  ││    │↗    0x00007f8d6c63a645:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.66%  ││    ││    0x00007f8d6c63a649:   cmp    %edx,%r11d
          ││╭   ││    0x00007f8d6c63a64c:   jge    0x00007f8d6c63a687           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
   1.10%  │││   ││ ↗  0x00007f8d6c63a652:   mov    0x10(%rcx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.88%  │││   ││ │  0x00007f8d6c63a657:   test   %edi,%edi
          │││╭  ││ │  0x00007f8d6c63a659:   je     0x00007f8d6c63a660           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   5.49%  ││││  ││ │  0x00007f8d6c63a65b:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  14.62%  │││↘  ││ │  0x00007f8d6c63a660:   mov    0x14(%rcx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   4.72%  │││   ││ │  0x00007f8d6c63a665:   test   %esi,%esi
          │││ ╭ ││ │  0x00007f8d6c63a667:   je     0x00007f8d6c63a66e           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.23%  │││ │ ││ │  0x00007f8d6c63a669:   add    0xc(%r12,%rsi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  13.86%  │││ ↘ ││ │  0x00007f8d6c63a66e:   mov    0x18(%rcx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   5.18%  │││   ││ │  0x00007f8d6c63a673:   test   %edi,%edi
          │││  ╭││ │  0x00007f8d6c63a675:   je     0x00007f8d6c63a67c           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.87%  │││  │││ │  0x00007f8d6c63a677:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  13.58%  │││  ↘││ │  0x00007f8d6c63a67c:   mov    0x1c(%rcx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   5.03%  │││   ││ │  0x00007f8d6c63a681:   test   %esi,%esi
          │││   ╰│ │  0x00007f8d6c63a683:   jne    0x00007f8d6c63a640           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.62%  │││    ╰ │  0x00007f8d6c63a685:   jmp    0x00007f8d6c63a645
   0.01%  ││↘      │  0x00007f8d6c63a687:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop rcx=Oop }
          ││       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
   0.02%  ││       │  0x00007f8d6c63a68e:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          ││       │                                                            ;   {poll}
   0.04%  ││       │  0x00007f8d6c63a690:   cmp    %r10d,%r11d
          ││      ╭│  0x00007f8d6c63a693:   jge    0x00007f8d6c63a6b0
          │↘      ││  0x00007f8d6c63a695:   mov    %r10d,%edx
          │       ││  0x00007f8d6c63a698:   sub    %r11d,%edx
          │       ││  0x00007f8d6c63a69b:   cmp    %r11d,%r10d
          │       ││  0x00007f8d6c63a69e:   cmovl  %ebx,%edx
          │       ││  0x00007f8d6c63a6a1:   cmp    $0xfa0,%edx
          │       ││  0x00007f8d6c63a6a7:   cmova  %r9d,%edx
   0.00%  │       ││  0x00007f8d6c63a6ab:   add    %r11d,%edx
          │       │╰  0x00007f8d6c63a6ae:   jmp    0x00007f8d6c63a652
          ↘       ↘   0x00007f8d6c63a6b0:   cmp    %ebp,%r11d
                      0x00007f8d6c63a6b3:   jge    0x00007f8d6c63a6d2
                      0x00007f8d6c63a6b5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
                      0x00007f8d6c63a6b8:   mov    0x10(%rcx,%r11,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
                      0x00007f8d6c63a6bd:   data16 xchg %ax,%ax
                      0x00007f8d6c63a6c0:   test   %r8d,%r8d
                      0x00007f8d6c63a6c3:   je     0x00007f8d6c63a6ca           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 583 
   0.99%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 259 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 583 
   1.93%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%    perf-1944053.map  [unknown] 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::flush 
   0.01%        libc-2.31.so  _IO_setb 
   0.01%        libc-2.31.so  ___vsnprintf 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  stringStream::write 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.76%         c2, level 4
   1.93%              kernel
   0.11%           libjvm.so
   0.09%        libc-2.31.so
   0.03%         interpreter
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%    perf-1944053.map
   0.01%          ld-2.31.so
   0.01%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:10:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 230.400 us/op
# Warmup Iteration   2: 229.344 us/op
# Warmup Iteration   3: 228.998 us/op
# Warmup Iteration   4: 228.943 us/op
# Warmup Iteration   5: 228.947 us/op
Iteration   1: 228.966 us/op
Iteration   2: 228.878 us/op
Iteration   3: 228.931 us/op
Iteration   4: 228.940 us/op
Iteration   5: 228.947 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  228.932 ±(99.9%) 0.127 us/op [Average]
  (min, avg, max) = (228.878, 228.932, 228.966), stdev = 0.033
  CI (99.9%): [228.805, 229.060] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 131041 total address lines.
Perf output processed (skipped 56.476 seconds):
 Column 1: cycles (50445 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 4, compile id 571 

                     0x00007feca463ad30:   cmovl  %r11,%r10
                     0x00007feca463ad34:   mov    %r10d,%r10d
                     0x00007feca463ad37:   mov    $0x1,%ebx
                     0x00007feca463ad3c:   nopl   0x0(%rax)
                     0x00007feca463ad40:   cmp    $0x1,%r10d
                     0x00007feca463ad44:   jle    0x00007feca463ae08
                     0x00007feca463ad4a:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          ╭          0x00007feca463ad50:   jmp    0x00007feca463adbe
          │          0x00007feca463ad55:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%  │    ↗     0x00007feca463ad60:   mov    %ecx,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
          │    │↗    0x00007feca463ad62:   mov    0x10(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
  10.89%  │    ││    0x00007feca463ad67:   mov    %edx,%ecx
   0.00%  │╭   ││    0x00007feca463ad69:   add    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007feca463adde
          ││   ││                                                              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   4.01%  ││   ││    0x00007feca463ad6e:   mov    0x14(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.00%  ││   ││    0x00007feca463ad73:   test   %r11d,%r11d
          ││╭  ││    0x00007feca463ad76:   je     0x00007feca463adda           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   8.92%  │││  ││    0x00007feca463ad7c:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   6.81%  │││  ││    0x00007feca463ad81:   mov    0x18(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.00%  │││  ││    0x00007feca463ad86:   test   %r11d,%r11d
          │││╭ ││    0x00007feca463ad89:   je     0x00007feca463ade2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
          ││││ ││    0x00007feca463ad8f:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  38.80%  ││││ ││    0x00007feca463ad94:   mov    0x1c(%rdi,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.33%  ││││ ││    0x00007feca463ad99:   test   %r11d,%r11d
          ││││╭││    0x00007feca463ad9c:   je     0x00007feca463add7           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   0.04%  │││││││    0x00007feca463ad9e:   add    0xc(%r12,%r11,8),%ecx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  28.66%  │││││││    0x00007feca463ada3:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.01%  │││││││    0x00007feca463ada6:   cmp    %esi,%ebx
          │││││╰│    0x00007feca463ada8:   jl     0x00007feca463ad60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
          │││││ │    0x00007feca463adaa:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {r9=Oop rdi=Oop }
          │││││ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          │││││ │    0x00007feca463adb1:   test   %eax,(%rdx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          │││││ │                                                              ;   {poll}
   0.02%  │││││ │    0x00007feca463adb3:   cmp    %r10d,%ebx
          │││││ │    0x00007feca463adb6:   jge    0x00007feca463ae0a
          │││││ │    0x00007feca463adbc:   mov    %ecx,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
          ↘││││ │    0x00007feca463adbe:   mov    %r10d,%esi
           ││││ │    0x00007feca463adc1:   sub    %ebx,%esi
   0.01%   ││││ │    0x00007feca463adc3:   cmp    %ebx,%r10d
           ││││ │    0x00007feca463adc6:   cmovl  %eax,%esi
           ││││ │    0x00007feca463adc9:   cmp    $0xfa0,%esi
           ││││ │    0x00007feca463adcf:   cmova  %r8d,%esi
   0.01%   ││││ │    0x00007feca463add3:   add    %ebx,%esi
           ││││ ╰    0x00007feca463add5:   jmp    0x00007feca463ad62
           │││↘      0x00007feca463add7:   add    $0x2,%ebx
           │↘│       0x00007feca463adda:   inc    %ebx
           │ │   ╭   0x00007feca463addc:   jmp    0x00007feca463ade5
           ↘ │   │   0x00007feca463adde:   mov    %edx,%ecx
             │   │╭  0x00007feca463ade0:   jmp    0x00007feca463ade5
             ↘   ││  0x00007feca463ade2:   add    $0x2,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
                 ↘↘  0x00007feca463ade5:   mov    $0xffffff45,%esi
                     0x00007feca463adea:   mov    %ecx,%ebp
....................................................................................................
  98.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 4, compile id 571 
   0.21%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.74%  <...other 250 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 4, compile id 571 
   1.17%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 610 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.55%         c2, level 4
   1.17%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1254.649 us/op
# Warmup Iteration   2: 1250.142 us/op
# Warmup Iteration   3: 1250.176 us/op
# Warmup Iteration   4: 1250.225 us/op
# Warmup Iteration   5: 1250.110 us/op
Iteration   1: 1250.151 us/op
Iteration   2: 1250.141 us/op
Iteration   3: 1250.010 us/op
Iteration   4: 1249.618 us/op
Iteration   5: 1249.584 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1249.901 ±(99.9%) 1.076 us/op [Average]
  (min, avg, max) = (1249.584, 1249.901, 1250.151), stdev = 0.280
  CI (99.9%): [1248.824, 1250.977] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.if_npe_continue:asm":
PrintAssembly processed: 130778 total address lines.
Perf output processed (skipped 56.433 seconds):
 Column 1: cycles (50967 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 579 

                          0x00007fbb2c639492:   cmp    $0xffffffff80000000,%r10
                          0x00007fbb2c639499:   cmovl  %r11,%r10
                          0x00007fbb2c63949d:   mov    %r10d,%r10d
                          0x00007fbb2c6394a0:   mov    $0x1,%r11d
                          0x00007fbb2c6394a6:   cmp    $0x1,%r10d
          ╭               0x00007fbb2c6394aa:   jle    0x00007fbb2c639530
          │               0x00007fbb2c6394b0:   mov    $0xfa0,%r9d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          │╭              0x00007fbb2c6394b6:   jmp    0x00007fbb2c639515
          ││              0x00007fbb2c6394bb:   nopl   0x0(%rax,%rax,1)
   4.94%  ││    ↗         0x00007fbb2c6394c0:   add    0xc(%r12,%rsi,8),%eax
  11.74%  ││    │↗        0x00007fbb2c6394c5:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.68%  ││    ││        0x00007fbb2c6394c9:   cmp    %edx,%r11d
          ││╭   ││        0x00007fbb2c6394cc:   jge    0x00007fbb2c639507           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
   1.12%  │││   ││ ↗      0x00007fbb2c6394d2:   mov    0x10(%rcx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.98%  │││   ││ │      0x00007fbb2c6394d7:   test   %edi,%edi
          │││╭  ││ │      0x00007fbb2c6394d9:   je     0x00007fbb2c6394e0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   5.25%  ││││  ││ │      0x00007fbb2c6394db:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  14.78%  │││↘  ││ │      0x00007fbb2c6394e0:   mov    0x14(%rcx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   4.85%  │││   ││ │      0x00007fbb2c6394e5:   test   %esi,%esi
          │││ ╭ ││ │      0x00007fbb2c6394e7:   je     0x00007fbb2c6394ee           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.24%  │││ │ ││ │      0x00007fbb2c6394e9:   add    0xc(%r12,%rsi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  13.52%  │││ ↘ ││ │      0x00007fbb2c6394ee:   mov    0x18(%rcx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   5.14%  │││   ││ │      0x00007fbb2c6394f3:   test   %edi,%edi
          │││  ╭││ │      0x00007fbb2c6394f5:   je     0x00007fbb2c6394fc           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.60%  │││  │││ │      0x00007fbb2c6394f7:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  13.84%  │││  ↘││ │      0x00007fbb2c6394fc:   mov    0x1c(%rcx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   5.03%  │││   ││ │      0x00007fbb2c639501:   test   %esi,%esi
          │││   ╰│ │      0x00007fbb2c639503:   jne    0x00007fbb2c6394c0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.72%  │││    ╰ │      0x00007fbb2c639505:   jmp    0x00007fbb2c6394c5
   0.02%  ││↘      │      0x00007fbb2c639507:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop rcx=Oop }
          ││       │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││       │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
   0.02%  ││       │      0x00007fbb2c63950e:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          ││       │                                                                ;   {poll}
   0.02%  ││       │      0x00007fbb2c639510:   cmp    %r10d,%r11d
          ││      ╭│      0x00007fbb2c639513:   jge    0x00007fbb2c639530
          │↘      ││      0x00007fbb2c639515:   mov    %r10d,%edx
          │       ││      0x00007fbb2c639518:   sub    %r11d,%edx
          │       ││      0x00007fbb2c63951b:   cmp    %r11d,%r10d
   0.00%  │       ││      0x00007fbb2c63951e:   cmovl  %ebx,%edx
          │       ││      0x00007fbb2c639521:   cmp    $0xfa0,%edx
          │       ││      0x00007fbb2c639527:   cmova  %r9d,%edx
          │       ││      0x00007fbb2c63952b:   add    %r11d,%edx
          │       │╰      0x00007fbb2c63952e:   jmp    0x00007fbb2c6394d2
          ↘       ↘       0x00007fbb2c639530:   cmp    %ebp,%r11d
                    ╭     0x00007fbb2c639533:   jge    0x00007fbb2c639552
                    │     0x00007fbb2c639535:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
   0.00%            │ ↗   0x00007fbb2c639538:   mov    0x10(%rcx,%r11,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
                    │ │   0x00007fbb2c63953d:   data16 xchg %ax,%ax
                    │ │   0x00007fbb2c639540:   test   %r8d,%r8d
                    │╭│   0x00007fbb2c639543:   je     0x00007fbb2c63954a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
                    │││   0x00007fbb2c639545:   add    0xc(%r12,%r8,8),%eax
                    │↘│   0x00007fbb2c63954a:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
                    │ │   0x00007fbb2c63954d:   cmp    %ebp,%r11d
                    │ ╰   0x00007fbb2c639550:   jl     0x00007fbb2c639538
                    ↘  ↗  0x00007fbb2c639552:   add    $0x20,%rsp
                       │  0x00007fbb2c639556:   pop    %rbp
   0.00%               │  0x00007fbb2c639557:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       │  0x00007fbb2c63955e:   ja     0x00007fbb2c639580
                       │  0x00007fbb2c639564:   ret    
                       │  0x00007fbb2c639565:   xor    %eax,%eax
                       ╰  0x00007fbb2c639567:   jmp    0x00007fbb2c639552           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
                          0x00007fbb2c639569:   mov    $0xffffff76,%esi
                          0x00007fbb2c63956e:   mov    %r8,(%rsp)
                          0x00007fbb2c639572:   nop
                          0x00007fbb2c639573:   call   0x00007fbb2c0c9f00           ; ImmutableOopMap {[0]=Oop }
                                                                                    ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 579 
   1.29%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.66%  <...other 234 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 579 
   2.19%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::print 
   0.00%    perf-1944185.map  [unknown] 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%         c2, level 4
   2.19%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.03%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%    perf-1944185.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3262.774 us/op
# Warmup Iteration   2: 2150.348 us/op
# Warmup Iteration   3: 2121.885 us/op
# Warmup Iteration   4: 2126.921 us/op
# Warmup Iteration   5: 2114.250 us/op
Iteration   1: 2112.386 us/op
Iteration   2: 2109.827 us/op
Iteration   3: 2112.942 us/op
Iteration   4: 2114.251 us/op
Iteration   5: 2122.293 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  2114.340 ±(99.9%) 18.203 us/op [Average]
  (min, avg, max) = (2109.827, 2114.340, 2122.293), stdev = 4.727
  CI (99.9%): [2096.137, 2132.543] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 149393 total address lines.
Perf output processed (skipped 56.435 seconds):
 Column 1: cycles (51133 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 711 

               0x00007ffa8064a46d:   mov    0x8(%rdx),%r10d
               0x00007ffa8064a471:   cmp    $0x35bb40,%r10d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
               0x00007ffa8064a478:   jne    0x00007ffa8064adeb           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
               0x00007ffa8064a47e:   xchg   %ax,%ax
          ╭    0x00007ffa8064a480:   jmp    0x00007ffa8064a50b
          │    0x00007ffa8064a485:   data16 data16 nopw 0x0(%rax,%rax,1) ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.16%  │ ↗  0x00007ffa8064a490:   mov    %r11,0x1b8(%r15)
   1.37%  │ │  0x00007ffa8064a497:   prefetchw 0xc0(%r11)
   1.55%  │ │  0x00007ffa8064a49f:   movq   $0x1,(%r10)
   1.34%  │ │  0x00007ffa8064a4a6:   movl   $0x25c88,0x8(%r10)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.93%  │ │  0x00007ffa8064a4ae:   mov    %r12d,0xc(%r10)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b380::apply@17
          │ │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │ │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.32%  │ │  0x00007ffa8064a4b2:   mov    %ebp,0xc(%r10)               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.23%  │ │  0x00007ffa8064a4b6:   data16 nopw 0x0(%rax,%rax,1)
   1.09%  │ │  0x00007ffa8064a4c0:   cmpb   $0x0,0x40(%r15)
   0.89%  │ │  0x00007ffa8064a4c5:   jne    0x00007ffa8064a705
   1.25%  │ │  0x00007ffa8064a4cb:   mov    %r10,%r11
   1.25%  │ │  0x00007ffa8064a4ce:   shr    $0x3,%r10                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.27%  │ │  0x00007ffa8064a4d2:   mov    %r10d,0xc(%rbx)
   0.90%  │ │  0x00007ffa8064a4d6:   mov    %rbx,%r10                    ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │ │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.36%  │ │  0x00007ffa8064a4d9:   xor    %r10,%r11
   1.23%  │ │  0x00007ffa8064a4dc:   shr    $0x15,%r11
   1.30%  │ │  0x00007ffa8064a4e0:   test   %r11,%r11
          │╭│  0x00007ffa8064a4e3:   je     0x00007ffa8064a4ff
   0.78%  │││  0x00007ffa8064a4e5:   shr    $0x9,%r10
   1.16%  │││  0x00007ffa8064a4e9:   movabs $0x7ffa7433f000,%rdi
   1.03%  │││  0x00007ffa8064a4f3:   add    %r10,%rdi
   1.14%  │││  0x00007ffa8064a4f6:   cmpb   $0x2,(%rdi)
   0.75%  │││  0x00007ffa8064a4f9:   jne    0x00007ffa8064a73f
   1.29%  │↘│  0x00007ffa8064a4ff:   inc    %r13d
   1.18%  │ │  0x00007ffa8064a502:   cmp    %eax,%r13d
          │ │  0x00007ffa8064a505:   jge    0x00007ffa8064a8bc           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.26%  ↘ │  0x00007ffa8064a50b:   mov    0x10(%rdx),%r10d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.93%    │  0x00007ffa8064a50f:   mov    0x34(%r12,%r10,8),%r8d       ; implicit exception: dispatches to 0x00007ffa8064ba30
            │                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.25%    │  0x00007ffa8064a514:   mov    0x10(%r14,%r13,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
   1.70%    │  0x00007ffa8064a519:   nopl   0x0(%rax)
   1.28%    │  0x00007ffa8064a520:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007ffa8064ba44
   0.94%    │  0x00007ffa8064a525:   cmp    $0x102af00,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007ffa0402af00&apos;)}
            │  0x00007ffa8064a52c:   jne    0x00007ffa8064a8cf
   1.32%    │  0x00007ffa8064a532:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007ffa8064ba5c
   4.57%    │  0x00007ffa8064a537:   nopw   0x0(%rax,%rax,1)
   1.15%    │  0x00007ffa8064a540:   cmp    $0x102a908,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
            │  0x00007ffa8064a547:   jne    0x00007ffa8064b890           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.07%    │  0x00007ffa8064a54d:   mov    0xc(%rdx),%r8d               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.23%    │  0x00007ffa8064a551:   lea    (%r12,%r10,8),%r11           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402af00::test@1
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.19%    │  0x00007ffa8064a555:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007ffa8064ba80
   1.07%    │  0x00007ffa8064a55a:   nopw   0x0(%rax,%rax,1)
   1.19%    │  0x00007ffa8064a560:   cmp    $0x35b658,%r10d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
            │                                                            ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
            │  0x00007ffa8064a567:   jne    0x00007ffa8064a8f8
   1.31%    │  0x00007ffa8064a56d:   lea    (%r12,%r8,8),%r10            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.23%    │  0x00007ffa8064a571:   mov    0x10(%r10),%r9d              ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@5 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.04%    │  0x00007ffa8064a575:   mov    0x34(%r12,%r9,8),%r9d        ; implicit exception: dispatches to 0x00007ffa8064ba98
   1.14%    │  0x00007ffa8064a57a:   nopw   0x0(%rax,%rax,1)
   1.32%    │  0x00007ffa8064a580:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007ffa8064baac
            │                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.67%    │  0x00007ffa8064a585:   mov    0xc(%r10),%r10d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.08%    │  0x00007ffa8064a589:   cmp    $0x102b148,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007ffa0402b148&apos;)}
            │  0x00007ffa8064a590:   jne    0x00007ffa8064a797           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.46%    │  0x00007ffa8064a596:   mov    0xc(%r11),%r8d               ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$Wrapper::getX@1 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@4
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.22%    │  0x00007ffa8064a59a:   lea    0x80(%r8),%r11d
   0.91%    │  0x00007ffa8064a5a1:   cmp    $0x100,%r11d                 ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
            │  0x00007ffa8064a5a8:   jb     0x00007ffa8064a6c7
   1.28%    │  0x00007ffa8064a5ae:   mov    0x1b8(%r15),%r9
   1.26%    │  0x00007ffa8064a5b5:   mov    %r9,%r11
   1.19%    │  0x00007ffa8064a5b8:   add    $0x10,%r11
   0.93%    │  0x00007ffa8064a5bc:   nopl   0x0(%rax)
   1.19%    │  0x00007ffa8064a5c0:   cmp    0x1c8(%r15),%r11
            │  0x00007ffa8064a5c7:   jae    0x00007ffa8064a825           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.20%    │  0x00007ffa8064a5cd:   mov    %r11,0x1b8(%r15)
   1.26%    │  0x00007ffa8064a5d4:   prefetchw 0xc0(%r11)
   1.22%    │  0x00007ffa8064a5dc:   movq   $0x1,(%r9)
   1.27%    │  0x00007ffa8064a5e3:   movl   $0x25c88,0x8(%r9)            ;   {metadata(&apos;java/lang/Integer&apos;)}
   1.26%    │  0x00007ffa8064a5eb:   mov    %r12d,0xc(%r9)               ;*new {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.34%    │  0x00007ffa8064a5ef:   mov    %r8d,0xc(%r9)                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.93%    │  0x00007ffa8064a5f3:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007ffa8064bac4
   1.28%    │  0x00007ffa8064a5f8:   lea    (%r12,%r10,8),%rbx
   1.31%    │  0x00007ffa8064a5fc:   nopl   0x0(%rax)
   1.29%    │  0x00007ffa8064a600:   cmp    $0x1033b90,%ecx              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
            │                                                            ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
            │  0x00007ffa8064a606:   jne    0x00007ffa8064a7c4           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.94%    │  0x00007ffa8064a60c:   mov    0xc(%rbx),%r10d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.26%    │  0x00007ffa8064a610:   mov    0x14(%rbx),%r11d             ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.31%    │  0x00007ffa8064a614:   mov    0x8(%r12,%r11,8),%esi        ; implicit exception: dispatches to 0x00007ffa8064badc
   1.25%    │  0x00007ffa8064a619:   nopl   0x0(%rax)
   0.89%    │  0x00007ffa8064a620:   cmp    $0x102b380,%esi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007ffa0402b380&apos;)}
            │  0x00007ffa8064a626:   jne    0x00007ffa8064a920
   1.30%    │  0x00007ffa8064a62c:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007ffa8064baf8
   1.28%    │  0x00007ffa8064a631:   cmp    $0x25c88,%ecx                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
            │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
            │  0x00007ffa8064a637:   jne    0x00007ffa8064b988
   1.25%    │  0x00007ffa8064a63d:   shl    $0x3,%r10                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b380::apply@1
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.84%    │  0x00007ffa8064a641:   mov    0xc(%r10),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Integer::intValue@1 (line 1143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b380::apply@4
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.30%    │  0x00007ffa8064a645:   add    %r8d,%ebp
   1.23%    │  0x00007ffa8064a648:   lea    0x80(%rbp),%r11d
   1.16%    │  0x00007ffa8064a64f:   cmp    $0x100,%r11d                 ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
            │  0x00007ffa8064a656:   jb     0x00007ffa8064a6e5
   0.86%    │  0x00007ffa8064a65c:   mov    0x1b8(%r15),%r10
   1.47%    │  0x00007ffa8064a663:   mov    %r10,%r11
   1.19%    │  0x00007ffa8064a666:   add    $0x10,%r11                   ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.26%    │  0x00007ffa8064a66a:   cmp    0x1c8(%r15),%r11
            ╰  0x00007ffa8064a671:   jb     0x00007ffa8064a490
               0x00007ffa8064a677:   mov    %rbx,0x18(%rsp)
               0x00007ffa8064a67c:   mov    %rdx,0x10(%rsp)
   0.00%       0x00007ffa8064a681:   mov    %r14,0x8(%rsp)
               0x00007ffa8064a686:   mov    %r13d,0x4(%rsp)
               0x00007ffa8064a68b:   mov    %eax,(%rsp)
               0x00007ffa8064a68e:   movabs $0x7ffa03025c88,%rsi         ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007ffa0402b148::apply@7
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
                                                                         ;   {metadata(&apos;java/lang/Integer&apos;)}
               0x00007ffa8064a698:   data16 xchg %ax,%ax
               0x00007ffa8064a69b:   call   0x00007ffa80192280           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [44]=NarrowOop }
                                                                         ;*new {reexecute=0 rethrow=0 return_oop=1}
....................................................................................................
  96.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.31%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 711 
   0.60%              kernel  [unknown] 
   0.10%           libjvm.so  G1CardSet::is_empty 
   0.09%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.05%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.04%           libjvm.so  G1CardTable::is_in_young 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  HeapRegionClaimer::claim_region 
   2.10%  <...other 529 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.33%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 4, compile id 711 
   1.72%              kernel  [unknown] 
   0.17%                      <unknown> 
   0.11%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%           libjvm.so  G1CardSet::is_empty 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  G1CardTable::is_in_young 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.04%           libjvm.so  OptoRuntime::new_instance_C 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.97%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.33%         c2, level 4
   1.72%              kernel
   1.35%           libjvm.so
   0.18%        libc-2.31.so
   0.17%                    
   0.08%  libpthread-2.31.so
   0.06%         interpreter
   0.04%          ld-2.31.so
   0.04%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%    perf-1944247.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3467.283 us/op
# Warmup Iteration   2: 2875.580 us/op
# Warmup Iteration   3: 2847.797 us/op
# Warmup Iteration   4: 2844.554 us/op
# Warmup Iteration   5: 2841.215 us/op
Iteration   1: 2841.946 us/op
Iteration   2: 2841.076 us/op
Iteration   3: 2842.539 us/op
Iteration   4: 2843.415 us/op
Iteration   5: 2844.753 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  2842.746 ±(99.9%) 5.428 us/op [Average]
  (min, avg, max) = (2841.076, 2842.746, 2844.753), stdev = 1.410
  CI (99.9%): [2837.318, 2848.173] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.stream_filter_npe:asm":
PrintAssembly processed: 149854 total address lines.
Perf output processed (skipped 56.485 seconds):
 Column 1: cycles (50621 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 682 

                0x00007fa7ac6462c0:   cmp    $0x35bb40,%ecx               ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
                0x00007fa7ac6462c6:   jne    0x00007fa7ac646d07
                0x00007fa7ac6462cc:   mov    %r13,%rcx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
          ╭     0x00007fa7ac6462cf:   jmp    0x00007fa7ac64636d
          │     0x00007fa7ac6462d4:   nopl   0x0(%rax,%rax,1)
          │     0x00007fa7ac6462dc:   data16 data16 xchg %ax,%ax          ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │                                                               ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.25%  │  ↗  0x00007fa7ac6462e0:   mov    %r10,0x1b8(%r15)
   0.89%  │  │  0x00007fa7ac6462e7:   prefetchw 0xc0(%r10)
   0.56%  │  │  0x00007fa7ac6462ef:   movq   $0x1,(%r11)
   0.43%  │  │  0x00007fa7ac6462f6:   movl   $0x25c88,0x8(%r11)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.21%  │  │  0x00007fa7ac6462fe:   mov    %r12d,0xc(%r11)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b380::apply@17
          │  │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          │  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │  │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │  │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.84%  │  │  0x00007fa7ac646302:   mov    %ebp,0xc(%r11)               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │  │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.43%  │  │  0x00007fa7ac646306:   cmpb   $0x0,0x40(%r15)
   0.45%  │  │  0x00007fa7ac64630b:   jne    0x00007fa7ac646615
   0.18%  │  │  0x00007fa7ac646311:   mov    %r11,%r10
   0.82%  │  │  0x00007fa7ac646314:   mov    %r11,%r8
   0.37%  │  │  0x00007fa7ac646317:   shr    $0x3,%r8                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
          │  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │  │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.45%  │  │  0x00007fa7ac64631b:   mov    %r8d,0xc(%rbx)
   0.22%  │  │  0x00007fa7ac64631f:   mov    %rbx,%r11                    ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
          │  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │  │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │  │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.84%  │  │  0x00007fa7ac646322:   xor    %r11,%r10
   0.40%  │  │  0x00007fa7ac646325:   shr    $0x15,%r10
   0.46%  │  │  0x00007fa7ac646329:   test   %r10,%r10
          │╭ │  0x00007fa7ac64632c:   je     0x00007fa7ac646349
   0.15%  ││ │  0x00007fa7ac64632e:   shr    $0x9,%r11
   0.67%  ││ │  0x00007fa7ac646332:   movabs $0x7fa7bcc8d000,%rdi
   0.30%  ││ │  0x00007fa7ac64633c:   add    %r11,%rdi
   0.37%  ││ │  0x00007fa7ac64633f:   nop
   0.12%  ││ │  0x00007fa7ac646340:   cmpb   $0x2,(%rdi)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
          ││ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.69%  ││ │  0x00007fa7ac646343:   jne    0x00007fa7ac646650           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││ │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.38%  │↘ │  0x00007fa7ac646349:   mov    0x20(%rsp),%r14d
   0.56%  │  │  0x00007fa7ac64634e:   mov    0xc(%rsp),%r8d
   0.27%  │  │  0x00007fa7ac646353:   mov    0x8(%rsp),%r9d
   0.72%  │  │  0x00007fa7ac646358:   mov    (%rsp),%r11
   0.31%  │  │  0x00007fa7ac64635c:   mov    0x10(%rsp),%rcx
   2.43%  │ ↗│  0x00007fa7ac646361:   inc    %r9d
   5.56%  │ ││  0x00007fa7ac646364:   cmp    %r8d,%r9d
          │ ││  0x00007fa7ac646367:   jge    0x00007fa7ac6466c5           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
          │ ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │ ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   2.85%  ↘ ││  0x00007fa7ac64636d:   mov    0x10(%rcx),%ebx              ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
            ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   2.77%    ││  0x00007fa7ac646370:   mov    0x34(%r12,%rbx,8),%r10d      ; implicit exception: dispatches to 0x00007fa7ac6479e0
            ││                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
            ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   5.28%    ││  0x00007fa7ac646375:   mov    0x10(%r11,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 1024)
   0.84%    ││  0x00007fa7ac64637a:   nopw   0x0(%rax,%rax,1)
   0.81%    ││  0x00007fa7ac646380:   mov    0x8(%r12,%r10,8),%edi        ; implicit exception: dispatches to 0x00007fa7ac6479f4
   7.51%    ││  0x00007fa7ac646385:   cmp    $0x102af00,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007fa73402af00&apos;)}
            ││  0x00007fa7ac64638b:   jne    0x00007fa7ac646717
   2.39%    ││  0x00007fa7ac646391:   test   %ebx,%ebx
            ╰│  0x00007fa7ac646393:   je     0x00007fa7ac646361           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.41%     │  0x00007fa7ac646395:   mov    0x8(%r12,%rbx,8),%edx        ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402af00::test@1
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
  10.74%     │  0x00007fa7ac64639a:   nopw   0x0(%rax,%rax,1)
   0.10%     │  0x00007fa7ac6463a0:   cmp    $0x102a908,%edx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
             │  0x00007fa7ac6463a6:   jne    0x00007fa7ac6477c4           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.57%     │  0x00007fa7ac6463ac:   mov    0xc(%rcx),%r10d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.08%     │  0x00007fa7ac6463b0:   mov    0x8(%r12,%r10,8),%edi        ; implicit exception: dispatches to 0x00007fa7ac647a08
   2.66%     │  0x00007fa7ac6463b5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.13%     │  0x00007fa7ac6463c0:   cmp    $0x35b658,%edi               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │                                                            ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
             │  0x00007fa7ac6463c6:   jne    0x00007fa7ac646748
   1.50%     │  0x00007fa7ac6463cc:   lea    (%r12,%r10,8),%rsi           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.10%     │  0x00007fa7ac6463d0:   mov    0x10(%rsi),%edi              ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@5 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.11%     │  0x00007fa7ac6463d3:   mov    0x34(%r12,%rdi,8),%r10d      ; implicit exception: dispatches to 0x00007fa7ac647a1c
   3.63%     │  0x00007fa7ac6463d8:   nopl   0x0(%rax,%rax,1)
   0.63%     │  0x00007fa7ac6463e0:   mov    0x8(%r12,%r10,8),%edi        ; implicit exception: dispatches to 0x00007fa7ac647a30
   6.44%     │  0x00007fa7ac6463e5:   mov    %rcx,0x10(%rsp)
   0.07%     │  0x00007fa7ac6463ea:   mov    %r11,(%rsp)
   0.08%     │  0x00007fa7ac6463ee:   mov    %r9d,0x8(%rsp)
   0.18%     │  0x00007fa7ac6463f3:   mov    %r8d,0xc(%rsp)
   1.55%     │  0x00007fa7ac6463f8:   mov    %r14d,0x20(%rsp)             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.06%     │  0x00007fa7ac6463fd:   mov    0xc(%rsi),%r11d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%     │  0x00007fa7ac646401:   mov    %r11d,0x18(%rsp)
   0.19%     │  0x00007fa7ac646406:   lea    (%r12,%rbx,8),%rsi
   1.47%     │  0x00007fa7ac64640a:   cmp    $0x102b148,%edi              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007fa73402b148&apos;)}
             │  0x00007fa7ac646410:   jne    0x00007fa7ac646595           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@1
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%     │  0x00007fa7ac646416:   mov    0xc(%rsi),%ebp               ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$Wrapper::getX@1 (line 143)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@4
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%     │  0x00007fa7ac646419:   lea    0x80(%rbp),%r10d
   0.17%     │  0x00007fa7ac646420:   cmp    $0x100,%r10d                 ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │  0x00007fa7ac646427:   jb     0x00007fa7ac646559
   1.48%     │  0x00007fa7ac64642d:   mov    0x1b8(%r15),%rax
   0.10%     │  0x00007fa7ac646434:   mov    %rax,%r10
   0.07%     │  0x00007fa7ac646437:   add    $0x10,%r10
   0.21%     │  0x00007fa7ac64643b:   nopl   0x0(%rax,%rax,1)
   1.52%     │  0x00007fa7ac646440:   cmp    0x1c8(%r15),%r10
             │  0x00007fa7ac646447:   jae    0x00007fa7ac6466a5           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.09%     │  0x00007fa7ac64644d:   mov    %r10,0x1b8(%r15)
   0.09%     │  0x00007fa7ac646454:   prefetchw 0xc0(%r10)
   0.34%     │  0x00007fa7ac64645c:   movq   $0x1,(%rax)
   1.51%     │  0x00007fa7ac646463:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.08%     │  0x00007fa7ac64646a:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%     │  0x00007fa7ac64646e:   mov    %ebp,0xc(%rax)               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.17%     │  0x00007fa7ac646471:   mov    %rax,%rcx                    ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   1.57%     │  0x00007fa7ac646474:   mov    0x18(%rsp),%r8d
   0.12%     │  0x00007fa7ac646479:   nopl   0x0(%rax)
   0.08%     │  0x00007fa7ac646480:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007fa7ac647a44
   0.29%     │  0x00007fa7ac646485:   lea    (%r12,%r8,8),%rbx
   1.39%     │  0x00007fa7ac646489:   cmp    $0x1033b90,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │                                                            ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
             │  0x00007fa7ac646490:   jne    0x00007fa7ac6465d0           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.07%     │  0x00007fa7ac646496:   mov    0xc(%rbx),%r10d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.18%     │  0x00007fa7ac64649a:   mov    0x14(%rbx),%r8d              ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.21%     │  0x00007fa7ac64649e:   xchg   %ax,%ax
   1.53%     │  0x00007fa7ac6464a0:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007fa7ac647a5c
   1.46%     │  0x00007fa7ac6464a5:   cmp    $0x102b380,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark$$Lambda+0x00007fa73402b380&apos;)}
             │  0x00007fa7ac6464ac:   jne    0x00007fa7ac646774
   0.75%     │  0x00007fa7ac6464b2:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fa7ac647a78
   0.35%     │  0x00007fa7ac6464b7:   nopw   0x0(%rax,%rax,1)
   0.81%     │  0x00007fa7ac6464c0:   cmp    $0x25c88,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
             │  0x00007fa7ac6464c7:   jne    0x00007fa7ac647850
   0.72%     │  0x00007fa7ac6464cd:   shl    $0x3,%r10                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b380::apply@1
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.17%     │  0x00007fa7ac6464d1:   mov    0xc(%r10),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.Integer::intValue@1 (line 1143)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b380::apply@4
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.21%     │  0x00007fa7ac6464d5:   mov    0x8(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fa7ac647abc
   0.97%     │  0x00007fa7ac6464d9:   nopl   0x0(%rax)
   0.76%     │  0x00007fa7ac6464e0:   cmp    $0x25c88,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
             │  0x00007fa7ac6464e7:   jne    0x00007fa7ac647930           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b380::apply@8
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.11%     │  0x00007fa7ac6464ed:   add    0xc(%rcx),%ebp
   0.27%     │  0x00007fa7ac6464f0:   lea    0x80(%rbp),%r10d
   1.19%     │  0x00007fa7ac6464f7:   nopw   0x0(%rax,%rax,1)
   0.38%     │  0x00007fa7ac646500:   cmp    $0x100,%r10d                 ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
             │  0x00007fa7ac646507:   jb     0x00007fa7ac646577
   0.43%     │  0x00007fa7ac64650d:   mov    0x1b8(%r15),%r11
   0.24%     │  0x00007fa7ac646514:   mov    %r11,%r10
   0.82%     │  0x00007fa7ac646517:   add    $0x10,%r10                   ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
             │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
   0.36%     │  0x00007fa7ac64651b:   nopl   0x0(%rax,%rax,1)
   0.42%     │  0x00007fa7ac646520:   cmp    0x1c8(%r15),%r10
             ╰  0x00007fa7ac646527:   jb     0x00007fa7ac6462e0
                0x00007fa7ac64652d:   mov    %rbx,0x18(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark$$Lambda/0x00007fa73402b148::apply@7
                                                                          ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 1024)
                0x00007fa7ac646532:   movabs $0x7fa733025c88,%rsi         ;   {metadata(&apos;java/lang/Integer&apos;)}
                0x00007fa7ac64653c:   data16 xchg %ax,%ax
                0x00007fa7ac64653f:   call   0x00007fa7ac195e80           ; ImmutableOopMap {[0]=Oop [16]=Oop [24]=Oop [32]=NarrowOop }
                                                                          ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                                          ; - java.lang.Integer::valueOf@23 (line 1070)
....................................................................................................
  97.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.48%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 682 
   0.19%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::is_empty 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1CardTable::is_in_young 
   0.02%          ld-2.31.so  __tls_get_addr 
   1.61%  <...other 451 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.50%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 682 
   1.56%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1CardSet::is_empty 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%           libjvm.so  G1MonotonicArena::num_segments 
   0.01%           libjvm.so  ObjAllocator::initialize 
   0.01%           libjvm.so  OptoRuntime::new_instance_C 
   0.01%           libjvm.so  FreeListAllocator::reset 
   0.01%      hsdis-amd64.so  print_insn 
   0.50%  <...other 149 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.51%         c2, level 4
   1.56%              kernel
   0.63%           libjvm.so
   0.09%                    
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%    perf-1944311.map
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 230.446 us/op
# Warmup Iteration   2: 233.275 us/op
# Warmup Iteration   3: 233.279 us/op
# Warmup Iteration   4: 229.193 us/op
# Warmup Iteration   5: 228.461 us/op
Iteration   1: 228.589 us/op
Iteration   2: 229.233 us/op
Iteration   3: 229.201 us/op
Iteration   4: 229.231 us/op
Iteration   5: 229.212 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  229.093 ±(99.9%) 1.086 us/op [Average]
  (min, avg, max) = (228.589, 229.093, 229.233), stdev = 0.282
  CI (99.9%): [228.007, 230.180] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 126623 total address lines.
Perf output processed (skipped 56.293 seconds):
 Column 1: cycles (50960 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 582 

                     0x00007fb8c863ad2d:   mov    $0xffffffff80000000,%r11
                     0x00007fb8c863ad34:   cmp    $0xffffffff80000000,%r8
                     0x00007fb8c863ad3b:   cmovl  %r11,%r8
                     0x00007fb8c863ad3f:   mov    %r8d,%r8d
                     0x00007fb8c863ad42:   mov    $0x1,%r11d
                     0x00007fb8c863ad48:   cmp    $0x1,%r8d
                     0x00007fb8c863ad4c:   jle    0x00007fb8c863ae1c
                     0x00007fb8c863ad52:   mov    $0xfa0,%edx
          ╭          0x00007fb8c863ad57:   jmp    0x00007fb8c863adcc
          │          0x00007fb8c863ad5c:   nopl   0x0(%rax)
   0.94%  │    ↗     0x00007fb8c863ad60:   mov    %r9d,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
   2.81%  │    │↗    0x00007fb8c863ad63:   mov    0x10(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   6.72%  │    ││    0x00007fb8c863ad68:   mov    %r10d,%r9d
   0.35%  │╭   ││    0x00007fb8c863ad6b:   add    0xc(%r12,%rdi,8),%r9d        ; implicit exception: dispatches to 0x00007fb8c863adf2
          ││   ││                                                              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
   5.09%  ││   ││    0x00007fb8c863ad70:   mov    0x14(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   2.53%  ││   ││    0x00007fb8c863ad75:   test   %edi,%edi
          ││╭  ││    0x00007fb8c863ad77:   je     0x00007fb8c863aded           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   5.08%  │││  ││    0x00007fb8c863ad7d:   add    0xc(%r12,%rdi,8),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
   6.58%  │││  ││    0x00007fb8c863ad82:   mov    0x18(%rbx,%r11,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.73%  │││  ││    0x00007fb8c863ad87:   test   %r10d,%r10d
          │││╭ ││    0x00007fb8c863ad8a:   je     0x00007fb8c863adf7           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   2.35%  ││││ ││    0x00007fb8c863ad90:   add    0xc(%r12,%r10,8),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  35.82%  ││││ ││    0x00007fb8c863ad95:   mov    0x1c(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.51%  ││││ ││    0x00007fb8c863ad9a:   test   %edi,%edi
   0.49%  ││││ ││    0x00007fb8c863ad9c:   nopl   0x0(%rax)
   1.53%  ││││╭││    0x00007fb8c863ada0:   je     0x00007fb8c863ade9           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   8.61%  │││││││    0x00007fb8c863ada6:   add    0xc(%r12,%rdi,8),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  16.92%  │││││││    0x00007fb8c863adab:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
   0.35%  │││││││    0x00007fb8c863adaf:   cmp    %esi,%r11d
          │││││╰│    0x00007fb8c863adb2:   jl     0x00007fb8c863ad60           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          │││││ │                                                              ;   {no_reloc}
   0.00%  │││││ │    0x00007fb8c863adb4:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rcx=Oop rbx=Oop }
          │││││ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
   0.01%  │││││ │    0x00007fb8c863adbb:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          │││││ │                                                              ;   {poll}
   0.03%  │││││ │    0x00007fb8c863adbd:   data16 xchg %ax,%ax
          │││││ │    0x00007fb8c863adc0:   cmp    %r8d,%r11d
          │││││ │    0x00007fb8c863adc3:   jge    0x00007fb8c863ae1f
          │││││ │    0x00007fb8c863adc9:   mov    %r9d,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
   0.00%  ↘││││ │    0x00007fb8c863adcc:   mov    %r8d,%esi
   0.01%   ││││ │    0x00007fb8c863adcf:   sub    %r11d,%esi
   0.00%   ││││ │    0x00007fb8c863add2:   cmp    %r11d,%r8d
   0.00%   ││││ │    0x00007fb8c863add5:   cmovl  %eax,%esi
           ││││ │    0x00007fb8c863add8:   cmp    $0xfa0,%esi
   0.01%   ││││ │    0x00007fb8c863adde:   cmova  %edx,%esi
   0.00%   ││││ │    0x00007fb8c863ade1:   add    %r11d,%esi
           ││││ ╰    0x00007fb8c863ade4:   jmp    0x00007fb8c863ad63
           │││↘      0x00007fb8c863ade9:   add    $0x2,%r11d
           │↘│       0x00007fb8c863aded:   inc    %r11d
           │ │   ╭   0x00007fb8c863adf0:   jmp    0x00007fb8c863adfb
           ↘ │   │   0x00007fb8c863adf2:   mov    %r10d,%r9d
             │   │╭  0x00007fb8c863adf5:   jmp    0x00007fb8c863adfb
             ↘   ││  0x00007fb8c863adf7:   add    $0x2,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
                 ↘↘  0x00007fb8c863adfb:   mov    $0xfffffff6,%esi
                     0x00007fb8c863ae00:   mov    %r11d,(%rsp)
....................................................................................................
  97.50%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 582 
   1.17%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 582 
   0.81%  <...other 259 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 582 
   2.15%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 618 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.54%         c2, level 4
   2.15%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-1944375.map
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2810.964 us/op
# Warmup Iteration   2: 2612.283 us/op
# Warmup Iteration   3: 2612.755 us/op
# Warmup Iteration   4: 2612.627 us/op
# Warmup Iteration   5: 2613.501 us/op
Iteration   1: 2613.161 us/op
Iteration   2: 2612.756 us/op
Iteration   3: 2612.629 us/op
Iteration   4: 2613.102 us/op
Iteration   5: 2613.185 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch":
  2612.967 ±(99.9%) 0.985 us/op [Average]
  (min, avg, max) = (2612.629, 2612.967, 2613.185), stdev = 0.256
  CI (99.9%): [2611.981, 2613.952] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch:asm":
PrintAssembly processed: 128702 total address lines.
Perf output processed (skipped 56.302 seconds):
 Column 1: cycles (50911 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 577 

                   0x00007f14a463aa6a:   xor    %r14d,%r14d
                   0x00007f14a463aa6d:   xor    %ebx,%ebx
          ╭        0x00007f14a463aa6f:   jmp    0x00007f14a463aabe
          │  ↗     0x00007f14a463aa74:   cmpb   $0x0,0x40(%r15)
          │  │     0x00007f14a463aa79:   jne    0x00007f14a463ab64
          │  │     0x00007f14a463aa7f:   movabs $0x7ffc01020,%r10            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffc01020})}
          │  │     0x00007f14a463aa89:   mov    %r12d,0x14(%r10)
          │╭ │     0x00007f14a463aa8d:   jmp    0x00007f14a463aafe
          ││ │     0x00007f14a463aa92:   data16 nopw 0x0(%rax,%rax,1)
          ││ │     0x00007f14a463aa9c:   data16 data16 xchg %ax,%ax
   8.40%  ││ │ ↗   0x00007f14a463aaa0:   add    0xc(%r12,%r10,8),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  17.88%  ││ │ │↗  0x00007f14a463aaa5:   mov    0x458(%r15),%r10
   0.00%  ││ │ ││  0x00007f14a463aaac:   mov    0x10(%rbp),%r8d
   2.74%  ││ │ ││  0x00007f14a463aab0:   inc    %ebx                         ; ImmutableOopMap {rbp=Oop }
          ││ │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
   0.04%  ││ │ ││  0x00007f14a463aab2:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          ││ │ ││                                                            ;   {poll}
   7.50%  ││ │ ││  0x00007f14a463aab5:   cmp    %r8d,%ebx
          ││╭│ ││  0x00007f14a463aab8:   jge    0x00007f14a463ab2d           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
   0.26%  ↘│││ ││  0x00007f14a463aabe:   mov    0x1c(%rbp),%r11d             ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@14 (line 88)
   0.24%   │││ ││  0x00007f14a463aac2:   test   %r11d,%r11d
           ││╰ ││  0x00007f14a463aac5:   je     0x00007f14a463aa74
   0.35%   ││  ││  0x00007f14a463aac7:   mov    0xc(%r12,%r11,8),%r8d
   7.63%   ││  ││  0x00007f14a463aacc:   cmp    %r8d,%ebx
           ││ ╭││  0x00007f14a463aacf:   jae    0x00007f14a463ab43
   2.35%   ││ │││  0x00007f14a463aad5:   lea    (%r12,%r11,8),%r10
   0.25%   ││ │││  0x00007f14a463aad9:   mov    0x10(%r10,%rbx,4),%r10d
   1.15%   ││ │││  0x00007f14a463aade:   xchg   %ax,%ax
   1.15%   ││ │││  0x00007f14a463aae0:   test   %r10d,%r10d
           ││ │╰│  0x00007f14a463aae3:   jne    0x00007f14a463aaa0           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  10.30%   ││ │ │  0x00007f14a463aae5:   cmpb   $0x0,0x40(%r15)
  11.55%   ││ │ │  0x00007f14a463aaea:   jne    0x00007f14a463aba5
   1.00%   ││ │ │  0x00007f14a463aaf0:   movabs $0x7ffc01020,%r10            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffc01020})}
   0.23%   ││ │ │  0x00007f14a463aafa:   mov    %r12d,0x14(%r10)             ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   1.45%   ↘│ │ │  0x00007f14a463aafe:   mov    %ebx,0x4(%rsp)
   0.39%    │ │ │  0x00007f14a463ab02:   mov    %r14d,(%rsp)                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@24 (line 91)
   1.94%    │ │ │  0x00007f14a463ab06:   mov    %rbp,%rsi
   0.22%    │ │ │  0x00007f14a463ab09:   movabs $0x7ffc01020,%rdx            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffc01020})}
   0.41%    │ │ │  0x00007f14a463ab13:   call   0x00007f14a40c4380           ; ImmutableOopMap {rbp=Oop }
            │ │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@30 (line 90)
            │ │ │                                                            ;   {optimized virtual_call}
   2.18%    │ │ │  0x00007f14a463ab18:   nopl   0x1000288(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@30 (line 90)
            │ │ │                                                            ;   {other}
   0.37%    │ │ │  0x00007f14a463ab20:   mov    (%rsp),%r14d
   7.95%    │ │ │  0x00007f14a463ab24:   mov    0x4(%rsp),%ebx
   0.07%    │ │ ╰  0x00007f14a463ab28:   jmp    0x00007f14a463aaa5
   0.00%    ↘ │    0x00007f14a463ab2d:   mov    %r14d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
              │    0x00007f14a463ab30:   add    $0x30,%rsp
              │    0x00007f14a463ab34:   pop    %rbp
              │    0x00007f14a463ab35:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              │    0x00007f14a463ab3c:   ja     0x00007f14a463ac39
              │    0x00007f14a463ab42:   ret    
              ↘    0x00007f14a463ab43:   mov    $0xffffffe4,%esi
                   0x00007f14a463ab48:   mov    %r14d,0x8(%rsp)
                   0x00007f14a463ab4d:   mov    %r11d,0xc(%rsp)
                   0x00007f14a463ab52:   mov    %ebx,0x10(%rsp)
....................................................................................................
  88.00%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 577 
   9.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::sink, version 2, compile id 570 
   0.68%              kernel  [unknown] 
   0.47%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 577 
   9.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark::sink, version 2, compile id 570 
   2.09%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%    perf-1944437.map  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         interpreter  fast_aload_0  220 fast_aload_0  
   0.00%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%         c2, level 4
   2.09%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%    perf-1944437.map
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:30

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

Benchmark                                            (nullThreshold)  (size)  Mode  Cnt     Score    Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                    0  262144  avgt    5   228.212 ±  3.486  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm                0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_not_npe_do_statement                   16  262144  avgt    5  1250.347 ±  1.223  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:asm               16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                            0  262144  avgt    5   228.932 ±  0.127  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                        0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                           16  262144  avgt    5  1249.901 ±  1.076  us/op
NpeControlFlowBenchmark.if_npe_continue:asm                       16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                          0  262144  avgt    5  2114.340 ± 18.203  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                      0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                         16  262144  avgt    5  2842.746 ±  5.428  us/op
NpeControlFlowBenchmark.stream_filter_npe:asm                     16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                              0  262144  avgt    5   229.093 ±  1.086  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                          0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                             16  262144  avgt    5  2612.967 ±  0.985  us/op
NpeControlFlowBenchmark.try_npe_catch:asm                         16  262144  avgt            NaN             ---
