# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.929 us/op
# Warmup Iteration   2: 235.097 us/op
# Warmup Iteration   3: 234.794 us/op
# Warmup Iteration   4: 229.841 us/op
# Warmup Iteration   5: 229.930 us/op
Iteration   1: 230.204 us/op
Iteration   2: 229.629 us/op
Iteration   3: 230.203 us/op
Iteration   4: 234.689 us/op
Iteration   5: 234.857 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  231.917 ±(99.9%) 10.084 us/op [Average]
  (min, avg, max) = (229.629, 231.917, 234.857), stdev = 2.619
  CI (99.9%): [221.832, 242.001] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 118056 total address lines.
Perf output processed (skipped 55.672 seconds):
 Column 1: cycles (50547 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 478 

                   0x00007f6b98f646aa:   cmp    $0x1,%edx
                   0x00007f6b98f646ad:   jle    0x00007f6b98f64778
                   0x00007f6b98f646b3:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          ╭        0x00007f6b98f646b9:   jmp    0x00007f6b98f6472b
          │        0x00007f6b98f646be:   xchg   %ax,%ax
          │    ↗   0x00007f6b98f646c0:   mov    %r11d,%r10d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
          │    │↗  0x00007f6b98f646c3:   mov    0x10(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
  10.71%  │    ││  0x00007f6b98f646c8:   mov    %r10d,%r11d
          │╭   ││  0x00007f6b98f646cb:   add    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f6b98f6474a
          ││   ││                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  16.09%  ││   ││  0x00007f6b98f646d0:   mov    0x14(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.00%  ││   ││  0x00007f6b98f646d5:   test   %r9d,%r9d
          ││╭  ││  0x00007f6b98f646d8:   je     0x00007f6b98f6474f           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.40%  │││  ││  0x00007f6b98f646de:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  11.20%  │││  ││  0x00007f6b98f646e3:   mov    0x18(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.01%  │││  ││  0x00007f6b98f646e8:   test   %r9d,%r9d
          │││╭ ││  0x00007f6b98f646eb:   je     0x00007f6b98f64753           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
          ││││ ││  0x00007f6b98f646f1:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  14.99%  ││││ ││  0x00007f6b98f646f6:   mov    0x1c(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.35%  ││││ ││  0x00007f6b98f646fb:   nopl   0x0(%rax,%rax,1)
          ││││ ││  0x00007f6b98f64700:   test   %r9d,%r9d
          ││││╭││  0x00007f6b98f64703:   je     0x00007f6b98f64758           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   0.04%  │││││││  0x00007f6b98f64709:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  40.62%  │││││││  0x00007f6b98f6470e:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.00%  │││││││  0x00007f6b98f64711:   cmp    %r13d,%ebx
          │││││╰│  0x00007f6b98f64714:   jl     0x00007f6b98f646c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │││││ │  0x00007f6b98f64716:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rcx=Oop rdi=Oop }
          │││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │││││ │  0x00007f6b98f6471d:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │││││ │                                                            ;   {poll}
   0.02%  │││││ │  0x00007f6b98f64720:   cmp    %edx,%ebx
          │││││ │  0x00007f6b98f64722:   jge    0x00007f6b98f6477b
          │││││ │  0x00007f6b98f64728:   mov    %r11d,%r10d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
          ↘││││ │  0x00007f6b98f6472b:   mov    %edx,%r13d
           ││││ │  0x00007f6b98f6472e:   sub    %ebx,%r13d
   0.01%   ││││ │  0x00007f6b98f64731:   cmp    %ebx,%edx
           ││││ │  0x00007f6b98f64733:   cmovl  %eax,%r13d
           ││││ │  0x00007f6b98f64737:   cmp    $0xfa0,%r13d
           ││││ │  0x00007f6b98f6473e:   cmova  %r8d,%r13d
   0.01%   ││││ │  0x00007f6b98f64742:   add    %ebx,%r13d
           ││││ ╰  0x00007f6b98f64745:   jmp    0x00007f6b98f646c3
           ↘│││    0x00007f6b98f6474a:   mov    %r10d,%r11d
            │││    0x00007f6b98f6474d:   jmp    0x00007f6b98f6475b
            ↘││    0x00007f6b98f6474f:   inc    %ebx
             ││    0x00007f6b98f64751:   jmp    0x00007f6b98f6475b
             ↘│    0x00007f6b98f64753:   add    $0x2,%ebx
              │    0x00007f6b98f64756:   jmp    0x00007f6b98f6475b
              ↘    0x00007f6b98f64758:   add    $0x3,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
                   0x00007f6b98f6475b:   mov    $0xffffff45,%esi
....................................................................................................
  98.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 478 
   0.29%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.75%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 478 
   1.20%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%      hsdis-amd64.so  hsdis_read_memory_func 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  _nl_parse_alt_digit 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_not_npe_do_statement_jmhTest::if_not_npe_do_statement_avgt_jmhStub, version 4, compile id 513 
   0.00%           libjvm.so  G1ServiceThread::sleep_before_next_cycle 
   0.00%        libc-2.31.so  _int_realloc 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.47%         c2, level 4
   1.20%              kernel
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%      perf-23237.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:12:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1251.622 us/op
# Warmup Iteration   2: 1248.118 us/op
# Warmup Iteration   3: 1247.958 us/op
# Warmup Iteration   4: 1248.063 us/op
# Warmup Iteration   5: 1248.325 us/op
Iteration   1: 1248.886 us/op
Iteration   2: 1247.983 us/op
Iteration   3: 1247.801 us/op
Iteration   4: 1247.572 us/op
Iteration   5: 1247.632 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1247.975 ±(99.9%) 2.057 us/op [Average]
  (min, avg, max) = (1247.572, 1247.975, 1248.886), stdev = 0.534
  CI (99.9%): [1245.917, 1250.032] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 117546 total address lines.
Perf output processed (skipped 55.722 seconds):
 Column 1: cycles (50603 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 497 

                      0x00007fecc4f668a4:   mov    $0x80000000,%r8d
                      0x00007fecc4f668aa:   cmp    %r9d,%ebp
                      0x00007fecc4f668ad:   cmovl  %r8d,%r9d
                      0x00007fecc4f668b1:   mov    $0x1,%r10d
                      0x00007fecc4f668b7:   cmp    $0x1,%r9d
                      0x00007fecc4f668bb:   nopl   0x0(%rax,%rax,1)
          ╭           0x00007fecc4f668c0:   jle    0x00007fecc4f6694f
          │           0x00007fecc4f668c6:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          │╭          0x00007fecc4f668cc:   jmp    0x00007fecc4f66934
   4.49%  ││    ↗     0x00007fecc4f668d1:   add    0xc(%r12,%rsi,8),%eax
  13.87%  ││    │↗    0x00007fecc4f668d6:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.02%  ││    ││    0x00007fecc4f668da:   nopw   0x0(%rax,%rax,1)
   0.05%  ││    ││    0x00007fecc4f668e0:   cmp    %edx,%r10d
          ││╭   ││    0x00007fecc4f668e3:   jge    0x00007fecc4f66926           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
   0.47%  │││   ││ ↗  0x00007fecc4f668e9:   mov    0x10(%rbx,%r10,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   3.48%  │││   ││ │  0x00007fecc4f668ee:   test   %edi,%edi
          │││╭  ││ │  0x00007fecc4f668f0:   je     0x00007fecc4f668f7           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.25%  ││││  ││ │  0x00007fecc4f668f2:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  14.63%  │││↘  ││ │  0x00007fecc4f668f7:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   5.02%  │││   ││ │  0x00007fecc4f668fc:   nopl   0x0(%rax)
   0.04%  │││   ││ │  0x00007fecc4f66900:   test   %esi,%esi
          │││ ╭ ││ │  0x00007fecc4f66902:   je     0x00007fecc4f66909           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.50%  │││ │ ││ │  0x00007fecc4f66904:   add    0xc(%r12,%rsi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  13.68%  │││ ↘ ││ │  0x00007fecc4f66909:   mov    0x18(%rbx,%r10,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   5.40%  │││   ││ │  0x00007fecc4f6690e:   test   %edi,%edi
          │││  ╭││ │  0x00007fecc4f66910:   je     0x00007fecc4f66917           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.25%  │││  │││ │  0x00007fecc4f66912:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
  13.72%  │││  ↘││ │  0x00007fecc4f66917:   mov    0x1c(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   5.44%  │││   ││ │  0x00007fecc4f6691c:   nopl   0x0(%rax)
   0.21%  │││   ││ │  0x00007fecc4f66920:   test   %esi,%esi
          │││   ╰│ │  0x00007fecc4f66922:   jne    0x00007fecc4f668d1           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   4.74%  │││    ╰ │  0x00007fecc4f66924:   jmp    0x00007fecc4f668d6
   0.01%  ││↘      │  0x00007fecc4f66926:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {r11=Oop rbx=Oop }
          ││       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
   0.02%  ││       │  0x00007fecc4f6692d:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@36 (line 100)
          ││       │                                                            ;   {poll}
   0.03%  ││       │  0x00007fecc4f6692f:   cmp    %r9d,%r10d
          ││      ╭│  0x00007fecc4f66932:   jge    0x00007fecc4f6694f
          │↘      ││  0x00007fecc4f66934:   mov    %r9d,%edx
          │       ││  0x00007fecc4f66937:   sub    %r10d,%edx
          │       ││  0x00007fecc4f6693a:   cmp    %r10d,%r9d
   0.00%  │       ││  0x00007fecc4f6693d:   cmovl  %ecx,%edx
          │       ││  0x00007fecc4f66940:   cmp    $0xfa0,%edx
          │       ││  0x00007fecc4f66946:   cmova  %r8d,%edx
          │       ││  0x00007fecc4f6694a:   add    %r10d,%edx
          │       │╰  0x00007fecc4f6694d:   jmp    0x00007fecc4f668e9
          ↘       ↘   0x00007fecc4f6694f:   cmp    %ebp,%r10d
                      0x00007fecc4f66952:   jge    0x00007fecc4f6696b           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@12 (line 101)
                      0x00007fecc4f66954:   mov    0x10(%rbx,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
                      0x00007fecc4f66959:   test   %r8d,%r8d
....................................................................................................
  98.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 497 
   0.26%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 497 
   1.31%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  SuspendibleThreadSet::join 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  _int_realloc 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.32%         c2, level 4
   1.31%              kernel
   0.17%           libjvm.so
   0.07%        libc-2.31.so
   0.05%         interpreter
   0.04%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%      perf-23295.map
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:10:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.938 us/op
# Warmup Iteration   2: 228.607 us/op
# Warmup Iteration   3: 229.752 us/op
# Warmup Iteration   4: 234.897 us/op
# Warmup Iteration   5: 235.000 us/op
Iteration   1: 230.294 us/op
Iteration   2: 235.078 us/op
Iteration   3: 234.695 us/op
Iteration   4: 234.714 us/op
Iteration   5: 234.602 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  233.877 ±(99.9%) 7.744 us/op [Average]
  (min, avg, max) = (230.294, 233.877, 235.078), stdev = 2.011
  CI (99.9%): [226.133, 241.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 116324 total address lines.
Perf output processed (skipped 55.606 seconds):
 Column 1: cycles (50367 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 477 

                   0x00007efe74f669aa:   cmp    $0x1,%edx
                   0x00007efe74f669ad:   jle    0x00007efe74f66a78
                   0x00007efe74f669b3:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          ╭        0x00007efe74f669b9:   jmp    0x00007efe74f66a2b
          │        0x00007efe74f669be:   xchg   %ax,%ax
          │    ↗   0x00007efe74f669c0:   mov    %r11d,%r10d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
          │    │↗  0x00007efe74f669c3:   mov    0x10(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
  10.69%  │    ││  0x00007efe74f669c8:   mov    %r10d,%r11d
          │╭   ││  0x00007efe74f669cb:   add    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007efe74f66a4a
          ││   ││                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  15.31%  ││   ││  0x00007efe74f669d0:   mov    0x14(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.01%  ││   ││  0x00007efe74f669d5:   test   %r9d,%r9d
          ││╭  ││  0x00007efe74f669d8:   je     0x00007efe74f66a4f           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.71%  │││  ││  0x00007efe74f669de:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  11.34%  │││  ││  0x00007efe74f669e3:   mov    0x18(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.00%  │││  ││  0x00007efe74f669e8:   test   %r9d,%r9d
          │││╭ ││  0x00007efe74f669eb:   je     0x00007efe74f66a53           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
          ││││ ││  0x00007efe74f669f1:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  14.98%  ││││ ││  0x00007efe74f669f6:   mov    0x1c(%rdi,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.37%  ││││ ││  0x00007efe74f669fb:   nopl   0x0(%rax,%rax,1)
          ││││ ││  0x00007efe74f66a00:   test   %r9d,%r9d
          ││││╭││  0x00007efe74f66a03:   je     0x00007efe74f66a58           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   0.05%  │││││││  0x00007efe74f66a09:   add    0xc(%r12,%r9,8),%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  41.23%  │││││││  0x00007efe74f66a0e:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.00%  │││││││  0x00007efe74f66a11:   cmp    %r13d,%ebx
          │││││╰│  0x00007efe74f66a14:   jl     0x00007efe74f669c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
          │││││ │  0x00007efe74f66a16:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rcx=Oop rdi=Oop }
          │││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
   0.00%  │││││ │  0x00007efe74f66a1d:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          │││││ │                                                            ;   {poll}
   0.03%  │││││ │  0x00007efe74f66a20:   cmp    %edx,%ebx
          │││││ │  0x00007efe74f66a22:   jge    0x00007efe74f66a7b
          │││││ │  0x00007efe74f66a28:   mov    %r11d,%r10d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
          ↘││││ │  0x00007efe74f66a2b:   mov    %edx,%r13d
           ││││ │  0x00007efe74f66a2e:   sub    %ebx,%r13d
   0.01%   ││││ │  0x00007efe74f66a31:   cmp    %ebx,%edx
           ││││ │  0x00007efe74f66a33:   cmovl  %eax,%r13d
           ││││ │  0x00007efe74f66a37:   cmp    $0xfa0,%r13d
           ││││ │  0x00007efe74f66a3e:   cmova  %r8d,%r13d
   0.01%   ││││ │  0x00007efe74f66a42:   add    %ebx,%r13d
           ││││ ╰  0x00007efe74f66a45:   jmp    0x00007efe74f669c3
           ↘│││    0x00007efe74f66a4a:   mov    %r10d,%r11d
            │││    0x00007efe74f66a4d:   jmp    0x00007efe74f66a5b
            ↘││    0x00007efe74f66a4f:   inc    %ebx
             ││    0x00007efe74f66a51:   jmp    0x00007efe74f66a5b
             ↘│    0x00007efe74f66a53:   add    $0x2,%ebx
              │    0x00007efe74f66a56:   jmp    0x00007efe74f66a5b
              ↘    0x00007efe74f66a58:   add    $0x3,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
                   0x00007efe74f66a5b:   mov    $0xffffff45,%esi
....................................................................................................
  98.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 477 
   0.16%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 477 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 513 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 477 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.65%  <...other 220 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 477 
   0.91%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 513 
   0.01%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  os::current_thread_id 
   0.00%           libjvm.so  defaultStream::write 
   0.10%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.82%         c2, level 4
   0.91%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1251.548 us/op
# Warmup Iteration   2: 1247.298 us/op
# Warmup Iteration   3: 1247.550 us/op
# Warmup Iteration   4: 1247.492 us/op
# Warmup Iteration   5: 1247.459 us/op
Iteration   1: 1247.208 us/op
Iteration   2: 1247.280 us/op
Iteration   3: 1247.162 us/op
Iteration   4: 1246.541 us/op
Iteration   5: 1246.678 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1246.974 ±(99.9%) 1.304 us/op [Average]
  (min, avg, max) = (1246.541, 1246.974, 1247.280), stdev = 0.339
  CI (99.9%): [1245.670, 1248.277] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 114113 total address lines.
Perf output processed (skipped 55.540 seconds):
 Column 1: cycles (50646 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 471 

                   0x00007f4b50f63d24:   mov    $0x80000000,%r8d
                   0x00007f4b50f63d2a:   cmp    %r9d,%ebp
                   0x00007f4b50f63d2d:   cmovl  %r8d,%r9d
                   0x00007f4b50f63d31:   mov    $0x1,%r10d
                   0x00007f4b50f63d37:   cmp    $0x1,%r9d
                   0x00007f4b50f63d3b:   nopl   0x0(%rax,%rax,1)
                   0x00007f4b50f63d40:   jle    0x00007f4b50f63dcf
                   0x00007f4b50f63d46:   mov    $0xfa0,%r8d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          ╭        0x00007f4b50f63d4c:   jmp    0x00007f4b50f63db4
   4.24%  │    ↗   0x00007f4b50f63d51:   add    0xc(%r12,%rsi,8),%eax
  13.63%  │    │↗  0x00007f4b50f63d56:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.02%  │    ││  0x00007f4b50f63d5a:   nopw   0x0(%rax,%rax,1)
   0.05%  │    ││  0x00007f4b50f63d60:   cmp    %edx,%r10d
          │╭   ││  0x00007f4b50f63d63:   jge    0x00007f4b50f63da6           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@12 (line 113)
   0.43%  ││   ││  0x00007f4b50f63d69:   mov    0x10(%rbx,%r10,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   3.48%  ││   ││  0x00007f4b50f63d6e:   test   %edi,%edi
          ││╭  ││  0x00007f4b50f63d70:   je     0x00007f4b50f63d77           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.63%  │││  ││  0x00007f4b50f63d72:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  14.64%  ││↘  ││  0x00007f4b50f63d77:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   5.08%  ││   ││  0x00007f4b50f63d7c:   nopl   0x0(%rax)
   0.03%  ││   ││  0x00007f4b50f63d80:   test   %esi,%esi
          ││ ╭ ││  0x00007f4b50f63d82:   je     0x00007f4b50f63d89           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.50%  ││ │ ││  0x00007f4b50f63d84:   add    0xc(%r12,%rsi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  13.78%  ││ ↘ ││  0x00007f4b50f63d89:   mov    0x18(%rbx,%r10,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   5.32%  ││   ││  0x00007f4b50f63d8e:   test   %edi,%edi
          ││  ╭││  0x00007f4b50f63d90:   je     0x00007f4b50f63d97           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.20%  ││  │││  0x00007f4b50f63d92:   add    0xc(%r12,%rdi,8),%eax        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
  13.72%  ││  ↘││  0x00007f4b50f63d97:   mov    0x1c(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   5.55%  ││   ││  0x00007f4b50f63d9c:   nopl   0x0(%rax)
   0.18%  ││   ││  0x00007f4b50f63da0:   test   %esi,%esi
          ││   ╰│  0x00007f4b50f63da2:   jne    0x00007f4b50f63d51           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   4.70%  ││    ╰  0x00007f4b50f63da4:   jmp    0x00007f4b50f63d56
   0.02%  │↘       0x00007f4b50f63da6:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {r11=Oop rbx=Oop }
          │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
   0.04%  │        0x00007f4b50f63dad:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@39 (line 112)
          │                                                                  ;   {poll}
   0.02%  │        0x00007f4b50f63daf:   cmp    %r9d,%r10d
          │        0x00007f4b50f63db2:   jge    0x00007f4b50f63dcf
          ↘        0x00007f4b50f63db4:   mov    %r9d,%edx
                   0x00007f4b50f63db7:   sub    %r10d,%edx
                   0x00007f4b50f63dba:   cmp    %r10d,%r9d
                   0x00007f4b50f63dbd:   cmovl  %ecx,%edx
                   0x00007f4b50f63dc0:   cmp    $0xfa0,%edx
                   0x00007f4b50f63dc6:   cmova  %r8d,%edx
                   0x00007f4b50f63dca:   add    %r10d,%edx
....................................................................................................
  98.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 471 
   0.49%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 471 
   1.39%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%           libjvm.so  CodeHeap::find_blob_unsafe 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.26%         c2, level 4
   1.39%              kernel
   0.14%           libjvm.so
   0.08%                    
   0.06%        libc-2.31.so
   0.03%         interpreter
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%      perf-23407.map
   0.00%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3194.399 us/op
# Warmup Iteration   2: 2325.668 us/op
# Warmup Iteration   3: 2301.705 us/op
# Warmup Iteration   4: 2295.198 us/op
# Warmup Iteration   5: 2295.566 us/op
Iteration   1: 2295.029 us/op
Iteration   2: 2293.064 us/op
Iteration   3: 2294.131 us/op
Iteration   4: 2297.581 us/op
Iteration   5: 2297.330 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  2295.427 ±(99.9%) 7.625 us/op [Average]
  (min, avg, max) = (2293.064, 2295.427, 2297.581), stdev = 1.980
  CI (99.9%): [2287.802, 2303.052] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 137695 total address lines.
Perf output processed (skipped 55.900 seconds):
 Column 1: cycles (50711 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 599 

              0x00007ff86cf74535:   pop    %rbp
              0x00007ff86cf74536:   cmp    0x340(%r15),%rsp             ;   {poll_return}
              0x00007ff86cf7453d:   ja     0x00007ff86cf75c63           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
              0x00007ff86cf74543:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 990)
              0x00007ff86cf74544:   nopl   0x0(%rax,%rax,1)
              0x00007ff86cf7454c:   data16 data16 xchg %ax,%ax
   0.58%   ↗  0x00007ff86cf74550:   mov    %r9,0x108(%r15)
   1.89%   │  0x00007ff86cf74557:   prefetchw 0xc0(%r9)
   0.70%   │  0x00007ff86cf7455f:   movq   $0x1,(%rdx)
   1.62%   │  0x00007ff86cf74566:   movl   $0x49778,0x8(%rdx)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.47%   │  0x00007ff86cf7456d:   mov    %r12d,0xc(%rdx)              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   1.83%   │  0x00007ff86cf74571:   mov    %ebp,0xc(%rdx)
   0.45%   │  0x00007ff86cf74574:   cmpb   $0x0,0x38(%r15)
   1.62%   │  0x00007ff86cf74579:   jne    0x00007ff86cf747e8
   0.49%   │  0x00007ff86cf7457f:   mov    %rdx,%rcx
   1.83%   │  0x00007ff86cf74582:   mov    %rdx,%r9
   0.43%   │  0x00007ff86cf74585:   shr    $0x3,%r9                     ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.67%   │  0x00007ff86cf74589:   mov    %r9d,0xc(%rbx)
   0.37%   │  0x00007ff86cf7458d:   mov    %rbx,%r9                     ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.80%   │  0x00007ff86cf74590:   xor    %r9,%rcx
   0.46%   │  0x00007ff86cf74593:   shr    $0x15,%rcx
   1.61%   │  0x00007ff86cf74597:   test   %rcx,%rcx
          ╭│  0x00007ff86cf7459a:   je     0x00007ff86cf745b6
   0.30%  ││  0x00007ff86cf7459c:   shr    $0x9,%r9
   1.66%  ││  0x00007ff86cf745a0:   movabs $0x7ff87d9e6000,%rdi
   0.31%  ││  0x00007ff86cf745aa:   add    %r9,%rdi
   1.57%  ││  0x00007ff86cf745ad:   cmpb   $0x4,(%rdi)
   0.33%  ││  0x00007ff86cf745b0:   jne    0x00007ff86cf7481f
   1.70%  ↘│  0x00007ff86cf745b6:   inc    %r10d
   0.50%   │  0x00007ff86cf745b9:   cmp    %r8d,%r10d
   1.59%   │  0x00007ff86cf745bc:   nopl   0x0(%rax)
   0.42%   │  0x00007ff86cf745c0:   jge    0x00007ff86cf74531
   1.71%   │  0x00007ff86cf745c6:   mov    0x10(%r11),%ecx
   0.63%   │  0x00007ff86cf745ca:   mov    0x34(%r12,%rcx,8),%ecx       ; implicit exception: dispatches to 0x00007ff86cf758e0
           │                                                            ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.62%   │  0x00007ff86cf745cf:   mov    0x10(%rsi,%r10,4),%edi       ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.82%   │  0x00007ff86cf745d4:   mov    0x8(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007ff86cf758ec
   1.74%   │  0x00007ff86cf745d9:   nopl   0x0(%rax)
   0.55%   │  0x00007ff86cf745e0:   cmp    $0xc26fe8,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$42+0x0000000800c26fe8&apos;)}
           │  0x00007ff86cf745e7:   jne    0x00007ff86cf74998
   1.72%   │  0x00007ff86cf745ed:   mov    0x8(%r12,%rdi,8),%r9d        ; implicit exception: dispatches to 0x00007ff86cf758f8
   3.05%   │  0x00007ff86cf745f2:   data16 nopw 0x0(%rax,%rax,1)
   1.67%   │  0x00007ff86cf745fc:   data16 data16 xchg %ax,%ax
   0.52%   │  0x00007ff86cf74600:   cmp    $0xc269d8,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
           │  0x00007ff86cf74607:   jne    0x00007ff86cf7570d           ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.61%   │  0x00007ff86cf7460d:   mov    0xc(%r11),%ecx               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.44%   │  0x00007ff86cf74611:   lea    (%r12,%rdi,8),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$44/0x0000000800c27478::apply@8
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.66%   │  0x00007ff86cf74615:   mov    0x8(%r12,%rcx,8),%ebx        ; implicit exception: dispatches to 0x00007ff86cf7591c
   0.55%   │  0x00007ff86cf7461a:   nopw   0x0(%rax,%rax,1)
   1.68%   │  0x00007ff86cf74620:   cmp    $0x2402b0,%ebx               ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
           │  0x00007ff86cf74626:   jne    0x00007ff86cf749c0
   0.42%   │  0x00007ff86cf7462c:   shl    $0x3,%rcx
   1.67%   │  0x00007ff86cf74630:   mov    0x10(%rcx),%r9d
   0.58%   │  0x00007ff86cf74634:   mov    0x34(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007ff86cf7592c
   1.78%   │  0x00007ff86cf74639:   nopl   0x0(%rax)
   0.42%   │  0x00007ff86cf74640:   mov    0x8(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007ff86cf75938
           │                                                            ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.98%   │  0x00007ff86cf74645:   mov    0xc(%rcx),%r9d               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.39%   │  0x00007ff86cf74649:   cmp    $0xc27238,%edi               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$43+0x0000000800c27238&apos;)}
           │  0x00007ff86cf7464f:   jne    0x00007ff86cf748e5           ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.91%   │  0x00007ff86cf74655:   mov    0xc(%rdx),%ebp               ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$44/0x0000000800c27478::apply@8
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.49%   │  0x00007ff86cf74658:   mov    %ebp,%ebx
   1.71%   │  0x00007ff86cf7465a:   add    $0x80,%ebx
   0.49%   │  0x00007ff86cf74660:   cmp    $0x100,%ebx
           │  0x00007ff86cf74666:   jb     0x00007ff86cf747aa
   1.85%   │  0x00007ff86cf7466c:   mov    0x108(%r15),%rcx
   0.43%   │  0x00007ff86cf74673:   mov    %rcx,%rbx
   1.55%   │  0x00007ff86cf74676:   add    $0x10,%rbx
   0.48%   │  0x00007ff86cf7467a:   nopw   0x0(%rax,%rax,1)
   1.86%   │  0x00007ff86cf74680:   cmp    0x118(%r15),%rbx             ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
           │  0x00007ff86cf74687:   jae    0x00007ff86cf74885
   0.49%   │  0x00007ff86cf7468d:   mov    %rbx,0x108(%r15)
   1.64%   │  0x00007ff86cf74694:   prefetchw 0xc0(%rbx)
   0.66%   │  0x00007ff86cf7469b:   movq   $0x1,(%rcx)
   1.80%   │  0x00007ff86cf746a2:   movl   $0x49778,0x8(%rcx)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.37%   │  0x00007ff86cf746a9:   mov    %r12d,0xc(%rcx)              ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   1.67%   │  0x00007ff86cf746ad:   mov    %ebp,0xc(%rcx)
   0.42%   │  0x00007ff86cf746b0:   mov    0x8(%r12,%r9,8),%edi         ; implicit exception: dispatches to 0x00007ff86cf75948
   1.91%   │  0x00007ff86cf746b5:   lea    (%r12,%r9,8),%rbx
   0.44%   │  0x00007ff86cf746b9:   nopl   0x0(%rax)
   1.58%   │  0x00007ff86cf746c0:   cmp    $0xc38ac0,%edi               ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
           │                                                            ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
           │  0x00007ff86cf746c6:   jne    0x00007ff86cf74945           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.47%   │  0x00007ff86cf746cc:   mov    0xc(%rbx),%r9d               ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.84%   │  0x00007ff86cf746d0:   mov    0x14(%rbx),%edi              ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.43%   │  0x00007ff86cf746d3:   mov    0x8(%r12,%rdi,8),%eax        ; implicit exception: dispatches to 0x00007ff86cf75958
   1.60%   │  0x00007ff86cf746d8:   nopl   0x0(%rax,%rax,1)
   0.42%   │  0x00007ff86cf746e0:   cmp    $0xc27478,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$44+0x0000000800c27478&apos;)}
           │  0x00007ff86cf746e6:   jne    0x00007ff86cf749e4
   1.72%   │  0x00007ff86cf746ec:   mov    0x8(%r12,%r9,8),%edi         ; implicit exception: dispatches to 0x00007ff86cf7596c
   0.40%   │  0x00007ff86cf746f1:   cmp    $0x49778,%edi                ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
           │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
           │  0x00007ff86cf746f7:   jne    0x00007ff86cf757a0
   1.56%   │  0x00007ff86cf746fd:   shl    $0x3,%r9
   0.51%   │  0x00007ff86cf74701:   mov    0xc(%r9),%ebp                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$44/0x0000000800c27478::apply@17
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.89%   │  0x00007ff86cf74705:   mov    0x8(%rcx),%edi               ; implicit exception: dispatches to 0x00007ff86cf75994
   0.55%   │  0x00007ff86cf74708:   cmp    $0x49778,%edi                ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
           │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
           │  0x00007ff86cf7470e:   jne    0x00007ff86cf75848           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   1.73%   │  0x00007ff86cf74714:   add    0xc(%rcx),%ebp
   0.54%   │  0x00007ff86cf74717:   mov    %ebp,%r9d
   1.84%   │  0x00007ff86cf7471a:   add    $0x80,%r9d
   0.48%   │  0x00007ff86cf74721:   cmp    $0x100,%r9d
           │  0x00007ff86cf74728:   jb     0x00007ff86cf747c7
   1.66%   │  0x00007ff86cf7472e:   mov    0x108(%r15),%rdx
   0.49%   │  0x00007ff86cf74735:   mov    %rdx,%r9
   1.74%   │  0x00007ff86cf74738:   add    $0x10,%r9
   0.43%   │  0x00007ff86cf7473c:   nopl   0x0(%rax)
   1.72%   │  0x00007ff86cf74740:   cmp    0x118(%r15),%r9
           ╰  0x00007ff86cf74747:   jb     0x00007ff86cf74550
              0x00007ff86cf7474d:   mov    %rbx,0x28(%rsp)
   0.00%      0x00007ff86cf74752:   mov    %r11,0x20(%rsp)
              0x00007ff86cf74757:   mov    %rsi,0x18(%rsp)
              0x00007ff86cf7475c:   mov    %r10d,0x10(%rsp)
              0x00007ff86cf74761:   mov    %r8d,0xc(%rsp)
              0x00007ff86cf74766:   mov    %r13d,0x8(%rsp)
              0x00007ff86cf7476b:   mov    %r14,(%rsp)                  ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
              0x00007ff86cf7476f:   movabs $0x800049778,%rsi            ;   {metadata(&apos;java/lang/Integer&apos;)}
              0x00007ff86cf74779:   xchg   %ax,%ax
....................................................................................................
  97.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.21%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 599 
   0.28%              kernel  [unknown] 
   0.08%           libjvm.so  HeapRegionManager::par_iterate 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardTable::is_in_young 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%              kernel  [unknown] 
   1.74%  <...other 462 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.22%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 599 
   1.20%              kernel  [unknown] 
   0.21%                      <unknown> 
   0.08%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1CardTable::is_in_young 
   0.04%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.03%           libjvm.so  MemAllocator::allocate 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  ObjAllocator::initialize 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  OptoRuntime::new_instance_C 
   0.02%           libjvm.so  SpinPause 
   0.02%           libjvm.so  CollectedHeap::fill_with_dummy_object 
   0.78%  <...other 167 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.26%         c2, level 4
   1.20%              kernel
   1.11%           libjvm.so
   0.21%                    
   0.07%        libc-2.31.so
   0.03%         interpreter
   0.03%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.03%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%      perf-23460.map
   0.00%         c1, level 3
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3551.650 us/op
# Warmup Iteration   2: 2597.190 us/op
# Warmup Iteration   3: 2578.353 us/op
# Warmup Iteration   4: 2577.326 us/op
# Warmup Iteration   5: 2577.121 us/op
Iteration   1: 2577.136 us/op
Iteration   2: 2577.660 us/op
Iteration   3: 2577.608 us/op
Iteration   4: 2578.566 us/op
Iteration   5: 2576.344 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  2577.463 ±(99.9%) 3.125 us/op [Average]
  (min, avg, max) = (2576.344, 2577.463, 2578.566), stdev = 0.812
  CI (99.9%): [2574.338, 2580.588] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 136629 total address lines.
Perf output processed (skipped 55.795 seconds):
 Column 1: cycles (50963 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 594 

              0x00007fdaa8f72d7f:   ja     0x00007fdaa8f7440b           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
              0x00007fdaa8f72d85:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 990)
              0x00007fdaa8f72d86:   data16 nopw 0x0(%rax,%rax,1)        ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.85%      0x00007fdaa8f72d90:   mov    %r8,0x108(%r15)
   0.14%      0x00007fdaa8f72d97:   prefetchw 0xc0(%r8)
   0.25%      0x00007fdaa8f72d9f:   movq   $0x1,(%rdx)
   0.07%      0x00007fdaa8f72da6:   movl   $0x49778,0x8(%rdx)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   1.89%      0x00007fdaa8f72dad:   mov    %r12d,0xc(%rdx)              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   0.14%      0x00007fdaa8f72db1:   mov    %ebp,0xc(%rdx)               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.08%      0x00007fdaa8f72db4:   cmpb   $0x0,0x38(%r15)
   0.10%      0x00007fdaa8f72db9:   jne    0x00007fdaa8f73029
   1.74%      0x00007fdaa8f72dbf:   mov    %rdx,%r9
   0.12%      0x00007fdaa8f72dc2:   mov    %rdx,%r8
   0.06%      0x00007fdaa8f72dc5:   shr    $0x3,%r8                     ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.08%      0x00007fdaa8f72dc9:   mov    %r8d,0xc(%rbx)
   1.72%      0x00007fdaa8f72dcd:   mov    %rbx,%r8                     ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.13%      0x00007fdaa8f72dd0:   xor    %r8,%r9
   0.06%      0x00007fdaa8f72dd3:   shr    $0x15,%r9
   0.07%      0x00007fdaa8f72dd7:   test   %r9,%r9
          ╭   0x00007fdaa8f72dda:   je     0x00007fdaa8f72df6
   1.29%  │   0x00007fdaa8f72ddc:   shr    $0x9,%r8
   0.13%  │   0x00007fdaa8f72de0:   movabs $0x7fdab925d000,%rdi
   0.04%  │   0x00007fdaa8f72dea:   add    %r8,%rdi
   0.06%  │   0x00007fdaa8f72ded:   cmpb   $0x4,(%rdi)
   1.41%  │   0x00007fdaa8f72df0:   jne    0x00007fdaa8f73065
   2.35%  ↘↗  0x00007fdaa8f72df6:   inc    %r10d
   8.88%   │  0x00007fdaa8f72df9:   cmp    %ecx,%r10d
   0.22%   │  0x00007fdaa8f72dfc:   nopl   0x0(%rax)
   1.72%   │  0x00007fdaa8f72e00:   jge    0x00007fdaa8f72d73           ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.87%   │  0x00007fdaa8f72e06:   mov    0x10(%r11),%r9d              ;*synchronization entry
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@-1 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   2.36%   │  0x00007fdaa8f72e0a:   mov    0x34(%r12,%r9,8),%r9d        ; implicit exception: dispatches to 0x00007fdaa8f740dc
           │                                                            ;*synchronization entry
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   5.24%   │  0x00007fdaa8f72e0f:   mov    0x10(%rsi,%r10,4),%eax       ;*invokevirtual intValue {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$44/0x0000000800c27478::apply@11
           │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   2.09%   │  0x00007fdaa8f72e14:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007fdaa8f740e8
   6.15%   │  0x00007fdaa8f72e19:   nopl   0x0(%rax)
   0.23%   │  0x00007fdaa8f72e20:   cmp    $0xc26fe8,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$42+0x0000000800c26fe8&apos;)}
           │  0x00007fdaa8f72e27:   jne    0x00007fdaa8f731e5
   1.40%   │  0x00007fdaa8f72e2d:   test   %eax,%eax
           ╰  0x00007fdaa8f72e2f:   je     0x00007fdaa8f72df6
   1.73%      0x00007fdaa8f72e31:   mov    0x8(%r12,%rax,8),%r9d
  11.63%      0x00007fdaa8f72e36:   data16 nopw 0x0(%rax,%rax,1)
   0.10%      0x00007fdaa8f72e40:   cmp    $0xc269d8,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
              0x00007fdaa8f72e47:   jne    0x00007fdaa8f73f30           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.38%      0x00007fdaa8f72e4d:   mov    0xc(%r11),%r8d               ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.63%      0x00007fdaa8f72e51:   mov    0x8(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007fdaa8f740f4
   3.18%      0x00007fdaa8f72e56:   data16 nopw 0x0(%rax,%rax,1)
   0.06%      0x00007fdaa8f72e60:   cmp    $0x2402b0,%ebx               ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
              0x00007fdaa8f72e66:   jne    0x00007fdaa8f7320c
   1.41%      0x00007fdaa8f72e6c:   shl    $0x3,%r8
   0.34%      0x00007fdaa8f72e70:   mov    0x10(%r8),%ebx
   0.21%      0x00007fdaa8f72e74:   mov    0x34(%r12,%rbx,8),%r9d       ; implicit exception: dispatches to 0x00007fdaa8f74100
   4.24%      0x00007fdaa8f72e79:   nopl   0x0(%rax)
   0.22%      0x00007fdaa8f72e80:   mov    0x8(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fdaa8f7410c
                                                                        ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   7.68%      0x00007fdaa8f72e85:   mov    0xc(%r8),%edx                ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.05%      0x00007fdaa8f72e89:   cmp    $0xc27238,%ebx               ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
                                                                        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$43+0x0000000800c27238&apos;)}
              0x00007fdaa8f72e8f:   jne    0x00007fdaa8f730d7
   1.88%      0x00007fdaa8f72e95:   lea    (%r12,%rax,8),%r8
   0.10%      0x00007fdaa8f72e99:   mov    0xc(%r8),%ebp                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$44/0x0000000800c27478::apply@8
                                                                        ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.06%      0x00007fdaa8f72e9d:   mov    %ebp,%r8d
   0.06%      0x00007fdaa8f72ea0:   add    $0x80,%r8d
   1.93%      0x00007fdaa8f72ea7:   cmp    $0x100,%r8d
              0x00007fdaa8f72eae:   jae    0x00007fdaa8f72ecb
              0x00007fdaa8f72eb0:   movslq %ebp,%r8
              0x00007fdaa8f72eb3:   movabs $0x7ffe7b1d8,%r9             ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffe7b1d8})}
              0x00007fdaa8f72ebd:   mov    0x210(%r9,%r8,4),%r9d        ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
              0x00007fdaa8f72ec5:   shl    $0x3,%r9
              0x00007fdaa8f72ec9:   jmp    0x00007fdaa8f72f13
   0.11%      0x00007fdaa8f72ecb:   mov    0x108(%r15),%r9
....................................................................................................
  79.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 594 

   1.93%       0x00007fdaa8f72ea7:   cmp    $0x100,%r8d
          ╭    0x00007fdaa8f72eae:   jae    0x00007fdaa8f72ecb
          │    0x00007fdaa8f72eb0:   movslq %ebp,%r8
          │    0x00007fdaa8f72eb3:   movabs $0x7ffe7b1d8,%r9             ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffe7b1d8})}
          │    0x00007fdaa8f72ebd:   mov    0x210(%r9,%r8,4),%r9d        ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
          │                                                              ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          │    0x00007fdaa8f72ec5:   shl    $0x3,%r9
          │╭   0x00007fdaa8f72ec9:   jmp    0x00007fdaa8f72f13
   0.11%  ↘│   0x00007fdaa8f72ecb:   mov    0x108(%r15),%r9
   0.04%   │   0x00007fdaa8f72ed2:   mov    %r9,%r8
   0.06%   │   0x00007fdaa8f72ed5:   add    $0x10,%r8                    ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.85%   │   0x00007fdaa8f72ed9:   nopl   0x0(%rax)
   0.09%   │   0x00007fdaa8f72ee0:   cmp    0x118(%r15),%r8              ;*synchronization entry
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
           │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
           │   0x00007fdaa8f72ee7:   jae    0x00007fdaa8f73187           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
           │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.05%   │   0x00007fdaa8f72eed:   mov    %r8,0x108(%r15)
   0.06%   │   0x00007fdaa8f72ef4:   prefetchw 0xc0(%r8)
   2.04%   │   0x00007fdaa8f72efc:   movq   $0x1,(%r9)
   0.11%   │   0x00007fdaa8f72f03:   movl   $0x49778,0x8(%r9)            ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.05%   │   0x00007fdaa8f72f0b:   mov    %r12d,0xc(%r9)               ;*invokestatic lambda$stream_filter_npe$0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$42/0x0000000800c26fe8::test@4
           │                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   0.04%   │   0x00007fdaa8f72f0f:   mov    %ebp,0xc(%r9)
   1.95%   ↘   0x00007fdaa8f72f13:   mov    0x8(%r12,%rdx,8),%eax        ; implicit exception: dispatches to 0x00007fdaa8f74118
   0.11%       0x00007fdaa8f72f18:   lea    (%r12,%rdx,8),%rbx
   0.03%       0x00007fdaa8f72f1c:   nopl   0x0(%rax)
   0.05%       0x00007fdaa8f72f20:   cmp    $0xc38ac0,%eax               ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
                                                                         ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
               0x00007fdaa8f72f26:   jne    0x00007fdaa8f73136
   1.74%       0x00007fdaa8f72f2c:   mov    0xc(%rbx),%r8d
   0.14%       0x00007fdaa8f72f30:   mov    0x14(%rbx),%edx              ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.14%       0x00007fdaa8f72f33:   mov    0x8(%r12,%rdx,8),%eax        ; implicit exception: dispatches to 0x00007fdaa8f74128
   0.15%       0x00007fdaa8f72f38:   nopl   0x0(%rax,%rax,1)
   1.88%       0x00007fdaa8f72f40:   cmp    $0xc27478,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$44+0x0000000800c27478&apos;)}
               0x00007fdaa8f72f46:   jne    0x00007fdaa8f73230
   0.18%       0x00007fdaa8f72f4c:   mov    0x8(%r12,%r8,8),%eax         ; implicit exception: dispatches to 0x00007fdaa8f7413c
   0.08%       0x00007fdaa8f72f51:   cmp    $0x49778,%eax                ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
                                                                         ;   {metadata(&apos;java/lang/Integer&apos;)}
               0x00007fdaa8f72f57:   jne    0x00007fdaa8f73fa0
   0.05%       0x00007fdaa8f72f5d:   shl    $0x3,%r8                     ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   1.72%       0x00007fdaa8f72f61:   mov    0xc(%r8),%ebp                ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.16%       0x00007fdaa8f72f65:   mov    0x8(%r9),%eax                ; implicit exception: dispatches to 0x00007fdaa8f74160
   0.05%       0x00007fdaa8f72f69:   cmp    $0x49778,%eax                ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
                                                                         ;   {metadata(&apos;java/lang/Integer&apos;)}
               0x00007fdaa8f72f6f:   jne    0x00007fdaa8f74044           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::lambda$stream_filter_npe$0@1 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$42/0x0000000800c26fe8::test@4
                                                                         ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@-1 (line 988)
   0.07%       0x00007fdaa8f72f75:   add    0xc(%r9),%ebp
   1.85%       0x00007fdaa8f72f79:   mov    %ebp,%r8d
   0.14%       0x00007fdaa8f72f7c:   add    $0x80,%r8d
   0.04%       0x00007fdaa8f72f83:   cmp    $0x100,%r8d
            ╭  0x00007fdaa8f72f8a:   jae    0x00007fdaa8f72fad
            │  0x00007fdaa8f72f8c:   movslq %ebp,%r8
            │  0x00007fdaa8f72f8f:   movabs $0x7ffe7b1d8,%r9             ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffe7b1d8})}
            │  0x00007fdaa8f72f99:   mov    0x210(%r9,%r8,4),%r9d        ;*synchronization entry
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.01%    │  0x00007fdaa8f72fa1:   lea    (%r12,%r9,8),%r8
            │  0x00007fdaa8f72fa5:   mov    %r8,%rdx
            │  0x00007fdaa8f72fa8:   jmp    0x00007fdaa8f72db4
   0.05%    ↘  0x00007fdaa8f72fad:   mov    0x108(%r15),%rdx
   1.84%       0x00007fdaa8f72fb4:   mov    %rdx,%r8
   0.14%       0x00007fdaa8f72fb7:   add    $0x10,%r8                    ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.06%       0x00007fdaa8f72fbb:   nopl   0x0(%rax,%rax,1)
   0.08%       0x00007fdaa8f72fc0:   cmp    0x118(%r15),%r8
               0x00007fdaa8f72fc7:   jb     0x00007fdaa8f72d90
               0x00007fdaa8f72fcd:   mov    %rbx,0x28(%rsp)
               0x00007fdaa8f72fd2:   mov    %r11,0x20(%rsp)
               0x00007fdaa8f72fd7:   mov    %rsi,0x18(%rsp)
               0x00007fdaa8f72fdc:   mov    %r10d,0x10(%rsp)
               0x00007fdaa8f72fe1:   mov    %ecx,0xc(%rsp)
               0x00007fdaa8f72fe5:   mov    %r13d,0x8(%rsp)
               0x00007fdaa8f72fea:   mov    %r14,(%rsp)                  ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$43/0x0000000800c27238::apply@-1
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
....................................................................................................
  17.21%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.82%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 594 
  17.21%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 594 
   0.96%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   1.48%  <...other 441 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.03%         c2, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 594 
   1.94%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.07%        libc-2.31.so  [unknown] 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  OptoRuntime::new_instance_C 
   0.02%           libjvm.so  MemAllocator::allocate 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%           libjvm.so  JfrAllocationTracer::JfrAllocationTracer 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.55%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%         c2, level 4
   1.94%              kernel
   0.68%           libjvm.so
   0.12%        libc-2.31.so
   0.08%                    
   0.04%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.03%         interpreter
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%      perf-23520.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 231.296 us/op
# Warmup Iteration   2: 230.439 us/op
# Warmup Iteration   3: 230.159 us/op
# Warmup Iteration   4: 228.214 us/op
# Warmup Iteration   5: 228.362 us/op
Iteration   1: 228.391 us/op
Iteration   2: 228.393 us/op
Iteration   3: 227.880 us/op
Iteration   4: 228.369 us/op
Iteration   5: 228.374 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  228.282 ±(99.9%) 0.865 us/op [Average]
  (min, avg, max) = (227.880, 228.282, 228.393), stdev = 0.225
  CI (99.9%): [227.416, 229.147] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 115498 total address lines.
Perf output processed (skipped 55.690 seconds):
 Column 1: cycles (50415 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 476 

                   0x00007fae4cf666a5:   mov    $0x1,%r11d
                   0x00007fae4cf666ab:   cmp    $0x1,%ecx
                   0x00007fae4cf666ae:   jle    0x00007fae4cf66778
                   0x00007fae4cf666b4:   mov    $0xfa0,%r8d
          ╭        0x00007fae4cf666ba:   jmp    0x00007fae4cf6672c
          │        0x00007fae4cf666bf:   nop
          │    ↗   0x00007fae4cf666c0:   mov    %ebx,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
          │    │↗  0x00007fae4cf666c3:   mov    0x10(%rdi,%r11,4),%edx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  11.17%  │    ││  0x00007fae4cf666c8:   mov    %r10d,%ebx
          │╭   ││  0x00007fae4cf666cb:   add    0xc(%r12,%rdx,8),%ebx        ; implicit exception: dispatches to 0x00007fae4cf6674c
          ││   ││                                                            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  17.48%  ││   ││  0x00007fae4cf666d0:   mov    0x14(%rdi,%r11,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.01%  ││   ││  0x00007fae4cf666d5:   test   %r10d,%r10d
          ││╭  ││  0x00007fae4cf666d8:   je     0x00007fae4cf66751           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   4.13%  │││  ││  0x00007fae4cf666de:   add    0xc(%r12,%r10,8),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  10.87%  │││  ││  0x00007fae4cf666e3:   mov    0x18(%rdi,%r11,4),%edx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
          │││  ││  0x00007fae4cf666e8:   test   %edx,%edx
          │││╭ ││  0x00007fae4cf666ea:   je     0x00007fae4cf66756           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   0.00%  ││││ ││  0x00007fae4cf666f0:   add    0xc(%r12,%rdx,8),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  15.91%  ││││ ││  0x00007fae4cf666f5:   mov    0x1c(%rdi,%r11,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.16%  ││││ ││  0x00007fae4cf666fa:   nopw   0x0(%rax,%rax,1)
          ││││ ││  0x00007fae4cf66700:   test   %r10d,%r10d
          ││││╭││  0x00007fae4cf66703:   je     0x00007fae4cf6675c           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   0.03%  │││││││  0x00007fae4cf66709:   add    0xc(%r12,%r10,8),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  38.86%  │││││││  0x00007fae4cf6670e:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
          │││││││  0x00007fae4cf66712:   cmp    %r13d,%r11d
          │││││╰│  0x00007fae4cf66715:   jl     0x00007fae4cf666c0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          │││││ │  0x00007fae4cf66717:   mov    0x348(%r15),%rdx             ; ImmutableOopMap {r9=Oop rdi=Oop }
          │││││ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          │││││ │  0x00007fae4cf6671e:   test   %eax,(%rdx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          │││││ │                                                            ;   {poll}
   0.04%  │││││ │  0x00007fae4cf66720:   cmp    %ecx,%r11d
          │││││ │  0x00007fae4cf66723:   jge    0x00007fae4cf6677b
          │││││ │  0x00007fae4cf66729:   mov    %ebx,%r10d                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
          ↘││││ │  0x00007fae4cf6672c:   mov    %ecx,%r13d
           ││││ │  0x00007fae4cf6672f:   sub    %r11d,%r13d
   0.01%   ││││ │  0x00007fae4cf66732:   cmp    %r11d,%ecx
           ││││ │  0x00007fae4cf66735:   cmovl  %eax,%r13d
           ││││ │  0x00007fae4cf66739:   cmp    $0xfa0,%r13d
           ││││ │  0x00007fae4cf66740:   cmova  %r8d,%r13d
   0.02%   ││││ │  0x00007fae4cf66744:   add    %r11d,%r13d
           ││││ ╰  0x00007fae4cf66747:   jmp    0x00007fae4cf666c3
           ↘│││    0x00007fae4cf6674c:   mov    %r10d,%ebx
            │││    0x00007fae4cf6674f:   jmp    0x00007fae4cf66760
            ↘││    0x00007fae4cf66751:   inc    %r11d
             ││    0x00007fae4cf66754:   jmp    0x00007fae4cf66760
             ↘│    0x00007fae4cf66756:   add    $0x2,%r11d
              │    0x00007fae4cf6675a:   jmp    0x00007fae4cf66760
              ↘    0x00007fae4cf6675c:   add    $0x3,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
                   0x00007fae4cf66760:   mov    $0xfffffff6,%esi
....................................................................................................
  98.70%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 476 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 511 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.76%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 476 
   0.90%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.02%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 511 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  [unknown] 
   0.15%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.73%         c2, level 4
   0.90%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.06%                    
   0.05%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3017.708 us/op
# Warmup Iteration   2: 2786.446 us/op
# Warmup Iteration   3: 2786.790 us/op
# Warmup Iteration   4: 2790.890 us/op
# Warmup Iteration   5: 2787.450 us/op
Iteration   1: 2796.378 us/op
Iteration   2: 2787.575 us/op
Iteration   3: 2792.844 us/op
Iteration   4: 2792.979 us/op
Iteration   5: 2793.722 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  2792.700 ±(99.9%) 12.318 us/op [Average]
  (min, avg, max) = (2787.575, 2792.700, 2796.378), stdev = 3.199
  CI (99.9%): [2780.381, 2805.018] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 119368 total address lines.
Perf output processed (skipped 55.798 seconds):
 Column 1: cycles (50897 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 484 

                   0x00007fad14f6755c:   xor    %r14d,%r14d
                   0x00007fad14f6755f:   xor    %ebx,%ebx
          ╭        0x00007fad14f67561:   jmp    0x00007fad14f675ae
          │  ↗     0x00007fad14f67566:   cmpb   $0x0,0x38(%r15)
          │  │     0x00007fad14f6756b:   jne    0x00007fad14f67658
          │  │     0x00007fad14f67571:   movabs $0x7ffa01d10,%r10            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffa01d10})}
          │  │     0x00007fad14f6757b:   mov    %r12d,0x14(%r10)
          │  │     0x00007fad14f6757f:   nop
          │╭ │     0x00007fad14f67580:   jmp    0x00007fad14f67601
          ││ │     0x00007fad14f67585:   data16 data16 nopw 0x0(%rax,%rax,1)
   8.23%  ││ │ ↗   0x00007fad14f67590:   add    0xc(%r12,%r11,8),%r14d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  16.25%  ││ │ │↗  0x00007fad14f67595:   mov    0x348(%r15),%r10
   1.69%  ││ │ ││  0x00007fad14f6759c:   mov    0x10(%rbp),%r8d
   4.31%  ││ │ ││  0x00007fad14f675a0:   inc    %ebx                         ; ImmutableOopMap {rbp=Oop }
          ││ │ ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
   0.11%  ││ │ ││  0x00007fad14f675a2:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@36 (line 86)
          ││ │ ││                                                            ;   {poll}
   7.47%  ││ │ ││  0x00007fad14f675a5:   cmp    %r8d,%ebx
          ││╭│ ││  0x00007fad14f675a8:   jge    0x00007fad14f67629           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@12 (line 88)
   0.25%  ↘│││ ││  0x00007fad14f675ae:   movabs $0x7ffa01d10,%r10            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffa01d10})}
   0.04%   │││ ││  0x00007fad14f675b8:   mov    0x14(%r10),%r10d             ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   0.11%   │││ ││  0x00007fad14f675bc:   mov    0x1c(%rbp),%r11d             ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
           │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@14 (line 88)
   3.10%   │││ ││  0x00007fad14f675c0:   mov    %r10,%rdi
   0.25%   │││ ││  0x00007fad14f675c3:   shl    $0x3,%rdi
   0.03%   │││ ││  0x00007fad14f675c7:   test   %r11d,%r11d
           ││╰ ││  0x00007fad14f675ca:   je     0x00007fad14f67566
   0.11%   ││  ││  0x00007fad14f675cc:   mov    0xc(%r12,%r11,8),%r9d
   5.03%   ││  ││  0x00007fad14f675d1:   cmp    %r9d,%ebx
           ││ ╭││  0x00007fad14f675d4:   jae    0x00007fad14f6763f
   2.12%   ││ │││  0x00007fad14f675da:   shl    $0x3,%r11
   0.08%   ││ │││  0x00007fad14f675de:   mov    0x10(%r11,%rbx,4),%r11d
   1.43%   ││ │││  0x00007fad14f675e3:   test   %r11d,%r11d
           ││ │╰│  0x00007fad14f675e6:   jne    0x00007fad14f67590           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  13.55%   ││ │ │  0x00007fad14f675e8:   cmpb   $0x0,0x38(%r15)
  11.18%   ││ │ │  0x00007fad14f675ed:   jne    0x00007fad14f67689
   0.99%   ││ │ │  0x00007fad14f675f3:   movabs $0x7ffa01d10,%r10            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffa01d10})}
   0.02%   ││ │ │  0x00007fad14f675fd:   mov    %r12d,0x14(%r10)             ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
   3.14%   ↘│ │ │  0x00007fad14f67601:   mov    %ebx,0x4(%rsp)
   3.65%    │ │ │  0x00007fad14f67605:   mov    %r14d,(%rsp)                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@24 (line 91)
   0.05%    │ │ │  0x00007fad14f67609:   mov    %rbp,%rsi
   0.02%    │ │ │  0x00007fad14f6760c:   movabs $0x7ffa01d10,%rdx            ;   {oop(a &apos;java/lang/NullPointerException&apos;{0x00000007ffa01d10})}
   0.56%    │ │ │  0x00007fad14f67616:   nop
   0.98%    │ │ │  0x00007fad14f67617:   call   0x00007fad149fc080           ; ImmutableOopMap {rbp=Oop }
            │ │ │                                                            ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@30 (line 90)
            │ │ │                                                            ;   {optimized virtual_call}
   0.01%    │ │ │  0x00007fad14f6761c:   mov    (%rsp),%r14d
   3.41%    │ │ │  0x00007fad14f67620:   mov    0x4(%rsp),%ebx
   0.01%    │ │ ╰  0x00007fad14f67624:   jmp    0x00007fad14f67595
            ↘ │    0x00007fad14f67629:   mov    %r14d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
              │    0x00007fad14f6762c:   add    $0x30,%rsp
              │    0x00007fad14f67630:   pop    %rbp
              │    0x00007fad14f67631:   cmp    0x340(%r15),%rsp             ;   {poll_return}
              │    0x00007fad14f67638:   ja     0x00007fad14f67706
              │    0x00007fad14f6763e:   ret    
              ↘    0x00007fad14f6763f:   mov    $0xffffffe4,%esi
                   0x00007fad14f67644:   mov    %r14d,0x8(%rsp)
                   0x00007fad14f67649:   mov    %r11d,0xc(%rsp)
....................................................................................................
  88.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 484 
   9.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::sink, version 2, compile id 477 
   1.04%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.84%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 5, compile id 484 
   9.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::sink, version 2, compile id 477 
   2.14%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  ifeq  153 ifeq  
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%      perf-23629.map  [unknown] 
   0.11%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%         c2, level 4
   2.14%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      perf-23629.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:25

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

Benchmark                                             (nullThreshold)  (size)  Mode  Cnt     Score    Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                     0  262144  avgt    5   231.917 ± 10.084  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm                0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_not_npe_do_statement                    16  262144  avgt    5  1247.975 ±  2.057  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm               16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                             0  262144  avgt    5   233.877 ±  7.744  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                        0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.if_npe_continue                            16  262144  avgt    5  1246.974 ±  1.304  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                       16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                           0  262144  avgt    5  2295.427 ±  7.625  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                      0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.stream_filter_npe                          16  262144  avgt    5  2577.463 ±  3.125  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                     16  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                               0  262144  avgt    5   228.282 ±  0.865  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                          0  262144  avgt            NaN             ---
NpeControlFlowBenchmark.try_npe_catch                              16  262144  avgt    5  2792.700 ± 12.318  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                         16  262144  avgt            NaN             ---
