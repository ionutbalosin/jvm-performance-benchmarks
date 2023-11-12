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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 302.685 us/op
# Warmup Iteration   2: 300.426 us/op
# Warmup Iteration   3: 300.081 us/op
# Warmup Iteration   4: 300.206 us/op
# Warmup Iteration   5: 300.063 us/op
Iteration   1: 300.160 us/op
Iteration   2: 300.199 us/op
Iteration   3: 300.177 us/op
Iteration   4: 300.044 us/op
Iteration   5: 303.149 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops":
  300.746 ±(99.9%) 5.178 us/op [Average]
  (min, avg, max) = (300.044, 300.746, 303.149), stdev = 1.345
  CI (99.9%): [295.568, 305.924] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.initial_loops:asm":
PrintAssembly processed: 225834 total address lines.
Perf output processed (skipped 60.686 seconds):
 Column 1: cycles (50528 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 

              0x00007fd63ed80795:   jg     0x00007fd63ed80780           ;   {no_reloc}
              0x00007fd63ed80797:   lea    -0x8(%r10),%ecx
              0x00007fd63ed8079b:   cmp    $0x80000008,%r10d
              0x00007fd63ed807a2:   mov    $0x80000000,%ebp
              0x00007fd63ed807a7:   cmovl  %ebp,%ecx
          ╭   0x00007fd63ed807aa:   jmp    0x00007fd63ed80819
          │   0x00007fd63ed807af:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd63ed807ba:   data16 data16 xchg %ax,%ax
          │   0x00007fd63ed807be:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@7 (line 83)
   0.10%  │↗  0x00007fd63ed807c0:   mov    0x10(%rdi,%r9,4),%ebp        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@28 (line 84)
   0.01%  ││  0x00007fd63ed807c5:   add    0xc(%r11,%r9,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   9.58%  ││  0x00007fd63ed807ca:   mov    %ebp,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   8.78%  ││  0x00007fd63ed807cf:   add    0x14(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.00%  ││  0x00007fd63ed807d4:   mov    %ebp,0x14(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.37%  ││  0x00007fd63ed807d9:   add    0x18(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   1.07%  ││  0x00007fd63ed807de:   mov    %ebp,0x18(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.30%  ││  0x00007fd63ed807e3:   add    0x1c(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.10%  ││  0x00007fd63ed807e8:   mov    %ebp,0x1c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.32%  ││  0x00007fd63ed807ed:   add    0x20(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.00%  ││  0x00007fd63ed807f2:   mov    %ebp,0x20(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.18%  ││  0x00007fd63ed807f7:   add    0x24(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.02%  ││  0x00007fd63ed807fc:   mov    %ebp,0x24(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.22%  ││  0x00007fd63ed80801:   add    0x28(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.01%  ││  0x00007fd63ed80806:   mov    %ebp,0x28(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.29%  ││  0x00007fd63ed8080b:   add    0x2c(%rdi,%r9,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@29 (line 84)
   0.01%  ││  0x00007fd63ed80810:   mov    %ebp,0x2c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@30 (line 84)
   4.09%  ││  0x00007fd63ed80815:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@31 (line 83)
          ↘│  0x00007fd63ed80819:   cmp    %r9d,%ecx
           ╰  0x00007fd63ed8081c:   jg     0x00007fd63ed807c0
              0x00007fd63ed8081e:   xchg   %ax,%ax
              0x00007fd63ed80820:   jmp    0x00007fd63ed80860
              0x00007fd63ed80825:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd63ed80830:   data16 data16 xchg %ax,%ax
              0x00007fd63ed80834:   nopl   0x0(%rax,%rax,1)
              0x00007fd63ed8083c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  49.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@59 (line 88)
                0x00007fd63ed80880:   mov    $0x1,%r9d
          ╭     0x00007fd63ed80886:   jmp    0x00007fd63ed808b2           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@39 (line 87)
          │     0x00007fd63ed8088b:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
          │     0x00007fd63ed80896:   data16 data16 xchg %ax,%ax
          │     0x00007fd63ed8089a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 87)
          │↗    0x00007fd63ed808a0:   mov    0x10(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
   0.01%  ││    0x00007fd63ed808a5:   add    0xc(%rdi,%r9,4),%ebx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
          ││    0x00007fd63ed808aa:   mov    %ebx,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
          ││    0x00007fd63ed808af:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 87)
          ↘│    0x00007fd63ed808b2:   cmp    %r9d,%r8d
           ╰    0x00007fd63ed808b5:   jg     0x00007fd63ed808a0
                0x00007fd63ed808b7:   mov    %r9d,%r8d
            ╭   0x00007fd63ed808ba:   jmp    0x00007fd63ed80919
            │   0x00007fd63ed808bf:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@44 (line 87)
   0.09%    │↗  0x00007fd63ed808c0:   mov    0x10(%r11,%r8,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@65 (line 88)
   0.01%    ││  0x00007fd63ed808c5:   add    0xc(%rdi,%r8,4),%r9d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   9.67%    ││  0x00007fd63ed808ca:   mov    %r9d,0x10(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   8.53%    ││  0x00007fd63ed808cf:   add    0x14(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%    ││  0x00007fd63ed808d4:   mov    %r9d,0x14(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.38%    ││  0x00007fd63ed808d9:   add    0x18(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   1.04%    ││  0x00007fd63ed808de:   mov    %r9d,0x18(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.28%    ││  0x00007fd63ed808e3:   add    0x1c(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.09%    ││  0x00007fd63ed808e8:   mov    %r9d,0x1c(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.20%    ││  0x00007fd63ed808ed:   add    0x20(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.00%    ││  0x00007fd63ed808f2:   mov    %r9d,0x20(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.13%    ││  0x00007fd63ed808f7:   add    0x24(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.01%    ││  0x00007fd63ed808fc:   mov    %r9d,0x24(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.11%    ││  0x00007fd63ed80901:   add    0x28(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.00%    ││  0x00007fd63ed80906:   mov    %r9d,0x28(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.16%    ││  0x00007fd63ed8090b:   add    0x2c(%r11,%r8,4),%r9d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@66 (line 88)
   0.02%    ││  0x00007fd63ed80910:   mov    %r9d,0x2c(%rdi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@67 (line 88)
   4.15%    ││  0x00007fd63ed80915:   lea    0x8(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops@68 (line 87)
            ↘│  0x00007fd63ed80919:   cmp    %r8d,%ecx
             ╰  0x00007fd63ed8091c:   jg     0x00007fd63ed808c0
                0x00007fd63ed8091e:   xchg   %ax,%ax
                0x00007fd63ed80920:   jmp    0x00007fd63ed80960
                0x00007fd63ed80925:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fd63ed80930:   data16 data16 xchg %ax,%ax
                0x00007fd63ed80934:   nopl   0x0(%rax,%rax,1)
                0x00007fd63ed8093c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 
  48.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 
   0.21%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.90%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::initial_loops, version 4, compile id 996 
   1.25%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFusionBenchmark_initial_loops_jmhTest::initial_loops_avgt_jmhStub, version 4, compile id 1021 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  printf_to_env 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.15%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.39%      jvmci, level 4
   1.25%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 580.443 us/op
# Warmup Iteration   2: 576.616 us/op
# Warmup Iteration   3: 576.616 us/op
# Warmup Iteration   4: 576.441 us/op
# Warmup Iteration   5: 576.113 us/op
Iteration   1: 576.217 us/op
Iteration   2: 576.184 us/op
Iteration   3: 576.131 us/op
Iteration   4: 576.103 us/op
Iteration   5: 576.123 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion":
  576.152 ±(99.9%) 0.183 us/op [Average]
  (min, avg, max) = (576.103, 576.152, 576.217), stdev = 0.047
  CI (99.9%): [575.969, 576.334] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark.manual_loops_fusion:asm":
PrintAssembly processed: 222902 total address lines.
Perf output processed (skipped 60.527 seconds):
 Column 1: cycles (50547 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 961 

               0x00007fcd6ed7bf14:   jmp    0x00007fcd6ed7bef0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 99)
            ↗  0x00007fcd6ed7bf16:   mov    0x10(%rsp),%rbp              ;   {no_reloc}
            │  0x00007fcd6ed7bf1b:   add    $0x18,%rsp
            │  0x00007fcd6ed7bf1f:   nop
            │  0x00007fcd6ed7bf20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007fcd6ed7bf27:   ja     0x00007fcd6ed7c07e
            │  0x00007fcd6ed7bf2d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@2 (line 99)
            │  0x00007fcd6ed7bf2e:   lea    -0x8(%r10),%r9d
   0.00%    │  0x00007fcd6ed7bf32:   cmp    %ecx,%r9d
          ╭ │  0x00007fcd6ed7bf35:   jle    0x00007fcd6ed7c014
          │ │  0x00007fcd6ed7bf3b:   nopl   0x0(%rax,%rax,1)
          │↗│  0x00007fcd6ed7bf40:   mov    0x10(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bf45:   add    0xc(%r11,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   3.01%  │││  0x00007fcd6ed7bf4a:   mov    %ebx,0x10(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.15%  │││  0x00007fcd6ed7bf4f:   add    0xc(%r8,%rcx,4),%ebx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   4.06%  │││  0x00007fcd6ed7bf54:   mov    %ebx,0x10(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.17%  │││  0x00007fcd6ed7bf59:   mov    0x14(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bf5e:   add    0x10(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.37%  │││  0x00007fcd6ed7bf63:   mov    %ebx,0x14(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.51%  │││  0x00007fcd6ed7bf68:   add    0x10(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.18%  │││  0x00007fcd6ed7bf6d:   mov    %ebx,0x14(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.00%  │││  0x00007fcd6ed7bf72:   mov    0x18(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bf77:   add    0x14(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.41%  │││  0x00007fcd6ed7bf7c:   mov    %ebx,0x18(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.42%  │││  0x00007fcd6ed7bf81:   add    0x14(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.12%  │││  0x00007fcd6ed7bf86:   mov    %ebx,0x18(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   3.93%  │││  0x00007fcd6ed7bf8b:   mov    0x1c(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bf90:   add    0x18(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.36%  │││  0x00007fcd6ed7bf95:   mov    %ebx,0x1c(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.54%  │││  0x00007fcd6ed7bf9a:   add    0x18(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.19%  │││  0x00007fcd6ed7bf9f:   mov    %ebx,0x1c(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   3.95%  │││  0x00007fcd6ed7bfa4:   mov    0x20(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bfa9:   add    0x1c(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.36%  │││  0x00007fcd6ed7bfae:   mov    %ebx,0x20(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.54%  │││  0x00007fcd6ed7bfb3:   add    0x1c(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.51%  │││  0x00007fcd6ed7bfb8:   mov    %ebx,0x20(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.00%  │││  0x00007fcd6ed7bfbd:   mov    0x24(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bfc2:   add    0x20(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.29%  │││  0x00007fcd6ed7bfc7:   mov    %ebx,0x24(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.56%  │││  0x00007fcd6ed7bfcc:   add    0x20(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.39%  │││  0x00007fcd6ed7bfd1:   mov    %ebx,0x24(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.07%  │││  0x00007fcd6ed7bfd6:   mov    0x28(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bfdb:   add    0x24(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.25%  │││  0x00007fcd6ed7bfe0:   mov    %ebx,0x28(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.61%  │││  0x00007fcd6ed7bfe5:   add    0x24(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.62%  │││  0x00007fcd6ed7bfea:   mov    %ebx,0x28(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   3.94%  │││  0x00007fcd6ed7bfef:   mov    0x2c(%r8,%rcx,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
          │││  0x00007fcd6ed7bff4:   add    0x28(%r11,%rcx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@29 (line 100)
   1.28%  │││  0x00007fcd6ed7bff9:   mov    %ebx,0x2c(%r11,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@30 (line 100)
   1.51%  │││  0x00007fcd6ed7bffe:   add    0x28(%r8,%rcx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@50 (line 101)
   5.30%  │││  0x00007fcd6ed7c003:   mov    %ebx,0x2c(%r8,%rcx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@51 (line 101)
   4.27%  │││  0x00007fcd6ed7c008:   lea    0x8(%rcx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@52 (line 99)
          │││  0x00007fcd6ed7c00b:   cmp    %ecx,%r9d
          │╰│  0x00007fcd6ed7c00e:   jg     0x00007fcd6ed7bf40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@7 (line 99)
          ↘ │  0x00007fcd6ed7c014:   cmp    %ecx,%r10d
            ╰  0x00007fcd6ed7c017:   jle    0x00007fcd6ed7bf16
               0x00007fcd6ed7c01d:   data16 xchg %ax,%ax                 ;   {no_reloc}
               0x00007fcd6ed7c020:   mov    0x10(%r8,%rcx,4),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion@28 (line 100)
....................................................................................................
  97.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 961 
   0.25%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.25%  <...other 414 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFusionBenchmark::manual_loops_fusion, version 3, compile id 961 
   1.75%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  __strncmp_avx2 
   0.20%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.75%               kernel
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%       libz.so.1.2.11
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:48

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

Benchmark                                    (size)  Mode  Cnt    Score   Error  Units
LoopFusionBenchmark.initial_loops            262144  avgt    5  300.746 ± 5.178  us/op
LoopFusionBenchmark.initial_loops:asm        262144  avgt           NaN            ---
LoopFusionBenchmark.manual_loops_fusion      262144  avgt    5  576.152 ± 0.183  us/op
LoopFusionBenchmark.manual_loops_fusion:asm  262144  avgt           NaN            ---
