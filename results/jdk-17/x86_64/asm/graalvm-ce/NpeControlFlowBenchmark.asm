# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 230.226 us/op
# Warmup Iteration   2: 236.512 us/op
# Warmup Iteration   3: 236.341 us/op
# Warmup Iteration   4: 235.459 us/op
# Warmup Iteration   5: 235.430 us/op
Iteration   1: 236.238 us/op
Iteration   2: 235.900 us/op
Iteration   3: 228.224 us/op
Iteration   4: 236.253 us/op
Iteration   5: 235.989 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  234.521 ±(99.9%) 13.567 us/op [Average]
  (min, avg, max) = (228.224, 234.521, 236.253), stdev = 3.523
  CI (99.9%): [220.953, 248.088] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 195539 total address lines.
Perf output processed (skipped 58.638 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 738 

   0.01%       0x00007f1566ffdf83:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@13 (line 101)
               0x00007f1566ffdf87:   mov    %r11d,%r8d
               0x00007f1566ffdf8a:   mov    $0x1,%r11d
          ╭    0x00007f1566ffdf90:   jmp    0x00007f1566ffdfb6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          │    0x00007f1566ffdf95:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │↗   0x00007f1566ffdfa0:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
  25.35%  ││   0x00007f1566ffdfa5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││   0x00007f1566ffdfa8:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f1566ffe046
  55.29%  ││   0x00007f1566ffdfb0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.00%  ││   0x00007f1566ffdfb3:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
  17.46%  ↘│   0x00007f1566ffdfb6:   cmp    %r11d,%eax
           ╰   0x00007f1566ffdfb9:   jg     0x00007f1566ffdfa0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
            ↗  0x00007f1566ffdfbb:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
            │  0x00007f1566ffdfbe:   mov    0x10(%rsp),%rbp
            │  0x00007f1566ffdfc3:   add    $0x18,%rsp
            │  0x00007f1566ffdfc7:   mov    0x348(%r15),%rcx
            │  0x00007f1566ffdfce:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%    │  0x00007f1566ffdfd0:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
            │  0x00007f1566ffdfd1:   mov    $0x0,%r8d
            ╰  0x00007f1566ffdfd7:   jmp    0x00007f1566ffdfbb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
               0x00007f1566ffdfd9:   mov    $0x214,%r10
               0x00007f1566ffdfe0:   movl   $0xffffffe5,0x370(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
               0x00007f1566ffdfeb:   mov    %r10,0x378(%r15)
               0x00007f1566ffdff2:   call   0x00007f155f50527a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 738 
   0.51%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 738 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.86%  <...other 303 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 738 
   1.52%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  Symbol::print_value_on 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  re_search_stub 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%       jvmci, level 4
   1.52%               kernel
   0.13%            libjvm.so
   0.07%                     
   0.06%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%          c1, level 3
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:13:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1459.508 us/op
# Warmup Iteration   2: 1455.280 us/op
# Warmup Iteration   3: 1455.033 us/op
# Warmup Iteration   4: 1455.101 us/op
# Warmup Iteration   5: 1455.149 us/op
Iteration   1: 1455.170 us/op
Iteration   2: 1454.686 us/op
Iteration   3: 1455.128 us/op
Iteration   4: 1455.074 us/op
Iteration   5: 1454.609 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1454.933 ±(99.9%) 1.019 us/op [Average]
  (min, avg, max) = (1454.609, 1454.933, 1455.170), stdev = 0.265
  CI (99.9%): [1453.915, 1455.952] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 194804 total address lines.
Perf output processed (skipped 58.595 seconds):
 Column 1: cycles (50835 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 745 

                  0x00007fd70affaf00:   cmp    %r9d,%r11d
          ╭       0x00007fd70affaf03:   jbe    0x00007fd70affaf66
          │       0x00007fd70affaf09:   cmp    $0x2,%r11d
          │╭      0x00007fd70affaf0d:   jb     0x00007fd70affaf66           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
          ││      0x00007fd70affaf13:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@13 (line 101)
          ││      0x00007fd70affaf17:   mov    $0x1,%r11d
          ││      0x00007fd70affaf1d:   data16 xchg %ax,%ax                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
  16.81%  ││ ↗↗   0x00007fd70affaf20:   cmp    %r11d,%eax
          ││╭││   0x00007fd70affaf23:   jle    0x00007fd70affaf40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
  10.18%  │││││   0x00007fd70affaf29:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   9.07%  │││││   0x00007fd70affaf2e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   3.18%  │││││   0x00007fd70affaf31:   test   %r9d,%r9d
          │││╰│   0x00007fd70affaf34:   je     0x00007fd70affaf20           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
  24.07%  │││ │   0x00007fd70affaf36:   add    0xc(,%r9,8),%r8d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  34.54%  │││ ╰   0x00007fd70affaf3e:   jmp    0x00007fd70affaf20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
          ││↘  ↗  0x00007fd70affaf40:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
          ││   │  0x00007fd70affaf43:   mov    0x10(%rsp),%rbp
          ││   │  0x00007fd70affaf48:   add    $0x18,%rsp
          ││   │  0x00007fd70affaf4c:   mov    0x348(%r15),%rcx
          ││   │  0x00007fd70affaf53:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  ││   │  0x00007fd70affaf55:   ret                                 ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
          ││   │  0x00007fd70affaf56:   mov    $0x0,%r8d
          ││   │  0x00007fd70affaf5c:   jmp    0x00007fd70affaef1           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││   │  0x00007fd70affaf5e:   mov    $0x0,%r8d
          ││   ╰  0x00007fd70affaf64:   jmp    0x00007fd70affaf40
          ↘↘      0x00007fd70affaf66:   movl   $0xffffffe5,0x370(%r15)
                  0x00007fd70affaf71:   movq   $0x14,0x378(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
                  0x00007fd70affaf7c:   nopl   0x0(%rax)
....................................................................................................
  97.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 745 
   0.67%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.84%  <...other 293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 745 
   1.75%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%       perf-33155.map  [unknown] 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  resource_allocate_bytes 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.75%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%       perf-33155.map
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:11:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.210 us/op
# Warmup Iteration   2: 231.494 us/op
# Warmup Iteration   3: 231.584 us/op
# Warmup Iteration   4: 231.054 us/op
# Warmup Iteration   5: 230.281 us/op
Iteration   1: 230.804 us/op
Iteration   2: 230.569 us/op
Iteration   3: 230.677 us/op
Iteration   4: 231.104 us/op
Iteration   5: 230.686 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  230.768 ±(99.9%) 0.791 us/op [Average]
  (min, avg, max) = (230.569, 230.768, 231.104), stdev = 0.205
  CI (99.9%): [229.977, 231.558] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 199606 total address lines.
Perf output processed (skipped 58.769 seconds):
 Column 1: cycles (50604 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 747 

               0x00007f26e2ffd45a:   jbe    0x00007f26e2ffd4d9
               0x00007f26e2ffd460:   cmp    $0x2,%r11d
               0x00007f26e2ffd464:   jb     0x00007f26e2ffd4f8
               0x00007f26e2ffd46a:   test   %r11d,%r11d
               0x00007f26e2ffd46d:   je     0x00007f26e2ffd502           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
               0x00007f26e2ffd473:   mov    0x10(,%r10,8),%r11d          ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@0 (line 111)
               0x00007f26e2ffd47b:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f26e2ffd527
   0.00%       0x00007f26e2ffd483:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@13 (line 113)
               0x00007f26e2ffd487:   mov    %r11d,%r8d
               0x00007f26e2ffd48a:   mov    $0x1,%r11d
          ╭    0x00007f26e2ffd490:   jmp    0x00007f26e2ffd4b6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          │    0x00007f26e2ffd495:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
   0.00%  │↗   0x00007f26e2ffd4a0:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
  25.95%  ││   0x00007f26e2ffd4a5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││   0x00007f26e2ffd4a8:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f26e2ffd546
  54.48%  ││   0x00007f26e2ffd4b0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
          ││   0x00007f26e2ffd4b3:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
  17.86%  ↘│   0x00007f26e2ffd4b6:   cmp    %r11d,%eax
           ╰   0x00007f26e2ffd4b9:   jg     0x00007f26e2ffd4a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
            ↗  0x00007f26e2ffd4bb:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
            │  0x00007f26e2ffd4be:   mov    0x10(%rsp),%rbp
            │  0x00007f26e2ffd4c3:   add    $0x18,%rsp
   0.00%    │  0x00007f26e2ffd4c7:   mov    0x348(%r15),%rcx
            │  0x00007f26e2ffd4ce:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%    │  0x00007f26e2ffd4d0:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
            │  0x00007f26e2ffd4d1:   mov    $0x0,%r8d
            ╰  0x00007f26e2ffd4d7:   jmp    0x00007f26e2ffd4bb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
               0x00007f26e2ffd4d9:   mov    $0x214,%r10
               0x00007f26e2ffd4e0:   movl   $0xffffffe5,0x370(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
               0x00007f26e2ffd4eb:   mov    %r10,0x378(%r15)
               0x00007f26e2ffd4f2:   call   0x00007f26db50527a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 747 
   0.56%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 747 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.71%  <...other 239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 747 
   1.33%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%       hsdis-amd64.so  print_insn_i386 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  vmClasses::is_loaded 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%       jvmci, level 4
   1.33%               kernel
   0.12%         libc-2.31.so
   0.11%            libjvm.so
   0.04%                     
   0.03%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1457.592 us/op
# Warmup Iteration   2: 1454.155 us/op
# Warmup Iteration   3: 1454.036 us/op
# Warmup Iteration   4: 1454.084 us/op
# Warmup Iteration   5: 1454.057 us/op
Iteration   1: 1454.082 us/op
Iteration   2: 1455.093 us/op
Iteration   3: 1455.011 us/op
Iteration   4: 1455.068 us/op
Iteration   5: 1454.546 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1454.760 ±(99.9%) 1.693 us/op [Average]
  (min, avg, max) = (1454.082, 1454.760, 1455.093), stdev = 0.440
  CI (99.9%): [1453.067, 1456.453] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 193305 total address lines.
Perf output processed (skipped 58.564 seconds):
 Column 1: cycles (50987 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 741 

                  0x00007f4026ffb580:   cmp    %r9d,%r11d
          ╭       0x00007f4026ffb583:   jbe    0x00007f4026ffb5e6
          │       0x00007f4026ffb589:   cmp    $0x2,%r11d
          │╭      0x00007f4026ffb58d:   jb     0x00007f4026ffb5e6           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
          ││      0x00007f4026ffb593:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@13 (line 113)
          ││      0x00007f4026ffb597:   mov    $0x1,%r11d
          ││      0x00007f4026ffb59d:   data16 xchg %ax,%ax                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
  16.71%  ││ ↗↗   0x00007f4026ffb5a0:   cmp    %r11d,%eax
          ││╭││   0x00007f4026ffb5a3:   jle    0x00007f4026ffb5c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
  10.21%  │││││   0x00007f4026ffb5a9:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   9.47%  │││││   0x00007f4026ffb5ae:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   3.31%  │││││   0x00007f4026ffb5b1:   test   %r9d,%r9d
          │││╰│   0x00007f4026ffb5b4:   je     0x00007f4026ffb5a0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
  23.50%  │││ │   0x00007f4026ffb5b6:   add    0xc(,%r9,8),%r8d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  34.14%  │││ ╰   0x00007f4026ffb5be:   jmp    0x00007f4026ffb5a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
          ││↘  ↗  0x00007f4026ffb5c0:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
          ││   │  0x00007f4026ffb5c3:   mov    0x10(%rsp),%rbp
          ││   │  0x00007f4026ffb5c8:   add    $0x18,%rsp
          ││   │  0x00007f4026ffb5cc:   mov    0x348(%r15),%rcx
          ││   │  0x00007f4026ffb5d3:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  ││   │  0x00007f4026ffb5d5:   ret                                 ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
          ││   │  0x00007f4026ffb5d6:   mov    $0x0,%r8d
          ││   │  0x00007f4026ffb5dc:   jmp    0x00007f4026ffb571           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││   │  0x00007f4026ffb5de:   mov    $0x0,%r8d
          ││   ╰  0x00007f4026ffb5e4:   jmp    0x00007f4026ffb5c0
          ↘↘      0x00007f4026ffb5e6:   movl   $0xffffffe5,0x370(%r15)
                  0x00007f4026ffb5f1:   movq   $0x14,0x378(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
                  0x00007f4026ffb5fc:   nopl   0x0(%rax)
....................................................................................................
  97.35%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 741 
   0.79%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%   libpthread-2.31.so  __libc_write 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.19%  <...other 406 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 741 
   2.15%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%   libpthread-2.31.so  __libc_write 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  defaultStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  outputStream::move_to 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.22%  <...other 94 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%       jvmci, level 4
   2.15%               kernel
   0.21%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.04%   libpthread-2.31.so
   0.04%       hsdis-amd64.so
   0.03%          interpreter
   0.02%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%       perf-33283.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1293.596 us/op
# Warmup Iteration   2: 5077.304 us/op
# Warmup Iteration   3: 5089.425 us/op
# Warmup Iteration   4: 5086.806 us/op
# Warmup Iteration   5: 5085.346 us/op
Iteration   1: 5085.258 us/op
Iteration   2: 5079.851 us/op
Iteration   3: 5084.041 us/op
Iteration   4: 5082.984 us/op
Iteration   5: 5076.560 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  5081.739 ±(99.9%) 13.562 us/op [Average]
  (min, avg, max) = (5076.560, 5081.739, 5085.258), stdev = 3.522
  CI (99.9%): [5068.176, 5095.301] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 214782 total address lines.
Perf output processed (skipped 58.618 seconds):
 Column 1: cycles (50865 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 763 

                  JVMCI data     [0x00007f4d7efff488,0x00007f4d7efff498] = 16
                 [Disassembly]
                 --------------------------------------------------------------------------------
                 [Constant Pool (empty)]
                 --------------------------------------------------------------------------------
                 [Entry Point]
                   # {method} {0x000000080021b858} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
                   # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
                   # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                   #           [sp+0x20]  (sp of caller)
   0.07%           0x00007f4d7effeac0:   mov    0x8(%rsi),%r10d
   1.38%           0x00007f4d7effeac4:   movabs $0x800000000,%r12
   0.57%           0x00007f4d7effeace:   add    %r12,%r10
   0.03%           0x00007f4d7effead1:   xor    %r12,%r12
   0.02%           0x00007f4d7effead4:   cmp    %r10,%rax
                   0x00007f4d7effead7:   jne    0x00007f4d774ff780           ;   {runtime_call ic_miss_stub}
   1.30%           0x00007f4d7effeadd:   nop
   0.57%           0x00007f4d7effeade:   xchg   %ax,%ax
                 [Verified Entry Point]
   0.02%           0x00007f4d7effeae0:   mov    %eax,-0x14000(%rsp)
   1.41%           0x00007f4d7effeae7:   sub    $0x18,%rsp
   0.63%           0x00007f4d7effeaeb:   mov    %rbp,0x10(%rsp)
   0.90%           0x00007f4d7effeaf0:   mov    %rsi,%r10
   0.06%           0x00007f4d7effeaf3:   mov    0x10(%r10),%esi              ; ImmutableOopMap {rdx=Oop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.54%           0x00007f4d7effeaf7:   mov    0x34(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f4d7effee48
   6.20%           0x00007f4d7effeafe:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.02%           0x00007f4d7effeb00:   cmpl   $0xc26bf0,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007f4d7effee66
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$51+0x0000000800c26bf0&apos;)}
  11.09%           0x00007f4d7effeb0b:   jne    0x00007f4d7effee0c           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   1.89%           0x00007f4d7effeb11:   test   %rdx,%rdx
                   0x00007f4d7effeb14:   je     0x00007f4d7effed3f
   0.01%           0x00007f4d7effeb1a:   mov    0x8(%rdx),%esi
   1.43%           0x00007f4d7effeb1d:   movabs $0x800000000,%rbp
   0.04%           0x00007f4d7effeb27:   lea    0x0(%rbp,%rsi,1),%rsi        ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$51/0x0000000800c26bf0::test@1
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   1.94%           0x00007f4d7effeb2c:   test   %rdx,%rdx
          ╭        0x00007f4d7effeb2f:   je     0x00007f4d7effeb49
   0.01%  │        0x00007f4d7effeb35:   movabs $0x800c265e0,%rbp            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
   0.02%  │        0x00007f4d7effeb3f:   nop
   0.03%  │        0x00007f4d7effeb40:   cmp    %rsi,%rbp
          │        0x00007f4d7effeb43:   jne    0x00007f4d7effee39           ; ImmutableOopMap {rdx=Oop r10=Oop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   1.97%  ↘        0x00007f4d7effeb49:   mov    0xc(%rdx),%esi               ; implicit exception: dispatches to 0x00007f4d7effee86
   0.22%           0x00007f4d7effeb4c:   mov    0xc(%r10),%ebp               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
   0.02%           0x00007f4d7effeb50:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.03%           0x00007f4d7effeb5b:   data16 data16 xchg %ax,%ax
   1.80%           0x00007f4d7effeb5f:   nop                                 ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.09%           0x00007f4d7effeb60:   cmpl   $0x21b4d8,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f4d7effeea6
                                                                             ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
   0.05%           0x00007f4d7effeb6b:   jne    0x00007f4d7effedee           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.94%           0x00007f4d7effeb71:   mov    0x10(,%rbp,8),%eax           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.07%           0x00007f4d7effeb78:   mov    0x34(,%rax,8),%eax           ; implicit exception: dispatches to 0x00007f4d7effeec6
   0.07%           0x00007f4d7effeb7f:   nop                                 ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.03%           0x00007f4d7effeb80:   cmpl   $0xc26e40,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f4d7effeee6
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$52+0x0000000800c26e40&apos;)}
   5.39%           0x00007f4d7effeb8b:   jne    0x00007f4d7effee1b           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.78%           0x00007f4d7effeb91:   mov    0xc(,%rbp,8),%r11d           ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.04%           0x00007f4d7effeb99:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop r10=Oop r11=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.07%           0x00007f4d7effeba0:   cmpl   $0xc39230,0x8(,%r11,8)       ; implicit exception: dispatches to 0x00007f4d7effef06
                                                                             ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
   1.87%           0x00007f4d7effebac:   jne    0x00007f4d7effedcd           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.04%           0x00007f4d7effebb2:   mov    0x14(,%r11,8),%ebp           ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.07%           0x00007f4d7effebba:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop r10=Oop r11=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.07%           0x00007f4d7effebc0:   cmpl   $0xc27080,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f4d7effef26
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$53+0x0000000800c27080&apos;)}
   1.80%           0x00007f4d7effebcb:   jne    0x00007f4d7effedfd           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.83%           0x00007f4d7effebd1:   mov    0xc(,%r11,8),%ebp            ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
                                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.05%           0x00007f4d7effebd9:   nopl   0x0(%rax)
   0.92%           0x00007f4d7effebe0:   test   %ebp,%ebp
                   0x00007f4d7effebe2:   je     0x00007f4d7effed4b
   0.03%           0x00007f4d7effebe8:   mov    0x8(,%rbp,8),%eax
   0.86%           0x00007f4d7effebef:   movabs $0x800000000,%r8
   0.06%           0x00007f4d7effebf9:   lea    (%r8,%rax,1),%rax
   1.00%           0x00007f4d7effebfd:   data16 xchg %ax,%ax
   0.04%           0x00007f4d7effec00:   test   %ebp,%ebp
           ╭       0x00007f4d7effec02:   je     0x00007f4d7effec1b
   0.81%   │       0x00007f4d7effec08:   movabs $0x800045fb0,%r8             ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.06%   │       0x00007f4d7effec12:   cmp    %rax,%r8
           │       0x00007f4d7effec15:   jne    0x00007f4d7effee2a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@1
           │                                                                 ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
           │                                                                 ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
           │                                                                 ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.02%   ↘       0x00007f4d7effec1b:   mov    %esi,%r8d                    ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=Oop r11=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.04%           0x00007f4d7effec1e:   add    0xc(,%rbp,8),%r8d            ; implicit exception: dispatches to 0x00007f4d7effef46
   0.83%           0x00007f4d7effec26:   lea    0x80(%r8),%esi
   0.04%           0x00007f4d7effec2d:   cmp    $0x100,%esi
            ╭      0x00007f4d7effec33:   jb     0x00007f4d7effece9
   0.96%    │      0x00007f4d7effec39:   mov    0x108(%r15),%rsi
   0.03%    │      0x00007f4d7effec40:   lea    0x10(%rsi),%rbp
   0.90%    │      0x00007f4d7effec44:   cmp    0x118(%r15),%rbp
            │      0x00007f4d7effec4b:   ja     0x00007f4d7effeda5
   0.06%    │      0x00007f4d7effec51:   mov    %rbp,0x108(%r15)
   1.05%    │      0x00007f4d7effec58:   prefetchw 0xd0(%rsi)
   0.27%    │      0x00007f4d7effec5f:   movq   $0x1,(%rsi)
   0.90%    │      0x00007f4d7effec66:   movl   $0x45fb0,0x8(%rsi)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.07%    │      0x00007f4d7effec6d:   movl   $0x0,0xc(%rsi)
   0.95%    │      0x00007f4d7effec74:   mov    %r8d,0xc(%rsi)               ;* unwind (locked if synchronized)
            │                                                                ; - java.lang.Integer::valueOf@-3
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@17
            │                                                                ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
            │                                                                ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                                ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.10%    │   ↗  0x00007f4d7effec78:   mov    %rsi,%rax
   0.23%    │   │  0x00007f4d7effec7b:   nopl   0x0(%rax,%rax,1)
   0.04%    │   │  0x00007f4d7effec80:   cmpb   $0x0,0x38(%r15)
   0.61%    │╭  │  0x00007f4d7effec85:   jne    0x00007f4d7effed05
   1.07%    ││  │  0x00007f4d7effec8b:   mov    %rax,%rsi
   0.21%    ││  │  0x00007f4d7effec8e:   shr    $0x3,%rsi
   0.05%    ││  │  0x00007f4d7effec92:   mov    %esi,0xc(,%r11,8)            ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            ││  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            ││  │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.62%    ││  │  0x00007f4d7effec9a:   shl    $0x3,%r11                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
            ││  │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   1.04%    ││  │  0x00007f4d7effec9e:   mov    %r11,%rsi
   0.22%    ││  │  0x00007f4d7effeca1:   xor    %rax,%rsi
   0.05%    ││  │  0x00007f4d7effeca4:   test   $0xffffffffffe00000,%rsi
            ││╭ │  0x00007f4d7effecab:   je     0x00007f4d7effecd3
   0.41%    │││ │  0x00007f4d7effecb1:   test   %rax,%rax
            │││╭│  0x00007f4d7effecb4:   je     0x00007f4d7effecd3
   0.78%    │││││  0x00007f4d7effecba:   shr    $0x9,%r11
   0.14%    │││││  0x00007f4d7effecbe:   movabs $0x7f4d9233f000,%rsi
   0.04%    │││││  0x00007f4d7effecc8:   cmpb   $0x4,(%r11,%rsi,1)
   1.29%    │││││  0x00007f4d7effeccd:   jne    0x00007f4d7effed57           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
            │││││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.30%    ││↘↘│  0x00007f4d7effecd3:   mov    0x10(%rsp),%rbp
   0.64%    ││  │  0x00007f4d7effecd8:   add    $0x18,%rsp
   0.56%    ││  │  0x00007f4d7effecdc:   mov    0x348(%r15),%rcx
   0.89%    ││  │  0x00007f4d7effece3:   test   %eax,(%rcx)                  ;   {poll_return}
   0.55%    ││  │  0x00007f4d7effece5:   vzeroupper 
   1.89%    ││  │  0x00007f4d7effece8:   ret    
            ↘│  │  0x00007f4d7effece9:   movabs $0x7ffe861c8,%r10            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffe861c8})}
             │  │  0x00007f4d7effecf3:   mov    0x10(%r10,%rsi,4),%esi
   0.00%     │  │  0x00007f4d7effecf8:   shl    $0x3,%rsi
             │  │  0x00007f4d7effecfc:   nopl   0x0(%rax)
             │  ╰  0x00007f4d7effed00:   jmp    0x00007f4d7effec78           ;* unwind (locked if synchronized)
             │                                                               ; - java.lang.Integer::valueOf@-3
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@17
             │                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
             │                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             ↘     0x00007f4d7effed05:   lea    0xc(,%r11,8),%rsi
                   0x00007f4d7effed0d:   mov    (%rsi),%esi
                   0x00007f4d7effed0f:   test   %esi,%esi
....................................................................................................
  72.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 851 

                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
                0x00007f4d7f00afd9:   mov    0x24(%rsp),%r11d
                0x00007f4d7f00afde:   xchg   %ax,%ax
                0x00007f4d7f00afe0:   cmp    %r10d,%r11d
          ╭     0x00007f4d7f00afe3:   jg     0x00007f4d7f00b049
          │╭    0x00007f4d7f00afe9:   jmp    0x00007f4d7f00b065           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
          ││    0x00007f4d7f00afee:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    0x00007f4d7f00aff9:   data16 data16 xchg %ax,%ax
          ││    0x00007f4d7f00affd:   data16 xchg %ax,%ax
   1.87%  ││ ↗  0x00007f4d7f00b000:   mov    0x10(%r8,%r10,4),%esi
   1.11%  ││ │  0x00007f4d7f00b005:   mov    %esi,%ecx
   0.05%  ││ │  0x00007f4d7f00b007:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
   1.26%  ││ │  0x00007f4d7f00b00b:   mov    %rdx,%rsi
   0.57%  ││ │  0x00007f4d7f00b00e:   mov    %rcx,%rdx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.02%  ││ │  0x00007f4d7f00b011:   mov    %r10d,0x1c(%rsp)
   0.04%  ││ │  0x00007f4d7f00b016:   data16 xchg %ax,%ax
   1.29%  ││ │  0x00007f4d7f00b019:   movabs $0x80021b218,%rax
   0.55%  ││ │  0x00007f4d7f00b023:   call   0x00007f4d7effeac0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││ │                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││ │                                                            ;   {virtual_call}
   0.68%  ││ │  0x00007f4d7f00b028:   nop
   0.48%  ││ │  0x00007f4d7f00b029:   mov    0x1c(%rsp),%r10d
   5.43%  ││ │  0x00007f4d7f00b02e:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
   1.71%  ││ │  0x00007f4d7f00b031:   mov    0x24(%rsp),%r11d
   0.11%  ││ │  0x00007f4d7f00b036:   cmp    %r10d,%r11d
          ││╭│  0x00007f4d7f00b039:   jle    0x00007f4d7f00b065           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
   1.72%  ││││  0x00007f4d7f00b03f:   mov    0x348(%r15),%r8              ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
   0.13%  ││││  0x00007f4d7f00b046:   test   %eax,(%r8)                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 992)
          ││││                                                            ;   {poll}
   8.26%  ↘│││  0x00007f4d7f00b049:   mov    0x8(%rsp),%r8
   0.04%   │││  0x00007f4d7f00b04e:   mov    0x20(%rsp),%r9d
   0.06%   │││  0x00007f4d7f00b053:   mov    0x10(%rsp),%rdx
   0.08%   │││  0x00007f4d7f00b058:   cmp    %r10d,%r9d
           ││╰  0x00007f4d7f00b05b:   ja     0x00007f4d7f00b000
           ││   0x00007f4d7f00b05d:   data16 xchg %ax,%ax
           ││   0x00007f4d7f00b060:   jmp    0x00007f4d7f00b099           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
           ↘↘   0x00007f4d7f00b065:   mov    0x30(%rsp),%rbp
                0x00007f4d7f00b06a:   add    $0x38,%rsp
                0x00007f4d7f00b06e:   mov    0x348(%r15),%rcx
                0x00007f4d7f00b075:   test   %eax,(%rcx)                  ;   {poll_return}
                0x00007f4d7f00b077:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 990)
....................................................................................................
  25.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.12%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 763 
  25.45%       jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 851 
   0.64%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.19%  <...other 393 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.12%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 763 
  25.45%       jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 5, compile id 851 
   1.70%               kernel  [unknown] 
   0.06%         libc-2.31.so  [unknown] 
   0.05%                       <unknown> 
   0.05%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%            libjvm.so  G1Policy::preventive_collection_required 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  G1CollectedHeap::unsafe_max_tlab_alloc 
   0.40%  <...other 143 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.57%       jvmci, level 4
   1.70%               kernel
   0.46%            libjvm.so
   0.14%         libc-2.31.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%          c1, level 3
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5219.942 us/op
# Warmup Iteration   2: 5324.920 us/op
# Warmup Iteration   3: 5075.437 us/op
# Warmup Iteration   4: 5510.789 us/op
# Warmup Iteration   5: 5281.279 us/op
Iteration   1: 5243.258 us/op
Iteration   2: 5411.914 us/op
Iteration   3: 5263.564 us/op
Iteration   4: 5296.230 us/op
Iteration   5: 4906.810 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  5224.355 ±(99.9%) 728.256 us/op [Average]
  (min, avg, max) = (4906.810, 5224.355, 5411.914), stdev = 189.126
  CI (99.9%): [4496.099, 5952.611] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 209653 total address lines.
Perf output processed (skipped 58.591 seconds):
 Column 1: cycles (50606 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 

                     0x00007f3826ffc924:   cmp    -0x15b(%rip),%rbp        # 0x00007f3826ffc7d0
                                                                               ;   {section_word}
   0.00%  ╭          0x00007f3826ffc92b:   je     0x00007f3826ffc950
          │          0x00007f3826ffc931:   cmp    -0x160(%rip),%rbp        # 0x00007f3826ffc7d8
          │                                                                    ;   {section_word}
          │          0x00007f3826ffc938:   je     0x00007f3826ffcd65
          │          0x00007f3826ffc93e:   cmp    -0x165(%rip),%rbp        # 0x00007f3826ffc7e0
          │                                                                    ;   {section_word}
          │          0x00007f3826ffc945:   je     0x00007f3826ffcee5
          │          0x00007f3826ffc94b:   jmp    0x00007f3826ffd3d8
   0.67%  ↘          0x00007f3826ffc950:   mov    0x10(,%r8,8),%ebp            ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.41%             0x00007f3826ffc958:   mov    0x34(,%rbp,8),%ebp           ; implicit exception: dispatches to 0x00007f3826ffd486
   1.02%             0x00007f3826ffc95f:   nop                                 ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
                     0x00007f3826ffc960:   cmpl   $0xc26e40,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f3826ffd4a6
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$52+0x0000000800c26e40&apos;)}
   5.29%             0x00007f3826ffc96b:   jne    0x00007f3826ffd371           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.92%             0x00007f3826ffc971:   mov    0xc(,%r8,8),%r8d             ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                     0x00007f3826ffc979:   nopl   0x0(%rax)                    ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.07%             0x00007f3826ffc980:   cmpl   $0xc39230,0x8(,%r8,8)        ; implicit exception: dispatches to 0x00007f3826ffd4c6
                                                                               ;   {metadata(&apos;java/util/stream/ReduceOps$1ReducingSink&apos;)}
   0.96%             0x00007f3826ffc98c:   jne    0x00007f3826ffd352           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.00%             0x00007f3826ffc992:   mov    0x14(,%r8,8),%ebp            ;*getfield val$reducer {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@2 (line 80)
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.05%             0x00007f3826ffc99a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
                                                                               ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
                     0x00007f3826ffc9a0:   cmpl   $0xc27080,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f3826ffd4e6
                                                                               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$$Lambda$53+0x0000000800c27080&apos;)}
   1.05%             0x00007f3826ffc9ab:   jne    0x00007f3826ffd32c           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.05%             0x00007f3826ffc9b1:   test   %rdx,%rdx
           ╭         0x00007f3826ffc9b4:   je     0x00007f3826ffc9c9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$52/0x0000000800c26e40::apply@1
           │                                                                   ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
           │                                                                   ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │         0x00007f3826ffc9ba:   nopw   0x0(%rax,%rax,1)
   0.90%   │         0x00007f3826ffc9c0:   cmp    %rax,%r11
           │         0x00007f3826ffc9c3:   jne    0x00007f3826ffd3ea           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
           │                                                                   ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           │                                                                   ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
           ↘         0x00007f3826ffc9c9:   mov    0xc(%rdx),%ebp               ; implicit exception: dispatches to 0x00007f3826ffd506
   0.04%             0x00007f3826ffc9cc:   mov    0xc(,%r8,8),%eax             ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@6 (line 80)
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                     0x00007f3826ffc9d4:   test   %eax,%eax
                     0x00007f3826ffc9d6:   je     0x00007f3826ffcb4f
   0.98%             0x00007f3826ffc9dc:   mov    0x8(,%rax,8),%r11d
   0.00%             0x00007f3826ffc9e4:   movabs $0x800000000,%r9
   0.05%             0x00007f3826ffc9ee:   lea    (%r9,%r11,1),%r11            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@1
                                                                               ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                               ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.01%             0x00007f3826ffc9f2:   test   %eax,%eax
            ╭        0x00007f3826ffc9f4:   je     0x00007f3826ffca0d
   0.90%    │        0x00007f3826ffc9fa:   movabs $0x800045fb0,%r9             ;   {metadata(&apos;java/lang/Integer&apos;)}
            │        0x00007f3826ffca04:   cmp    %r11,%r9
            │        0x00007f3826ffca07:   jne    0x00007f3826ffd362           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r8=NarrowOop }
            │                                                                  ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
            │                                                                  ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.08%    ↘        0x00007f3826ffca0d:   add    0xc(,%rax,8),%ebp            ; implicit exception: dispatches to 0x00007f3826ffd526
   0.01%             0x00007f3826ffca14:   lea    0x80(%rbp),%eax
   0.92%             0x00007f3826ffca1a:   nopw   0x0(%rax,%rax,1)
                     0x00007f3826ffca20:   cmp    $0x100,%eax
             ╭       0x00007f3826ffca26:   jb     0x00007f3826ffcaef
   0.06%     │       0x00007f3826ffca2c:   mov    0x108(%r15),%rax
             │       0x00007f3826ffca33:   lea    0x10(%rax),%r11
   0.95%     │       0x00007f3826ffca37:   nopw   0x0(%rax,%rax,1)
             │       0x00007f3826ffca40:   cmp    0x118(%r15),%r11
             │       0x00007f3826ffca47:   ja     0x00007f3826ffcba5
   0.07%     │       0x00007f3826ffca4d:   mov    %r11,0x108(%r15)
             │       0x00007f3826ffca54:   prefetchw 0xd0(%rax)
   1.02%     │       0x00007f3826ffca5b:   movq   $0x1,(%rax)
             │       0x00007f3826ffca62:   movl   $0x45fb0,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.05%     │       0x00007f3826ffca69:   movl   $0x0,0xc(%rax)
             │       0x00007f3826ffca70:   mov    %ebp,0xc(%rax)               ;* unwind (locked if synchronized)
             │                                                                 ; - java.lang.Integer::valueOf@-3
             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@17
             │                                                                 ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
             │                                                                 ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             │                                                                 ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.93%     │   ↗   0x00007f3826ffca73:   cmpb   $0x0,0x38(%r15)
   0.01%     │╭  │   0x00007f3826ffca78:   jne    0x00007f3826ffcb15
   0.06%     ││  │↗  0x00007f3826ffca7e:   mov    %rax,%rsi
             ││  ││  0x00007f3826ffca81:   shr    $0x3,%rsi
   1.07%     ││  ││  0x00007f3826ffca85:   mov    %esi,0xc(,%r8,8)             ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
             ││  ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
             ││  ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             ││  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             ││  ││  0x00007f3826ffca8d:   shl    $0x3,%r8                     ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
             ││  ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
             ││  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.05%     ││  ││  0x00007f3826ffca91:   mov    %r8,%rsi
             ││  ││  0x00007f3826ffca94:   xor    %rax,%rsi
   0.95%     ││  ││  0x00007f3826ffca97:   nopw   0x0(%rax,%rax,1)
             ││  ││  0x00007f3826ffcaa0:   test   $0xffffffffffe00000,%rsi
             ││╭ ││  0x00007f3826ffcaa7:   je     0x00007f3826ffcacb
   0.03%     │││ ││  0x00007f3826ffcaad:   test   %rax,%rax
             │││╭││  0x00007f3826ffcab0:   je     0x00007f3826ffcacb
             ││││││  0x00007f3826ffcab6:   shr    $0x9,%r8
   0.55%     ││││││  0x00007f3826ffcaba:   nopw   0x0(%rax,%rax,1)
             ││││││  0x00007f3826ffcac0:   cmpb   $0x4,(%r8,%rbx,1)
   0.04%     ││││││  0x00007f3826ffcac5:   jne    0x00007f3826ffcb5b           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
             ││││││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@15 (line 80)
             ││││││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
             ││││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   2.27%     ││↘↘││  0x00007f3826ffcacb:   mov    0x30(%rsp),%rbp
   2.76%     ││  ││  0x00007f3826ffcad0:   add    $0x38,%rsp
   0.76%     ││  ││  0x00007f3826ffcad4:   mov    0x348(%r15),%rcx
   0.59%     ││  ││  0x00007f3826ffcadb:   test   %eax,(%rcx)                  ;   {poll_return}
   3.33%     ││  ││  0x00007f3826ffcadd:   vzeroupper 
   1.95%     ││  ││  0x00007f3826ffcae0:   ret    
   0.02%     ││  ││  0x00007f3826ffcae1:   cmp    %rax,%r11
             ││  ││  0x00007f3826ffcae4:   je     0x00007f3826ffc8e9
             ││  ││  0x00007f3826ffcaea:   jmp    0x00007f3826ffd3a1
             ↘│  ││  0x00007f3826ffcaef:   movabs $0x7ffe861c8,%rsi            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffe861c8})}
              │  ││  0x00007f3826ffcaf9:   mov    0x10(%rsi,%rax,4),%esi
   0.00%      │  ││  0x00007f3826ffcafd:   shl    $0x3,%rsi
              │  ││  0x00007f3826ffcb01:   mov    %rsi,%rax
              │  ╰│  0x00007f3826ffcb04:   jmp    0x00007f3826ffca73           ;* unwind (locked if synchronized)
              │   │                                                            ; - java.lang.Integer::valueOf@-3
              │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@17
              │   │                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
              │   │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
              │   │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.48%      │   │  0x00007f3826ffcb09:   mov    $0x0,%rax
   2.55%      │   │  0x00007f3826ffcb10:   jmp    0x00007f3826ffc863           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.module.DefaultRoots$$Lambda$3/0x800000004::test@5
              │   │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
              ↘   │  0x00007f3826ffcb15:   lea    0xc(,%r8,8),%rsi
                  │  0x00007f3826ffcb1d:   mov    (%rsi),%esi
                  │  0x00007f3826ffcb1f:   nop
                  │  0x00007f3826ffcb20:   test   %esi,%esi
                  ╰  0x00007f3826ffcb22:   je     0x00007f3826ffca7e
                     0x00007f3826ffcb28:   mov    0x20(%r15),%r10
                     0x00007f3826ffcb2c:   shl    $0x3,%rsi
                     0x00007f3826ffcb30:   test   %r10,%r10
....................................................................................................
  34.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 

            0x00007f3826ffc7f0:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007f3826ffc7f4:   0xf4f4f4f4                              
            0x00007f3826ffc7f8:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
            0x00007f3826ffc7fc:   0xf4f4f4f4                              
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x000000080021b858} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x40]  (sp of caller)
   0.21%    0x00007f3826ffc800:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.98%    0x00007f3826ffc804:   movabs $0x800000000,%r12
   0.84%    0x00007f3826ffc80e:   add    %r12,%r10
   0.26%    0x00007f3826ffc811:   xor    %r12,%r12
   0.00%    0x00007f3826ffc814:   cmp    %r10,%rax
            0x00007f3826ffc817:   jne    0x00007f381f4ff780           ;   {runtime_call ic_miss_stub}
   0.89%    0x00007f3826ffc81d:   nop
   0.87%    0x00007f3826ffc81e:   xchg   %ax,%ax
          [Verified Entry Point]
   0.21%    0x00007f3826ffc820:   mov    %eax,-0x14000(%rsp)
   1.07%    0x00007f3826ffc827:   sub    $0x38,%rsp
   0.80%    0x00007f3826ffc82b:   mov    %rbp,0x30(%rsp)
   4.78%    0x00007f3826ffc830:   mov    %rdx,0x18(%rsp)
   0.01%    0x00007f3826ffc835:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.44%    0x00007f3826ffc839:   mov    0x34(,%r10,8),%r10d          ; implicit exception: dispatches to 0x00007f3826ffd42f
                                                                      ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop [24]=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.84%    0x00007f3826ffc841:   mov    0x8(,%r10,8),%ebp            ; implicit exception: dispatches to 0x00007f3826ffd44b
   8.06%    0x00007f3826ffc849:   test   %rdx,%rdx
            0x00007f3826ffc84c:   je     0x00007f3826ffcb09
   0.16%    0x00007f3826ffc852:   mov    0x8(%rdx),%eax
   5.24%    0x00007f3826ffc855:   movabs $0x800000000,%r11            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.module.DefaultRoots$$Lambda$3/0x800000004::test@5
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   0.01%    0x00007f3826ffc85f:   lea    (%r11,%rax,1),%rax
   1.74%    0x00007f3826ffc863:   movabs $0x800c265e0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/NpeControlFlowBenchmark$Wrapper&apos;)}
            0x00007f3826ffc86d:   movabs $0x800000000,%r8
   0.23%    0x00007f3826ffc877:   lea    (%r8,%rbp,1),%rbp
   0.87%    0x00007f3826ffc87b:   cmp    -0xe2(%rip),%rbp        # 0x00007f3826ffc7a0
                                                                      ;   {section_word}
   4.44%    0x00007f3826ffc882:   je     0x00007f3826ffc8d2
            0x00007f3826ffc888:   cmp    -0xe7(%rip),%rbp        # 0x00007f3826ffc7a8
                                                                      ;   {section_word}
            0x00007f3826ffc88f:   je     0x00007f3826ffcbc5
            0x00007f3826ffc895:   cmp    -0xec(%rip),%rbp        # 0x00007f3826ffc7b0
                                                                      ;   {section_word}
            0x00007f3826ffc89c:   nopl   0x0(%rax)
            0x00007f3826ffc8a0:   je     0x00007f3826ffcc1d
            0x00007f3826ffc8a6:   cmp    -0xf5(%rip),%rbp        # 0x00007f3826ffc7b8
                                                                      ;   {section_word}
....................................................................................................
  32.95%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 764 

                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
                0x00007f38270008d9:   mov    0x24(%rsp),%r11d
                0x00007f38270008de:   xchg   %ax,%ax
                0x00007f38270008e0:   cmp    %r10d,%r11d
          ╭     0x00007f38270008e3:   jg     0x00007f3827000949
          │╭    0x00007f38270008e9:   jmp    0x00007f3827000965           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
          ││    0x00007f38270008ee:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    0x00007f38270008f9:   data16 data16 xchg %ax,%ax
          ││    0x00007f38270008fd:   data16 xchg %ax,%ax
   1.43%  ││ ↗  0x00007f3827000900:   mov    0x10(%r8,%r10,4),%esi
   0.99%  ││ │  0x00007f3827000905:   mov    %esi,%ecx
   0.00%  ││ │  0x00007f3827000907:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
   0.92%  ││ │  0x00007f382700090b:   mov    %rdx,%rsi
   0.90%  ││ │  0x00007f382700090e:   mov    %rcx,%rdx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
   0.21%  ││ │  0x00007f3827000911:   mov    %r10d,0x1c(%rsp)
          ││ │  0x00007f3827000916:   data16 xchg %ax,%ax
   0.90%  ││ │  0x00007f3827000919:   movabs $0x80021b218,%rax
   0.81%  ││ │  0x00007f3827000923:   call   0x00007f3826ffc800           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││ │                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││ │                                                            ;   {virtual_call}
   0.85%  ││ │  0x00007f3827000928:   nop
   0.46%  ││ │  0x00007f3827000929:   mov    0x1c(%rsp),%r10d
   3.49%  ││ │  0x00007f382700092e:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
   0.95%  ││ │  0x00007f3827000931:   mov    0x24(%rsp),%r11d
   0.47%  ││ │  0x00007f3827000936:   cmp    %r10d,%r11d
          ││╭│  0x00007f3827000939:   jle    0x00007f3827000965           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
   0.61%  ││││  0x00007f382700093f:   mov    0x348(%r15),%r8              ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
   0.57%  ││││  0x00007f3827000946:   test   %eax,(%r8)                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 992)
          ││││                                                            ;   {poll}
   5.19%  ↘│││  0x00007f3827000949:   mov    0x8(%rsp),%r8
   0.24%   │││  0x00007f382700094e:   mov    0x20(%rsp),%r9d
   0.01%   │││  0x00007f3827000953:   mov    0x10(%rsp),%rdx
   0.32%   │││  0x00007f3827000958:   cmp    %r10d,%r9d
           ││╰  0x00007f382700095b:   ja     0x00007f3827000900
           ││   0x00007f382700095d:   data16 xchg %ax,%ax
           ││   0x00007f3827000960:   jmp    0x00007f3827000999           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
           ↘↘   0x00007f3827000965:   mov    0x30(%rsp),%rbp
                0x00007f382700096a:   add    $0x38,%rsp
                0x00007f382700096e:   mov    0x348(%r15),%rcx
                0x00007f3827000975:   test   %eax,(%rcx)                  ;   {poll_return}
                0x00007f3827000977:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@26 (line 990)
....................................................................................................
  19.32%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 

            0x00007f3826ffc8a6:   cmp    -0xf5(%rip),%rbp        # 0x00007f3826ffc7b8
                                                                      ;   {section_word}
            0x00007f3826ffc8ad:   je     0x00007f3826ffcc75
            0x00007f3826ffc8b3:   cmp    -0xfa(%rip),%rbp        # 0x00007f3826ffc7c0
                                                                      ;   {section_word}
            0x00007f3826ffc8ba:   je     0x00007f3826ffccda
            0x00007f3826ffc8c0:   cmp    -0xff(%rip),%rbp        # 0x00007f3826ffc7c8
                                                                      ;   {section_word}
            0x00007f3826ffc8c7:   je     0x00007f3826ffce69
            0x00007f3826ffc8cd:   jmp    0x00007f3826ffd3c4
   1.64%    0x00007f3826ffc8d2:   test   %rdx,%rdx
   0.01%    0x00007f3826ffc8d5:   setne  %r10b
   0.32%    0x00007f3826ffc8d9:   movzbl %r10b,%r10d                  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::lambda$stream_filter_npe$0@1 (line 125)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$51/0x0000000800c26bf0::test@4
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   0.20%    0x00007f3826ffc8dd:   data16 xchg %ax,%ax
   1.92%    0x00007f3826ffc8e0:   test   %rdx,%rdx
            0x00007f3826ffc8e3:   jne    0x00007f3826ffcae1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$51/0x0000000800c26bf0::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   1.36%    0x00007f3826ffc8e9:   test   %r10d,%r10d
            0x00007f3826ffc8ec:   je     0x00007f3826ffcacb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.73%    0x00007f3826ffc8f2:   mov    0xc(%rsi),%r8d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop [24]=Oop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   1.14%    0x00007f3826ffc8f6:   mov    0x8(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007f3826ffd467
   1.27%    0x00007f3826ffc8fe:   movabs $0x800000000,%r9
   0.63%    0x00007f3826ffc908:   lea    (%r9,%rbp,1),%rbp
   0.37%    0x00007f3826ffc90c:   mov    %r8d,%r9d
            0x00007f3826ffc90f:   shl    $0x3,%r9                     ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
            0x00007f3826ffc913:   mov    %rdx,%rcx
   0.60%    0x00007f3826ffc916:   shr    $0x3,%rcx                    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.FindOps$FindSink::accept@14 (line 181)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
   0.79%    0x00007f3826ffc91a:   movabs $0x7f38393f2000,%rbx
            0x00007f3826ffc924:   cmp    -0x15b(%rip),%rbp        # 0x00007f3826ffc7d0
                                                                      ;   {section_word}
   0.00%    0x00007f3826ffc92b:   je     0x00007f3826ffc950
            0x00007f3826ffc931:   cmp    -0x160(%rip),%rbp        # 0x00007f3826ffc7d8
                                                                      ;   {section_word}
            0x00007f3826ffc938:   je     0x00007f3826ffcd65
            0x00007f3826ffc93e:   cmp    -0x165(%rip),%rbp        # 0x00007f3826ffc7e0
                                                                      ;   {section_word}
            0x00007f3826ffc945:   je     0x00007f3826ffcee5
            0x00007f3826ffc94b:   jmp    0x00007f3826ffd3d8
   0.67%    0x00007f3826ffc950:   mov    0x10(,%r8,8),%ebp            ; ImmutableOopMap {rdx=Oop rsi=Oop r8=NarrowOop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  10.99%  <total for region 4>

....[Hottest Regions]...............................................................................
  34.91%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 
  32.95%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 
  19.32%       jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 764 
  10.99%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 
   0.19%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   1.11%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.85%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 754 
  19.32%       jvmci, level 4  java.util.Spliterators$ArraySpliterator::forEachRemaining, version 3, compile id 764 
   1.07%               kernel  [unknown] 
   0.12%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.08%                       <unknown> 
   0.03%            libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  OtherRegionsTable::occupied 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.35%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%       jvmci, level 4
   1.07%               kernel
   0.48%            libjvm.so
   0.08%                     
   0.07%         libc-2.31.so
   0.03%       hsdis-amd64.so
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%          interpreter
   0.02%  libjvmcicompiler.so
   0.01%       perf-33396.map
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 236.439 us/op
# Warmup Iteration   2: 236.664 us/op
# Warmup Iteration   3: 217.643 us/op
# Warmup Iteration   4: 235.414 us/op
# Warmup Iteration   5: 235.372 us/op
Iteration   1: 236.067 us/op
Iteration   2: 236.056 us/op
Iteration   3: 235.756 us/op
Iteration   4: 228.819 us/op
Iteration   5: 228.898 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  233.119 ±(99.9%) 14.985 us/op [Average]
  (min, avg, max) = (228.819, 233.119, 236.067), stdev = 3.892
  CI (99.9%): [218.134, 248.105] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 198053 total address lines.
Perf output processed (skipped 58.803 seconds):
 Column 1: cycles (50703 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 753 

   0.01%       0x00007fd732ffdb03:   shl    $0x3,%r10                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@14 (line 88)
               0x00007fd732ffdb07:   mov    %r11d,%r8d
               0x00007fd732ffdb0a:   mov    $0x1,%r11d
          ╭    0x00007fd732ffdb10:   jmp    0x00007fd732ffdb36           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          │    0x00007fd732ffdb15:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
          │↗   0x00007fd732ffdb20:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
  25.79%  ││   0x00007fd732ffdb25:   mov    %r8d,%ecx                    ; ImmutableOopMap {rsi=Oop r9=NarrowOop r10=Oop }
          ││                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.00%  ││   0x00007fd732ffdb28:   add    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fd732ffdbc6
  55.19%  ││   0x00007fd732ffdb30:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
   0.00%  ││   0x00007fd732ffdb33:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
  17.12%  ↘│   0x00007fd732ffdb36:   cmp    %r11d,%eax
           ╰   0x00007fd732ffdb39:   jg     0x00007fd732ffdb20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
            ↗  0x00007fd732ffdb3b:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@40 (line 93)
            │  0x00007fd732ffdb3e:   mov    0x10(%rsp),%rbp
            │  0x00007fd732ffdb43:   add    $0x18,%rsp
            │  0x00007fd732ffdb47:   mov    0x348(%r15),%rcx
            │  0x00007fd732ffdb4e:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%    │  0x00007fd732ffdb50:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
            │  0x00007fd732ffdb51:   mov    $0x0,%r8d
            ╰  0x00007fd732ffdb57:   jmp    0x00007fd732ffdb3b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@40 (line 93)
               0x00007fd732ffdb59:   mov    $0x14,%r10
               0x00007fd732ffdb60:   movl   $0xffffffe5,0x370(%r15)      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
               0x00007fd732ffdb6b:   mov    %r10,0x378(%r15)
               0x00007fd732ffdb72:   call   0x00007fd72b50527a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 753 
   0.40%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 753 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 753 
   0.01%            libjvm.so  defaultStream::write 
   0.91%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 753 
   1.51%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 776 
   0.01%         libc-2.31.so  realloc_check 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  stringStream::write 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.14%       jvmci, level 4
   1.51%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1952308.822 us/op
# Warmup Iteration   2: 1945259.274 us/op
# Warmup Iteration   3: 1942797.280 us/op
# Warmup Iteration   4: 1945058.514 us/op
# Warmup Iteration   5: 1944079.434 us/op
Iteration   1: 1945346.128 us/op
Iteration   2: 1944486.581 us/op
Iteration   3: 1944372.111 us/op
Iteration   4: 1944925.767 us/op
Iteration   5: 1943550.968 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  1944536.311 ±(99.9%) 2588.692 us/op [Average]
  (min, avg, max) = (1943550.968, 1944536.311, 1945346.128), stdev = 672.275
  CI (99.9%): [1941947.619, 1947125.003] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 194383 total address lines.
Perf output processed (skipped 66.964 seconds):
 Column 1: cycles (59755 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   5.62%         libc-2.31.so  _int_malloc 
   5.57%            libjvm.so  stringStream::write 
   3.73%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.66%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.52%            libjvm.so  CodeBlob::is_compiled 
   3.46%                       <unknown> 
   3.02%         libc-2.31.so  __strncat_ssse3 
   2.70%            libjvm.so  frame::sender 
   2.66%            libjvm.so  CodeCache::find_blob 
   2.61%                       <unknown> 
   2.59%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.52%         libc-2.31.so  _int_realloc 
   2.50%         libc-2.31.so  ptmalloc_init.part.0 
   2.45%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.17%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.98%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.98%                       <unknown> 
   1.80%         libc-2.31.so  __strncat_ssse3 
   1.74%                       <unknown> 
   1.56%               kernel  [unknown] 
  42.17%  <...other 561 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  11.46%                       <unknown> 
   9.21%         libc-2.31.so  __strncat_ssse3 
   6.72%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   5.65%            libjvm.so  stringStream::write 
   5.62%         libc-2.31.so  _int_malloc 
   4.37%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.66%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.52%            libjvm.so  CodeBlob::is_compiled 
   3.18%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.83%            libjvm.so  frame::sender 
   2.67%            libjvm.so  frame::sender_for_interpreter_frame 
   2.66%            libjvm.so  CodeCache::find_blob 
   2.53%         libc-2.31.so  ptmalloc_init.part.0 
   2.52%         libc-2.31.so  _int_realloc 
   2.39%               kernel  [unknown] 
   2.09%            libjvm.so  outputStream::print 
   1.98%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.47%         libc-2.31.so  _nl_parse_alt_digit 
   1.19%         libc-2.31.so  _nl_cleanup_time 
   0.97%            libjvm.so  CodeBlob::is_deoptimization_stub 
  23.31%  <...other 205 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  53.98%            libjvm.so
  29.94%         libc-2.31.so
  11.46%                     
   2.39%               kernel
   0.71%       jvmci, level 4
   0.56%           ld-2.31.so
   0.31%   libpthread-2.31.so
   0.26%               [vdso]
   0.16%         runtime stub
   0.14%     Unknown, level 0
   0.04%       perf-33512.map
   0.03%           libjava.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:06

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

Benchmark                                             (nullThreshold)  (size)  Mode  Cnt        Score      Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                     0  262144  avgt    5      234.521 ±   13.567  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm                0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_not_npe_do_statement                    16  262144  avgt    5     1454.933 ±    1.019  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm               16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                             0  262144  avgt    5      230.768 ±    0.791  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                        0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                            16  262144  avgt    5     1454.760 ±    1.693  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                       16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                           0  262144  avgt    5     5081.739 ±   13.562  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                      0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                          16  262144  avgt    5     5224.355 ±  728.256  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                     16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                               0  262144  avgt    5      233.119 ±   14.985  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                          0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                              16  262144  avgt    5  1944536.311 ± 2588.692  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                         16  262144  avgt               NaN               ---
