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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:26:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.908 ns/op
# Warmup Iteration   2: 1.889 ns/op
# Warmup Iteration   3: 1.888 ns/op
# Warmup Iteration   4: 1.888 ns/op
# Warmup Iteration   5: 1.888 ns/op
Iteration   1: 1.888 ns/op
Iteration   2: 1.888 ns/op
Iteration   3: 1.888 ns/op
Iteration   4: 1.888 ns/op
Iteration   5: 1.888 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.888 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.888, 1.888, 1.888), stdev = 0.001
  CI (99.9%): [1.888, 1.888] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 127655 total address lines.
Perf output processed (skipped 56.237 seconds):
 Column 1: cycles (50472 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 556 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                    0x00007fea6c63a921:   mov    0x10(%r12,%rbp,8),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
                    0x00007fea6c63a926:   test   %edi,%edi
                    0x00007fea6c63a928:   jne    0x00007fea6c63aa70           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                    0x00007fea6c63a92e:   incl   0xc(%r12,%rbx,8)             ; implicit exception: dispatches to 0x00007fea6c63aa74
                                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.03%            0x00007fea6c63a933:   lea    (%r12,%rbp,8),%r11           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                    0x00007fea6c63a937:   lea    (%r12,%r10,8),%r8            ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                    0x00007fea6c63a93b:   mov    $0xfa0,%ecx                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
                    0x00007fea6c63a940:   mov    $0x1,%eax
          ╭         0x00007fea6c63a945:   jmp    0x00007fea6c63a9d8
          │         0x00007fea6c63a94a:   nopw   0x0(%rax,%rax,1)
   0.92%  │    ↗    0x00007fea6c63a950:   mov    %ebx,%eax                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   1.21%  │    │↗   0x00007fea6c63a952:   movslq %eax,%r9
   2.19%  │    ││   0x00007fea6c63a955:   movsbl 0x10(%r8,%r9,1),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.82%  │    ││   0x00007fea6c63a95b:   mov    0x10(%r11,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   0.95%  │    ││   0x00007fea6c63a960:   test   %edi,%edi
          │╭   ││   0x00007fea6c63a962:   jne    0x00007fea6c63a9f9           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.33%  ││   ││   0x00007fea6c63a968:   incl   0xc(%r12,%rbx,8)             ; implicit exception: dispatches to 0x00007fea6c63aa74
          ││   ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
  16.73%  ││   ││   0x00007fea6c63a96d:   movsbl 0x11(%r8,%r9,1),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.04%  ││   ││   0x00007fea6c63a973:   mov    0x14(%r11,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.40%  ││   ││   0x00007fea6c63a978:   test   %edi,%edi
   0.61%  ││   ││   0x00007fea6c63a97a:   nopw   0x0(%rax,%rax,1)
   1.93%  ││╭  ││   0x00007fea6c63a980:   jne    0x00007fea6c63a9f2           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   1.05%  │││  ││   0x00007fea6c63a986:   incl   0xc(%r12,%rbx,8)             ; implicit exception: dispatches to 0x00007fea6c63aa74
          │││  ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
  17.94%  │││  ││   0x00007fea6c63a98b:   movsbl 0x12(%r8,%r9,1),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   0.90%  │││  ││   0x00007fea6c63a991:   mov    0x18(%r11,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.25%  │││  ││   0x00007fea6c63a996:   test   %edi,%edi
          │││╭ ││   0x00007fea6c63a998:   jne    0x00007fea6c63a9f6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.48%  ││││ ││   0x00007fea6c63a99e:   xchg   %ax,%ax
   2.49%  ││││ ││   0x00007fea6c63a9a0:   incl   0xc(%r12,%rbx,8)             ; implicit exception: dispatches to 0x00007fea6c63aa74
          ││││ ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   9.28%  ││││ ││   0x00007fea6c63a9a5:   movsbl 0x13(%r8,%r9,1),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.39%  ││││ ││   0x00007fea6c63a9ab:   mov    0x1c(%r11,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.88%  ││││ ││   0x00007fea6c63a9b0:   test   %edi,%edi
          ││││╭││   0x00007fea6c63a9b2:   jne    0x00007fea6c63a9ef           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
          │││││││                                                             ;   {no_reloc}
   1.00%  │││││││   0x00007fea6c63a9b8:   incl   0xc(%r12,%rbx,8)             ; implicit exception: dispatches to 0x00007fea6c63aa74
          │││││││                                                             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
  29.56%  │││││││   0x00007fea6c63a9bd:   lea    0x4(%rax),%ebx
   0.83%  │││││││   0x00007fea6c63a9c0:   cmp    %edx,%ebx
          │││││╰│   0x00007fea6c63a9c2:   jl     0x00007fea6c63a950           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │││││ │   0x00007fea6c63a9c4:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=NarrowOop r11=Oop r8=Oop rbp=NarrowOop }
          │││││ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.02%  │││││ │   0x00007fea6c63a9cb:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │││││ │                                                             ;   {poll}
   0.18%  │││││ │   0x00007fea6c63a9ce:   cmp    $0x9d7d,%ebx
          │││││ │   0x00007fea6c63a9d4:   jge    0x00007fea6c63aa1c
          │││││ │   0x00007fea6c63a9d6:   mov    %ebx,%eax                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
          ↘││││ │   0x00007fea6c63a9d8:   mov    $0x9d7d,%edx
           ││││ │   0x00007fea6c63a9dd:   sub    %eax,%edx
   0.01%   ││││ │   0x00007fea6c63a9df:   cmp    $0xfa0,%edx
           ││││ │   0x00007fea6c63a9e5:   cmova  %ecx,%edx
           ││││ │   0x00007fea6c63a9e8:   add    %eax,%edx
           ││││ ╰   0x00007fea6c63a9ea:   jmp    0x00007fea6c63a952
           │││↘     0x00007fea6c63a9ef:   add    $0x2,%eax
           │↘│      0x00007fea6c63a9f2:   inc    %eax
           │ │   ╭  0x00007fea6c63a9f4:   jmp    0x00007fea6c63a9f9
           │ ↘   │  0x00007fea6c63a9f6:   add    $0x2,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
           ↘     ↘  0x00007fea6c63a9f9:   mov    $0xffffff45,%esi
                    0x00007fea6c63a9fe:   mov    %eax,(%rsp)
....................................................................................................
  98.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 556 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 556 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 584 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 556 
   1.20%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 584 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  MetaspaceCriticalAllocation::block_if_concurrent_purge 
   0.13%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.49%         c2, level 4
   1.20%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-1941867.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:27:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.178 ns/op
# Warmup Iteration   2: 2.159 ns/op
# Warmup Iteration   3: 2.157 ns/op
# Warmup Iteration   4: 2.158 ns/op
# Warmup Iteration   5: 2.157 ns/op
Iteration   1: 2.317 ns/op
Iteration   2: 2.158 ns/op
Iteration   3: 2.158 ns/op
Iteration   4: 2.212 ns/op
Iteration   5: 2.211 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.211 ±(99.9%) 0.250 ns/op [Average]
  (min, avg, max) = (2.158, 2.211, 2.317), stdev = 0.065
  CI (99.9%): [1.961, 2.461] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 127760 total address lines.
Perf output processed (skipped 56.240 seconds):
 Column 1: cycles (51017 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 

                  0x00007f0e00638f05:   test   %r10d,%r10d
                  0x00007f0e00638f08:   jbe    0x00007f0e0063905f
                  0x00007f0e00638f0e:   cmp    $0x9d7f,%r10d
                  0x00007f0e00638f15:   jbe    0x00007f0e0063905f
                  0x00007f0e00638f1b:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                  0x00007f0e00638f1f:   lea    (%r12,%r9,8),%rax            ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                  0x00007f0e00638f23:   mov    $0x3e8,%edi
                  0x00007f0e00638f28:   xor    %r8d,%r8d
   0.00%  ╭       0x00007f0e00638f2b:   jmp    0x00007f0e00638f4d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.03%  │ ↗     0x00007f0e00638f2d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r9=NarrowOop rdx=Oop rax=Oop rbp=NarrowOop }
          │ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.03%  │ │     0x00007f0e00638f34:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                               ;   {poll}
   0.13%  │ │     0x00007f0e00638f37:   nopw   0x0(%rax,%rax,1)
          │ │     0x00007f0e00638f40:   cmp    $0x9d80,%r8d
          │ │     0x00007f0e00638f47:   jge    0x00007f0e0063904c           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   0.01%  ↘ │     0x00007f0e00638f4d:   mov    $0x9d80,%esi
            │     0x00007f0e00638f52:   sub    %r8d,%esi
   0.01%    │     0x00007f0e00638f55:   cmp    $0x3e8,%esi
            │     0x00007f0e00638f5b:   cmova  %edi,%esi
   0.01%    │     0x00007f0e00638f5e:   add    %r8d,%esi
   0.01%   ╭│     0x00007f0e00638f61:   jmp    0x00007f0e00638f85
   0.05%   ││↗    0x00007f0e00638f63:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f0e00639078
  14.98%   │││    0x00007f0e00638f68:   cmp    $0x102b130,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
           │││    0x00007f0e00638f6f:   jne    0x00007f0e0063900c
   4.23%   │││    0x00007f0e00638f75:   lea    (%r12,%r11,8),%r10           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.07%   │││    0x00007f0e00638f79:   incl   0xc(%r10)                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
  16.63%   │││ ↗  0x00007f0e00638f7d:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   0.15%   │││ │  0x00007f0e00638f80:   cmp    %esi,%r8d
           │╰│ │  0x00007f0e00638f83:   jge    0x00007f0e00638f2d           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   0.07%   ↘ │ │  0x00007f0e00638f85:   movslq %r8d,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   8.79%     │ │  0x00007f0e00638f88:   movsbl 0x10(%rax,%r10,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   9.03%     │ │  0x00007f0e00638f8e:   mov    0x10(%rdx,%r10,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.56%     │ │  0x00007f0e00638f93:   test   %ebx,%ebx
             ╰ │  0x00007f0e00638f95:   je     0x00007f0e00638f63
   0.04%       │  0x00007f0e00638f97:   test   %ebx,%ebx
              ╭│  0x00007f0e00638f99:   jl     0x00007f0e00638fc4
   3.71%      ││  0x00007f0e00638f9b:   nopl   0x0(%rax,%rax,1)
   4.70%      ││  0x00007f0e00638fa0:   cmp    $0x1,%ebx
              ││  0x00007f0e00638fa3:   jne    0x00007f0e00638fe8           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.07%      ││  0x00007f0e00638fa9:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f0e0063908c
   7.49%      ││  0x00007f0e00638fae:   cmp    $0x102b338,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
              ││  0x00007f0e00638fb4:   jne    0x00007f0e0063902c
   4.25%      ││  0x00007f0e00638fba:   lea    (%r12,%r11,8),%r10           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   4.17%      ││  0x00007f0e00638fbe:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
  17.21%      │╰  0x00007f0e00638fc2:   jmp    0x00007f0e00638f7d
              ↘   0x00007f0e00638fc4:   mov    $0xffffff45,%esi
                  0x00007f0e00638fc9:   mov    %r8d,(%rsp)
                  0x00007f0e00638fcd:   mov    %r11d,0x4(%rsp)
                  0x00007f0e00638fd2:   mov    %ebx,0x8(%rsp)
                  0x00007f0e00638fd6:   mov    %r9d,0xc(%rsp)
                  0x00007f0e00638fdb:   call   0x00007f0e000c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [12]=NarrowOop }
                                                                            ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
....................................................................................................
  97.40%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   1.16%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 597 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.68%  <...other 236 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   2.27%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 597 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.44%         c2, level 4
   2.27%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:25:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.218 ns/op
# Warmup Iteration   2: 2.197 ns/op
# Warmup Iteration   3: 2.197 ns/op
# Warmup Iteration   4: 2.197 ns/op
# Warmup Iteration   5: 2.196 ns/op
Iteration   1: 2.197 ns/op
Iteration   2: 2.197 ns/op
Iteration   3: 2.197 ns/op
Iteration   4: 2.195 ns/op
Iteration   5: 2.198 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.197 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (2.195, 2.197, 2.198), stdev = 0.001
  CI (99.9%): [2.192, 2.202] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 126204 total address lines.
Perf output processed (skipped 56.152 seconds):
 Column 1: cycles (50510 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 

                    0x00007f20a063a00e:   cmp    $0x9d7f,%r10d
                    0x00007f20a063a015:   jbe    0x00007f20a063a1f3
                    0x00007f20a063a01b:   nopl   0x0(%rax,%rax,1)
                    0x00007f20a063a020:   mov    0xc(%r12,%rcx,8),%r10d       ; implicit exception: dispatches to 0x00007f20a063a1f3
                                                                              ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                    0x00007f20a063a025:   test   %r10d,%r10d
                    0x00007f20a063a028:   jbe    0x00007f20a063a1f3
                    0x00007f20a063a02e:   cmp    $0x9d7f,%r10d
                    0x00007f20a063a035:   jbe    0x00007f20a063a1f3
   0.00%            0x00007f20a063a03b:   lea    (%r12,%rbp,8),%rbx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                    0x00007f20a063a03f:   lea    (%r12,%rcx,8),%rdx           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                    0x00007f20a063a043:   mov    $0x3e8,%r9d
                    0x00007f20a063a049:   xor    %r11d,%r11d
          ╭         0x00007f20a063a04c:   jmp    0x00007f20a063a06d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.00%  │ ↗       0x00007f20a063a04e:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rdx=Oop rbp=NarrowOop }
          │ │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.02%  │ │       0x00007f20a063a055:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                                 ;   {poll}
   0.14%  │ │       0x00007f20a063a058:   nopl   0x0(%rax,%rax,1)
          │ │       0x00007f20a063a060:   cmp    $0x9d80,%r11d
          │ │       0x00007f20a063a067:   jge    0x00007f20a063a1e0           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
          ↘ │       0x00007f20a063a06d:   mov    $0x9d80,%edi
   0.01%    │       0x00007f20a063a072:   sub    %r11d,%edi
   0.00%    │       0x00007f20a063a075:   cmp    $0x3e8,%edi
            │       0x00007f20a063a07b:   cmova  %r9d,%edi
            │       0x00007f20a063a07f:   add    %r11d,%edi
   0.02%   ╭│       0x00007f20a063a082:   jmp    0x00007f20a063a0a5
           ││       0x00007f20a063a084:   nopl   0x0(%rax,%rax,1)
           ││       0x00007f20a063a08c:   data16 data16 xchg %ax,%ax
   5.29%   ││    ↗  0x00007f20a063a090:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
           ││    │  0x00007f20a063a094:   incl   0x14(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
   9.30%   ││ ↗ ↗│  0x00007f20a063a098:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   5.01%   ││ │ ││  0x00007f20a063a09b:   nopl   0x0(%rax,%rax,1)
   3.95%   ││ │ ││  0x00007f20a063a0a0:   cmp    %edi,%r11d
           │╰ │ ││  0x00007f20a063a0a3:   jge    0x00007f20a063a04e           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   2.03%   ↘  │ ││  0x00007f20a063a0a5:   movslq %r11d,%r10
   6.10%      │ ││  0x00007f20a063a0a8:   mov    0x10(%rbx,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   5.89%      │ ││  0x00007f20a063a0ad:   movsbl 0x10(%rdx,%r10,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   4.40%      │ ││  0x00007f20a063a0b3:   cmp    $0x1,%r10d
             ╭│ ││  0x00007f20a063a0b7:   jne    0x00007f20a063a0dc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.66%     ││ ││  0x00007f20a063a0b9:   nopl   0x0(%rax)
   0.38%     ││ ││  0x00007f20a063a0c0:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f20a063a21c
   9.96%     ││ ││  0x00007f20a063a0c5:   cmp    $0x102b338,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             ││ ││  0x00007f20a063a0cc:   jne    0x00007f20a063a17c
   0.58%     ││ ││  0x00007f20a063a0d2:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.52%     ││ ││  0x00007f20a063a0d6:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   8.99%     │╰ ││  0x00007f20a063a0da:   jmp    0x00007f20a063a098
   1.28%     ↘  ││  0x00007f20a063a0dc:   nopl   0x0(%rax)
   5.95%        ││  0x00007f20a063a0e0:   cmp    $0x1,%r10d
               ╭││  0x00007f20a063a0e4:   jge    0x00007f20a063a11a
   0.02%       │││  0x00007f20a063a0e6:   test   %r10d,%r10d
               │││  0x00007f20a063a0e9:   jne    0x00007f20a063a19c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.01%       │││  0x00007f20a063a0ef:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f20a063a230
   4.89%       │││  0x00007f20a063a0f4:   nopl   0x0(%rax,%rax,1)
   4.96%       │││  0x00007f20a063a0fc:   data16 data16 xchg %ax,%ax
               │││  0x00007f20a063a100:   cmp    $0x102b130,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
               │││  0x00007f20a063a107:   jne    0x00007f20a063a1c0
   0.45%       │││  0x00007f20a063a10d:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.29%       │││  0x00007f20a063a111:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   6.83%       │╰│  0x00007f20a063a115:   jmp    0x00007f20a063a098
   5.31%       ↘ │  0x00007f20a063a11a:   nopw   0x0(%rax,%rax,1)
                 │  0x00007f20a063a120:   cmp    $0x2,%r10d
                 │  0x00007f20a063a124:   jne    0x00007f20a063a158           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.01%         │  0x00007f20a063a126:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f20a063a208
   4.54%         │  0x00007f20a063a12b:   cmp    $0x102b540,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
                 ╰  0x00007f20a063a132:   je     0x00007f20a063a090
                    0x00007f20a063a138:   mov    $0xffffffde,%esi
                    0x00007f20a063a13d:   mov    %r11d,(%rsp)
                    0x00007f20a063a141:   mov    %r8d,0x4(%rsp)
                    0x00007f20a063a146:   mov    %ecx,0x8(%rsp)
                    0x00007f20a063a14a:   nop
                    0x00007f20a063a14b:   call   0x00007f20a00c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                              ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
                                                                              ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   0.29%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 601 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   1.14%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 568 
   1.84%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 601 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_setb 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.13%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.88%         c2, level 4
   1.84%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:23:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.331 ns/op
# Warmup Iteration   2: 2.406 ns/op
# Warmup Iteration   3: 2.407 ns/op
# Warmup Iteration   4: 2.406 ns/op
# Warmup Iteration   5: 2.415 ns/op
Iteration   1: 2.415 ns/op
Iteration   2: 2.408 ns/op
Iteration   3: 2.407 ns/op
Iteration   4: 2.408 ns/op
Iteration   5: 2.408 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.409 ±(99.9%) 0.013 ns/op [Average]
  (min, avg, max) = (2.407, 2.409, 2.415), stdev = 0.003
  CI (99.9%): [2.396, 2.422] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 126504 total address lines.
Perf output processed (skipped 56.100 seconds):
 Column 1: cycles (51215 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 576 

                      0x00007faab463b28f:   cmp    $0x9d7f,%r10d
                      0x00007faab463b296:   jbe    0x00007faab463b4d7
                      0x00007faab463b29c:   nopl   0x0(%rax)
                      0x00007faab463b2a0:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007faab463b4d7
                                                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                      0x00007faab463b2a5:   test   %r8d,%r8d
                      0x00007faab463b2a8:   jbe    0x00007faab463b4d7
                      0x00007faab463b2ae:   cmp    $0x9d7f,%r8d
                      0x00007faab463b2b5:   jbe    0x00007faab463b4d7
   0.00%              0x00007faab463b2bb:   lea    (%r12,%rbp,8),%rdi           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                      0x00007faab463b2bf:   lea    (%r12,%r11,8),%rdx           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                      0x00007faab463b2c3:   mov    $0x3e8,%ebx
                      0x00007faab463b2c8:   xor    %r9d,%r9d
          ╭           0x00007faab463b2cb:   jmp    0x00007faab463b2ed           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.02%  │ ↗         0x00007faab463b2cd:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=NarrowOop rdi=Oop rdx=Oop rbp=NarrowOop }
          │ │                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.00%  │ │         0x00007faab463b2d4:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                                   ;   {poll}
   0.12%  │ │         0x00007faab463b2d7:   nopw   0x0(%rax,%rax,1)
          │ │         0x00007faab463b2e0:   cmp    $0x9d80,%r9d
          │ │         0x00007faab463b2e7:   jge    0x00007faab463b4c4           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   0.01%  ↘ │         0x00007faab463b2ed:   mov    $0x9d80,%ecx
            │         0x00007faab463b2f2:   sub    %r9d,%ecx
   0.02%    │         0x00007faab463b2f5:   cmp    $0x3e8,%ecx
            │         0x00007faab463b2fb:   cmova  %ebx,%ecx
   0.00%    │         0x00007faab463b2fe:   add    %r9d,%ecx
   0.01%   ╭│         0x00007faab463b301:   jmp    0x00007faab463b325
           ││         0x00007faab463b303:   nopw   0x0(%rax,%rax,1)
           ││         0x00007faab463b30c:   data16 data16 xchg %ax,%ax
   3.81%   ││      ↗  0x00007faab463b310:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
           ││      │  0x00007faab463b314:   incl   0x14(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
  11.03%   ││ ↗ ↗ ↗│  0x00007faab463b318:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   3.51%   ││ │ │ ││  0x00007faab463b31b:   nopl   0x0(%rax,%rax,1)
   2.86%   ││ │ │ ││  0x00007faab463b320:   cmp    %ecx,%r9d
           │╰ │ │ ││  0x00007faab463b323:   jge    0x00007faab463b2cd           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   1.23%   ↘  │ │ ││  0x00007faab463b325:   movslq %r9d,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   8.09%      │ │ ││  0x00007faab463b328:   movsbl 0x10(%rdx,%r10,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   3.79%      │ │ ││  0x00007faab463b32e:   mov    0x10(%rdi,%r10,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   3.89%      │ │ ││  0x00007faab463b333:   cmp    $0x1,%r8d
             ╭│ │ ││  0x00007faab463b337:   jne    0x00007faab463b35c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.25%     ││ │ ││  0x00007faab463b339:   nopl   0x0(%rax)
   0.31%     ││ │ ││  0x00007faab463b340:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007faab463b518
   8.75%     ││ │ ││  0x00007faab463b345:   cmp    $0x102b338,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             ││ │ ││  0x00007faab463b34c:   jne    0x00007faab463b45c
   0.50%     ││ │ ││  0x00007faab463b352:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.18%     ││ │ ││  0x00007faab463b356:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   5.95%     │╰ │ ││  0x00007faab463b35a:   jmp    0x00007faab463b318
   1.12%     ↘  │ ││  0x00007faab463b35c:   nopl   0x0(%rax)
   7.15%        │ ││  0x00007faab463b360:   cmp    $0x1,%r8d
               ╭│ ││  0x00007faab463b364:   jge    0x00007faab463b399
   0.00%       ││ ││  0x00007faab463b366:   test   %r8d,%r8d
               ││ ││  0x00007faab463b369:   jne    0x00007faab463b47c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.06%       ││ ││  0x00007faab463b36f:   mov    0x8(%r12,%r10,8),%esi        ; implicit exception: dispatches to 0x00007faab463b52c
   2.14%       ││ ││  0x00007faab463b374:   nopl   0x0(%rax,%rax,1)
   3.31%       ││ ││  0x00007faab463b37c:   data16 data16 xchg %ax,%ax
   0.00%       ││ ││  0x00007faab463b380:   cmp    $0x102b130,%esi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
               ││ ││  0x00007faab463b386:   jne    0x00007faab463b4a4
   0.19%       ││ ││  0x00007faab463b38c:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.45%       ││ ││  0x00007faab463b390:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
               ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   4.41%       │╰ ││  0x00007faab463b394:   jmp    0x00007faab463b318
   3.85%       ↘  ││  0x00007faab463b399:   nopl   0x0(%rax)
                  ││  0x00007faab463b3a0:   cmp    $0x2,%r8d
                 ╭││  0x00007faab463b3a4:   je     0x00007faab463b3da
                 │││  0x00007faab463b3a6:   cmp    $0x3,%r8d
                 │││  0x00007faab463b3aa:   jne    0x00007faab463b414           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   4.05%         │││  0x00007faab463b3b0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007faab463b504
   3.41%         │││  0x00007faab463b3b5:   data16 data16 nopw 0x0(%rax,%rax,1)
                 │││  0x00007faab463b3c0:   cmp    $0x102b748,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
                 │││  0x00007faab463b3c7:   jne    0x00007faab463b43c
   0.29%         │││  0x00007faab463b3cd:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.60%         │││  0x00007faab463b3d1:   incl   0x18(%r10)                   ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
                 │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   1.35%         │╰│  0x00007faab463b3d5:   jmp    0x00007faab463b318
   4.03%         ↘ │  0x00007faab463b3da:   nopw   0x0(%rax,%rax,1)
                   │  0x00007faab463b3e0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007faab463b4f0
   3.24%           │  0x00007faab463b3e5:   cmp    $0x102b540,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
                   ╰  0x00007faab463b3ec:   je     0x00007faab463b310
                      0x00007faab463b3f2:   mov    $0xffffffde,%esi
                      0x00007faab463b3f7:   mov    %r9d,(%rsp)
                      0x00007faab463b3fb:   mov    %r10d,0x4(%rsp)
                      0x00007faab463b400:   mov    %r11d,0x8(%rsp)
                      0x00007faab463b405:   xchg   %ax,%ax
                      0x00007faab463b407:   call   0x00007faab40c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
                                                                                ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  96.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 576 
   0.92%              kernel  [unknown] 
   0.85%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 604 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 576 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 576 
   0.01%              kernel  [unknown] 
   0.72%  <...other 226 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 576 
   2.70%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 604 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  event_to_env 
   0.00%           libjvm.so  SymbolTable::do_lookup 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.10%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.06%         c2, level 4
   2.70%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:21:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.560 ns/op
# Warmup Iteration   2: 2.459 ns/op
# Warmup Iteration   3: 2.459 ns/op
# Warmup Iteration   4: 2.460 ns/op
# Warmup Iteration   5: 2.457 ns/op
Iteration   1: 2.456 ns/op
Iteration   2: 2.458 ns/op
Iteration   3: 2.525 ns/op
Iteration   4: 2.525 ns/op
Iteration   5: 2.526 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.498 ±(99.9%) 0.143 ns/op [Average]
  (min, avg, max) = (2.456, 2.498, 2.526), stdev = 0.037
  CI (99.9%): [2.355, 2.642] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 126078 total address lines.
Perf output processed (skipped 56.108 seconds):
 Column 1: cycles (50969 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 566 

                        0x00007f221c639f45:   test   %r11d,%r11d
                        0x00007f221c639f48:   jbe    0x00007f221c63a1b7
                        0x00007f221c639f4e:   cmp    $0x9d7f,%r11d
                        0x00007f221c639f55:   jbe    0x00007f221c63a1b7
                        0x00007f221c639f5b:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                        0x00007f221c639f5f:   lea    (%r12,%r8,8),%rsi            ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                        0x00007f221c639f63:   mov    $0x3e8,%edi
                        0x00007f221c639f68:   xor    %r11d,%r11d
   0.00%  ╭             0x00007f221c639f6b:   jmp    0x00007f221c639f8d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.02%  │ ↗           0x00007f221c639f6d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=NarrowOop rdx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                     ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.04%  │ │           0x00007f221c639f74:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                                     ;   {poll}
   0.12%  │ │           0x00007f221c639f77:   nopw   0x0(%rax,%rax,1)
          │ │           0x00007f221c639f80:   cmp    $0x9d80,%r11d
          │ │           0x00007f221c639f87:   jge    0x00007f221c63a1a4           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   0.00%  ↘ │           0x00007f221c639f8d:   mov    $0x9d80,%ebx
            │           0x00007f221c639f92:   sub    %r11d,%ebx
   0.01%    │           0x00007f221c639f95:   cmp    $0x3e8,%ebx
   0.00%    │           0x00007f221c639f9b:   cmova  %edi,%ebx
   0.00%    │           0x00007f221c639f9e:   add    %r11d,%ebx
           ╭│           0x00007f221c639fa1:   jmp    0x00007f221c639fc5
           ││           0x00007f221c639fa3:   nopw   0x0(%rax,%rax,1)
           ││           0x00007f221c639fac:   data16 data16 xchg %ax,%ax
   2.99%   ││        ↗  0x00007f221c639fb0:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
           ││        │  0x00007f221c639fb4:   incl   0x18(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
  10.62%   ││ ↗  ↗↗ ↗│  0x00007f221c639fb8:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   2.52%   ││ │  ││ ││  0x00007f221c639fbb:   nopl   0x0(%rax,%rax,1)
   0.28%   ││ │  ││ ││  0x00007f221c639fc0:   cmp    %ebx,%r11d
           │╰ │  ││ ││  0x00007f221c639fc3:   jge    0x00007f221c639f6d           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   4.32%   ↘  │  ││ ││  0x00007f221c639fc5:   movslq %r11d,%r10                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   8.29%      │  ││ ││  0x00007f221c639fc8:   movsbl 0x10(%rsi,%r10,1),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.89%      │  ││ ││  0x00007f221c639fce:   mov    0x10(%rdx,%r10,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.23%      │  ││ ││  0x00007f221c639fd3:   cmp    $0x2,%r9d
             ╭│  ││ ││  0x00007f221c639fd7:   jne    0x00007f221c639ffc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   2.49%     ││  ││ ││  0x00007f221c639fd9:   nopl   0x0(%rax)
   0.27%     ││  ││ ││  0x00007f221c639fe0:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f221c63a1f8
   3.13%     ││  ││ ││  0x00007f221c639fe5:   cmp    $0x102b540,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
             ││  ││ ││  0x00007f221c639fec:   jne    0x00007f221c63a11c
   0.58%     ││  ││ ││  0x00007f221c639ff2:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   2.11%     ││  ││ ││  0x00007f221c639ff6:   incl   0x14(%r10)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
             ││  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
             ││  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.66%     │╰  ││ ││  0x00007f221c639ffa:   jmp    0x00007f221c639fb8
   1.71%     ↘   ││ ││  0x00007f221c639ffc:   nopl   0x0(%rax)
   7.91%         ││ ││  0x00007f221c63a000:   cmp    $0x2,%r9d
               ╭ ││ ││  0x00007f221c63a004:   jge    0x00007f221c63a05e
   2.24%       │ ││ ││  0x00007f221c63a00a:   cmp    $0x1,%r9d
               │╭││ ││  0x00007f221c63a00e:   je     0x00007f221c63a03e
   0.02%       ││││ ││  0x00007f221c63a010:   test   %r9d,%r9d
               ││││ ││  0x00007f221c63a013:   jne    0x00007f221c63a15c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.54%       ││││ ││  0x00007f221c63a019:   nopl   0x0(%rax)
   2.49%       ││││ ││  0x00007f221c63a020:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f221c63a220
   2.55%       ││││ ││  0x00007f221c63a025:   cmp    $0x102b130,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
               ││││ ││  0x00007f221c63a02b:   jne    0x00007f221c63a184
   0.23%       ││││ ││  0x00007f221c63a031:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.45%       ││││ ││  0x00007f221c63a035:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
               ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
               ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   3.75%       ││╰│ ││  0x00007f221c63a039:   jmp    0x00007f221c639fb8
   0.55%       │↘ │ ││  0x00007f221c63a03e:   xchg   %ax,%ax
               │  │ ││  0x00007f221c63a040:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f221c63a20c
   3.93%       │  │ ││  0x00007f221c63a045:   cmp    $0x102b338,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
               │  │ ││  0x00007f221c63a04b:   jne    0x00007f221c63a13c
   2.36%       │  │ ││  0x00007f221c63a051:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.36%       │  │ ││  0x00007f221c63a055:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
               │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
               │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   4.94%       │  ╰ ││  0x00007f221c63a059:   jmp    0x00007f221c639fb8
   1.12%       ↘    ││  0x00007f221c63a05e:   xchg   %ax,%ax
                    ││  0x00007f221c63a060:   cmp    $0x3,%r9d
                   ╭││  0x00007f221c63a064:   je     0x00007f221c63a099
   0.00%           │││  0x00007f221c63a066:   cmp    $0x4,%r9d
                   │││  0x00007f221c63a06a:   jne    0x00007f221c63a0d4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   3.04%           │││  0x00007f221c63a070:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f221c63a1e4
   2.21%           │││  0x00007f221c63a075:   data16 data16 nopw 0x0(%rax,%rax,1)
                   │││  0x00007f221c63a080:   cmp    $0x102b950,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                   │││  0x00007f221c63a086:   jne    0x00007f221c63a0fc
   0.20%           │││  0x00007f221c63a08c:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   2.76%           │││  0x00007f221c63a090:   incl   0x1c(%r10)                   ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   2.85%           │╰│  0x00007f221c63a094:   jmp    0x00007f221c639fb8
   3.26%           ↘ │  0x00007f221c63a099:   nopl   0x0(%rax)
                     │  0x00007f221c63a0a0:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f221c63a1d0
   2.45%             │  0x00007f221c63a0a5:   cmp    $0x102b748,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
                     ╰  0x00007f221c63a0ac:   je     0x00007f221c639fb0
                        0x00007f221c63a0b2:   mov    $0xffffffde,%esi
                        0x00007f221c63a0b7:   mov    %r11d,(%rsp)
                        0x00007f221c63a0bb:   mov    %r10d,0x4(%rsp)
                        0x00007f221c63a0c0:   mov    %r8d,0x8(%rsp)
                        0x00007f221c63a0c5:   xchg   %ax,%ax
                        0x00007f221c63a0c7:   call   0x00007f221c0c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                  ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
                                                                                  ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.50%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 566 
   1.00%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 566 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 566 
   2.20%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 597 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  fileStream::write 
   0.00%    perf-1942130.map  [unknown] 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.13%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.54%         c2, level 4
   2.20%              kernel
   0.09%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1942130.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:19:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.421 ns/op
# Warmup Iteration   2: 2.390 ns/op
# Warmup Iteration   3: 2.338 ns/op
# Warmup Iteration   4: 2.389 ns/op
# Warmup Iteration   5: 2.490 ns/op
Iteration   1: 2.391 ns/op
Iteration   2: 2.394 ns/op
Iteration   3: 2.492 ns/op
Iteration   4: 2.492 ns/op
Iteration   5: 2.391 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.432 ±(99.9%) 0.210 ns/op [Average]
  (min, avg, max) = (2.391, 2.432, 2.492), stdev = 0.055
  CI (99.9%): [2.221, 2.642] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 127806 total address lines.
Perf output processed (skipped 56.206 seconds):
 Column 1: cycles (50558 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 

                        0x00007f6490639aaf:   cmp    $0x9d7f,%r8d
                        0x00007f6490639ab6:   jbe    0x00007f6490639d73
                        0x00007f6490639abc:   nopl   0x0(%rax)
                        0x00007f6490639ac0:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f6490639d73
                                                                                  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
                        0x00007f6490639ac5:   test   %r11d,%r11d
                        0x00007f6490639ac8:   jbe    0x00007f6490639d73
                        0x00007f6490639ace:   cmp    $0x9d7f,%r11d
                        0x00007f6490639ad5:   jbe    0x00007f6490639d73
   0.00%                0x00007f6490639adb:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                        0x00007f6490639adf:   lea    (%r12,%r10,8),%rax           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                        0x00007f6490639ae3:   mov    $0x3e8,%edi
                        0x00007f6490639ae8:   xor    %r11d,%r11d
          ╭             0x00007f6490639aeb:   jmp    0x00007f6490639b0d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.01%  │ ↗           0x00007f6490639aed:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r10=NarrowOop rdx=Oop rax=Oop rbp=NarrowOop }
          │ │                                                                     ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.02%  │ │           0x00007f6490639af4:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                                     ;   {poll}
   0.13%  │ │           0x00007f6490639af7:   nopw   0x0(%rax,%rax,1)
          │ │           0x00007f6490639b00:   cmp    $0x9d80,%r11d
          │ │           0x00007f6490639b07:   jge    0x00007f6490639d60           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   0.00%  ↘ │           0x00007f6490639b0d:   mov    $0x9d80,%esi
   0.00%    │           0x00007f6490639b12:   sub    %r11d,%esi
   0.01%    │           0x00007f6490639b15:   cmp    $0x3e8,%esi
            │           0x00007f6490639b1b:   cmova  %edi,%esi
   0.01%    │           0x00007f6490639b1e:   add    %r11d,%esi
   0.01%   ╭│           0x00007f6490639b21:   jmp    0x00007f6490639b45
           ││           0x00007f6490639b23:   nopw   0x0(%rax,%rax,1)
           ││           0x00007f6490639b2c:   data16 data16 xchg %ax,%ax
   2.57%   ││        ↗  0x00007f6490639b30:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
           ││        │  0x00007f6490639b34:   incl   0x20(%r8)                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
   9.58%   ││  ↗↗ ↗ ↗│  0x00007f6490639b38:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││  ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   4.45%   ││  ││ │ ││  0x00007f6490639b3b:   nopl   0x0(%rax,%rax,1)
   0.50%   ││  ││ │ ││  0x00007f6490639b40:   cmp    %esi,%r11d
           │╰  ││ │ ││  0x00007f6490639b43:   jge    0x00007f6490639aed           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │   ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   3.69%   ↘   ││ │ ││  0x00007f6490639b45:   movslq %r11d,%r8                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   7.25%       ││ │ ││  0x00007f6490639b48:   movsbl 0x10(%rax,%r8,1),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
               ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   4.64%       ││ │ ││  0x00007f6490639b4e:   mov    0x10(%rdx,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   1.53%       ││ │ ││  0x00007f6490639b53:   cmp    $0x2,%ebx
               ││ │ ││  0x00007f6490639b56:   je     0x00007f6490639c50
   1.29%       ││ │ ││  0x00007f6490639b5c:   nopl   0x0(%rax)
   7.01%       ││ │ ││  0x00007f6490639b60:   cmp    $0x2,%ebx
             ╭ ││ │ ││  0x00007f6490639b63:   jge    0x00007f6490639bbe
   2.14%     │ ││ │ ││  0x00007f6490639b69:   cmp    $0x1,%ebx
             │╭││ │ ││  0x00007f6490639b6c:   je     0x00007f6490639b9b
   0.04%     ││││ │ ││  0x00007f6490639b6e:   test   %ebx,%ebx
             ││││ │ ││  0x00007f6490639b70:   jne    0x00007f6490639cfc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
             ││││ │ ││  0x00007f6490639b76:   data16 nopw 0x0(%rax,%rax,1)
   2.55%     ││││ │ ││  0x00007f6490639b80:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f6490639ddc
   1.70%     ││││ │ ││  0x00007f6490639b85:   cmp    $0x102b130,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             ││││ │ ││  0x00007f6490639b8b:   jne    0x00007f6490639d20
   0.18%     ││││ │ ││  0x00007f6490639b91:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.00%     ││││ │ ││  0x00007f6490639b95:   incl   0xc(%r8)                     ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             ││││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
             ││││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   3.39%     ││╰│ │ ││  0x00007f6490639b99:   jmp    0x00007f6490639b38
   0.00%     │↘ │ │ ││  0x00007f6490639b9b:   nopl   0x0(%rax,%rax,1)
   0.39%     │  │ │ ││  0x00007f6490639ba0:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f6490639dc8
   1.70%     │  │ │ ││  0x00007f6490639ba5:   cmp    $0x102b338,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             │  │ │ ││  0x00007f6490639bab:   jne    0x00007f6490639cdc
   2.42%     │  │ │ ││  0x00007f6490639bb1:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │  │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.00%     │  │ │ ││  0x00007f6490639bb5:   incl   0x10(%r8)                    ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │  │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             │  │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   5.42%     │  ╰ │ ││  0x00007f6490639bb9:   jmp    0x00007f6490639b38
   1.92%     ↘    │ ││  0x00007f6490639bbe:   xchg   %ax,%ax
   0.54%          │ ││  0x00007f6490639bc0:   cmp    $0x4,%ebx
                 ╭│ ││  0x00007f6490639bc3:   jne    0x00007f6490639be5           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.58%         ││ ││  0x00007f6490639bc5:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f6490639da0
   3.98%         ││ ││  0x00007f6490639bca:   cmp    $0x102b950,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                 ││ ││  0x00007f6490639bd0:   jne    0x00007f6490639c9c
   0.19%         ││ ││  0x00007f6490639bd6:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                 ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
                 ││ ││  0x00007f6490639bda:   incl   0x1c(%r8)                    ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                 ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                 ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   3.46%         ││ ││  0x00007f6490639bde:   xchg   %ax,%ax
   0.00%         │╰ ││  0x00007f6490639be0:   jmp    0x00007f6490639b38
   4.95%         ↘  ││  0x00007f6490639be5:   cmp    $0x4,%ebx
                   ╭││  0x00007f6490639be8:   jge    0x00007f6490639c08           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.00%           │││  0x00007f6490639bea:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007f6490639df0
   1.56%           │││  0x00007f6490639bef:   cmp    $0x102b748,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
                   │││  0x00007f6490639bf5:   jne    0x00007f6490639d40
   0.33%           │││  0x00007f6490639bfb:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   2.19%           │││  0x00007f6490639bff:   incl   0x18(%r8)                    ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   3.41%           │╰│  0x00007f6490639c03:   jmp    0x00007f6490639b38
   2.71%           ↘ │  0x00007f6490639c08:   cmp    $0x5,%ebx
                     │  0x00007f6490639c0b:   jne    0x00007f6490639c76           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                     │  0x00007f6490639c11:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007f6490639d8c
   1.40%             │  0x00007f6490639c16:   data16 nopw 0x0(%rax,%rax,1)
                     │  0x00007f6490639c20:   cmp    $0x102bb58,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
                     ╰  0x00007f6490639c27:   je     0x00007f6490639b30
                        0x00007f6490639c2d:   mov    $0xffffffde,%esi
                        0x00007f6490639c32:   mov    %r11d,(%rsp)
                        0x00007f6490639c36:   mov    %r9d,0x4(%rsp)
                        0x00007f6490639c3b:   mov    %r10d,0x8(%rsp)
                        0x00007f6490639c40:   data16 xchg %ax,%ax
                        0x00007f6490639c43:   call   0x00007f64900c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                  ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
....................................................................................................
  89.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 
   8.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 
   0.36%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 614 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.80%  <...other 258 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 586 
   1.38%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 614 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.34%         c2, level 4
   1.38%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:18:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.547 ns/op
# Warmup Iteration   2: 2.513 ns/op
# Warmup Iteration   3: 2.511 ns/op
# Warmup Iteration   4: 2.534 ns/op
# Warmup Iteration   5: 2.533 ns/op
Iteration   1: 2.590 ns/op
Iteration   2: 2.533 ns/op
Iteration   3: 2.533 ns/op
Iteration   4: 2.533 ns/op
Iteration   5: 2.534 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.545 ±(99.9%) 0.098 ns/op [Average]
  (min, avg, max) = (2.533, 2.545, 2.590), stdev = 0.025
  CI (99.9%): [2.447, 2.642] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 126628 total address lines.
Perf output processed (skipped 56.186 seconds):
 Column 1: cycles (50872 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 581 

                          0x00007f336c63b14e:   cmp    $0x9d7f,%r11d
                          0x00007f336c63b155:   jbe    0x00007f336c63b43f
                          0x00007f336c63b15b:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 179)
                          0x00007f336c63b15f:   lea    (%r12,%r10,8),%rsi           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 178)
                          0x00007f336c63b163:   mov    $0x3e8,%edi
                          0x00007f336c63b168:   xor    %r9d,%r9d
          ╭               0x00007f336c63b16b:   jmp    0x00007f336c63b18d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.00%  │ ↗             0x00007f336c63b16d:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=NarrowOop rdx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
   0.05%  │ │             0x00007f336c63b174:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 180)
          │ │                                                                       ;   {poll}
   0.12%  │ │             0x00007f336c63b177:   nopw   0x0(%rax,%rax,1)
          │ │             0x00007f336c63b180:   cmp    $0x9d80,%r9d
          │ │             0x00007f336c63b187:   jge    0x00007f336c63b42c           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
          ↘ │             0x00007f336c63b18d:   mov    $0x9d80,%ebx
            │             0x00007f336c63b192:   sub    %r9d,%ebx
   0.01%    │             0x00007f336c63b195:   cmp    $0x3e8,%ebx
            │             0x00007f336c63b19b:   cmova  %edi,%ebx
   0.00%    │             0x00007f336c63b19e:   add    %r9d,%ebx
   0.02%   ╭│             0x00007f336c63b1a1:   jmp    0x00007f336c63b1c5
           ││             0x00007f336c63b1a3:   nopw   0x0(%rax,%rax,1)
           ││             0x00007f336c63b1ac:   data16 data16 xchg %ax,%ax
   2.20%   ││          ↗  0x00007f336c63b1b0:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
           ││          │  0x00007f336c63b1b4:   incl   0x24(%r11)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
   6.27%   ││  ↗ ↗↗ ↗ ↗│  0x00007f336c63b1b8:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
   1.96%   ││  │ ││ │ ││  0x00007f336c63b1bb:   nopl   0x0(%rax,%rax,1)
   4.43%   ││  │ ││ │ ││  0x00007f336c63b1c0:   cmp    %ebx,%r9d
           │╰  │ ││ │ ││  0x00007f336c63b1c3:   jge    0x00007f336c63b16d           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
   4.17%   ↘   │ ││ │ ││  0x00007f336c63b1c5:   movslq %r9d,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   4.16%       │ ││ │ ││  0x00007f336c63b1c8:   movsbl 0x10(%rsi,%r11,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   2.21%       │ ││ │ ││  0x00007f336c63b1ce:   mov    0x10(%rdx,%r11,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   5.56%       │ ││ │ ││  0x00007f336c63b1d3:   cmp    $0x3,%r8d
               │ ││ │ ││  0x00007f336c63b1d7:   je     0x00007f336c63b2fc
   4.05%       │ ││ │ ││  0x00007f336c63b1dd:   data16 xchg %ax,%ax
   4.26%       │ ││ │ ││  0x00007f336c63b1e0:   cmp    $0x3,%r8d
             ╭ │ ││ │ ││  0x00007f336c63b1e4:   jge    0x00007f336c63b265
   0.18%     │ │ ││ │ ││  0x00007f336c63b1ea:   cmp    $0x1,%r8d
             │╭│ ││ │ ││  0x00007f336c63b1ee:   jne    0x00007f336c63b217           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.02%     │││ ││ │ ││  0x00007f336c63b1f0:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f336c63b4a8
   2.72%     │││ ││ │ ││  0x00007f336c63b1f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.63%     │││ ││ │ ││  0x00007f336c63b200:   cmp    $0x102b338,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             │││ ││ │ ││  0x00007f336c63b207:   jne    0x00007f336c63b3a4
   0.25%     │││ ││ │ ││  0x00007f336c63b20d:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   0.01%     │││ ││ │ ││  0x00007f336c63b211:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   4.44%     ││╰ ││ │ ││  0x00007f336c63b215:   jmp    0x00007f336c63b1b8
   1.42%     │↘  ││ │ ││  0x00007f336c63b217:   cmp    $0x1,%r8d
             │  ╭││ │ ││  0x00007f336c63b21b:   jge    0x00007f336c63b247
   0.00%     │  │││ │ ││  0x00007f336c63b21d:   data16 xchg %ax,%ax
   2.09%     │  │││ │ ││  0x00007f336c63b220:   test   %r8d,%r8d
             │  │││ │ ││  0x00007f336c63b223:   jne    0x00007f336c63b3e4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.01%     │  │││ │ ││  0x00007f336c63b229:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f336c63b4d0
   1.07%     │  │││ │ ││  0x00007f336c63b22e:   cmp    $0x102b130,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             │  │││ │ ││  0x00007f336c63b234:   jne    0x00007f336c63b40c
   0.13%     │  │││ │ ││  0x00007f336c63b23a:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   1.92%     │  │││ │ ││  0x00007f336c63b23e:   incl   0xc(%r11)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
   0.87%     │  │╰│ │ ││  0x00007f336c63b242:   jmp    0x00007f336c63b1b8
   2.23%     │  ↘ │ │ ││  0x00007f336c63b247:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f336c63b46c
   1.57%     │    │ │ ││  0x00007f336c63b24c:   cmp    $0x102b540,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
             │    │ │ ││  0x00007f336c63b252:   jne    0x00007f336c63b344
   0.17%     │    │ │ ││  0x00007f336c63b258:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
             │    │ │ ││  0x00007f336c63b25c:   incl   0x14(%r11)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   3.61%     │    ╰ │ ││  0x00007f336c63b260:   jmp    0x00007f336c63b1b8
   0.00%     ↘      │ ││  0x00007f336c63b265:   cmp    $0x5,%r8d
                   ╭│ ││  0x00007f336c63b269:   jne    0x00007f336c63b28a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
   0.01%           ││ ││  0x00007f336c63b26b:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f336c63b480
   4.03%           ││ ││  0x00007f336c63b270:   cmp    $0x102bb58,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
                   ││ ││  0x00007f336c63b277:   jne    0x00007f336c63b364
   0.16%           ││ ││  0x00007f336c63b27d:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
                   ││ ││  0x00007f336c63b281:   incl   0x20(%r11)                   ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   4.85%           │╰ ││  0x00007f336c63b285:   jmp    0x00007f336c63b1b8
   4.21%           ↘  ││  0x00007f336c63b28a:   cmp    $0x5,%r8d
                     ╭││  0x00007f336c63b28e:   jge    0x00007f336c63b2ba           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                     │││  0x00007f336c63b290:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f336c63b4bc
   1.85%             │││  0x00007f336c63b295:   data16 data16 nopw 0x0(%rax,%rax,1)
                     │││  0x00007f336c63b2a0:   cmp    $0x102b950,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                     │││  0x00007f336c63b2a7:   jne    0x00007f336c63b3c4
   2.09%             │││  0x00007f336c63b2ad:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
                     │││  0x00007f336c63b2b1:   incl   0x1c(%r11)                   ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   4.55%             │╰│  0x00007f336c63b2b5:   jmp    0x00007f336c63b1b8
   2.26%             ↘ │  0x00007f336c63b2ba:   nopw   0x0(%rax,%rax,1)
                       │  0x00007f336c63b2c0:   cmp    $0x6,%r8d
                       │  0x00007f336c63b2c4:   jne    0x00007f336c63b31e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                       │  0x00007f336c63b2ca:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f336c63b458
   0.95%               │  0x00007f336c63b2cf:   cmp    $0x102bd60,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
                       ╰  0x00007f336c63b2d5:   je     0x00007f336c63b1b0
                          0x00007f336c63b2db:   mov    $0xffffffde,%esi
                          0x00007f336c63b2e0:   mov    %r9d,(%rsp)
                          0x00007f336c63b2e4:   mov    %r11d,0x4(%rsp)
                          0x00007f336c63b2e9:   mov    %r10d,0x8(%rsp)
                          0x00007f336c63b2ee:   nop
                          0x00007f336c63b2ef:   call   0x00007f336c0c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
                                                                                    ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  88.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 581 
   8.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 581 
   0.73%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 609 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 581 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.87%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 581 
   2.02%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 609 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.11%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%         c2, level 4
   2.02%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%    perf-1942258.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.037 ns/op
# Warmup Iteration   2: 15.842 ns/op
# Warmup Iteration   3: 15.844 ns/op
# Warmup Iteration   4: 15.860 ns/op
# Warmup Iteration   5: 15.861 ns/op
Iteration   1: 15.855 ns/op
Iteration   2: 15.833 ns/op
Iteration   3: 15.831 ns/op
Iteration   4: 15.834 ns/op
Iteration   5: 15.826 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  15.836 ±(99.9%) 0.042 ns/op [Average]
  (min, avg, max) = (15.826, 15.836, 15.855), stdev = 0.011
  CI (99.9%): [15.793, 15.878] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm":
PrintAssembly processed: 129758 total address lines.
Perf output processed (skipped 56.228 seconds):
 Column 1: cycles (50662 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 600 

                                                                               ;   {poll}
   0.03%             0x00007f374063c3d7:   nopw   0x0(%rax,%rax,1)
                     0x00007f374063c3e0:   cmp    $0x9d80,%r8d
                     0x00007f374063c3e7:   jge    0x00007f374063c658           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
                     0x00007f374063c3ed:   mov    $0x9d80,%esi
                     0x00007f374063c3f2:   sub    %r8d,%esi
                     0x00007f374063c3f5:   cmp    $0x3e8,%esi
                     0x00007f374063c3fb:   cmova  %edi,%esi
                     0x00007f374063c3fe:   add    %r8d,%esi
   0.00%  ╭          0x00007f374063c401:   jmp    0x00007f374063c509
   3.86%  │          0x00007f374063c406:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f374063c710
   3.43%  │          0x00007f374063c40b:   cmp    $0x102b540,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │          0x00007f374063c411:   jne    0x00007f374063c638
   0.30%  │          0x00007f374063c417:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
          │          0x00007f374063c41b:   incl   0x14(%r11)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 190)
   4.00%  │          0x00007f374063c41f:   nop
          │╭         0x00007f374063c420:   jmp    0x00007f374063c4fc
   5.31%  ││         0x00007f374063c425:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f374063c6fc
   5.58%  ││         0x00007f374063c42a:   cmp    $0x102b338,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││         0x00007f374063c430:   jne    0x00007f374063c558
   0.32%  ││         0x00007f374063c436:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
          ││         0x00007f374063c43a:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 187)
   2.05%  ││         0x00007f374063c43e:   xchg   %ax,%ax
          ││╭        0x00007f374063c440:   jmp    0x00007f374063c4fc
   3.75%  │││        0x00007f374063c445:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f374063c6e8
   3.33%  │││        0x00007f374063c44a:   cmp    $0x102b748,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          │││        0x00007f374063c451:   jne    0x00007f374063c618
   0.27%  │││        0x00007f374063c457:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
          │││        0x00007f374063c45b:   incl   0x18(%r11)                   ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 193)
   1.70%  │││        0x00007f374063c45f:   nop
   0.00%  │││╭       0x00007f374063c460:   jmp    0x00007f374063c4fc
   5.14%  ││││       0x00007f374063c465:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f374063c6d4
   5.01%  ││││       0x00007f374063c46a:   cmp    $0x102b950,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          ││││       0x00007f374063c470:   jne    0x00007f374063c5f8
   0.34%  ││││       0x00007f374063c476:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
          ││││       0x00007f374063c47a:   incl   0x1c(%r11)                   ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
          ││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 196)
   2.60%  ││││       0x00007f374063c47e:   xchg   %ax,%ax
          ││││╭      0x00007f374063c480:   jmp    0x00007f374063c4fc
   3.74%  │││││      0x00007f374063c485:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f374063c6c0
   4.97%  │││││      0x00007f374063c48a:   cmp    $0x102bb58,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
          │││││      0x00007f374063c491:   jne    0x00007f374063c5d8
   0.30%  │││││      0x00007f374063c497:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
          │││││      0x00007f374063c49b:   incl   0x20(%r11)                   ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 301)
          │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 199)
   2.19%  │││││      0x00007f374063c49f:   nop
          │││││╭     0x00007f374063c4a0:   jmp    0x00007f374063c4fc
   3.57%  ││││││     0x00007f374063c4a5:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f374063c6ac
   2.87%  ││││││     0x00007f374063c4aa:   cmp    $0x102bd60,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
          ││││││     0x00007f374063c4b0:   jne    0x00007f374063c5b8
   0.27%  ││││││     0x00007f374063c4b6:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
          ││││││     0x00007f374063c4ba:   incl   0x24(%r11)                   ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 307)
          ││││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 202)
   4.14%  ││││││     0x00007f374063c4be:   xchg   %ax,%ax
          ││││││╭    0x00007f374063c4c0:   jmp    0x00007f374063c4fc
   4.07%  │││││││    0x00007f374063c4c5:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f374063c698
   3.25%  │││││││    0x00007f374063c4ca:   cmp    $0x1084000,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg8&apos;)}
          │││││││    0x00007f374063c4d1:   jne    0x00007f374063c598
   0.31%  │││││││    0x00007f374063c4d7:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   0.00%  │││││││    0x00007f374063c4db:   incl   0x28(%r11)                   ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 313)
          │││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 205)
   3.69%  │││││││    0x00007f374063c4df:   nop
          │││││││╭   0x00007f374063c4e0:   jmp    0x00007f374063c4fc
   3.85%  ││││││││   0x00007f374063c4e2:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f374063c684
   2.86%  ││││││││   0x00007f374063c4e7:   cmp    $0x102b130,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ││││││││   0x00007f374063c4ee:   jne    0x00007f374063c578
   0.28%  ││││││││   0x00007f374063c4f4:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 184)
          ││││││││   0x00007f374063c4f8:   incl   0xc(%r11)                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 185)
   2.05%  │↘↘↘↘↘↘↘   0x00007f374063c4fc:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 180)
          │          0x00007f374063c4ff:   nop
   2.02%  │          0x00007f374063c500:   cmp    %esi,%r8d
          │          0x00007f374063c503:   jge    0x00007f374063c3cd           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 181)
          ↘          0x00007f374063c509:   movslq %r8d,%r9
   0.28%             0x00007f374063c50c:   mov    0x10(%rdx,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 181)
   0.74%             0x00007f374063c511:   movsbl 0x10(%rax,%r9,1),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 182)
   1.79%             0x00007f374063c517:   cmp    $0x8,%ecx
                  ╭  0x00007f374063c51a:   jae    0x00007f374063c531
   0.57%          │  0x00007f374063c51c:   movslq %ecx,%r9
   0.02%          │  0x00007f374063c51f:   shl    $0x3,%r9
   1.28%          │  0x00007f374063c523:   movabs $0x7f374063c300,%rbx         ;   {section_word}
   1.65%          │  0x00007f374063c52d:   jmp    *(%rbx,%r9,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
                  ↘  0x00007f374063c531:   mov    $0xffffff45,%esi
                     0x00007f374063c536:   mov    %r8d,(%rsp)
                     0x00007f374063c53a:   mov    %r11d,0x4(%rsp)
                     0x00007f374063c53f:   mov    %ecx,0x8(%rsp)
                     0x00007f374063c543:   mov    %r10d,0xc(%rsp)
                     0x00007f374063c548:   data16 xchg %ax,%ax
                     0x00007f374063c54b:   call   0x00007f37400c9f00           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [12]=NarrowOop }
                                                                               ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 182)
....................................................................................................
  97.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 600 
   0.23%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 600 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   1.20%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 600 
   1.75%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%         c2, level 4
   1.75%              kernel
   0.20%           libjvm.so
   0.08%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1942320.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:14:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.857 ns/op
# Warmup Iteration   2: 1.844 ns/op
# Warmup Iteration   3: 1.844 ns/op
# Warmup Iteration   4: 1.909 ns/op
# Warmup Iteration   5: 1.814 ns/op
Iteration   1: 1.912 ns/op
Iteration   2: 1.814 ns/op
Iteration   3: 1.814 ns/op
Iteration   4: 1.814 ns/op
Iteration   5: 1.814 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.834 ±(99.9%) 0.169 ns/op [Average]
  (min, avg, max) = (1.814, 1.834, 1.912), stdev = 0.044
  CI (99.9%): [1.665, 2.003] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 124637 total address lines.
Perf output processed (skipped 56.133 seconds):
 Column 1: cycles (50895 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 561 

                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                 0x00007fd4b8638b8a:   lea    -0x3(%rbx),%r10d
                 0x00007fd4b8638b8e:   mov    $0x1,%r8d
                 0x00007fd4b8638b94:   cmp    $0x1,%r10d
          ╭      0x00007fd4b8638b98:   jle    0x00007fd4b8638c05
          │      0x00007fd4b8638b9e:   xor    %r11d,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
          │      0x00007fd4b8638ba1:   mov    $0xfa0,%ecx
          │ ↗    0x00007fd4b8638ba6:   mov    %ebx,%edi
          │ │    0x00007fd4b8638ba8:   sub    %r8d,%edi
   0.00%  │ │    0x00007fd4b8638bab:   add    $0xfffffffd,%edi
          │ │    0x00007fd4b8638bae:   cmp    %r8d,%r10d
   0.00%  │ │    0x00007fd4b8638bb1:   cmovl  %r11d,%edi
          │ │    0x00007fd4b8638bb5:   cmp    $0xfa0,%edi
   0.00%  │ │    0x00007fd4b8638bbb:   cmova  %ecx,%edi
          │ │    0x00007fd4b8638bbe:   add    %r8d,%edi                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   1.19%  │↗│    0x00007fd4b8638bc1:   mov    0x10(%r9,%r8,4),%edx         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.03%  │││    0x00007fd4b8638bc6:   incl   0xc(%r12,%rdx,8)             ; implicit exception: dispatches to 0x00007fd4b8638c48
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  24.02%  │││    0x00007fd4b8638bcb:   mov    0x14(%r9,%r8,4),%esi         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.00%  │││    0x00007fd4b8638bd0:   incl   0xc(%r12,%rsi,8)             ; implicit exception: dispatches to 0x00007fd4b8638c48
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  25.33%  │││    0x00007fd4b8638bd5:   mov    0x18(%r9,%r8,4),%esi         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.17%  │││    0x00007fd4b8638bda:   incl   0xc(%r12,%rsi,8)             ; implicit exception: dispatches to 0x00007fd4b8638c48
          │││                                                              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
  18.38%  │││    0x00007fd4b8638bdf:   mov    0x1c(%r9,%r8,4),%esi         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   0.25%  │││    0x00007fd4b8638be4:   incl   0xc(%r12,%rsi,8)             ; implicit exception: dispatches to 0x00007fd4b8638c48
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  27.64%  │││    0x00007fd4b8638be9:   add    $0x4,%r8d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   0.01%  │││    0x00007fd4b8638bed:   cmp    %edi,%r8d
          │╰│    0x00007fd4b8638bf0:   jl     0x00007fd4b8638bc1           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
          │ │    0x00007fd4b8638bf2:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r9=Oop }
          │ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
   0.01%  │ │    0x00007fd4b8638bf9:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
          │ │                                                              ;   {poll}
   0.16%  │ │    0x00007fd4b8638bfb:   nopl   0x0(%rax,%rax,1)
          │ │    0x00007fd4b8638c00:   cmp    %r10d,%r8d
          │ ╰    0x00007fd4b8638c03:   jl     0x00007fd4b8638ba6
   0.00%  ↘      0x00007fd4b8638c05:   cmp    %ebx,%r8d
             ╭   0x00007fd4b8638c08:   jge    0x00007fd4b8638c1e
             │   0x00007fd4b8638c0a:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
             │↗  0x00007fd4b8638c0c:   mov    0x10(%r9,%r8,4),%r10d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
             ││  0x00007fd4b8638c11:   incl   0xc(%r12,%r10,8)             ; implicit exception: dispatches to 0x00007fd4b8638c48
             ││                                                            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.00%     ││  0x00007fd4b8638c16:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
             ││  0x00007fd4b8638c19:   cmp    %ebx,%r8d
             │╰  0x00007fd4b8638c1c:   jl     0x00007fd4b8638c0c           ;*synchronization entry
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@-1 (line 166)
             ↘   0x00007fd4b8638c1e:   add    $0x20,%rsp
                 0x00007fd4b8638c22:   pop    %rbp
   0.01%         0x00007fd4b8638c23:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007fd4b8638c2a:   ja     0x00007fd4b8638c70
                 0x00007fd4b8638c30:   ret    
                 0x00007fd4b8638c31:   mov    $0xffffff76,%esi
                 0x00007fd4b8638c36:   mov    %ebx,0x4(%rsp)
                 0x00007fd4b8638c3a:   nop
                 0x00007fd4b8638c3b:   call   0x00007fd4b80c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                                                           ;   {runtime_call UncommonTrapBlob}
                 0x00007fd4b8638c40:   nopl   0x10002b0(%rax,%rax,1)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 561 
   0.98%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 561 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 590 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.06%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 561 
   2.38%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 590 
   0.03%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  jio_print 
   0.13%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.32%         c2, level 4
   2.38%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:12:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.057 ns/op
# Warmup Iteration   2: 1.948 ns/op
# Warmup Iteration   3: 1.947 ns/op
# Warmup Iteration   4: 2.036 ns/op
# Warmup Iteration   5: 2.036 ns/op
Iteration   1: 1.945 ns/op
Iteration   2: 1.945 ns/op
Iteration   3: 1.945 ns/op
Iteration   4: 1.945 ns/op
Iteration   5: 1.945 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.945 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.945, 1.945, 1.945), stdev = 0.001
  CI (99.9%): [1.945, 1.946] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 126942 total address lines.
Perf output processed (skipped 56.215 seconds):
 Column 1: cycles (50896 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 573 

                   0x00007fd6d463b23c:   data16 data16 xchg %ax,%ax
                   0x00007fd6d463b240:   cmp    $0x102b338,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                   0x00007fd6d463b247:   jne    0x00007fd6d463b3a4           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                   0x00007fd6d463b24d:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          ╭        0x00007fd6d463b251:   jmp    0x00007fd6d463b257
          │        0x00007fd6d463b253:   incl   0xc(%r11)                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   0.00%  ↘        0x00007fd6d463b257:   lea    (%r12,%rbp,8),%rsi           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
                   0x00007fd6d463b25b:   mov    $0x1,%edx
                   0x00007fd6d463b260:   cmp    $0x1,%ecx
                   0x00007fd6d463b263:   jle    0x00007fd6d463b330
                   0x00007fd6d463b269:   mov    $0x7d0,%r9d
           ╭       0x00007fd6d463b26f:   jmp    0x00007fd6d463b286           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
   0.00%   │ ↗     0x00007fd6d463b271:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rsi=Oop rbp=NarrowOop }
           │ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
   0.01%   │ │     0x00007fd6d463b278:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 167)
           │ │                                                               ;   {poll}
   0.12%   │ │     0x00007fd6d463b27b:   cmp    %ecx,%edx
   0.00%   │ │     0x00007fd6d463b27d:   data16 xchg %ax,%ax
           │ │     0x00007fd6d463b280:   jge    0x00007fd6d463b330           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
           ↘ │     0x00007fd6d463b286:   mov    %ebx,%eax
   0.01%     │     0x00007fd6d463b288:   sub    %edx,%eax
   0.00%     │     0x00007fd6d463b28a:   dec    %eax
   0.00%     │     0x00007fd6d463b28c:   cmp    %edx,%ecx
   0.00%     │     0x00007fd6d463b28e:   cmovl  %edi,%eax
   0.01%     │     0x00007fd6d463b291:   cmp    $0x7d0,%eax
   0.00%     │     0x00007fd6d463b296:   cmova  %r9d,%eax
             │     0x00007fd6d463b29a:   add    %edx,%eax
   0.01%    ╭│     0x00007fd6d463b29c:   jmp    0x00007fd6d463b2ab
            ││     0x00007fd6d463b29e:   xchg   %ax,%ax
   4.13%    ││  ↗  0x00007fd6d463b2a0:   incl   0xc(%r11)                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  10.81%    ││  │  0x00007fd6d463b2a4:   add    $0x2,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.91%    ││  │  0x00007fd6d463b2a7:   cmp    %eax,%edx
            │╰  │  0x00007fd6d463b2a9:   jge    0x00007fd6d463b271           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   1.67%    ↘   │  0x00007fd6d463b2ab:   mov    0x10(%rsi,%rdx,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.31%        │  0x00007fd6d463b2b0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fd6d463b3ab
                │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  18.84%        │  0x00007fd6d463b2b5:   lea    (%r12,%r10,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   2.39%        │  0x00007fd6d463b2b9:   nopl   0x0(%rax)
   1.67%        │  0x00007fd6d463b2c0:   cmp    $0x102b130,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
              ╭ │  0x00007fd6d463b2c7:   je     0x00007fd6d463b2dc
   2.69%      │ │  0x00007fd6d463b2c9:   cmp    $0x102b338,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
              │ │  0x00007fd6d463b2d0:   jne    0x00007fd6d463b311           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
   4.21%      │ │  0x00007fd6d463b2d6:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  23.33%      │╭│  0x00007fd6d463b2da:   jmp    0x00007fd6d463b2e0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
              ↘││  0x00007fd6d463b2dc:   incl   0xc(%r11)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   3.01%       ↘│  0x00007fd6d463b2e0:   mov    0x14(%rsi,%rdx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   3.30%        │  0x00007fd6d463b2e5:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fd6d463b3ab
                │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
  14.58%        │  0x00007fd6d463b2ea:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   2.56%        │  0x00007fd6d463b2ee:   cmp    $0x102b130,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
                ╰  0x00007fd6d463b2f5:   je     0x00007fd6d463b2a0
                   0x00007fd6d463b2f7:   nopw   0x0(%rax,%rax,1)
                   0x00007fd6d463b300:   cmp    $0x102b338,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                   0x00007fd6d463b307:   jne    0x00007fd6d463b30f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                   0x00007fd6d463b309:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                   0x00007fd6d463b30d:   jmp    0x00007fd6d463b2a4
....................................................................................................
  97.57%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 573 
   0.90%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 573 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 605 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.87%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 573 
   1.98%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 605 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  xmlStream::write_text 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.67%         c2, level 4
   1.98%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:10:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.524 ns/op
# Warmup Iteration   2: 26.403 ns/op
# Warmup Iteration   3: 26.272 ns/op
# Warmup Iteration   4: 26.270 ns/op
# Warmup Iteration   5: 26.260 ns/op
Iteration   1: 26.235 ns/op
Iteration   2: 26.232 ns/op
Iteration   3: 26.238 ns/op
Iteration   4: 26.230 ns/op
Iteration   5: 26.255 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  26.238 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (26.230, 26.238, 26.255), stdev = 0.010
  CI (99.9%): [26.199, 26.277] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 126981 total address lines.
Perf output processed (skipped 56.286 seconds):
 Column 1: cycles (50844 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          Decoding VtableStub vtbl[5]@140093182863181
          --------------------------------------------------------------------------------
   1.44%    0x00007f69e41b3420:   mov    0x8(%rsi),%eax
  13.52%    0x00007f69e41b3423:   movabs $0x7f696b000000,%r10
            0x00007f69e41b342d:   add    %r10,%rax
   1.37%    0x00007f69e41b3430:   mov    0x1f0(%rax),%rbx
   7.33%    0x00007f69e41b3437:   jmp    *0x40(%rbx)
            0x00007f69e41b343a:   .byte 0x0
          --------------------------------------------------------------------------------
          <nmethod compile_id='543' compiler='c1' level='3' entry='0x00007f69dcbf17e0' size='1640' address='0x00007f69dcbf1610' relocation_offset='344' insts_offset='464' stub_offset='1200' scopes_data_offset='1280' scopes_pcs_offset='1376' dependencies_offset='1632' metadata_offset='1272' method='java.lang.StringConcatHelper newArray (J)[B' bytes='40' count='1399' iicount='1399' stamp='5.850'/>
          <print_nmethod compile_id='543' compiler='c1' level='3' stamp='5.850'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5849  543       3       java.lang.StringConcatHelper::newArray (40 bytes)
           total in heap  [0x00007f69dcbf1610,0x00007f69dcbf1c78] = 1640
           relocation     [0x00007f69dcbf1768,0x00007f69dcbf17c8] = 96
           main code      [0x00007f69dcbf17e0,0x00007f69dcbf1ac0] = 736
....................................................................................................
  23.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 560 

               0x00007f69e4637eee:   mov    %r10d,%r11d
               0x00007f69e4637ef1:   dec    %r11d
               0x00007f69e4637ef4:   cmp    %r10d,%r11d
          ╭    0x00007f69e4637ef7:   jae    0x00007f69e4637f59
          │    0x00007f69e4637efd:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007f69e4637f01:   xor    %ebp,%ebp
          │    0x00007f69e4637f03:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f69e4637f08:   jmp    0x00007f69e4637f14
          ││   0x00007f69e4637f0a:   nopw   0x0(%rax,%rax,1)
   8.87%  ││↗  0x00007f69e4637f10:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.03%  │↘│  0x00007f69e4637f14:   mov    0x10(%r11,%rbp,4),%r10d
   6.37%  │ │  0x00007f69e4637f19:   mov    %r11,(%rsp)
          │ │  0x00007f69e4637f1d:   mov    %r10,%rsi
          │ │  0x00007f69e4637f20:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.48%  │ │  0x00007f69e4637f24:   nop
   0.00%  │ │  0x00007f69e4637f25:   movabs $0x7f696c02b130,%rax
          │ │  0x00007f69e4637f2f:   call   0x00007f69e40c13e0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   1.33%  │ │  0x00007f69e4637f34:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007f69e4637f3c:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.47%  │ │  0x00007f69e4637f3e:   xchg   %ax,%ax
   0.16%  │ │  0x00007f69e4637f40:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f69e4637f44:   jl     0x00007f69e4637f10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
          │    0x00007f69e4637f46:   add    $0x20,%rsp
          │    0x00007f69e4637f4a:   pop    %rbp
   0.00%  │    0x00007f69e4637f4b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007f69e4637f52:   ja     0x00007f69e4637f94
          │    0x00007f69e4637f58:   ret    
          ↘    0x00007f69e4637f59:   mov    $0xffffff76,%esi
               0x00007f69e4637f5e:   mov    %r10d,(%rsp)
               0x00007f69e4637f62:   mov    %r9d,0x4(%rsp)
               0x00007f69e4637f67:   call   0x00007f69e40c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                                                         ;   {runtime_call UncommonTrapBlob}
               0x00007f69e4637f6c:   nopl   0x100025c(%rax,%rax,1)       ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  20.71%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 555 

                # {method} {0x00007f69604e46b8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f69e4637380:   mov    0x8(%rsi),%r10d
                0x00007f69e4637384:   movabs $0x7f696b000000,%r11
                0x00007f69e463738e:   add    %r11,%r10
                0x00007f69e4637391:   cmp    %r10,%rax
                0x00007f69e4637394:   jne    0x00007f69e40c4080           ;   {runtime_call ic_miss_stub}
                0x00007f69e463739a:   xchg   %ax,%ax
                0x00007f69e463739c:   nopl   0x0(%rax)
              [Verified Entry Point]
   9.44%        0x00007f69e46373a0:   sub    $0x18,%rsp
   3.82%        0x00007f69e46373a7:   mov    %rbp,0x10(%rsp)
   3.00%        0x00007f69e46373ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f69e46373b4:   jne    0x00007f69e46373eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 277)
          │  ↗  0x00007f69e46373ba:   mov    0x10(%rsi),%eax
   0.63%  │  │  0x00007f69e46373bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
   0.50%  │  │  0x00007f69e46373bf:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
   0.18%  │  │  0x00007f69e46373c2:   add    $0x10,%rsp
          │  │  0x00007f69e46373c6:   pop    %rbp
          │ ↗│  0x00007f69e46373c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f69e46373ce:   ja     0x00007f69e46373d5
   0.52%  ││││  0x00007f69e46373d4:   ret    
          │↘╰│  0x00007f69e46373d5:   movabs $0x7f69e46373c7,%r10         ;   {internal_word}
          │  │  0x00007f69e46373df:   mov    %r10,0x468(%r15)
          │  │  0x00007f69e46373e6:   jmp    0x00007f69e40cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f69e46373eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f69e46373f0:   jmp    0x00007f69e46373ba
                0x00007f69e46373f5:   hlt    
                0x00007f69e46373f6:   hlt    
                0x00007f69e46373f7:   hlt    
              [Exception Handler]
                0x00007f69e46373f8:   jmp    0x00007f69e4197680           ;   {no_reloc}
....................................................................................................
  18.09%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 557 

                # {method} {0x00007f69604e4a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f69e4637680:   mov    0x8(%rsi),%r10d
                0x00007f69e4637684:   movabs $0x7f696b000000,%r11
                0x00007f69e463768e:   add    %r11,%r10
                0x00007f69e4637691:   cmp    %r10,%rax
                0x00007f69e4637694:   jne    0x00007f69e40c4080           ;   {runtime_call ic_miss_stub}
                0x00007f69e463769a:   xchg   %ax,%ax
                0x00007f69e463769c:   nopl   0x0(%rax)
              [Verified Entry Point]
   9.46%        0x00007f69e46376a0:   sub    $0x18,%rsp
   3.95%        0x00007f69e46376a7:   mov    %rbp,0x10(%rsp)
   2.73%        0x00007f69e46376ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f69e46376b4:   jne    0x00007f69e46376eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 283)
   0.00%  │  ↗  0x00007f69e46376ba:   mov    0x14(%rsi),%eax
   0.54%  │  │  0x00007f69e46376bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 283)
   0.42%  │  │  0x00007f69e46376bf:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
   0.19%  │  │  0x00007f69e46376c2:   add    $0x10,%rsp
          │  │  0x00007f69e46376c6:   pop    %rbp
          │ ↗│  0x00007f69e46376c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f69e46376ce:   ja     0x00007f69e46376d5
   0.54%  ││││  0x00007f69e46376d4:   ret    
          │↘╰│  0x00007f69e46376d5:   movabs $0x7f69e46376c7,%r10         ;   {internal_word}
          │  │  0x00007f69e46376df:   mov    %r10,0x468(%r15)
          │  │  0x00007f69e46376e6:   jmp    0x00007f69e40cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f69e46376eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f69e46376f0:   jmp    0x00007f69e46376ba
                0x00007f69e46376f5:   hlt    
                0x00007f69e46376f6:   hlt    
                0x00007f69e46376f7:   hlt    
              [Exception Handler]
                0x00007f69e46376f8:   jmp    0x00007f69e4197680           ;   {no_reloc}
....................................................................................................
  17.85%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 554 

                # {method} {0x00007f69604e4268} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f69e4637080:   mov    0x8(%rsi),%r10d
                0x00007f69e4637084:   movabs $0x7f696b000000,%r11
                0x00007f69e463708e:   add    %r11,%r10
                0x00007f69e4637091:   cmp    %r10,%rax
                0x00007f69e4637094:   jne    0x00007f69e40c4080           ;   {runtime_call ic_miss_stub}
                0x00007f69e463709a:   xchg   %ax,%ax
                0x00007f69e463709c:   nopl   0x0(%rax)
              [Verified Entry Point]
   9.72%        0x00007f69e46370a0:   sub    $0x18,%rsp
   3.83%        0x00007f69e46370a7:   mov    %rbp,0x10(%rsp)
   2.86%        0x00007f69e46370ac:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f69e46370b4:   jne    0x00007f69e46370eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 271)
          │  ↗  0x00007f69e46370ba:   mov    0xc(%rsi),%eax
   0.01%  │  │  0x00007f69e46370bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 271)
   0.48%  │  │  0x00007f69e46370bf:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
   0.00%  │  │  0x00007f69e46370c2:   add    $0x10,%rsp
          │  │  0x00007f69e46370c6:   pop    %rbp
          │ ↗│  0x00007f69e46370c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f69e46370ce:   ja     0x00007f69e46370d5
   0.54%  ││││  0x00007f69e46370d4:   ret    
          │↘╰│  0x00007f69e46370d5:   movabs $0x7f69e46370c7,%r10         ;   {internal_word}
          │  │  0x00007f69e46370df:   mov    %r10,0x468(%r15)
          │  │  0x00007f69e46370e6:   jmp    0x00007f69e40cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f69e46370eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f69e46370f0:   jmp    0x00007f69e46370ba
                0x00007f69e46370f5:   hlt    
                0x00007f69e46370f6:   hlt    
                0x00007f69e46370f7:   hlt    
              [Exception Handler]
                0x00007f69e46370f8:   jmp    0x00007f69e4197680           ;   {no_reloc}
....................................................................................................
  17.44%  <total for region 5>

....[Hottest Regions]...............................................................................
  23.66%                      <unknown> 
  20.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 560 
  18.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 555 
  17.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 557 
  17.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 554 
   0.40%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.13%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.70%                      <unknown> 
  20.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 560 
  18.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 555 
  17.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 557 
  17.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 554 
   1.82%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.21%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.09%         c2, level 4
  23.70%                    
   1.82%              kernel
   0.19%           libjvm.so
   0.10%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%              [vdso]
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.00%          libjava.so
   0.00%    perf-1942516.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.098 ns/op
# Warmup Iteration   2: 26.590 ns/op
# Warmup Iteration   3: 27.027 ns/op
# Warmup Iteration   4: 26.774 ns/op
# Warmup Iteration   5: 26.890 ns/op
Iteration   1: 26.907 ns/op
Iteration   2: 26.842 ns/op
Iteration   3: 26.814 ns/op
Iteration   4: 26.846 ns/op
Iteration   5: 26.428 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  26.767 ±(99.9%) 0.741 ns/op [Average]
  (min, avg, max) = (26.428, 26.767, 26.907), stdev = 0.193
  CI (99.9%): [26.026, 27.509] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 125192 total address lines.
Perf output processed (skipped 56.179 seconds):
 Column 1: cycles (50940 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          Decoding VtableStub vtbl[5]@140005575071565
          --------------------------------------------------------------------------------
   1.42%    0x00007f55801b3320:   mov    0x8(%rsi),%eax
  14.10%    0x00007f55801b3323:   movabs $0x7f5503000000,%r10
            0x00007f55801b332d:   add    %r10,%rax
   1.34%    0x00007f55801b3330:   mov    0x1f0(%rax),%rbx
   7.00%    0x00007f55801b3337:   jmp    *0x40(%rbx)
            0x00007f55801b333a:   .byte 0x0
          --------------------------------------------------------------------------------
          <task_queued compile_id='566' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='77244' iicount='2' level='3' stamp='5.655' comment='tiered' hot_count='2'/>
          <nmethod compile_id='566' compiler='c1' level='3' entry='0x00007f5578bed1c0' size='1592' address='0x00007f5578bed010' relocation_offset='344' insts_offset='432' stub_offset='1048' scopes_data_offset='1128' scopes_pcs_offset='1272' dependencies_offset='1560' nul_chk_table_offset='1568' oops_offset='1112' metadata_offset='1120' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='3' backedge_count='84870' iicount='3' stamp='5.655'/>
          <print_nmethod compile_id='566' compiler='c1' level='3' stamp='5.655'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5655  566       3       com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call (38 bytes)
           total in heap  [0x00007f5578bed010,0x00007f5578bed648] = 1592
           relocation     [0x00007f5578bed168,0x00007f5578bed1b8] = 80
....................................................................................................
  23.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 568 

               0x00007f55806378ee:   mov    %r10d,%r11d
               0x00007f55806378f1:   dec    %r11d
               0x00007f55806378f4:   cmp    %r10d,%r11d
          ╭    0x00007f55806378f7:   jae    0x00007f5580637959
          │    0x00007f55806378fd:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007f5580637901:   xor    %ebp,%ebp
          │    0x00007f5580637903:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f5580637908:   jmp    0x00007f5580637914
          ││   0x00007f558063790a:   nopw   0x0(%rax,%rax,1)
   7.79%  ││↗  0x00007f5580637910:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.00%  │↘│  0x00007f5580637914:   mov    0x10(%r11,%rbp,4),%r10d
   6.52%  │ │  0x00007f5580637919:   mov    %r11,(%rsp)
          │ │  0x00007f558063791d:   mov    %r10,%rsi
          │ │  0x00007f5580637920:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.36%  │ │  0x00007f5580637924:   nop
   0.00%  │ │  0x00007f5580637925:   movabs $0x7f550402b130,%rax
          │ │  0x00007f558063792f:   call   0x00007f55800c13e0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   0.95%  │ │  0x00007f5580637934:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007f558063793c:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.57%  │ │  0x00007f558063793e:   xchg   %ax,%ax
   0.48%  │ │  0x00007f5580637940:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f5580637944:   jl     0x00007f5580637910           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
          │    0x00007f5580637946:   add    $0x20,%rsp
   0.00%  │    0x00007f558063794a:   pop    %rbp
          │    0x00007f558063794b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007f5580637952:   ja     0x00007f5580637994
          │    0x00007f5580637958:   ret    
          ↘    0x00007f5580637959:   mov    $0xffffff76,%esi
               0x00007f558063795e:   mov    %r10d,(%rsp)
               0x00007f5580637962:   mov    %r9d,0x4(%rsp)
               0x00007f5580637967:   call   0x00007f55800c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  19.67%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 563 

                # {method} {0x00007f54ff4e4a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f5580636d80:   mov    0x8(%rsi),%r10d
                0x00007f5580636d84:   movabs $0x7f5503000000,%r11
                0x00007f5580636d8e:   add    %r11,%r10
                0x00007f5580636d91:   cmp    %r10,%rax
                0x00007f5580636d94:   jne    0x00007f55800c4080           ;   {runtime_call ic_miss_stub}
                0x00007f5580636d9a:   xchg   %ax,%ax
                0x00007f5580636d9c:   nopl   0x0(%rax)
              [Verified Entry Point]
   7.05%        0x00007f5580636da0:   sub    $0x18,%rsp
   2.76%        0x00007f5580636da7:   mov    %rbp,0x10(%rsp)
   2.09%        0x00007f5580636dac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f5580636db4:   jne    0x00007f5580636deb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 283)
          │  ↗  0x00007f5580636dba:   mov    0x14(%rsi),%eax
   0.42%  │  │  0x00007f5580636dbd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 283)
   0.40%  │  │  0x00007f5580636dbf:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
   0.12%  │  │  0x00007f5580636dc2:   add    $0x10,%rsp
          │  │  0x00007f5580636dc6:   pop    %rbp
   0.00%  │ ↗│  0x00007f5580636dc7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f5580636dce:   ja     0x00007f5580636dd5
   0.97%  ││││  0x00007f5580636dd4:   ret    
          │↘╰│  0x00007f5580636dd5:   movabs $0x7f5580636dc7,%r10         ;   {internal_word}
          │  │  0x00007f5580636ddf:   mov    %r10,0x468(%r15)
          │  │  0x00007f5580636de6:   jmp    0x00007f55800cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f5580636deb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f5580636df0:   jmp    0x00007f5580636dba
                0x00007f5580636df5:   hlt    
                0x00007f5580636df6:   hlt    
                0x00007f5580636df7:   hlt    
              [Exception Handler]
                0x00007f5580636df8:   jmp    0x00007f5580196480           ;   {no_reloc}
....................................................................................................
  13.82%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 562 

                # {method} {0x00007f54ff4e46b8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f5580636a80:   mov    0x8(%rsi),%r10d
                0x00007f5580636a84:   movabs $0x7f5503000000,%r11
                0x00007f5580636a8e:   add    %r11,%r10
                0x00007f5580636a91:   cmp    %r10,%rax
                0x00007f5580636a94:   jne    0x00007f55800c4080           ;   {runtime_call ic_miss_stub}
                0x00007f5580636a9a:   xchg   %ax,%ax
                0x00007f5580636a9c:   nopl   0x0(%rax)
              [Verified Entry Point]
   7.18%        0x00007f5580636aa0:   sub    $0x18,%rsp
   2.88%        0x00007f5580636aa7:   mov    %rbp,0x10(%rsp)
   2.18%        0x00007f5580636aac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f5580636ab4:   jne    0x00007f5580636aeb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 277)
          │  ↗  0x00007f5580636aba:   mov    0x10(%rsi),%eax
   0.01%  │  │  0x00007f5580636abd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
   0.31%  │  │  0x00007f5580636abf:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
   0.00%  │  │  0x00007f5580636ac2:   add    $0x10,%rsp
          │  │  0x00007f5580636ac6:   pop    %rbp
   0.00%  │ ↗│  0x00007f5580636ac7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f5580636ace:   ja     0x00007f5580636ad5
   1.15%  ││││  0x00007f5580636ad4:   ret    
          │↘╰│  0x00007f5580636ad5:   movabs $0x7f5580636ac7,%r10         ;   {internal_word}
          │  │  0x00007f5580636adf:   mov    %r10,0x468(%r15)
          │  │  0x00007f5580636ae6:   jmp    0x00007f55800cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f5580636aeb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f5580636af0:   jmp    0x00007f5580636aba
                0x00007f5580636af5:   hlt    
                0x00007f5580636af6:   hlt    
                0x00007f5580636af7:   hlt    
              [Exception Handler]
                0x00007f5580636af8:   jmp    0x00007f5580196480           ;   {no_reloc}
....................................................................................................
  13.71%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 561 

                # {method} {0x00007f54ff4e4268} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f5580636780:   mov    0x8(%rsi),%r10d
                0x00007f5580636784:   movabs $0x7f5503000000,%r11
                0x00007f558063678e:   add    %r11,%r10
                0x00007f5580636791:   cmp    %r10,%rax
                0x00007f5580636794:   jne    0x00007f55800c4080           ;   {runtime_call ic_miss_stub}
                0x00007f558063679a:   xchg   %ax,%ax
                0x00007f558063679c:   nopl   0x0(%rax)
              [Verified Entry Point]
   6.90%        0x00007f55806367a0:   sub    $0x18,%rsp
   2.82%        0x00007f55806367a7:   mov    %rbp,0x10(%rsp)
   1.99%        0x00007f55806367ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f55806367b4:   jne    0x00007f55806367eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 271)
          │  ↗  0x00007f55806367ba:   mov    0xc(%rsi),%eax
          │  │  0x00007f55806367bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 271)
   0.33%  │  │  0x00007f55806367bf:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │  │  0x00007f55806367c2:   add    $0x10,%rsp
          │  │  0x00007f55806367c6:   pop    %rbp
          │ ↗│  0x00007f55806367c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f55806367ce:   ja     0x00007f55806367d5
   1.22%  ││││  0x00007f55806367d4:   ret    
          │↘╰│  0x00007f55806367d5:   movabs $0x7f55806367c7,%r10         ;   {internal_word}
          │  │  0x00007f55806367df:   mov    %r10,0x468(%r15)
          │  │  0x00007f55806367e6:   jmp    0x00007f55800cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f55806367eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f55806367f0:   jmp    0x00007f55806367ba
                0x00007f55806367f5:   hlt    
                0x00007f55806367f6:   hlt    
                0x00007f55806367f7:   hlt    
              [Exception Handler]
                0x00007f55806367f8:   jmp    0x00007f5580196480           ;   {no_reloc}
....................................................................................................
  13.27%  <total for region 5>

....[Hottest Region 6]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 564 

                # {method} {0x00007f54ff4e4e48} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f5580637080:   mov    0x8(%rsi),%r10d
                0x00007f5580637084:   movabs $0x7f5503000000,%r11
                0x00007f558063708e:   add    %r11,%r10
                0x00007f5580637091:   cmp    %r10,%rax
                0x00007f5580637094:   jne    0x00007f55800c4080           ;   {runtime_call ic_miss_stub}
                0x00007f558063709a:   xchg   %ax,%ax
                0x00007f558063709c:   nopl   0x0(%rax)
              [Verified Entry Point]
   6.82%        0x00007f55806370a0:   sub    $0x18,%rsp
   2.84%        0x00007f55806370a7:   mov    %rbp,0x10(%rsp)
   2.09%        0x00007f55806370ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f55806370b4:   jne    0x00007f55806370eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@-1 (line 289)
          │  ↗  0x00007f55806370ba:   mov    0x18(%rsi),%eax
          │  │  0x00007f55806370bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 289)
   0.30%  │  │  0x00007f55806370bf:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
          │  │  0x00007f55806370c2:   add    $0x10,%rsp
          │  │  0x00007f55806370c6:   pop    %rbp
          │ ↗│  0x00007f55806370c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f55806370ce:   ja     0x00007f55806370d5
   1.18%  ││││  0x00007f55806370d4:   ret    
          │↘╰│  0x00007f55806370d5:   movabs $0x7f55806370c7,%r10         ;   {internal_word}
          │  │  0x00007f55806370df:   mov    %r10,0x468(%r15)
          │  │  0x00007f55806370e6:   jmp    0x00007f55800cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f55806370eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f55806370f0:   jmp    0x00007f55806370ba
                0x00007f55806370f5:   hlt    
                0x00007f55806370f6:   hlt    
                0x00007f55806370f7:   hlt    
              [Exception Handler]
                0x00007f55806370f8:   jmp    0x00007f5580196480           ;   {no_reloc}
....................................................................................................
  13.23%  <total for region 6>

....[Hottest Regions]...............................................................................
  23.87%                      <unknown> 
  19.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 568 
  13.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 563 
  13.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 562 
  13.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 561 
  13.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 564 
   0.96%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.93%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.89%                      <unknown> 
  19.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 568 
  13.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 563 
  13.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 562 
  13.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 561 
  13.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 564 
   2.07%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 630 
   0.01%         interpreter  return entry points  
   0.01%      hsdis-amd64.so  print_insn 
   0.18%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.70%         c2, level 4
  23.89%                    
   2.07%              kernel
   0.16%           libjvm.so
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.01%              [vdso]
   0.00%    perf-1942580.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.060 ns/op
# Warmup Iteration   2: 25.944 ns/op
# Warmup Iteration   3: 25.962 ns/op
# Warmup Iteration   4: 25.921 ns/op
# Warmup Iteration   5: 25.941 ns/op
Iteration   1: 25.924 ns/op
Iteration   2: 25.902 ns/op
Iteration   3: 25.841 ns/op
Iteration   4: 25.898 ns/op
Iteration   5: 25.901 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.893 ±(99.9%) 0.120 ns/op [Average]
  (min, avg, max) = (25.841, 25.893, 25.924), stdev = 0.031
  CI (99.9%): [25.773, 26.013] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 127825 total address lines.
Perf output processed (skipped 56.327 seconds):
 Column 1: cycles (50587 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
   1.47%    0x00007f86681b2fd0:   mov    0x8(%rsi),%eax
  13.32%    0x00007f86681b2fd3:   movabs $0x7f85ef000000,%r10
            0x00007f86681b2fdd:   add    %r10,%rax
   1.55%    0x00007f86681b2fe0:   mov    0x1f0(%rax),%rbx
   7.24%    0x00007f86681b2fe7:   jmp    *0x40(%rbx)
            0x00007f86681b2fea:   .byte 0x0
          --------------------------------------------------------------------------------
          <task_queued compile_id='590' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='77048' iicount='2' level='3' stamp='5.925' comment='tiered' hot_count='2'/>
          <nmethod compile_id='590' compiler='c1' level='3' entry='0x00007f8660bf4b40' size='1592' address='0x00007f8660bf4990' relocation_offset='344' insts_offset='432' stub_offset='1048' scopes_data_offset='1128' scopes_pcs_offset='1272' dependencies_offset='1560' nul_chk_table_offset='1568' oops_offset='1112' metadata_offset='1120' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='3' backedge_count='85517' iicount='3' stamp='5.925'/>
          <print_nmethod compile_id='590' compiler='c1' level='3' stamp='5.925'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5925  590       3       com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call (38 bytes)
           total in heap  [0x00007f8660bf4990,0x00007f8660bf4fc8] = 1592
           relocation     [0x00007f8660bf4ae8,0x00007f8660bf4b38] = 80
....................................................................................................
  23.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 592 

               0x00007f866863b7ee:   mov    %r10d,%r11d
               0x00007f866863b7f1:   dec    %r11d
               0x00007f866863b7f4:   cmp    %r10d,%r11d
          ╭    0x00007f866863b7f7:   jae    0x00007f866863b859
          │    0x00007f866863b7fd:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007f866863b801:   xor    %ebp,%ebp
          │    0x00007f866863b803:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f866863b808:   jmp    0x00007f866863b814
          ││   0x00007f866863b80a:   nopw   0x0(%rax,%rax,1)
   8.29%  ││↗  0x00007f866863b810:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.00%  │↘│  0x00007f866863b814:   mov    0x10(%r11,%rbp,4),%r10d
   6.53%  │ │  0x00007f866863b819:   mov    %r11,(%rsp)
          │ │  0x00007f866863b81d:   mov    %r10,%rsi
   0.00%  │ │  0x00007f866863b820:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.45%  │ │  0x00007f866863b824:   nop
   0.01%  │ │  0x00007f866863b825:   movabs $0x7f85f002b130,%rax
          │ │  0x00007f866863b82f:   call   0x00007f86680c1120           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   1.15%  │ │  0x00007f866863b834:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007f866863b83c:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.23%  │ │  0x00007f866863b83e:   xchg   %ax,%ax
   0.39%  │ │  0x00007f866863b840:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f866863b844:   jl     0x00007f866863b810           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   0.00%  │    0x00007f866863b846:   add    $0x20,%rsp
          │    0x00007f866863b84a:   pop    %rbp
          │    0x00007f866863b84b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007f866863b852:   ja     0x00007f866863b894
          │    0x00007f866863b858:   ret    
          ↘    0x00007f866863b859:   mov    $0xffffff76,%esi
               0x00007f866863b85e:   mov    %r10d,(%rsp)
               0x00007f866863b862:   mov    %r9d,0x4(%rsp)
               0x00007f866863b867:   call   0x00007f86680c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  20.06%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 587 

                # {method} {0x00007f85e44e4e48} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f866863a980:   mov    0x8(%rsi),%r10d
                0x00007f866863a984:   movabs $0x7f85ef000000,%r11
                0x00007f866863a98e:   add    %r11,%r10
                0x00007f866863a991:   cmp    %r10,%rax
                0x00007f866863a994:   jne    0x00007f86680c4080           ;   {runtime_call ic_miss_stub}
                0x00007f866863a99a:   xchg   %ax,%ax
                0x00007f866863a99c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.76%        0x00007f866863a9a0:   sub    $0x18,%rsp
   2.41%        0x00007f866863a9a7:   mov    %rbp,0x10(%rsp)
   1.80%        0x00007f866863a9ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f866863a9b4:   jne    0x00007f866863a9eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@-1 (line 289)
          │  ↗  0x00007f866863a9ba:   mov    0x18(%rsi),%eax
   0.52%  │  │  0x00007f866863a9bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 289)
   0.29%  │  │  0x00007f866863a9bf:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 289)
   0.18%  │  │  0x00007f866863a9c2:   add    $0x10,%rsp
          │  │  0x00007f866863a9c6:   pop    %rbp
          │ ↗│  0x00007f866863a9c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f866863a9ce:   ja     0x00007f866863a9d5
   0.46%  ││││  0x00007f866863a9d4:   ret    
          │↘╰│  0x00007f866863a9d5:   movabs $0x7f866863a9c7,%r10         ;   {internal_word}
          │  │  0x00007f866863a9df:   mov    %r10,0x468(%r15)
          │  │  0x00007f866863a9e6:   jmp    0x00007f86680cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f866863a9eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f866863a9f0:   jmp    0x00007f866863a9ba
                0x00007f866863a9f5:   hlt    
                0x00007f866863a9f6:   hlt    
                0x00007f866863a9f7:   hlt    
              [Exception Handler]
                0x00007f866863a9f8:   jmp    0x00007f866818be80           ;   {no_reloc}
....................................................................................................
  11.42%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 588 

                # {method} {0x00007f85e44e5210} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f866863ac80:   mov    0x8(%rsi),%r10d
                0x00007f866863ac84:   movabs $0x7f85ef000000,%r11
                0x00007f866863ac8e:   add    %r11,%r10
                0x00007f866863ac91:   cmp    %r10,%rax
                0x00007f866863ac94:   jne    0x00007f86680c4080           ;   {runtime_call ic_miss_stub}
                0x00007f866863ac9a:   xchg   %ax,%ax
                0x00007f866863ac9c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.72%        0x00007f866863aca0:   sub    $0x18,%rsp
   2.26%        0x00007f866863aca7:   mov    %rbp,0x10(%rsp)
   1.76%        0x00007f866863acac:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f866863acb4:   jne    0x00007f866863aceb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@-1 (line 295)
          │  ↗  0x00007f866863acba:   mov    0x1c(%rsi),%eax
   0.55%  │  │  0x00007f866863acbd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 295)
   0.34%  │  │  0x00007f866863acbf:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 295)
   0.16%  │  │  0x00007f866863acc2:   add    $0x10,%rsp
          │  │  0x00007f866863acc6:   pop    %rbp
          │ ↗│  0x00007f866863acc7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f866863acce:   ja     0x00007f866863acd5
   0.42%  ││││  0x00007f866863acd4:   ret    
          │↘╰│  0x00007f866863acd5:   movabs $0x7f866863acc7,%r10         ;   {internal_word}
          │  │  0x00007f866863acdf:   mov    %r10,0x468(%r15)
          │  │  0x00007f866863ace6:   jmp    0x00007f86680cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f866863aceb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f866863acf0:   jmp    0x00007f866863acba
                0x00007f866863acf5:   hlt    
                0x00007f866863acf6:   hlt    
                0x00007f866863acf7:   hlt    
              [Exception Handler]
                0x00007f866863acf8:   jmp    0x00007f866818be80           ;   {no_reloc}
....................................................................................................
  11.21%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 585 

                # {method} {0x00007f85e44e46b8} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f866863a380:   mov    0x8(%rsi),%r10d
                0x00007f866863a384:   movabs $0x7f85ef000000,%r11
                0x00007f866863a38e:   add    %r11,%r10
                0x00007f866863a391:   cmp    %r10,%rax
                0x00007f866863a394:   jne    0x00007f86680c4080           ;   {runtime_call ic_miss_stub}
                0x00007f866863a39a:   xchg   %ax,%ax
                0x00007f866863a39c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.58%        0x00007f866863a3a0:   sub    $0x18,%rsp
   2.42%        0x00007f866863a3a7:   mov    %rbp,0x10(%rsp)
   1.71%        0x00007f866863a3ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f866863a3b4:   jne    0x00007f866863a3eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 277)
          │  ↗  0x00007f866863a3ba:   mov    0x10(%rsi),%eax
   0.30%  │  │  0x00007f866863a3bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 277)
   0.28%  │  │  0x00007f866863a3bf:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 277)
   0.12%  │  │  0x00007f866863a3c2:   add    $0x10,%rsp
          │  │  0x00007f866863a3c6:   pop    %rbp
          │ ↗│  0x00007f866863a3c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f866863a3ce:   ja     0x00007f866863a3d5
   0.46%  ││││  0x00007f866863a3d4:   ret    
          │↘╰│  0x00007f866863a3d5:   movabs $0x7f866863a3c7,%r10         ;   {internal_word}
          │  │  0x00007f866863a3df:   mov    %r10,0x468(%r15)
          │  │  0x00007f866863a3e6:   jmp    0x00007f86680cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f866863a3eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f866863a3f0:   jmp    0x00007f866863a3ba
                0x00007f866863a3f5:   hlt    
                0x00007f866863a3f6:   hlt    
                0x00007f866863a3f7:   hlt    
              [Exception Handler]
                0x00007f866863a3f8:   jmp    0x00007f866818be80           ;   {no_reloc}
....................................................................................................
  10.86%  <total for region 5>

....[Hottest Region 6]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 586 

                # {method} {0x00007f85e44e4a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f866863a680:   mov    0x8(%rsi),%r10d
                0x00007f866863a684:   movabs $0x7f85ef000000,%r11
                0x00007f866863a68e:   add    %r11,%r10
                0x00007f866863a691:   cmp    %r10,%rax
                0x00007f866863a694:   jne    0x00007f86680c4080           ;   {runtime_call ic_miss_stub}
                0x00007f866863a69a:   xchg   %ax,%ax
                0x00007f866863a69c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.48%        0x00007f866863a6a0:   sub    $0x18,%rsp
   2.34%        0x00007f866863a6a7:   mov    %rbp,0x10(%rsp)
   1.72%        0x00007f866863a6ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f866863a6b4:   jne    0x00007f866863a6eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 283)
          │  ↗  0x00007f866863a6ba:   mov    0x14(%rsi),%eax
   0.31%  │  │  0x00007f866863a6bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 283)
   0.31%  │  │  0x00007f866863a6bf:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 283)
   0.09%  │  │  0x00007f866863a6c2:   add    $0x10,%rsp
          │  │  0x00007f866863a6c6:   pop    %rbp
   0.00%  │ ↗│  0x00007f866863a6c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f866863a6ce:   ja     0x00007f866863a6d5
   0.49%  ││││  0x00007f866863a6d4:   ret    
          │↘╰│  0x00007f866863a6d5:   movabs $0x7f866863a6c7,%r10         ;   {internal_word}
          │  │  0x00007f866863a6df:   mov    %r10,0x468(%r15)
          │  │  0x00007f866863a6e6:   jmp    0x00007f86680cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f866863a6eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f866863a6f0:   jmp    0x00007f866863a6ba
                0x00007f866863a6f5:   hlt    
                0x00007f866863a6f6:   hlt    
                0x00007f866863a6f7:   hlt    
              [Exception Handler]
                0x00007f866863a6f8:   jmp    0x00007f866818be80           ;   {no_reloc}
....................................................................................................
  10.73%  <total for region 6>

....[Hottest Region 7]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 584 

                # {method} {0x00007f85e44e4268} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f866863a080:   mov    0x8(%rsi),%r10d
                0x00007f866863a084:   movabs $0x7f85ef000000,%r11
                0x00007f866863a08e:   add    %r11,%r10
                0x00007f866863a091:   cmp    %r10,%rax
                0x00007f866863a094:   jne    0x00007f86680c4080           ;   {runtime_call ic_miss_stub}
                0x00007f866863a09a:   xchg   %ax,%ax
                0x00007f866863a09c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.53%        0x00007f866863a0a0:   sub    $0x18,%rsp
   2.30%        0x00007f866863a0a7:   mov    %rbp,0x10(%rsp)
   1.74%        0x00007f866863a0ac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007f866863a0b4:   jne    0x00007f866863a0eb           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 271)
          │  ↗  0x00007f866863a0ba:   mov    0xc(%rsi),%eax
   0.00%  │  │  0x00007f866863a0bd:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 271)
   0.30%  │  │  0x00007f866863a0bf:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 271)
          │  │  0x00007f866863a0c2:   add    $0x10,%rsp
          │  │  0x00007f866863a0c6:   pop    %rbp
          │ ↗│  0x00007f866863a0c7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f866863a0ce:   ja     0x00007f866863a0d5
   0.53%  ││││  0x00007f866863a0d4:   ret    
          │↘╰│  0x00007f866863a0d5:   movabs $0x7f866863a0c7,%r10         ;   {internal_word}
          │  │  0x00007f866863a0df:   mov    %r10,0x468(%r15)
          │  │  0x00007f866863a0e6:   jmp    0x00007f86680cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f866863a0eb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f866863a0f0:   jmp    0x00007f866863a0ba
                0x00007f866863a0f5:   hlt    
                0x00007f866863a0f6:   hlt    
                0x00007f866863a0f7:   hlt    
              [Exception Handler]
                0x00007f866863a0f8:   jmp    0x00007f866818be80           ;   {no_reloc}
....................................................................................................
  10.40%  <total for region 7>

....[Hottest Regions]...............................................................................
  23.58%                      <unknown> 
  20.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 592 
  11.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 587 
  11.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 588 
  10.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 585 
  10.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 586 
  10.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 584 
   0.44%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.82%  <...other 248 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.59%                      <unknown> 
  20.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 592 
  11.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 587 
  11.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 588 
  10.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 585 
  10.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 586 
  10.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 584 
   1.45%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%           libjvm.so  fileStream::write 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 643 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.00%        libc-2.31.so  syscall 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.69%         c2, level 4
  23.59%                    
   1.45%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.03%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%    perf-1942643.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.179 ns/op
# Warmup Iteration   2: 25.808 ns/op
# Warmup Iteration   3: 25.781 ns/op
# Warmup Iteration   4: 25.760 ns/op
# Warmup Iteration   5: 25.684 ns/op
Iteration   1: 25.668 ns/op
Iteration   2: 25.717 ns/op
Iteration   3: 25.695 ns/op
Iteration   4: 25.715 ns/op
Iteration   5: 25.827 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.724 ±(99.9%) 0.234 ns/op [Average]
  (min, avg, max) = (25.668, 25.724, 25.827), stdev = 0.061
  CI (99.9%): [25.490, 25.958] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 125080 total address lines.
Perf output processed (skipped 56.132 seconds):
 Column 1: cycles (50585 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          <task_queued compile_id='578' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='62738' iicount='2' level='3' stamp='5.686' comment='tiered' hot_count='2'/>
          Decoding VtableStub vtbl[5]@140469738321741
          --------------------------------------------------------------------------------
   1.41%    0x00007fc1901b2fd0:   mov    0x8(%rsi),%eax
  12.05%    0x00007fc1901b2fd3:   movabs $0x7fc117000000,%r10
            0x00007fc1901b2fdd:   add    %r10,%rax
   1.49%    0x00007fc1901b2fe0:   mov    0x1f0(%rax),%rbx
   7.35%    0x00007fc1901b2fe7:   jmp    *0x40(%rbx)
            0x00007fc1901b2fea:   .byte 0x0
          --------------------------------------------------------------------------------
          <nmethod compile_id='578' compiler='c1' level='3' entry='0x00007fc188bec6c0' size='1592' address='0x00007fc188bec510' relocation_offset='344' insts_offset='432' stub_offset='1048' scopes_data_offset='1128' scopes_pcs_offset='1272' dependencies_offset='1560' nul_chk_table_offset='1568' oops_offset='1112' metadata_offset='1120' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='67562' iicount='2' stamp='5.687'/>
          <print_nmethod compile_id='578' compiler='c1' level='3' stamp='5.687'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5686  578       3       com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call (38 bytes)
           total in heap  [0x00007fc188bec510,0x00007fc188becb48] = 1592
           relocation     [0x00007fc188bec668,0x00007fc188bec6b8] = 80
           main code      [0x00007fc188bec6c0,0x00007fc188bec928] = 616
....................................................................................................
  22.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 580 

               0x00007fc19063886e:   mov    %r10d,%r11d
               0x00007fc190638871:   dec    %r11d
               0x00007fc190638874:   cmp    %r10d,%r11d
          ╭    0x00007fc190638877:   jae    0x00007fc1906388d9
          │    0x00007fc19063887d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007fc190638881:   xor    %ebp,%ebp
          │    0x00007fc190638883:   mov    %r10d,0x8(%rsp)
          │╭   0x00007fc190638888:   jmp    0x00007fc190638894
          ││   0x00007fc19063888a:   nopw   0x0(%rax,%rax,1)
   8.63%  ││↗  0x00007fc190638890:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.01%  │↘│  0x00007fc190638894:   mov    0x10(%r11,%rbp,4),%r10d
   6.75%  │ │  0x00007fc190638899:   mov    %r11,(%rsp)
          │ │  0x00007fc19063889d:   mov    %r10,%rsi
          │ │  0x00007fc1906388a0:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.46%  │ │  0x00007fc1906388a4:   nop
   0.02%  │ │  0x00007fc1906388a5:   movabs $0x7fc11802b130,%rax
          │ │  0x00007fc1906388af:   call   0x00007fc1900c15a0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   1.08%  │ │  0x00007fc1906388b4:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007fc1906388bc:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.61%  │ │  0x00007fc1906388be:   xchg   %ax,%ax
   0.36%  │ │  0x00007fc1906388c0:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007fc1906388c4:   jl     0x00007fc190638890           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
   0.00%  │    0x00007fc1906388c6:   add    $0x20,%rsp
          │    0x00007fc1906388ca:   pop    %rbp
          │    0x00007fc1906388cb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007fc1906388d2:   ja     0x00007fc190638914
          │    0x00007fc1906388d8:   ret    
          ↘    0x00007fc1906388d9:   mov    $0xffffff76,%esi
               0x00007fc1906388de:   mov    %r10d,(%rsp)
               0x00007fc1906388e2:   mov    %r9d,0x4(%rsp)
               0x00007fc1906388e7:   call   0x00007fc1900c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  20.93%  <total for region 2>

....[Hottest Regions]...............................................................................
  22.31%                      <unknown> 
  20.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 580 
   9.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 577 
   9.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 573 
   9.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 571 
   8.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 576 
   8.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 572 
   8.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 574 
   0.39%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.86%  <...other 272 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.36%                      <unknown> 
  20.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 580 
   9.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 577 
   9.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 573 
   9.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 571 
   8.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 576 
   8.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 572 
   8.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 574 
   1.37%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 631 
   0.01%      hsdis-amd64.so  fetch_data 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.17%  <...other 67 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  75.97%         c2, level 4
  22.36%                    
   1.37%              kernel
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%           libnet.so
   0.00%    perf-1942705.map
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.875 ns/op
# Warmup Iteration   2: 25.719 ns/op
# Warmup Iteration   3: 25.715 ns/op
# Warmup Iteration   4: 25.634 ns/op
# Warmup Iteration   5: 25.656 ns/op
Iteration   1: 25.632 ns/op
Iteration   2: 25.653 ns/op
Iteration   3: 25.649 ns/op
Iteration   4: 25.651 ns/op
Iteration   5: 25.652 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.647 ±(99.9%) 0.034 ns/op [Average]
  (min, avg, max) = (25.632, 25.647, 25.653), stdev = 0.009
  CI (99.9%): [25.614, 25.681] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 127474 total address lines.
Perf output processed (skipped 56.243 seconds):
 Column 1: cycles (50677 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          Decoding VtableStub vtbl[5]@139773448464205
          --------------------------------------------------------------------------------
   1.48%    0x00007f1f741b35d0:   mov    0x8(%rsi),%eax
          ============================= C2-compiled nmethod ==============================
          <nmethod compile_id='592' compiler='c2' level='4' entry='0x00007f1f7463a500' size='640' address='0x00007f1f7463a390' relocation_offset='344' insts_offset='368' stub_offset='488' scopes_data_offset='528' scopes_pcs_offset='552' dependencies_offset='632' oops_offset='512' metadata_offset='520' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5 compute ()I' bytes='12' count='15132' iicount='15132' stamp='5.851'/>
          <make_not_entrant thread='1942789' compile_id='585' compiler='c1' level='2' stamp='5.851'/>
  12.23%    0x00007f1f741b35d3:   movabs $0x7f1ef7000000,%r10
            0x00007f1f741b35dd:   
          <print_nmethod compile_id='592' compiler='c2' level='4' stamp='5.851'>
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c2)    5850  592       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute (12 bytes)
           total in heap  [0x00007f1f7463a390,0x00007f1f7463a610] = 640
           relocation     [0x00007f1f7463a4e8,0x00007f1f7463a500] = 24
           main code      [0x00007f1f7463a500,0x00007f1f7463a578] = 120
           stub code      [0x00007f1f7463a578,0x00007f1f7463a590] = 24
           oops           [0x00007f1f7463a590,0x00007f1f7463a598] = 8
           metadata       [0x00007f1f7463a598,0x00007f1f7463a5a0] = 8
           scopes data    [0x00007f1f7463a5a0,0x00007f1f7463a5b8] = 24
           scopes pcs     [0x00007f1f7463a5b8,0x00007f1f7463a608] = 80
....................................................................................................
  22.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 598 

               0x00007f1f7463b36e:   mov    %r10d,%r11d
               0x00007f1f7463b371:   dec    %r11d
               0x00007f1f7463b374:   cmp    %r10d,%r11d
          ╭    0x00007f1f7463b377:   jae    0x00007f1f7463b3d9
          │    0x00007f1f7463b37d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007f1f7463b381:   xor    %ebp,%ebp
          │    0x00007f1f7463b383:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f1f7463b388:   jmp    0x00007f1f7463b394
          ││   0x00007f1f7463b38a:   nopw   0x0(%rax,%rax,1)
   8.47%  ││↗  0x00007f1f7463b390:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.02%  │↘│  0x00007f1f7463b394:   mov    0x10(%r11,%rbp,4),%r10d
   6.79%  │ │  0x00007f1f7463b399:   mov    %r11,(%rsp)
          │ │  0x00007f1f7463b39d:   mov    %r10,%rsi
          │ │  0x00007f1f7463b3a0:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.52%  │ │  0x00007f1f7463b3a4:   nop
   0.01%  │ │  0x00007f1f7463b3a5:   movabs $0xffffffffffffffff,%rax
          │ │  0x00007f1f7463b3af:   call   0x00007f1f740c4680           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   1.11%  │ │  0x00007f1f7463b3b4:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007f1f7463b3bc:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   2.17%  │ │  0x00007f1f7463b3be:   xchg   %ax,%ax
   0.34%  │ │  0x00007f1f7463b3c0:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f1f7463b3c4:   jl     0x00007f1f7463b390           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
          │    0x00007f1f7463b3c6:   add    $0x20,%rsp
   0.00%  │    0x00007f1f7463b3ca:   pop    %rbp
          │    0x00007f1f7463b3cb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007f1f7463b3d2:   ja     0x00007f1f7463b414
          │    0x00007f1f7463b3d8:   ret    
          ↘    0x00007f1f7463b3d9:   mov    $0xffffff76,%esi
               0x00007f1f7463b3de:   mov    %r10d,(%rsp)
               0x00007f1f7463b3e2:   mov    %r9d,0x4(%rsp)
               0x00007f1f7463b3e7:   call   0x00007f1f740c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  20.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  22.48%                      <unknown> 
  20.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 598 
   8.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 592 
   8.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 595 
   8.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 594 
   7.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 591 
   7.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 590 
   7.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 588 
   7.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 589 
   0.43%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.99%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.52%                      <unknown> 
  20.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 598 
   8.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 592 
   8.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 595 
   8.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 594 
   7.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 591 
   7.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 590 
   7.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 588 
   7.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 589 
   1.58%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%    perf-1942769.map  [unknown] 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  syscall 
   0.20%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.61%         c2, level 4
  22.52%                    
   1.58%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%    perf-1942769.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.628 ns/op
# Warmup Iteration   2: 25.378 ns/op
# Warmup Iteration   3: 25.406 ns/op
# Warmup Iteration   4: 25.423 ns/op
# Warmup Iteration   5: 25.447 ns/op
Iteration   1: 25.375 ns/op
Iteration   2: 25.496 ns/op
Iteration   3: 25.423 ns/op
Iteration   4: 25.477 ns/op
Iteration   5: 25.394 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.433 ±(99.9%) 0.201 ns/op [Average]
  (min, avg, max) = (25.375, 25.433, 25.496), stdev = 0.052
  CI (99.9%): [25.232, 25.634] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:asm":
PrintAssembly processed: 125798 total address lines.
Perf output processed (skipped 56.137 seconds):
 Column 1: cycles (50976 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
   1.44%    0x00007fd86c1b3020: 
          <nmethod compile_id='565' compiler='c1' level='2' entry='0x00007fd864bee320' size='816' address='0x00007fd864bee190' relocation_offset='344' insts_offset='400' stub_offset='616' scopes_data_offset='680' scopes_pcs_offset='712' dependencies_offset='808' oops_offset='664' metadata_offset='672' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8 compute ()I' bytes='12' count='14800' iicount='14800' stamp='5.723'/>
          <print_nmethod compile_id='565' compiler='c1' level='2' stamp='5.723'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5722  565       2       com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute (12 bytes)
           total in heap  [0x00007fd864bee190,0x00007fd864bee4c0] = 816
           relocation     [0x00007fd864bee2e8,0x00007fd864bee318] = 48
           main code      [0x00007fd864bee320,0x00007fd864bee3f8] = 216
           stub code      [0x00007fd864bee3f8,0x00007fd864bee428] = 48
           oops           [0x00007fd864bee428,0x00007fd864bee430] = 8
           metadata       [0x00007fd864bee430,0x00007fd864bee438] = 8
....................................................................................................
  21.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 577 

               0x00007fd86c63a0ee:   mov    %r10d,%r11d
               0x00007fd86c63a0f1:   dec    %r11d
               0x00007fd86c63a0f4:   cmp    %r10d,%r11d
          ╭    0x00007fd86c63a0f7:   jae    0x00007fd86c63a159
          │    0x00007fd86c63a0fd:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 166)
          │    0x00007fd86c63a101:   xor    %ebp,%ebp
          │    0x00007fd86c63a103:   mov    %r10d,0x8(%rsp)
          │╭   0x00007fd86c63a108:   jmp    0x00007fd86c63a114
          ││   0x00007fd86c63a10a:   nopw   0x0(%rax,%rax,1)
   7.88%  ││↗  0x00007fd86c63a110:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 167)
   0.01%  │↘│  0x00007fd86c63a114:   mov    0x10(%r11,%rbp,4),%r10d
   6.51%  │ │  0x00007fd86c63a119:   mov    %r11,(%rsp)
          │ │  0x00007fd86c63a11d:   mov    %r10,%rsi
          │ │  0x00007fd86c63a120:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 167)
   1.48%  │ │  0x00007fd86c63a124:   nop
   0.02%  │ │  0x00007fd86c63a125:   movabs $0x7fd7f002b130,%rax
          │ │  0x00007fd86c63a12f:   call   0x00007fd86c0c14a0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {virtual_call}
   0.90%  │ │  0x00007fd86c63a134:   nopl   0x224(%rax,%rax,1)           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
          │ │                                                            ;   {other}
          │ │  0x00007fd86c63a13c:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 167)
   1.99%  │ │  0x00007fd86c63a13e:   xchg   %ax,%ax
   0.56%  │ │  0x00007fd86c63a140:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007fd86c63a144:   jl     0x00007fd86c63a110           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
          │    0x00007fd86c63a146:   add    $0x20,%rsp
          │    0x00007fd86c63a14a:   pop    %rbp
          │    0x00007fd86c63a14b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007fd86c63a152:   ja     0x00007fd86c63a194
   0.00%  │    0x00007fd86c63a158:   ret    
          ↘    0x00007fd86c63a159:   mov    $0xffffff76,%esi
               0x00007fd86c63a15e:   mov    %r10d,(%rsp)
               0x00007fd86c63a162:   mov    %r9d,0x4(%rsp)
               0x00007fd86c63a167:   call   0x00007fd86c0c9f00           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 167)
                                                                         ;   {runtime_call UncommonTrapBlob}
               0x00007fd86c63a16c:   nopl   0x100025c(%rax,%rax,1)       ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 168)
                                                                         ;   {other}
....................................................................................................
  19.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  21.24%                      <unknown> 
  19.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 577 
   8.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 574 
   7.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 575 
   7.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 568 
   6.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 570 
   6.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 572 
   6.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 569 
   6.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 566 
   6.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 567 
   1.02%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.94%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  21.27%                      <unknown> 
  19.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 577 
   8.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 574 
   7.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 575 
   7.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 568 
   6.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 570 
   6.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 572 
   6.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 569 
   6.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 566 
   6.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 567 
   2.18%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  os::vsnprintf 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         interpreter  fast_aload_0  220 fast_aload_0  
   0.19%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  76.27%         c2, level 4
  21.27%                    
   2.18%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.03%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%          ld-2.31.so
   0.00%    perf-1942829.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:28:58

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

Benchmark                                                        (targetType)  Mode  Cnt   Score    Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic        MONOMORPHIC  avgt    5   1.888 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm    MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic          BIMORPHIC  avgt    5   2.211 ±  0.250  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm      BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_3  avgt    5   2.197 ±  0.005  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_4  avgt    5   2.409 ±  0.013  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_5  avgt    5   2.498 ±  0.143  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_6  avgt    5   2.432 ±  0.210  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_7  avgt    5   2.545 ±  0.098  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic      MEGAMORPHIC_8  avgt    5  15.836 ±  0.042  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:asm  MEGAMORPHIC_8  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                       MONOMORPHIC  avgt    5   1.834 ±  0.169  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                   MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                         BIMORPHIC  avgt    5   1.945 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                     BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_3  avgt    5  26.238 ±  0.039  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_4  avgt    5  26.767 ±  0.741  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_5  avgt    5  25.893 ±  0.120  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_6  avgt    5  25.724 ±  0.234  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_7  avgt    5  25.647 ±  0.034  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                     MEGAMORPHIC_8  avgt    5  25.433 ±  0.201  ns/op
MegamorphicMethodCallBenchmark.virtual_call:asm                 MEGAMORPHIC_8  avgt          NaN             ---
