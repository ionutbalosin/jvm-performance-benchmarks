# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 256)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.365 ms/op
# Warmup Iteration   2: 32.914 ms/op
# Warmup Iteration   3: 32.914 ms/op
# Warmup Iteration   4: 32.916 ms/op
# Warmup Iteration   5: 32.916 ms/op
Iteration   1: 32.916 ms/op
Iteration   2: 32.916 ms/op
Iteration   3: 32.915 ms/op
Iteration   4: 32.916 ms/op
Iteration   5: 32.915 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  32.916 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (32.915, 32.916, 32.916), stdev = 0.001
  CI (99.9%): [32.914, 32.917] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 292094 total address lines.
Perf output processed (skipped 60.659 seconds):
 Column 1: cycles (55299 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 988 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                      0x00007ffa53244419:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                      0x00007ffa5324441d:   mov    $0x0,%edx
                      0x00007ffa53244422:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007ffa5324442c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
                 ↗↗   0x00007ffa53244430:   cmp    %edx,%r11d
          ╭      ││   0x00007ffa53244433:   jle    0x00007ffa53244513           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.01%  │      ││   0x00007ffa53244439:   nopl   0x0(%rax)
   0.03%  │      ││   0x00007ffa53244440:   cmp    $0x1,%r8d
          │╭     ││   0x00007ffa53244444:   jl     0x00007ffa5324450c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
          ││     ││   0x00007ffa5324444a:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.02%  ││     ││   0x00007ffa5324444e:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.08%  ││     ││   0x00007ffa53244452:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.01%  ││     ││   0x00007ffa53244456:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.15%  ││     ││   0x00007ffa5324445a:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.10%  ││     ││   0x00007ffa5324445e:   vmovapd %xmm9,%xmm10
   0.03%  ││     ││   0x00007ffa53244463:   vmovapd %xmm7,%xmm9
   0.01%  ││     ││   0x00007ffa53244467:   mov    $0x1,%ebp
   0.00%  ││╭    ││   0x00007ffa5324446c:   jmp    0x00007ffa532444bd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          │││    ││   0x00007ffa53244471:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007ffa5324447c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.78%  │││  ↗ ││   0x00007ffa53244480:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  18.06%  │││  │ ││   0x00007ffa53244485:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.35%  │││  │ ││   0x00007ffa5324448a:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  28.56%  │││  │ ││   0x00007ffa5324448f:   vucomisd %xmm4,%xmm13
  11.47%  │││╭ │ ││   0x00007ffa53244493:   jp     0x00007ffa532444c5
  10.98%  ││││╭│ ││   0x00007ffa53244499:   ja     0x00007ffa532444c5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   3.04%  ││││││ ││   0x00007ffa5324449f:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.05%  ││││││ ││   0x00007ffa532444a4:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   5.45%  ││││││ ││   0x00007ffa532444a9:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   1.02%  ││││││ ││   0x00007ffa532444ad:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   0.64%  ││││││ ││   0x00007ffa532444b2:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.45%  ││││││ ││   0x00007ffa532444b6:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
          ││││││ ││                                                             ;   {no_reloc}
   4.58%  ││││││ ││   0x00007ffa532444b8:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
   1.10%  ││↘│││ ││   0x00007ffa532444bd:   data16 xchg %ax,%ax
   0.82%  ││ │││ ││   0x00007ffa532444c0:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007ffa532444c3:   jg     0x00007ffa53244480           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.08%  ││ ↘↘  ││↗  0x00007ffa532444c5:   mov    %edx,%r13d
   0.02%  ││     │││  0x00007ffa532444c8:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.01%  ││     │││  0x00007ffa532444cb:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007ffa532444ce:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.05%  ││     │││  0x00007ffa532444d1:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007ffa532444d4:   jle    0x00007ffa532444f3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.00%  ││    ││││  0x00007ffa532444da:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.02%  ││    ││││  0x00007ffa532444e1:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.01%  ││    ││││  0x00007ffa532444e8:   test   %eax,0x0(%rbp)               ;   {poll}
   0.07%  ││    ││││  0x00007ffa532444eb:   mov    %r13d,%edx
          ││    │╰││  0x00007ffa532444ee:   jmp    0x00007ffa53244430           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.00%  ││    ↘ ││  0x00007ffa532444f3:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          ││      ││  0x00007ffa532444fa:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          ││      ││  0x00007ffa53244501:   test   %eax,0x0(%rbp)               ;   {poll}
   0.00%  ││      ││  0x00007ffa53244504:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007ffa53244507:   jmp    0x00007ffa53244430           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │↘       │  0x00007ffa5324450c:   mov    $0x0,%ebp
          │        ╰  0x00007ffa53244511:   jmp    0x00007ffa532444c5           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@149 (line 92)
          ↘           0x00007ffa53244513:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                      0x00007ffa5324451a:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007ffa5324451c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
....................................................................................................
  90.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 988 
   1.05%               kernel  [unknown] 
   0.86%               kernel  [unknown] 
   0.56%               kernel  [unknown] 
   0.40%               kernel  [unknown] 
   0.38%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%            libjvm.so  ElfSymbolTable::lookup 
   0.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%         libc-2.31.so  __strchrnul_avx2 
   0.06%           ld-2.31.so  __tls_get_addr 
   0.06%         libc-2.31.so  _IO_default_xsputn 
   0.05%            libjvm.so  defaultStream::write 
   5.46%  <...other 1337 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 988 
   5.89%               kernel  [unknown] 
   0.20%                       <unknown> 
   0.17%         libc-2.31.so  __vfprintf_internal 
   0.15%            libjvm.so  ElfSymbolTable::lookup 
   0.10%         libc-2.31.so  _IO_fwrite 
   0.10%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1236 
   0.09%            libjvm.so  defaultStream::write 
   0.09%            libjvm.so  xmlStream::write_text 
   0.08%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%         libc-2.31.so  _IO_default_xsputn 
   0.08%         libc-2.31.so  __strchrnul_avx2 
   0.07%       hsdis-amd64.so  print_insn 
   0.07%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1321 
   0.07%          c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 1239 
   0.06%         libc-2.31.so  __strchr_avx2 
   0.06%           ld-2.31.so  __tls_get_addr 
   0.05%   libpthread-2.31.so  __libc_write 
   0.05%         libc-2.31.so  syscall 
   0.05%         libc-2.31.so  __strlen_avx2 
   2.40%  <...other 580 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.26%       jvmci, level 4
   5.89%               kernel
   1.09%            libjvm.so
   0.98%         libc-2.31.so
   0.69%  libjvmcicompiler.so
   0.33%          interpreter
   0.20%                     
   0.20%          c1, level 3
   0.12%       hsdis-amd64.so
   0.11%   libpthread-2.31.so
   0.06%           ld-2.31.so
   0.05%     perf-2113499.map
   0.03%          c1, level 2
   0.00%          c1, level 1
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 133.184 ms/op
# Warmup Iteration   2: 131.280 ms/op
# Warmup Iteration   3: 131.257 ms/op
# Warmup Iteration   4: 131.283 ms/op
# Warmup Iteration   5: 131.297 ms/op
Iteration   1: 131.284 ms/op
Iteration   2: 131.282 ms/op
Iteration   3: 131.300 ms/op
Iteration   4: 131.298 ms/op
Iteration   5: 131.294 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  131.292 ±(99.9%) 0.031 ms/op [Average]
  (min, avg, max) = (131.282, 131.292, 131.300), stdev = 0.008
  CI (99.9%): [131.261, 131.322] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 295448 total address lines.
Perf output processed (skipped 61.208 seconds):
 Column 1: cycles (57191 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 981 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                      0x00007faf8b244719:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                      0x00007faf8b24471d:   mov    $0x0,%edx
                      0x00007faf8b244722:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007faf8b24472c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
                 ↗↗   0x00007faf8b244730:   cmp    %edx,%r11d
          ╭      ││   0x00007faf8b244733:   jle    0x00007faf8b244813           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.02%  │      ││   0x00007faf8b244739:   nopl   0x0(%rax)
   0.05%  │      ││   0x00007faf8b244740:   cmp    $0x1,%r8d
          │╭     ││   0x00007faf8b244744:   jl     0x00007faf8b24480c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.00%  ││     ││   0x00007faf8b24474a:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.01%  ││     ││   0x00007faf8b24474e:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.06%  ││     ││   0x00007faf8b244752:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.01%  ││     ││   0x00007faf8b244756:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.09%  ││     ││   0x00007faf8b24475a:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.10%  ││     ││   0x00007faf8b24475e:   vmovapd %xmm9,%xmm10
   0.04%  ││     ││   0x00007faf8b244763:   vmovapd %xmm7,%xmm9
   0.00%  ││     ││   0x00007faf8b244767:   mov    $0x1,%ebp
          ││╭    ││   0x00007faf8b24476c:   jmp    0x00007faf8b2447bd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          │││    ││   0x00007faf8b244771:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007faf8b24477c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.80%  │││  ↗ ││   0x00007faf8b244780:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  17.53%  │││  │ ││   0x00007faf8b244785:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.28%  │││  │ ││   0x00007faf8b24478a:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  28.18%  │││  │ ││   0x00007faf8b24478f:   vucomisd %xmm4,%xmm13
  11.00%  │││╭ │ ││   0x00007faf8b244793:   jp     0x00007faf8b2447c5
  10.58%  ││││╭│ ││   0x00007faf8b244799:   ja     0x00007faf8b2447c5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   2.99%  ││││││ ││   0x00007faf8b24479f:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.02%  ││││││ ││   0x00007faf8b2447a4:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   5.17%  ││││││ ││   0x00007faf8b2447a9:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   1.00%  ││││││ ││   0x00007faf8b2447ad:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   0.63%  ││││││ ││   0x00007faf8b2447b2:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.46%  ││││││ ││   0x00007faf8b2447b6:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
          ││││││ ││                                                             ;   {no_reloc}
   4.55%  ││││││ ││   0x00007faf8b2447b8:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
   1.12%  ││↘│││ ││   0x00007faf8b2447bd:   data16 xchg %ax,%ax
   0.95%  ││ │││ ││   0x00007faf8b2447c0:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007faf8b2447c3:   jg     0x00007faf8b244780           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.08%  ││ ↘↘  ││↗  0x00007faf8b2447c5:   mov    %edx,%r13d
   0.02%  ││     │││  0x00007faf8b2447c8:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.01%  ││     │││  0x00007faf8b2447cb:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007faf8b2447ce:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.06%  ││     │││  0x00007faf8b2447d1:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007faf8b2447d4:   jle    0x00007faf8b2447f3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
          ││    ││││  0x00007faf8b2447da:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.02%  ││    ││││  0x00007faf8b2447e1:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.02%  ││    ││││  0x00007faf8b2447e8:   test   %eax,0x0(%rbp)               ;   {poll}
   0.05%  ││    ││││  0x00007faf8b2447eb:   mov    %r13d,%edx
          ││    │╰││  0x00007faf8b2447ee:   jmp    0x00007faf8b244730           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.00%  ││    ↘ ││  0x00007faf8b2447f3:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          ││      ││  0x00007faf8b2447fa:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          ││      ││  0x00007faf8b244801:   test   %eax,0x0(%rbp)               ;   {poll}
          ││      ││  0x00007faf8b244804:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007faf8b244807:   jmp    0x00007faf8b244730           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │↘       │  0x00007faf8b24480c:   mov    $0x0,%ebp
          │        ╰  0x00007faf8b244811:   jmp    0x00007faf8b2447c5           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@149 (line 92)
          ↘           0x00007faf8b244813:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                      0x00007faf8b24481a:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007faf8b24481c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                      0x00007faf8b24481e:   xchg   %ax,%ax
   0.00%              0x00007faf8b244820:   cmp    %ebx,%r11d
                      0x00007faf8b244823:   jg     0x00007faf8b2446e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@11 (line 79)
                      0x00007faf8b244829:   mov    0x10(%rsp),%rbp
                      0x00007faf8b24482e:   add    $0x18,%rsp
                      0x00007faf8b244832:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007faf8b244839:   ja     0x00007faf8b244873
                      0x00007faf8b24483f:   ret    
                      0x00007faf8b244840:   movl   $0xffffffe5,0x484(%r15)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
                      0x00007faf8b24484b:   movq   $0x318,0x490(%r15)
....................................................................................................
  87.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 981 
   1.15%              kernel  [unknown] 
   0.91%              kernel  [unknown] 
   0.85%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.18%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1197 
   0.15%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1197 
   0.15%              kernel  [unknown] 
   0.13%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%           libjvm.so  ElfSymbolTable::lookup 
   0.11%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1197 
   0.11%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%           libjvm.so  defaultStream::write 
   0.08%  libpthread-2.31.so  __libc_write 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   6.68%  <...other 1651 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 981 
   6.64%              kernel  [unknown] 
   1.45%                      <unknown> 
   0.47%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1197 
   0.25%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1271 
   0.20%        libc-2.31.so  __vfprintf_internal 
   0.13%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%           libjvm.so  ElfSymbolTable::lookup 
   0.12%      hsdis-amd64.so  print_insn 
   0.10%           libjvm.so  xmlStream::write_text 
   0.10%        libc-2.31.so  _IO_default_xsputn 
   0.09%        libc-2.31.so  _IO_fwrite 
   0.09%           libjvm.so  defaultStream::write 
   0.08%  libpthread-2.31.so  __libc_write 
   0.06%        libc-2.31.so  syscall 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.06%         c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 1206 
   0.05%        libc-2.31.so  __strchr_avx2 
   0.05%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1263 
   0.05%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   1.90%  <...other 341 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.60%      jvmci, level 4
   6.64%              kernel
   1.45%                    
   1.24%           libjvm.so
   0.93%        libc-2.31.so
   0.37%         c1, level 3
   0.27%         interpreter
   0.16%      hsdis-amd64.so
   0.14%  libpthread-2.31.so
   0.09%         c1, level 2
   0.06%          ld-2.31.so
   0.03%    perf-2113572.map
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:11:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 65.432 ms/op
# Warmup Iteration   2: 64.632 ms/op
# Warmup Iteration   3: 64.633 ms/op
# Warmup Iteration   4: 64.633 ms/op
# Warmup Iteration   5: 64.633 ms/op
Iteration   1: 64.633 ms/op
Iteration   2: 64.635 ms/op
Iteration   3: 64.636 ms/op
Iteration   4: 64.635 ms/op
Iteration   5: 64.632 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  64.634 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (64.632, 64.634, 64.636), stdev = 0.001
  CI (99.9%): [64.629, 64.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 307247 total address lines.
Perf output processed (skipped 60.802 seconds):
 Column 1: cycles (56593 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 992 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                      0x00007f6da3247a99:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                      0x00007f6da3247a9d:   mov    $0x0,%edx
                      0x00007f6da3247aa2:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007f6da3247aac:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
                 ↗↗   0x00007f6da3247ab0:   cmp    %edx,%r11d
          ╭      ││   0x00007f6da3247ab3:   jle    0x00007f6da3247b93           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.00%  │      ││   0x00007f6da3247ab9:   nopl   0x0(%rax)
   0.02%  │      ││   0x00007f6da3247ac0:   cmp    $0x1,%r8d
          │╭     ││   0x00007f6da3247ac4:   jl     0x00007f6da3247b8c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.01%  ││     ││   0x00007f6da3247aca:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.01%  ││     ││   0x00007f6da3247ace:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.03%  ││     ││   0x00007f6da3247ad2:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.00%  ││     ││   0x00007f6da3247ad6:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.07%  ││     ││   0x00007f6da3247ada:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.04%  ││     ││   0x00007f6da3247ade:   vmovapd %xmm9,%xmm10
   0.02%  ││     ││   0x00007f6da3247ae3:   vmovapd %xmm7,%xmm9
   0.01%  ││     ││   0x00007f6da3247ae7:   mov    $0x1,%ebp
          ││╭    ││   0x00007f6da3247aec:   jmp    0x00007f6da3247b3d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          │││    ││   0x00007f6da3247af1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007f6da3247afc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.74%  │││  ↗ ││   0x00007f6da3247b00:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  17.89%  │││  │ ││   0x00007f6da3247b05:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.32%  │││  │ ││   0x00007f6da3247b0a:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  28.00%  │││  │ ││   0x00007f6da3247b0f:   vucomisd %xmm4,%xmm13
  11.17%  │││╭ │ ││   0x00007f6da3247b13:   jp     0x00007f6da3247b45
  10.62%  ││││╭│ ││   0x00007f6da3247b19:   ja     0x00007f6da3247b45           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   2.94%  ││││││ ││   0x00007f6da3247b1f:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.02%  ││││││ ││   0x00007f6da3247b24:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   5.30%  ││││││ ││   0x00007f6da3247b29:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   0.96%  ││││││ ││   0x00007f6da3247b2d:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   0.57%  ││││││ ││   0x00007f6da3247b32:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.44%  ││││││ ││   0x00007f6da3247b36:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
          ││││││ ││                                                             ;   {no_reloc}
   4.54%  ││││││ ││   0x00007f6da3247b38:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
   1.08%  ││↘│││ ││   0x00007f6da3247b3d:   data16 xchg %ax,%ax
   0.94%  ││ │││ ││   0x00007f6da3247b40:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007f6da3247b43:   jg     0x00007f6da3247b00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.03%  ││ ↘↘  ││↗  0x00007f6da3247b45:   mov    %edx,%r13d
   0.02%  ││     │││  0x00007f6da3247b48:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.01%  ││     │││  0x00007f6da3247b4b:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007f6da3247b4e:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.03%  ││     │││  0x00007f6da3247b51:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007f6da3247b54:   jle    0x00007f6da3247b73           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.00%  ││    ││││  0x00007f6da3247b5a:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%  ││    ││││  0x00007f6da3247b61:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.01%  ││    ││││  0x00007f6da3247b68:   test   %eax,0x0(%rbp)               ;   {poll}
   0.03%  ││    ││││  0x00007f6da3247b6b:   mov    %r13d,%edx
          ││    │╰││  0x00007f6da3247b6e:   jmp    0x00007f6da3247ab0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
          ││    ↘ ││  0x00007f6da3247b73:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          ││      ││  0x00007f6da3247b7a:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          ││      ││  0x00007f6da3247b81:   test   %eax,0x0(%rbp)               ;   {poll}
          ││      ││  0x00007f6da3247b84:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007f6da3247b87:   jmp    0x00007f6da3247ab0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │↘       │  0x00007f6da3247b8c:   mov    $0x0,%ebp
          │        ╰  0x00007f6da3247b91:   jmp    0x00007f6da3247b45           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@149 (line 92)
          ↘           0x00007f6da3247b93:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                      0x00007f6da3247b9a:   test   %eax,(%rdi)                  ;   {poll}
   0.00%              0x00007f6da3247b9c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                      0x00007f6da3247b9e:   xchg   %ax,%ax
                      0x00007f6da3247ba0:   cmp    %ebx,%r11d
                      0x00007f6da3247ba3:   jg     0x00007f6da3247a60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@11 (line 79)
                      0x00007f6da3247ba9:   mov    0x10(%rsp),%rbp
                      0x00007f6da3247bae:   add    $0x18,%rsp
                      0x00007f6da3247bb2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007f6da3247bb9:   ja     0x00007f6da3247bf3
                      0x00007f6da3247bbf:   ret    
....................................................................................................
  87.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 992 
   1.19%              kernel  [unknown] 
   0.97%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.11%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%  libpthread-2.31.so  __libc_write 
   0.07%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1183 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  xmlStream::write_text 
   6.60%  <...other 1522 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 992 
   7.33%              kernel  [unknown] 
   1.08%                      <unknown> 
   0.25%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1183 
   0.20%        libc-2.31.so  __vfprintf_internal 
   0.14%           libjvm.so  xmlStream::write_text 
   0.13%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1276 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.11%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.10%        libc-2.31.so  _IO_fwrite 
   0.09%      hsdis-amd64.so  print_insn 
   0.09%           libjvm.so  fileStream::write 
   0.09%        libc-2.31.so  _IO_default_xsputn 
   0.09%        libc-2.31.so  __strchrnul_avx2 
   0.08%           libjvm.so  defaultStream::write 
   0.08%  libpthread-2.31.so  __libc_write 
   0.07%         c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 1213 
   0.07%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.06%        libc-2.31.so  __strchr_avx2 
   0.05%        libc-2.31.so  __vsnprintf_internal 
   1.87%  <...other 329 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  88.28%      jvmci, level 4
   7.33%              kernel
   1.28%           libjvm.so
   1.08%                    
   1.04%        libc-2.31.so
   0.32%         interpreter
   0.28%         c1, level 3
   0.15%      hsdis-amd64.so
   0.13%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.03%         c1, level 2
   0.02%    perf-2113637.map
   0.00%       libdl-2.31.so
   0.00%         c1, level 1
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 262.835 ms/op
# Warmup Iteration   2: 258.015 ms/op
# Warmup Iteration   3: 258.036 ms/op
# Warmup Iteration   4: 258.014 ms/op
# Warmup Iteration   5: 258.046 ms/op
Iteration   1: 258.045 ms/op
Iteration   2: 258.053 ms/op
Iteration   3: 258.052 ms/op
Iteration   4: 258.056 ms/op
Iteration   5: 258.055 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  258.052 ±(99.9%) 0.016 ms/op [Average]
  (min, avg, max) = (258.045, 258.052, 258.056), stdev = 0.004
  CI (99.9%): [258.036, 258.069] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 303988 total address lines.
Perf output processed (skipped 61.057 seconds):
 Column 1: cycles (58872 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 984 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                     0x00007f7ac7242d19:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                     0x00007f7ac7242d1d:   mov    $0x0,%edx
                     0x00007f7ac7242d22:   data16 nopw 0x0(%rax,%rax,1)
                     0x00007f7ac7242d2c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
                ↗↗   0x00007f7ac7242d30:   cmp    %edx,%r11d
                ││   0x00007f7ac7242d33:   jle    0x00007f7ac7242e13           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.01%        ││   0x00007f7ac7242d39:   nopl   0x0(%rax)
   0.03%        ││   0x00007f7ac7242d40:   cmp    $0x1,%r8d
          ╭     ││   0x00007f7ac7242d44:   jl     0x00007f7ac7242e0c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
          │     ││   0x00007f7ac7242d4a:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.01%  │     ││   0x00007f7ac7242d4e:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.04%  │     ││   0x00007f7ac7242d52:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
          │     ││   0x00007f7ac7242d56:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.05%  │     ││   0x00007f7ac7242d5a:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.04%  │     ││   0x00007f7ac7242d5e:   vmovapd %xmm9,%xmm10
   0.02%  │     ││   0x00007f7ac7242d63:   vmovapd %xmm7,%xmm9
          │     ││   0x00007f7ac7242d67:   mov    $0x1,%ebp
          │╭    ││   0x00007f7ac7242d6c:   jmp    0x00007f7ac7242dbd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          ││    ││   0x00007f7ac7242d71:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││    ││   0x00007f7ac7242d7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.73%  ││  ↗ ││   0x00007f7ac7242d80:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  17.25%  ││  │ ││   0x00007f7ac7242d85:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.16%  ││  │ ││   0x00007f7ac7242d8a:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  27.20%  ││  │ ││   0x00007f7ac7242d8f:   vucomisd %xmm4,%xmm13
  11.06%  ││╭ │ ││   0x00007f7ac7242d93:   jp     0x00007f7ac7242dc5
  10.41%  │││╭│ ││   0x00007f7ac7242d99:   ja     0x00007f7ac7242dc5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   2.73%  │││││ ││   0x00007f7ac7242d9f:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.02%  │││││ ││   0x00007f7ac7242da4:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   5.12%  │││││ ││   0x00007f7ac7242da9:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   1.00%  │││││ ││   0x00007f7ac7242dad:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   0.59%  │││││ ││   0x00007f7ac7242db2:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   0.46%  │││││ ││   0x00007f7ac7242db6:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
          │││││ ││                                                             ;   {no_reloc}
   4.43%  │││││ ││   0x00007f7ac7242db8:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
   1.03%  │↘│││ ││   0x00007f7ac7242dbd:   data16 xchg %ax,%ax
   0.89%  │ │││ ││   0x00007f7ac7242dc0:   cmp    %ebp,%r8d
          │ ││╰ ││   0x00007f7ac7242dc3:   jg     0x00007f7ac7242d80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.04%  │ ↘↘  ││↗  0x00007f7ac7242dc5:   mov    %edx,%r13d
   0.01%  │     │││  0x00007f7ac7242dc8:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.00%  │     │││  0x00007f7ac7242dcb:   mov    %edx,%r14d
   0.00%  │     │││  0x00007f7ac7242dce:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.04%  │     │││  0x00007f7ac7242dd1:   cmp    %ebp,%r8d
          │    ╭│││  0x00007f7ac7242dd4:   jle    0x00007f7ac7242df3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
          │    ││││  0x00007f7ac7242dda:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%  │    ││││  0x00007f7ac7242de1:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.01%  │    ││││  0x00007f7ac7242de8:   test   %eax,0x0(%rbp)               ;   {poll}
   0.04%  │    ││││  0x00007f7ac7242deb:   mov    %r13d,%edx
   0.00%  │    │╰││  0x00007f7ac7242dee:   jmp    0x00007f7ac7242d30           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.00%  │    ↘ ││  0x00007f7ac7242df3:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │      ││  0x00007f7ac7242dfa:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.00%  │      ││  0x00007f7ac7242e01:   test   %eax,0x0(%rbp)               ;   {poll}
          │      ││  0x00007f7ac7242e04:   mov    %r13d,%edx
          │      ╰│  0x00007f7ac7242e07:   jmp    0x00007f7ac7242d30           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          ↘       │  0x00007f7ac7242e0c:   mov    $0x0,%ebp
                  ╰  0x00007f7ac7242e11:   jmp    0x00007f7ac7242dc5           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@149 (line 92)
                     0x00007f7ac7242e13:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                               ;*iinc {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  85.42%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 984 
   1.20%              kernel  [unknown] 
   0.93%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.47%              kernel  [unknown] 
   0.44%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1194 
   0.41%              kernel  [unknown] 
   0.41%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1194 
   0.15%              kernel  [unknown] 
   0.15%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%              kernel  [unknown] 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%  libpthread-2.31.so  __libc_write 
   0.08%              kernel  [unknown] 
   0.08%          ld-2.31.so  __tls_get_addr 
   0.07%           libjvm.so  xmlStream::write_text 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   8.91%  <...other 2078 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 984 
   6.83%              kernel  [unknown] 
   2.60%                      <unknown> 
   0.89%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1194 
   0.51%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1337 
   0.19%        libc-2.31.so  __vfprintf_internal 
   0.15%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1327 
   0.13%           libjvm.so  xmlStream::write_text 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.11%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1321 
   0.10%        libc-2.31.so  _IO_fwrite 
   0.09%  libpthread-2.31.so  __libc_write 
   0.08%        libc-2.31.so  __strchrnul_avx2 
   0.08%      hsdis-amd64.so  print_insn 
   0.08%           libjvm.so  defaultStream::write 
   0.08%          ld-2.31.so  __tls_get_addr 
   0.07%      jvmci, level 4  jdk.incubator.vector.Double256Vector::compare, version 2, compile id 1331 
   0.07%        libc-2.31.so  _IO_default_xsputn 
   0.06%        libc-2.31.so  __strchr_avx2 
   2.20%  <...other 375 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  86.70%      jvmci, level 4
   6.83%              kernel
   2.60%                    
   1.41%           libjvm.so
   0.99%        libc-2.31.so
   0.71%         c1, level 3
   0.28%         interpreter
   0.19%  libpthread-2.31.so
   0.14%      hsdis-amd64.so
   0.08%          ld-2.31.so
   0.03%    perf-2113701.map
   0.02%              [vdso]
   0.00%          libjava.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 98.217 ms/op
# Warmup Iteration   2: 35.137 ms/op
# Warmup Iteration   3: 35.092 ms/op
# Warmup Iteration   4: 35.086 ms/op
# Warmup Iteration   5: 35.063 ms/op
Iteration   1: 35.077 ms/op
Iteration   2: 35.077 ms/op
Iteration   3: 35.097 ms/op
Iteration   4: 35.114 ms/op
Iteration   5: 35.150 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  35.103 ±(99.9%) 0.118 ms/op [Average]
  (min, avg, max) = (35.077, 35.103, 35.150), stdev = 0.031
  CI (99.9%): [34.985, 35.221] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 316661 total address lines.
Perf output processed (skipped 60.955 seconds):
 Column 1: cycles (51153 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 

                                                                                   ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@29 (line 210)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
                                                                                   ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
                                                                                   ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                                   ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.00%                 0x00007f9d6327b5cb:   vmovsd %xmm0,0x98(%rsp)
   0.07%                 0x00007f9d6327b5d4:   vmovsd %xmm5,0xb8(%rsp)
   0.41%                 0x00007f9d6327b5dd:   vmovsd %xmm15,0x60(%rsp)
   0.03%                 0x00007f9d6327b5e3:   vmovsd %xmm3,0x58(%rsp)
   0.05%                 0x00007f9d6327b5e9:   vmovsd %xmm13,0x50(%rsp)
   0.16%                 0x00007f9d6327b5ef:   vmovsd %xmm4,0x48(%rsp)
   0.43%                 0x00007f9d6327b5f5:   vmovsd %xmm9,0x40(%rsp)
   0.26%                 0x00007f9d6327b5fb:   mov    %edi,0xc4(%rsp)
   0.37%                 0x00007f9d6327b602:   mov    $0x5,%esi
   0.01%                 0x00007f9d6327b607:   mov    %r10,%rdx
   0.09%                 0x00007f9d6327b60a:   mov    %r8,%rcx
   0.01%                 0x00007f9d6327b60d:   mov    %r8,0x8(%rsp)
   0.39%                 0x00007f9d6327b612:   mov    $0x0,%r8                     ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%                 0x00007f9d6327b619:   mov    %r10,0x10(%rsp)
   0.54%                 0x00007f9d6327b61e:   nop
   0.01%                 0x00007f9d6327b61f:   nop
   0.00%                 0x00007f9d6327b620:   data16 xchg %ax,%ax
   0.01%                 0x00007f9d6327b623:   call   0x00007f9d6325d940           ; ImmutableOopMap {[8]=Oop [16]=Oop [40]=Oop [48]=Oop }
                                                                                   ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=1}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
                                                                                   ;   {static_call}
   0.19%                 0x00007f9d6327b628:   nopl   0xc18(%rax,%rax,1)           ;   {other}
   0.04%                 0x00007f9d6327b630:   mov    %rax,%r10                    ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.06%                 0x00007f9d6327b633:   nopw   0x0(%rax,%rax,1)
   0.26%                 0x00007f9d6327b63c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop }
                                                                                   ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@17
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.11%                 0x00007f9d6327b640:   cmpl   $0x10c4f80,0x8(%r10)         ; implicit exception: dispatches to 0x00007f9d6327d0e6
                                                                                   ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.06%                 0x00007f9d6327b648:   jne    0x00007f9d6327ce3f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@17
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.07%                 0x00007f9d6327b64e:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                   ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.29%                 0x00007f9d6327b652:   test   %esi,%esi
                         0x00007f9d6327b654:   je     0x00007f9d6327bbe6
   0.09%                 0x00007f9d6327b65a:   mov    0x8(,%rsi,8),%edx
   0.05%                 0x00007f9d6327b661:   movabs $0x7f9ce7000000,%rax
   0.06%                 0x00007f9d6327b66b:   lea    (%rax,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.27%                 0x00007f9d6327b66f:   test   %esi,%esi
          ╭              0x00007f9d6327b671:   je     0x00007f9d6327baf0
   0.12%  │              0x00007f9d6327b677:   movabs $0x7f9ce7001b00,%r11         ;   {metadata({type array bool})}
   0.05%  │              0x00007f9d6327b681:   cmp    %rdx,%r11
          │              0x00007f9d6327b684:   jne    0x00007f9d6327d033           ; ImmutableOopMap {rsi=NarrowOop r10=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop }
          │                                                                        ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          │                                                                        ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@17
          │                                                                        ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
          │                                                                        ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │                                                                        ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │                                                                        ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │                                                                        ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.05%  │      ↗       0x00007f9d6327b68a:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f9d6327d10d
   0.39%  │      │       0x00007f9d6327b692:   jb     0x00007f9d6327d021           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2330::apply@17
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.06%  │      │       0x00007f9d6327b698:   mov    0x28(%rsp),%rbx
   0.36%  │      │       0x00007f9d6327b69d:   movsbl 0x10(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.13%  │      │       0x00007f9d6327b6a5:   vmovsd 0x10(%rbx),%xmm0             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.50%  │      │       0x00007f9d6327b6aa:   test   %dl,%dl
          │╭     │       0x00007f9d6327b6ac:   jne    0x00007f9d6327bbc5
   0.02%  ││     │       0x00007f9d6327b6b2:   movabs $0x7668297f0,%r9             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
          ││     │                                                                 ;   {oop([D{0x00000007668297f0})}
   0.03%  ││     │       0x00007f9d6327b6bc:   movsbl 0x11(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  ││     │       0x00007f9d6327b6c4:   vmovsd 0x18(%rbx),%xmm1             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%  ││     │       0x00007f9d6327b6c9:   test   %dl,%dl
          ││╭    │       0x00007f9d6327b6cb:   jne    0x00007f9d6327bba0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││    │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.33%  │││    │  ↗    0x00007f9d6327b6d1:   movsbl 0x12(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││    │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.02%  │││    │  │    0x00007f9d6327b6d9:   vmovsd 0x20(%rbx),%xmm2             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││    │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  │││    │  │    0x00007f9d6327b6de:   xchg   %ax,%ax
   0.15%  │││    │  │    0x00007f9d6327b6e0:   test   %dl,%dl
          │││╭   │  │    0x00007f9d6327b6e2:   jne    0x00007f9d6327bbab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││││   │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.37%  ││││   │  │↗   0x00007f9d6327b6e8:   movsbl 0x13(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││││   │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.07%  ││││   │  ││   0x00007f9d6327b6f0:   vmovsd 0x28(%rbx),%xmm3             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││││   │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  ││││   │  ││   0x00007f9d6327b6f5:   test   %dl,%dl
          ││││╭  │  ││   0x00007f9d6327b6f7:   jne    0x00007f9d6327bbb6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││││  │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││  │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.36%  │││││  │  ││↗  0x00007f9d6327b6fd:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.02%  │││││  │  │││  0x00007f9d6327b701:   test   %r8d,%r8d
          │││││  │  │││  0x00007f9d6327b704:   je     0x00007f9d6327bbda
   0.12%  │││││  │  │││  0x00007f9d6327b70a:   mov    0x8(,%r8,8),%edx
   0.28%  │││││  │  │││  0x00007f9d6327b712:   movabs $0x7f9ce7000000,%rax
   0.26%  │││││  │  │││  0x00007f9d6327b71c:   lea    (%rax,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.22%  │││││  │  │││  0x00007f9d6327b720:   mov    %esi,%ecx
   0.01%  │││││  │  │││  0x00007f9d6327b722:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  │││││  │  │││  0x00007f9d6327b726:   test   %r8d,%r8d
          │││││╭ │  │││  0x00007f9d6327b729:   je     0x00007f9d6327b738           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
          ││││││ │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││││││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.29%  ││││││ │  │││  0x00007f9d6327b72f:   cmp    %rdx,%r11
          ││││││ │  │││  0x00007f9d6327b732:   jne    0x00007f9d6327cf96           ; ImmutableOopMap {rcx=Oop rbx=Oop r8=NarrowOop r10=Oop [48]=Oop }
          ││││││ │  │││                                                            ;*dastore {reexecute=1 rethrow=0 return_oop=0}
          ││││││ │  │││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          ││││││ │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.21%  │││││↘ │  │││  0x00007f9d6327b738:   mov    0xc(,%r8,8),%edi             ; implicit exception: dispatches to 0x00007f9d6327d130
   0.00%  │││││  │  │││  0x00007f9d6327b740:   test   %edi,%edi
          │││││  │  │││  0x00007f9d6327b742:   je     0x00007f9d6327c3ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.15%  │││││  │  │││  0x00007f9d6327b748:   mov    0xc4(%rsp),%ebp
   0.22%  │││││  │  │││  0x00007f9d6327b74f:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
   0.09%  │││││  │  │││  0x00007f9d6327b751:   cmpb   $0x0,0x10(,%r8,8)
   0.27%  │││││ ╭│  │││  0x00007f9d6327b75a:   je     0x00007f9d6327baff           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 155)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.43%  │││││ ││  │││  0x00007f9d6327b760:   mov    0x1b8(%r15),%rsi
   0.02%  │││││ ││  │││  0x00007f9d6327b767:   lea    0x30(%rsi),%rdx
   0.01%  │││││ ││  │││  0x00007f9d6327b76b:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f9d6327b772:   ja     0x00007f9d6327be95
   0.10%  │││││ ││  │││  0x00007f9d6327b778:   mov    %rdx,0x1b8(%r15)
   0.35%  │││││ ││  │││  0x00007f9d6327b77f:   prefetchw 0xf0(%rsi)
   0.53%  │││││ ││  │││  0x00007f9d6327b786:   prefetchw 0x130(%rsi)
   0.01%  │││││ ││  │││  0x00007f9d6327b78d:   prefetchw 0x170(%rsi)
   0.25%  │││││ ││  │││  0x00007f9d6327b794:   prefetchw 0x1b0(%rsi)
   0.22%  │││││ ││  │││  0x00007f9d6327b79b:   movq   $0x1,(%rsi)
   0.51%  │││││ ││  │││  0x00007f9d6327b7a2:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.32%  │││││ ││  │││  0x00007f9d6327b7a9:   movl   $0x4,0xc(%rsi)
   0.27%  │││││ ││  │││  0x00007f9d6327b7b0:   movq   $0x0,0x10(%rsi)
   0.49%  │││││ ││  │││  0x00007f9d6327b7b8:   movq   $0x0,0x18(%rsi)
   0.92%  │││││ ││  │││  0x00007f9d6327b7c0:   movq   $0x0,0x20(%rsi)
   0.22%  │││││ ││  │││  0x00007f9d6327b7c8:   movq   $0x0,0x28(%rsi)
   0.29%  │││││ ││  │││  0x00007f9d6327b7d0:   mov    %rsi,%r8
   0.02%  │││││ ││  │││  0x00007f9d6327b7d3:   vmovsd 0xb0(%rsp),%xmm5
   0.17%  │││││ ││  │││  0x00007f9d6327b7dc:   vmovsd 0x50(%rsp),%xmm13
   0.15%  │││││ ││  │││  0x00007f9d6327b7e2:   vmovsd 0x80(%rsp),%xmm4
   0.20%  │││││ ││  │││  0x00007f9d6327b7eb:   vmovsd 0xa8(%rsp),%xmm6
   0.04%  │││││ ││  │││  0x00007f9d6327b7f4:   vmovsd %xmm6,0x28(%r8)
   0.46%  │││││ ││  │││  0x00007f9d6327b7fa:   vmovsd %xmm4,0x20(%r8)
   0.27%  │││││ ││  │││  0x00007f9d6327b800:   vmovsd %xmm13,0x18(%r8)
   0.25%  │││││ ││  │││  0x00007f9d6327b806:   vmovsd %xmm5,0x10(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.33%  │││││ ││  │││  0x00007f9d6327b80c:   mov    0x1b8(%r15),%rsi
   0.07%  │││││ ││  │││  0x00007f9d6327b813:   lea    0x30(%rsi),%rdx
   0.03%  │││││ ││  │││  0x00007f9d6327b817:   nopw   0x0(%rax,%rax,1)
   0.06%  │││││ ││  │││  0x00007f9d6327b820:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f9d6327b827:   ja     0x00007f9d6327bd75
   0.37%  │││││ ││  │││  0x00007f9d6327b82d:   mov    %rdx,0x1b8(%r15)
   0.04%  │││││ ││  │││  0x00007f9d6327b834:   prefetchw 0xf0(%rsi)
   0.03%  │││││ ││  │││  0x00007f9d6327b83b:   prefetchw 0x130(%rsi)
   0.10%  │││││ ││  │││  0x00007f9d6327b842:   prefetchw 0x170(%rsi)
   0.30%  │││││ ││  │││  0x00007f9d6327b849:   prefetchw 0x1b0(%rsi)
   0.26%  │││││ ││  │││  0x00007f9d6327b850:   movq   $0x1,(%rsi)
   0.55%  │││││ ││  │││  0x00007f9d6327b857:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   1.17%  │││││ ││  │││  0x00007f9d6327b85e:   movl   $0x4,0xc(%rsi)
   0.17%  │││││ ││  │││  0x00007f9d6327b865:   movq   $0x0,0x10(%rsi)
   0.26%  │││││ ││  │││  0x00007f9d6327b86d:   movq   $0x0,0x18(%rsi)
   0.13%  │││││ ││  │││  0x00007f9d6327b875:   movq   $0x0,0x20(%rsi)
   0.20%  │││││ ││  │││  0x00007f9d6327b87d:   movq   $0x0,0x28(%rsi)
   0.12%  │││││ ││  │││  0x00007f9d6327b885:   mov    %rsi,%rdi
   0.10%  │││││ ││  │││  0x00007f9d6327b888:   vmovsd 0xb8(%rsp),%xmm10
   0.11%  │││││ ││  │││  0x00007f9d6327b891:   vmovsd 0x58(%rsp),%xmm9
   0.23%  │││││ ││  │││  0x00007f9d6327b897:   vmovsd 0x70(%rsp),%xmm8
   0.12%  │││││ ││  │││  0x00007f9d6327b89d:   vmovsd 0x88(%rsp),%xmm7
   0.10%  │││││ ││  │││  0x00007f9d6327b8a6:   vmovsd %xmm7,0x28(%rdi)
   0.19%  │││││ ││  │││  0x00007f9d6327b8ab:   vmovsd %xmm8,0x20(%rdi)
   0.14%  │││││ ││  │││  0x00007f9d6327b8b0:   vmovsd %xmm9,0x18(%rdi)
   0.19%  │││││ ││  │││  0x00007f9d6327b8b5:   vmovsd %xmm10,0x10(%rdi)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.28%  │││││ ││  │││  0x00007f9d6327b8ba:   mov    0x1b8(%r15),%rsi
   0.10%  │││││ ││  │││  0x00007f9d6327b8c1:   lea    0x30(%rsi),%rdx
   0.04%  │││││ ││  │││  0x00007f9d6327b8c5:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f9d6327b8cc:   ja     0x00007f9d6327be37
   0.07%  │││││ ││  │││  0x00007f9d6327b8d2:   mov    %rdx,0x1b8(%r15)
   0.30%  │││││ ││  │││  0x00007f9d6327b8d9:   prefetchw 0xf0(%rsi)
   0.10%  │││││ ││  │││  0x00007f9d6327b8e0:   prefetchw 0x130(%rsi)
   0.04%  │││││ ││  │││  0x00007f9d6327b8e7:   prefetchw 0x170(%rsi)
   0.10%  │││││ ││  │││  0x00007f9d6327b8ee:   prefetchw 0x1b0(%rsi)
   0.52%  │││││ ││  │││  0x00007f9d6327b8f5:   movq   $0x1,(%rsi)
   1.17%  │││││ ││  │││  0x00007f9d6327b8fc:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.17%  │││││ ││  │││  0x00007f9d6327b903:   movl   $0x4,0xc(%rsi)
   0.37%  │││││ ││  │││  0x00007f9d6327b90a:   movq   $0x0,0x10(%rsi)
   0.11%  │││││ ││  │││  0x00007f9d6327b912:   movq   $0x0,0x18(%rsi)
   0.45%  │││││ ││  │││  0x00007f9d6327b91a:   movq   $0x0,0x20(%rsi)
   0.42%  │││││ ││  │││  0x00007f9d6327b922:   movq   $0x0,0x28(%rsi)
   0.23%  │││││ ││  │││  0x00007f9d6327b92a:   mov    %rsi,%r13
   0.04%  │││││ ││  │││  0x00007f9d6327b92d:   vmovsd 0xa0(%rsp),%xmm15
   0.08%  │││││ ││  │││  0x00007f9d6327b936:   vmovsd 0x68(%rsp),%xmm14
   0.14%  │││││ ││  │││  0x00007f9d6327b93c:   vmovsd 0x78(%rsp),%xmm12
   0.23%  │││││ ││  │││  0x00007f9d6327b942:   vmovsd 0x90(%rsp),%xmm11
   0.05%  │││││ ││  │││  0x00007f9d6327b94b:   vmovsd %xmm11,0x28(%r13)
   0.10%  │││││ ││  │││  0x00007f9d6327b951:   vmovsd %xmm12,0x20(%r13)
   0.18%  │││││ ││  │││  0x00007f9d6327b957:   vmovsd %xmm14,0x18(%r13)
   0.23%  │││││ ││  │││  0x00007f9d6327b95d:   vmovsd %xmm15,0x10(%r13)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d18d8::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.29%  │││││ ││  │││  0x00007f9d6327b963:   mov    0x1b8(%r15),%rsi
   0.09%  │││││ ││  │││  0x00007f9d6327b96a:   lea    0x30(%rsi),%rdx
   0.04%  │││││ ││  │││  0x00007f9d6327b96e:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f9d6327b975:   ja     0x00007f9d6327bdd2
   0.12%  │││││ ││  │││  0x00007f9d6327b97b:   mov    %rdx,0x1b8(%r15)
   0.32%  │││││ ││  │││  0x00007f9d6327b982:   prefetchw 0xf0(%rsi)
   0.05%  │││││ ││  │││  0x00007f9d6327b989:   prefetchw 0x130(%rsi)
   0.04%  │││││ ││  │││  0x00007f9d6327b990:   prefetchw 0x170(%rsi)
   0.12%  │││││ ││  │││  0x00007f9d6327b997:   prefetchw 0x1b0(%rsi)
   0.51%  │││││ ││  │││  0x00007f9d6327b99e:   movq   $0x1,(%rsi)
   0.36%  │││││ ││  │││  0x00007f9d6327b9a5:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.99%  │││││ ││  │││  0x00007f9d6327b9ac:   movl   $0x4,0xc(%rsi)
   0.23%  │││││ ││  │││  0x00007f9d6327b9b3:   movq   $0x0,0x10(%rsi)
   0.35%  │││││ ││  │││  0x00007f9d6327b9bb:   movq   $0x0,0x18(%rsi)
   0.21%  │││││ ││  │││  0x00007f9d6327b9c3:   movq   $0x0,0x20(%rsi)
   0.30%  │││││ ││  │││  0x00007f9d6327b9cb:   movq   $0x0,0x28(%rsi)
   0.29%  │││││ ││  │││  0x00007f9d6327b9d3:   mov    %rsi,%r14
   0.02%  │││││ ││  │││  0x00007f9d6327b9d6:   vmovsd 0x48(%rsp),%xmm14
   0.04%  │││││ ││  │││  0x00007f9d6327b9dc:   vmovsd 0x40(%rsp),%xmm15
   0.15%  │││││ ││  │││  0x00007f9d6327b9e2:   vmovsd 0x98(%rsp),%xmm11
   0.25%  │││││ ││  │││  0x00007f9d6327b9eb:   vmovsd 0x60(%rsp),%xmm12
   0.04%  │││││ ││  │││  0x00007f9d6327b9f1:   vmovsd %xmm15,0x28(%r14)
   0.10%  │││││ ││  │││  0x00007f9d6327b9f7:   vmovsd %xmm14,0x20(%r14)
   0.29%  │││││ ││  │││  0x00007f9d6327b9fd:   vmovsd %xmm12,0x18(%r14)
   0.34%  │││││ ││  │││  0x00007f9d6327ba03:   vmovsd %xmm11,0x10(%r14)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d18d8::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.40%  │││││ ││  │││  0x00007f9d6327ba09:   mov    0x1b8(%r15),%rsi
   0.06%  │││││ ││  │││  0x00007f9d6327ba10:   lea    0x30(%rsi),%rdx
   0.04%  │││││ ││  │││  0x00007f9d6327ba14:   nopl   0x0(%rax,%rax,1)
   0.06%  │││││ ││  │││  0x00007f9d6327ba1c:   data16 data16 xchg %ax,%ax
   0.38%  │││││ ││  │││  0x00007f9d6327ba20:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f9d6327ba27:   ja     0x00007f9d6327be11
   0.06%  │││││ ││  │││  0x00007f9d6327ba2d:   mov    %rdx,0x1b8(%r15)
   0.02%  │││││ ││  │││  0x00007f9d6327ba34:   prefetchw 0xf0(%rsi)
   0.07%  │││││ ││  │││  0x00007f9d6327ba3b:   prefetchw 0x130(%rsi)
   0.36%  │││││ ││  │││  0x00007f9d6327ba42:   prefetchw 0x170(%rsi)
   0.05%  │││││ ││  │││  0x00007f9d6327ba49:   prefetchw 0x1b0(%rsi)
   0.24%  │││││ ││  │││  0x00007f9d6327ba50:   movq   $0x1,(%rsi)
   0.29%  │││││ ││  │││  0x00007f9d6327ba57:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.59%  │││││ ││  │││  0x00007f9d6327ba5e:   movl   $0x4,0xc(%rsi)
   0.42%  │││││ ││  │││  0x00007f9d6327ba65:   movq   $0x0,0x10(%rsi)
   0.37%  │││││ ││  │││  0x00007f9d6327ba6d:   movq   $0x0,0x18(%rsi)
   0.21%  │││││ ││  │││  0x00007f9d6327ba75:   movq   $0x0,0x20(%rsi)
   0.30%  │││││ ││  │││  0x00007f9d6327ba7d:   movq   $0x0,0x28(%rsi)
   0.40%  │││││ ││  │││  0x00007f9d6327ba85:   vmovsd %xmm3,0x28(%rsi)
   0.33%  │││││ ││  │││  0x00007f9d6327ba8a:   vmovsd %xmm2,0x20(%rsi)
   0.31%  │││││ ││  │││  0x00007f9d6327ba8f:   vmovsd %xmm1,0x18(%rsi)
   0.41%  │││││ ││  │││  0x00007f9d6327ba94:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.42%  │││││ ││  │││  0x00007f9d6327ba99:   mov    %r8,%rcx
   0.01%  │││││ ││  │││  0x00007f9d6327ba9c:   mov    %r14,%r8
   0.01%  │││││ ││  │││  0x00007f9d6327ba9f:   mov    %rsi,%rbx
   0.02%  │││││ ││  │││  0x00007f9d6327baa2:   mov    %rdi,%r11
   0.39%  │││││ ││  │││  0x00007f9d6327baa5:   mov    %r13,%r10
   0.02%  │││││ ││  │││  0x00007f9d6327baa8:   vmovsd 0xc8(%rsp),%xmm5
   0.05%  │││││ ││  │││  0x00007f9d6327bab1:   vmovsd 0xd0(%rsp),%xmm7
   0.04%  │││││ ││  │││  0x00007f9d6327baba:   vmovsd 0xd8(%rsp),%xmm8
   0.43%  │││││ ││  │││  0x00007f9d6327bac3:   vmovsd 0xe8(%rsp),%xmm11
   0.02%  │││││ ││  │││  0x00007f9d6327bacc:   mov    0x118(%rsp),%r13
   0.05%  │││││ ││  │││  0x00007f9d6327bad4:   mov    0x120(%rsp),%r9
   0.06%  │││││ ││  │││  0x00007f9d6327badc:   mov    0x30(%rsp),%rsi
   0.40%  │││││ ││  │││  0x00007f9d6327bae1:   mov    %ebp,%edi
   0.01%  │││││ ││  │││  0x00007f9d6327bae3:   mov    0x108(%rsp),%rbp
   0.03%  │││││ ││  │││  0x00007f9d6327baeb:   jmp    0x00007f9d6327b1d0
          ↘││││ ││  │││  0x00007f9d6327baf0:   movabs $0x7f9ce7001b00,%r11         ;   {metadata({type array bool})}
           ││││ │╰  │││  0x00007f9d6327bafa:   jmp    0x00007f9d6327b68a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
           ││││ │   │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           ││││ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%   ││││ ↘   │││  0x00007f9d6327baff:   mov    $0x1,%ecx
   0.00%   ││││     │││  0x00007f9d6327bb04:   vmovsd 0x98(%rsp),%xmm11
   0.01%   ││││     │││  0x00007f9d6327bb0d:   vmovsd 0xb8(%rsp),%xmm10
   0.00%   ││││     │││  0x00007f9d6327bb16:   vmovsd 0xb0(%rsp),%xmm5
   0.03%   ││││     │││  0x00007f9d6327bb1f:   vmovsd 0x60(%rsp),%xmm12
   0.01%   ││││     │││  0x00007f9d6327bb25:   vmovsd 0x58(%rsp),%xmm9
   0.01%   ││││     │││  0x00007f9d6327bb2b:   vmovsd 0x50(%rsp),%xmm13
   0.01%   ││││     │││  0x00007f9d6327bb31:   vmovsd 0x48(%rsp),%xmm14
   0.03%   ││││     │││  0x00007f9d6327bb37:   vmovsd 0x70(%rsp),%xmm8
   0.01%   ││││     │││  0x00007f9d6327bb3d:   vmovsd 0x80(%rsp),%xmm4
   0.01%   ││││     │││  0x00007f9d6327bb46:   vmovsd 0x40(%rsp),%xmm15
           ││││     │││  0x00007f9d6327bb4c:   vmovsd 0x88(%rsp),%xmm7
   0.04%   ││││     │││  0x00007f9d6327bb55:   vmovsd 0xa8(%rsp),%xmm6
   0.01%   ││││     │││  0x00007f9d6327bb5e:   xchg   %ax,%ax
   0.01%   ││││   ╭ │││  0x00007f9d6327bb60:   jmp    0x00007f9d6327bb96           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           ││││   │ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@7 (line 154)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││   │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
           ││││   │ │││  0x00007f9d6327bb65:   data16 data16 nopw 0x0(%rax,%rax,1)
           ││││   │ │││  0x00007f9d6327bb70:   data16 data16 xchg %ax,%ax
           ││││   │ │││  0x00007f9d6327bb74:   nopl   0x0(%rax,%rax,1)
           ││││   │ │││  0x00007f9d6327bb7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││   │ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││   │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.03%   ││││   │↗│││  0x00007f9d6327bb80:   cmp    %ecx,%edi
           ││││   │││││  0x00007f9d6327bb82:   jbe    0x00007f9d6327cf3d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@14 (line 154)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.04%   ││││   │││││  0x00007f9d6327bb88:   cmpb   $0x0,0x10(%rcx,%r8,8)
   0.06%   ││││   │││││  0x00007f9d6327bb8e:   jne    0x00007f9d6327bf17           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 155)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.04%   ││││   │││││  0x00007f9d6327bb94:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@24 (line 154)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.01%   ││││   ↘││││  0x00007f9d6327bb96:   cmp    %ecx,%edi
           ││││    ││││  0x00007f9d6327bb98:   jle    0x00007f9d6327c3ac
   0.02%   ││││    ╰│││  0x00007f9d6327bb9e:   jmp    0x00007f9d6327bb80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││     │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f9ce80d2d88::apply@8
           ││││     │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.46%   │↘││     │││  0x00007f9d6327bba0:   vaddsd 0x18(%r9),%xmm1,%xmm1        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d1290::apply@4
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
           │ ││     │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │ ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.23%   │ ││     ╰││  0x00007f9d6327bba6:   jmp    0x00007f9d6327b6d1           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
           │ ││      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.29%   │ ↘│      ││  0x00007f9d6327bbab:   vaddsd 0x20(%r9),%xmm2,%xmm2        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d1290::apply@4
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
           │  │      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │  │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.12%   │  │      ╰│  0x00007f9d6327bbb1:   jmp    0x00007f9d6327b6e8           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
           │  │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.55%   │  ↘       │  0x00007f9d6327bbb6:   vaddsd 0x28(%r9),%xmm3,%xmm3
   0.16%   │          │  0x00007f9d6327bbbc:   nopl   0x0(%rax)
           │          ╰  0x00007f9d6327bbc0:   jmp    0x00007f9d6327b6fd
   0.01%   ↘             0x00007f9d6327bbc5:   movabs $0x7668297f0,%r9             ;   {oop([D{0x00000007668297f0})}
   0.08%                 0x00007f9d6327bbcf:   vaddsd 0x10(%r9),%xmm0,%xmm0        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d1290::apply@4
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
....................................................................................................
  43.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 

 <region is too big to display, has 1192 lines, but threshold is 1000>
....................................................................................................
  29.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1274 

               0x00007f9d6325da66:   cmp    $0x6,%r10d
               0x00007f9d6325da6a:   je     0x00007f9d6325de9c
               0x00007f9d6325da70:   cmp    $0x7,%r10d
               0x00007f9d6325da74:   je     0x00007f9d6325de9c
               0x00007f9d6325da7a:   jmp    0x00007f9d6325de9c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@1 (line 1927)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.03%       0x00007f9d6325da7f:   vucomisd %xmm1,%xmm0
   0.05%       0x00007f9d6325da83:   setb   %r9b
   0.04%       0x00007f9d6325da87:   movzbl %r9b,%r9d
   0.44%       0x00007f9d6325da8b:   xor    $0x1,%r9d                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.06%       0x00007f9d6325da8f:   mov    %r8d,%ecx
   0.00%       0x00007f9d6325da92:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@10 (line 473)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f9d6325da96:   mov    %esi,%ebx
   0.39%       0x00007f9d6325da98:   shl    $0x3,%rbx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@1 (line 472)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.08%       0x00007f9d6325da9c:   nopl   0x0(%rax)
   0.00%       0x00007f9d6325daa0:   cmp    $0x2,%eax                    ;   {no_reloc}
               0x00007f9d6325daa3:   jb     0x00007f9d6325de64           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.00%       0x00007f9d6325daa9:   cmp    $0x2,%edx
               0x00007f9d6325daac:   jb     0x00007f9d6325df2d
   0.40%       0x00007f9d6325dab2:   vmovsd 0x18(,%r8,8),%xmm2           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.07%       0x00007f9d6325dabc:   vmovsd 0x18(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f9d6325dac5:   cmp    $0x5,%r10d
          ╭    0x00007f9d6325dac9:   je     0x00007f9d6325dade
   0.00%  │    0x00007f9d6325dacf:   cmp    $0x0,%r10d
          │    0x00007f9d6325dad3:   je     0x00007f9d6325dcb1
          │    0x00007f9d6325dad9:   jmp    0x00007f9d6325de8d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
          │                                                              ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%  ↘    0x00007f9d6325dade:   vucomisd %xmm3,%xmm2
   0.43%       0x00007f9d6325dae2:   setb   %dil
   0.09%       0x00007f9d6325dae6:   movzbl %dil,%edi
   0.04%       0x00007f9d6325daea:   xor    $0x1,%edi                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.10%       0x00007f9d6325daed:   cmp    $0x3,%eax
               0x00007f9d6325daf0:   jb     0x00007f9d6325de3c           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.35%       0x00007f9d6325daf6:   cmp    $0x3,%edx
               0x00007f9d6325daf9:   jb     0x00007f9d6325dec0
   0.05%       0x00007f9d6325daff:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f9d6325db09:   vmovsd 0x20(,%rsi,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.09%       0x00007f9d6325db12:   cmp    $0x5,%r10d
           ╭   0x00007f9d6325db16:   je     0x00007f9d6325db2b
           │   0x00007f9d6325db1c:   cmp    $0x0,%r10d
           │   0x00007f9d6325db20:   je     0x00007f9d6325dd10
           │   0x00007f9d6325db26:   jmp    0x00007f9d6325def7           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
           │                                                             ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.33%   ↘   0x00007f9d6325db2b:   vucomisd %xmm1,%xmm0
   0.07%       0x00007f9d6325db2f:   setb   %bpl
   0.01%       0x00007f9d6325db33:   movzbl %bpl,%ebp
   0.19%       0x00007f9d6325db37:   xor    $0x1,%ebp                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.36%       0x00007f9d6325db3a:   nopw   0x0(%rax,%rax,1)
   0.05%       0x00007f9d6325db40:   cmp    $0x4,%eax
               0x00007f9d6325db43:   jb     0x00007f9d6325df1b           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.00%       0x00007f9d6325db49:   cmp    $0x4,%edx
               0x00007f9d6325db4c:   jb     0x00007f9d6325de02
   0.09%       0x00007f9d6325db52:   vmovsd 0x28(,%r8,8),%xmm2           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.31%       0x00007f9d6325db5c:   vmovsd 0x28(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.06%       0x00007f9d6325db65:   cmp    $0x5,%r10d
            ╭  0x00007f9d6325db69:   je     0x00007f9d6325db7e
            │  0x00007f9d6325db6f:   cmp    $0x0,%r10d
            │  0x00007f9d6325db73:   je     0x00007f9d6325dcf2
            │  0x00007f9d6325db79:   jmp    0x00007f9d6325de2d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
            │                                                            ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%    ↘  0x00007f9d6325db7e:   vucomisd %xmm3,%xmm2
   0.10%       0x00007f9d6325db82:   setb   %sil
   0.31%       0x00007f9d6325db86:   movzbl %sil,%esi
   0.06%       0x00007f9d6325db8a:   xor    $0x1,%esi                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.00%       0x00007f9d6325db8d:   mov    %esi,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f9ce80d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.10%       0x00007f9d6325db90:   mov    0x1b8(%r15),%rsi
   0.36%       0x00007f9d6325db97:   lea    0x10(%rsi),%rax
   0.05%       0x00007f9d6325db9b:   nopl   0x0(%rax,%rax,1)
   0.01%       0x00007f9d6325dba0:   cmp    0x1c8(%r15),%rax             ;   {no_reloc}
               0x00007f9d6325dba7:   ja     0x00007f9d6325dd85
   0.10%       0x00007f9d6325dbad:   mov    %rax,0x1b8(%r15)
   0.33%       0x00007f9d6325dbb4:   prefetchw 0xd0(%rsi)
   0.08%       0x00007f9d6325dbbb:   movq   $0x1,(%rsi)
   0.03%       0x00007f9d6325dbc2:   movl   $0x10c4f80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.09%       0x00007f9d6325dbc9:   movl   $0x0,0xc(%rsi)
   0.33%       0x00007f9d6325dbd0:   mov    %rsi,%r13                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@0 (line 137)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@2 (line 41)
                                                                         ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                         ; - jdk.incubator.vector.DoubleVector::maskFactory@5 (line 116)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@68 (line 478)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.07%       0x00007f9d6325dbd3:   mov    0x1b8(%r15),%rsi
   0.03%       0x00007f9d6325dbda:   lea    0x18(%rsi),%rax
   0.11%       0x00007f9d6325dbde:   xchg   %ax,%ax
   0.35%       0x00007f9d6325dbe0:   cmp    0x1c8(%r15),%rax
               0x00007f9d6325dbe7:   ja     0x00007f9d6325dda6
   0.07%       0x00007f9d6325dbed:   mov    %rax,0x1b8(%r15)
   0.16%       0x00007f9d6325dbf4:   prefetchw 0xd8(%rsi)
   0.50%       0x00007f9d6325dbfb:   prefetchw 0x118(%rsi)
   0.57%       0x00007f9d6325dc02:   prefetchw 0x158(%rsi)
   0.12%       0x00007f9d6325dc09:   prefetchw 0x198(%rsi)
   0.40%       0x00007f9d6325dc10:   movq   $0x1,(%rsi)
   1.19%       0x00007f9d6325dc17:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.08%       0x00007f9d6325dc1e:   movl   $0x4,0xc(%rsi)
   0.49%       0x00007f9d6325dc25:   movq   $0x0,0x10(%rsi)
   0.04%       0x00007f9d6325dc2d:   mov    %r8b,0x13(%rsi)
   0.39%       0x00007f9d6325dc31:   mov    %bpl,0x12(%rsi)
   0.06%       0x00007f9d6325dc35:   mov    %dil,0x11(%rsi)
   0.38%       0x00007f9d6325dc39:   mov    %r9b,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::prepare@6 (line 563)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::&lt;init&gt;@3 (line 555)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::&lt;init&gt;@3 (line 551)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@5 (line 137)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@2 (line 41)
                                                                         ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                         ; - jdk.incubator.vector.DoubleVector::maskFactory@5 (line 116)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@68 (line 478)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.16%       0x00007f9d6325dc3d:   mov    %rsi,%rax
   0.05%       0x00007f9d6325dc40:   shr    $0x3,%rax
   0.04%       0x00007f9d6325dc44:   mov    %eax,0xc(%r13)
   0.29%       0x00007f9d6325dc48:   mov    %r13,%rax
   0.09%       0x00007f9d6325dc4b:   xor    %rsi,%rax
   0.07%       0x00007f9d6325dc4e:   test   $0xffffffffffe00000,%rax
               0x00007f9d6325dc55:   je     0x00007f9d6325dc8b
               0x00007f9d6325dc5b:   nopl   0x0(%rax,%rax,1)
               0x00007f9d6325dc60:   test   %rsi,%rsi
               0x00007f9d6325dc63:   je     0x00007f9d6325dc8b
               0x00007f9d6325dc69:   mov    %r13,%r10
               0x00007f9d6325dc6c:   shr    $0x9,%r10
               0x00007f9d6325dc70:   movabs $0x7f9d56732000,%r11
               0x00007f9d6325dc7a:   nopw   0x0(%rax,%rax,1)
               0x00007f9d6325dc80:   cmpb   $0x2,(%r10,%r11,1)
               0x00007f9d6325dc85:   jne    0x00007f9d6325dd4a           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.91%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
  29.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
  11.91%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1274 
   5.18%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1274 
   3.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   1.45%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1274 
   0.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   0.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   0.13%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   0.10%              kernel  [unknown] 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1361 
   0.08%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
   3.05%  <...other 657 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1307 
  18.55%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1274 
   1.53%              kernel  [unknown] 
   0.29%                      <unknown> 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1361 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1CardSet::clear 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  JVMCIRuntime::new_array_common 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  MemAllocator::allocate 
   1.11%  <...other 217 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.31%      jvmci, level 4
   1.53%              kernel
   1.25%           libjvm.so
   0.29%                    
   0.24%        libc-2.31.so
   0.13%         interpreter
   0.09%         c1, level 3
   0.07%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.03%              [vdso]
   0.03%      hsdis-amd64.so
   0.00%    perf-2113769.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1278.560 ms/op
# Warmup Iteration   2: 366.813 ms/op
# Warmup Iteration   3: 366.334 ms/op
# Warmup Iteration   4: 366.349 ms/op
# Warmup Iteration   5: 366.012 ms/op
Iteration   1: 365.894 ms/op
Iteration   2: 366.464 ms/op
Iteration   3: 366.098 ms/op
Iteration   4: 365.870 ms/op
Iteration   5: 366.125 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  366.090 ±(99.9%) 0.920 ms/op [Average]
  (min, avg, max) = (365.870, 366.090, 366.464), stdev = 0.239
  CI (99.9%): [365.170, 367.010] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 321886 total address lines.
Perf output processed (skipped 61.848 seconds):
 Column 1: cycles (52706 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d0e80::apply, version 2, compile id 1262 

                # parm2:    r8:r8     = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fd01b279cc0:   mov    0x8(%rsi),%r10d
                0x00007fd01b279cc4:   movabs $0x7fcf9f000000,%r12
                0x00007fd01b279cce:   add    %r12,%r10
                0x00007fd01b279cd1:   xor    %r12,%r12
                0x00007fd01b279cd4:   cmp    %r10,%rax
                0x00007fd01b279cd7:   jne    0x00007fd01ac2f080           ;   {runtime_call ic_miss_stub}
                0x00007fd01b279cdd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.59%        0x00007fd01b279ce0:   mov    %eax,-0x14000(%rsp)
   0.31%        0x00007fd01b279ce7:   sub    $0x18,%rsp
   0.21%        0x00007fd01b279ceb:   nop
   0.37%        0x00007fd01b279cec:   cmpl   $0x1,0x20(%r15)
   0.20%        0x00007fd01b279cf4:   jne    0x00007fd01b27a2ed
   0.12%        0x00007fd01b279cfa:   mov    %rbp,0x10(%rsp)
   0.25%        0x00007fd01b279cff:   mov    %rdx,%r10                    ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@0
   0.37%        0x00007fd01b279d02:   cmpl   $0x10c4910,0x8(%r10)         ; implicit exception: dispatches to 0x00007fd01b27a311
                                                                          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.21%        0x00007fd01b279d0a:   jne    0x00007fd01b27a299           ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@0
   0.22%        0x00007fd01b279d10:   cmpl   $0x10c4910,0x8(%rcx)         ; implicit exception: dispatches to 0x00007fd01b27a334
                                                                          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.32%        0x00007fd01b279d17:   jne    0x00007fd01b27a1f8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@5
   0.36%        0x00007fd01b279d1d:   data16 xchg %ax,%ax
   0.14%        0x00007fd01b279d20:   test   %r8,%r8
                0x00007fd01b279d23:   je     0x00007fd01b27a0a6
   0.04%        0x00007fd01b279d29:   mov    0x8(%r8),%esi
   0.05%        0x00007fd01b279d2d:   movabs $0x7fcf9f000000,%rax
   0.03%        0x00007fd01b279d37:   lea    (%rax,%rsi,1),%rsi
   0.05%        0x00007fd01b279d3b:   mov    0x48(%rsi),%rsi
   0.21%        0x00007fd01b279d3f:   movabs $0x7fcfa00c3208,%rax         ;   {metadata(&apos;jdk/incubator/vector/VectorMask&apos;)}
   0.03%        0x00007fd01b279d49:   cmp    %rsi,%rax
   0.06%        0x00007fd01b279d4c:   sete   %sil
   0.11%        0x00007fd01b279d50:   movzbl %sil,%esi
   0.75%        0x00007fd01b279d54:   test   %r8,%r8
          ╭     0x00007fd01b279d57:   je     0x00007fd01b279d68
   0.02%  │     0x00007fd01b279d5d:   data16 xchg %ax,%ax
   0.00%  │     0x00007fd01b279d60:   test   %esi,%esi
          │     0x00007fd01b279d62:   je     0x00007fd01b27a21e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@9
   0.67%  ↘     0x00007fd01b279d68:   test   %r8,%r8
                0x00007fd01b279d6b:   je     0x00007fd01b27a09a
   0.12%        0x00007fd01b279d71:   mov    0x8(%r8),%esi
   0.01%        0x00007fd01b279d75:   movabs $0x7fcf9f000000,%rax
   0.00%        0x00007fd01b279d7f:   lea    (%rax,%rsi,1),%rsi
   0.80%        0x00007fd01b279d83:   test   %r8,%r8
           ╭    0x00007fd01b279d86:   je     0x00007fd01b279d9f
   0.11%   │    0x00007fd01b279d8c:   movabs $0x7fcfa00c4f80,%rax         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.02%   │    0x00007fd01b279d96:   cmp    %rsi,%rax
           │    0x00007fd01b279d99:   jne    0x00007fd01b27a24d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 213)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.74%   ↘    0x00007fd01b279d9f:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.04%        0x00007fd01b279da3:   test   %r11d,%r11d
                0x00007fd01b279da6:   je     0x00007fd01b27a0b0
   0.11%        0x00007fd01b279dac:   mov    0x8(,%r11,8),%esi
   0.73%        0x00007fd01b279db4:   movabs $0x7fcf9f000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@20 (line 227)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.38%        0x00007fd01b279dbe:   lea    (%rax,%rsi,1),%rsi
   0.42%        0x00007fd01b279dc2:   movabs $0x7fcf9f0020d0,%r9          ;   {metadata({type array double})}
   0.11%        0x00007fd01b279dcc:   test   %r11d,%r11d
            ╭   0x00007fd01b279dcf:   je     0x00007fd01b279dde
   0.03%    │   0x00007fd01b279dd5:   cmp    %rsi,%r9
            │   0x00007fd01b279dd8:   jne    0x00007fd01b27a2a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
            │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.76%    ↘   0x00007fd01b279dde:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@0
   0.03%        0x00007fd01b279de0:   cmpl   $0x4,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007fd01b27a357
   0.11%        0x00007fd01b279de9:   jb     0x00007fd01b27a255           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.79%        0x00007fd01b279def:   mov    0xc(%rcx),%ebx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.02%        0x00007fd01b279df2:   test   %ebx,%ebx
                0x00007fd01b279df4:   je     0x00007fd01b27a08e
   0.03%        0x00007fd01b279dfa:   mov    0x8(,%rbx,8),%esi
   0.32%        0x00007fd01b279e01:   movabs $0x7fcf9f000000,%rax
   0.67%        0x00007fd01b279e0b:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@29 (line 228)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.15%        0x00007fd01b279e0f:   test   %ebx,%ebx
             ╭  0x00007fd01b279e11:   je     0x00007fd01b279e20
   0.01%     │  0x00007fd01b279e17:   cmp    %rsi,%r9
             │  0x00007fd01b279e1a:   jne    0x00007fd01b27a1d3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.81%     ↘  0x00007fd01b279e20:   test   %r8,%r8
                0x00007fd01b279e23:   jne    0x00007fd01b279fb1           ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@0
   0.38%        0x00007fd01b279e29:   cmpl   $0x4,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007fd01b27a37a
   0.12%        0x00007fd01b279e31:   jb     0x00007fd01b27a2b0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.35%        0x00007fd01b279e37:   vmovsd 0x10(,%r11,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.42%        0x00007fd01b279e41:   vaddsd 0x10(,%rbx,8),%xmm0,%xmm0    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   2.19%        0x00007fd01b279e4a:   vmovsd 0x18(,%r11,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.00%        0x00007fd01b279e54:   vaddsd 0x18(,%rbx,8),%xmm1,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.78%        0x00007fd01b279e5d:   vmovsd 0x20(,%r11,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.01%        0x00007fd01b279e67:   vaddsd 0x20(,%rbx,8),%xmm2,%xmm2    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.51%        0x00007fd01b279e70:   vmovsd 0x28(,%r11,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.23%        0x00007fd01b279e7a:   vaddsd 0x28(,%rbx,8),%xmm3,%xmm3    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d1290::apply@4
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.32%        0x00007fd01b279e83:   mov    0x1b8(%r15),%rsi
   0.17%        0x00007fd01b279e8a:   lea    0x10(%rsi),%rax
   0.32%        0x00007fd01b279e8e:   cmp    0x1c8(%r15),%rax
                0x00007fd01b279e95:   ja     0x00007fd01b27a12a
   0.31%        0x00007fd01b279e9b:   mov    %rax,0x1b8(%r15)
   0.03%        0x00007fd01b279ea2:   prefetchw 0xd0(%rsi)
   0.19%        0x00007fd01b279ea9:   movq   $0x1,(%rsi)
   0.43%        0x00007fd01b279eb0:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.63%        0x00007fd01b279eb7:   movl   $0x0,0xc(%rsi)
   0.35%        0x00007fd01b279ebe:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 210)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.10%        0x00007fd01b279ec1:   mov    0x1b8(%r15),%rsi
   0.43%        0x00007fd01b279ec8:   lea    0x30(%rsi),%rax
   0.79%        0x00007fd01b279ecc:   cmp    0x1c8(%r15),%rax
                0x00007fd01b279ed3:   ja     0x00007fd01b27a10b
   0.78%        0x00007fd01b279ed9:   mov    %rax,0x1b8(%r15)
   0.88%        0x00007fd01b279ee0:   prefetchw 0xf0(%rsi)
   1.67%        0x00007fd01b279ee7:   prefetchw 0x130(%rsi)
   0.18%        0x00007fd01b279eee:   prefetchw 0x170(%rsi)
   0.65%        0x00007fd01b279ef5:   prefetchw 0x1b0(%rsi)
   0.50%        0x00007fd01b279efc:   movq   $0x1,(%rsi)
   2.03%        0x00007fd01b279f03:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   2.46%        0x00007fd01b279f0a:   movl   $0x4,0xc(%rsi)
   0.21%        0x00007fd01b279f11:   movq   $0x0,0x10(%rsi)
   0.51%        0x00007fd01b279f19:   movq   $0x0,0x18(%rsi)
   0.64%        0x00007fd01b279f21:   movq   $0x0,0x20(%rsi)
   0.32%        0x00007fd01b279f29:   movq   $0x0,0x28(%rsi)
   0.92%        0x00007fd01b279f31:   vmovsd %xmm3,0x28(%rsi)
   0.39%        0x00007fd01b279f36:   vmovsd %xmm2,0x20(%rsi)
   0.47%        0x00007fd01b279f3b:   vmovsd %xmm1,0x18(%rsi)
   0.29%        0x00007fd01b279f40:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d0e80::apply@12
   0.42%        0x00007fd01b279f45:   mov    %rsi,%rax
   0.08%        0x00007fd01b279f48:   shr    $0x3,%rax
   0.29%        0x00007fd01b279f4c:   mov    %eax,0xc(%r11)
   0.16%        0x00007fd01b279f50:   mov    %r11,%rax
   0.44%        0x00007fd01b279f53:   xor    %rsi,%rax
   0.06%        0x00007fd01b279f56:   data16 nopw 0x0(%rax,%rax,1)
   0.25%        0x00007fd01b279f60:   test   $0xffffffffffe00000,%rax
                0x00007fd01b279f67:   je     0x00007fd01b279f92
                0x00007fd01b279f6d:   test   %rsi,%rsi
                0x00007fd01b279f70:   je     0x00007fd01b279f92
                0x00007fd01b279f76:   mov    %r11,%r10
                0x00007fd01b279f79:   shr    $0x9,%r10
                0x00007fd01b279f7d:   movabs $0x7fd02df37000,%r8
                0x00007fd01b279f87:   cmpb   $0x2,(%r10,%r8,1)
                0x00007fd01b279f8c:   jne    0x00007fd01b27a0bc           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  36.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 

   0.16%        0x00007fd01b27b1a0:   test   %r8,%r8
                0x00007fd01b27b1a3:   je     0x00007fd01b27b526
                0x00007fd01b27b1a9:   mov    0x8(%r8),%esi
                0x00007fd01b27b1ad:   movabs $0x7fcf9f000000,%rax
                0x00007fd01b27b1b7:   lea    (%rax,%rsi,1),%rsi
                0x00007fd01b27b1bb:   mov    0x48(%rsi),%rsi
                0x00007fd01b27b1bf:   movabs $0x7fcfa00c3208,%rax         ;   {metadata(&apos;jdk/incubator/vector/VectorMask&apos;)}
                0x00007fd01b27b1c9:   cmp    %rsi,%rax
                0x00007fd01b27b1cc:   sete   %sil
                0x00007fd01b27b1d0:   movzbl %sil,%esi
   0.42%        0x00007fd01b27b1d4:   test   %r8,%r8
          ╭     0x00007fd01b27b1d7:   je     0x00007fd01b27b1e8
          │     0x00007fd01b27b1dd:   data16 xchg %ax,%ax
          │     0x00007fd01b27b1e0:   test   %esi,%esi
          │     0x00007fd01b27b1e2:   je     0x00007fd01b27b69e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@9
   0.53%  ↘     0x00007fd01b27b1e8:   test   %r8,%r8
                0x00007fd01b27b1eb:   je     0x00007fd01b27b51a
                0x00007fd01b27b1f1:   mov    0x8(%r8),%esi
                0x00007fd01b27b1f5:   movabs $0x7fcf9f000000,%rax
                0x00007fd01b27b1ff:   lea    (%rax,%rsi,1),%rsi
   0.58%        0x00007fd01b27b203:   test   %r8,%r8
           ╭    0x00007fd01b27b206:   je     0x00007fd01b27b21f
           │    0x00007fd01b27b20c:   movabs $0x7fcfa00c4f80,%rax         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
           │    0x00007fd01b27b216:   cmp    %rsi,%rax
           │    0x00007fd01b27b219:   jne    0x00007fd01b27b6cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 213)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
           │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.54%   ↘    0x00007fd01b27b21f:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
                0x00007fd01b27b223:   test   %r11d,%r11d
                0x00007fd01b27b226:   je     0x00007fd01b27b530
                0x00007fd01b27b22c:   mov    0x8(,%r11,8),%esi
   1.17%        0x00007fd01b27b234:   movabs $0x7fcf9f000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@20 (line 227)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.06%        0x00007fd01b27b23e:   lea    (%rax,%rsi,1),%rsi
   0.50%        0x00007fd01b27b242:   movabs $0x7fcf9f0020d0,%r9          ;   {metadata({type array double})}
                0x00007fd01b27b24c:   test   %r11d,%r11d
            ╭   0x00007fd01b27b24f:   je     0x00007fd01b27b25e
            │   0x00007fd01b27b255:   cmp    %rsi,%r9
            │   0x00007fd01b27b258:   jne    0x00007fd01b27b725           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
            │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   1.01%    ↘   0x00007fd01b27b25e:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@0
                0x00007fd01b27b260:   cmpl   $0x4,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007fd01b27b7d7
   0.75%        0x00007fd01b27b269:   jb     0x00007fd01b27b6d5           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.50%        0x00007fd01b27b26f:   mov    0xc(%rcx),%ebx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.00%        0x00007fd01b27b272:   test   %ebx,%ebx
                0x00007fd01b27b274:   je     0x00007fd01b27b50e
                0x00007fd01b27b27a:   mov    0x8(,%rbx,8),%esi
   0.91%        0x00007fd01b27b281:   movabs $0x7fcf9f000000,%rax
   0.05%        0x00007fd01b27b28b:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@29 (line 228)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.53%        0x00007fd01b27b28f:   test   %ebx,%ebx
             ╭  0x00007fd01b27b291:   je     0x00007fd01b27b2a0
             │  0x00007fd01b27b297:   cmp    %rsi,%r9
             │  0x00007fd01b27b29a:   jne    0x00007fd01b27b653           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.49%     ↘  0x00007fd01b27b2a0:   test   %r8,%r8
                0x00007fd01b27b2a3:   jne    0x00007fd01b27b431           ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@0
   0.02%        0x00007fd01b27b2a9:   cmpl   $0x4,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007fd01b27b7fa
                0x00007fd01b27b2b1:   jb     0x00007fd01b27b730           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.54%        0x00007fd01b27b2b7:   vmovsd 0x10(,%r11,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.03%        0x00007fd01b27b2c1:   vmulsd 0x10(,%rbx,8),%xmm0,%xmm0    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   2.03%        0x00007fd01b27b2ca:   vmovsd 0x18(,%r11,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
                0x00007fd01b27b2d4:   vmulsd 0x18(,%rbx,8),%xmm1,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.60%        0x00007fd01b27b2dd:   vmovsd 0x20(,%r11,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.00%        0x00007fd01b27b2e7:   vmulsd 0x20(,%rbx,8),%xmm2,%xmm2    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.48%        0x00007fd01b27b2f0:   vmovsd 0x28(,%r11,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.00%        0x00007fd01b27b2fa:   vmulsd 0x28(,%rbx,8),%xmm3,%xmm3    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d1af0::apply@4
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.48%        0x00007fd01b27b303:   mov    0x1b8(%r15),%rsi
   0.01%        0x00007fd01b27b30a:   lea    0x10(%rsi),%rax
   0.00%        0x00007fd01b27b30e:   cmp    0x1c8(%r15),%rax
                0x00007fd01b27b315:   ja     0x00007fd01b27b5aa
   0.48%        0x00007fd01b27b31b:   mov    %rax,0x1b8(%r15)
   0.00%        0x00007fd01b27b322:   prefetchw 0xd0(%rsi)
   0.02%        0x00007fd01b27b329:   movq   $0x1,(%rsi)
   0.01%        0x00007fd01b27b330:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.68%        0x00007fd01b27b337:   movl   $0x0,0xc(%rsi)
   0.32%        0x00007fd01b27b33e:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 210)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.01%        0x00007fd01b27b341:   mov    0x1b8(%r15),%rsi
   0.30%        0x00007fd01b27b348:   lea    0x30(%rsi),%rax
   0.77%        0x00007fd01b27b34c:   cmp    0x1c8(%r15),%rax
                0x00007fd01b27b353:   ja     0x00007fd01b27b58b
   0.55%        0x00007fd01b27b359:   mov    %rax,0x1b8(%r15)
   0.54%        0x00007fd01b27b360:   prefetchw 0xf0(%rsi)
   0.79%        0x00007fd01b27b367:   prefetchw 0x130(%rsi)
   0.02%        0x00007fd01b27b36e:   prefetchw 0x170(%rsi)
   0.61%        0x00007fd01b27b375:   prefetchw 0x1b0(%rsi)
   0.31%        0x00007fd01b27b37c:   movq   $0x1,(%rsi)
   0.00%        0x00007fd01b27b383:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   2.10%        0x00007fd01b27b38a:   movl   $0x4,0xc(%rsi)
   1.29%        0x00007fd01b27b391:   movq   $0x0,0x10(%rsi)
   0.11%        0x00007fd01b27b399:   movq   $0x0,0x18(%rsi)
   0.07%        0x00007fd01b27b3a1:   movq   $0x0,0x20(%rsi)
   0.26%        0x00007fd01b27b3a9:   movq   $0x0,0x28(%rsi)
   0.47%        0x00007fd01b27b3b1:   vmovsd %xmm3,0x28(%rsi)
   0.12%        0x00007fd01b27b3b6:   vmovsd %xmm2,0x20(%rsi)
   0.49%        0x00007fd01b27b3bb:   vmovsd %xmm1,0x18(%rsi)
   0.02%        0x00007fd01b27b3c0:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007fcfa00d18d8::apply@12
   0.12%        0x00007fd01b27b3c5:   mov    %rsi,%rax
   0.01%        0x00007fd01b27b3c8:   shr    $0x3,%rax
   0.39%        0x00007fd01b27b3cc:   mov    %eax,0xc(%r11)
   0.02%        0x00007fd01b27b3d0:   mov    %r11,%rax
   0.08%        0x00007fd01b27b3d3:   xor    %rsi,%rax
   0.02%        0x00007fd01b27b3d6:   data16 nopw 0x0(%rax,%rax,1)
   0.34%        0x00007fd01b27b3e0:   test   $0xffffffffffe00000,%rax
                0x00007fd01b27b3e7:   je     0x00007fd01b27b412
                0x00007fd01b27b3ed:   test   %rsi,%rsi
                0x00007fd01b27b3f0:   je     0x00007fd01b27b412
                0x00007fd01b27b3f6:   mov    %r11,%r10
                0x00007fd01b27b3f9:   shr    $0x9,%r10
                0x00007fd01b27b3fd:   movabs $0x7fd02df37000,%r8
                0x00007fd01b27b407:   cmpb   $0x2,(%r10,%r8,1)
                0x00007fd01b27b40c:   jne    0x00007fd01b27b53c           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  23.56%  <total for region 2>

....[Hottest Regions]...............................................................................
  36.68%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d0e80::apply, version 2, compile id 1262 
  23.56%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 
   6.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1261 
   5.71%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1238 
   5.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1261 
   5.03%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d0e80::apply, version 2, compile id 1262 
   3.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1261 
   2.32%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1238 
   2.07%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 
   1.83%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d0e80::apply, version 2, compile id 1262 
   1.30%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 
   0.83%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 
   0.46%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1238 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1261 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1322 
   0.17%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1321 
   0.09%              kernel  [unknown] 
   3.20%  <...other 622 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.54%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d0e80::apply, version 2, compile id 1262 
  27.77%      jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007fcfa00d18d8::apply, version 2, compile id 1263 
  16.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1261 
   8.50%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1238 
   1.33%              kernel  [unknown] 
   0.24%                      <unknown> 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1322 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1321 
   0.09%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39, version 2, compile id 1265 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  G1FromCardCache::clear 
   1.02%  <...other 205 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.89%      jvmci, level 4
   1.33%              kernel
   1.00%           libjvm.so
   0.24%                    
   0.19%        libc-2.31.so
   0.13%         interpreter
   0.09%         c1, level 3
   0.04%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%    perf-2113831.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 256)

# Run progress: 75.00% complete, ETA 00:03:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 217.826 ms/op
# Warmup Iteration   2: 68.959 ms/op
# Warmup Iteration   3: 68.800 ms/op
# Warmup Iteration   4: 68.869 ms/op
# Warmup Iteration   5: 68.878 ms/op
Iteration   1: 68.814 ms/op
Iteration   2: 68.830 ms/op
Iteration   3: 68.880 ms/op
Iteration   4: 68.855 ms/op
Iteration   5: 69.437 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  68.963 ±(99.9%) 1.025 ms/op [Average]
  (min, avg, max) = (68.814, 68.963, 69.437), stdev = 0.266
  CI (99.9%): [67.938, 69.988] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 325532 total address lines.
Perf output processed (skipped 60.970 seconds):
 Column 1: cycles (51334 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 

                                                                                   ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@29 (line 210)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
                                                                                   ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
                                                                                   ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                                   ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%                 0x00007f01e328f1cb:   vmovsd %xmm0,0x98(%rsp)
   0.07%                 0x00007f01e328f1d4:   vmovsd %xmm5,0xb8(%rsp)
   0.42%                 0x00007f01e328f1dd:   vmovsd %xmm15,0x60(%rsp)
   0.03%                 0x00007f01e328f1e3:   vmovsd %xmm3,0x58(%rsp)
   0.06%                 0x00007f01e328f1e9:   vmovsd %xmm13,0x50(%rsp)
   0.12%                 0x00007f01e328f1ef:   vmovsd %xmm4,0x48(%rsp)
   0.47%                 0x00007f01e328f1f5:   vmovsd %xmm9,0x40(%rsp)
   0.24%                 0x00007f01e328f1fb:   mov    %edi,0xc4(%rsp)
   0.36%                 0x00007f01e328f202:   mov    $0x5,%esi
   0.00%                 0x00007f01e328f207:   mov    %r10,%rdx
   0.08%                 0x00007f01e328f20a:   mov    %r8,%rcx
   0.00%                 0x00007f01e328f20d:   mov    %r8,0x8(%rsp)
   0.44%                 0x00007f01e328f212:   mov    $0x0,%r8                     ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.01%                 0x00007f01e328f219:   mov    %r10,0x10(%rsp)
   0.51%                 0x00007f01e328f21e:   nop
   0.01%                 0x00007f01e328f21f:   nop
   0.00%                 0x00007f01e328f220:   data16 xchg %ax,%ax
   0.01%                 0x00007f01e328f223:   call   0x00007f01e2c2f980           ; ImmutableOopMap {[8]=Oop [16]=Oop [40]=Oop [48]=Oop }
                                                                                   ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=1}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
                                                                                   ;   {static_call}
   0.16%                 0x00007f01e328f228:   nopl   0xc18(%rax,%rax,1)           ;   {other}
   0.06%                 0x00007f01e328f230:   mov    %rax,%r10                    ;*invokestatic lambda$compareTemplate$61 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@14
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.04%                 0x00007f01e328f233:   nopw   0x0(%rax,%rax,1)
   0.26%                 0x00007f01e328f23c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {r10=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop }
                                                                                   ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@17
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.09%                 0x00007f01e328f240:   cmpl   $0x10c4f80,0x8(%r10)         ; implicit exception: dispatches to 0x00007f01e3290cfa
                                                                                   ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.05%                 0x00007f01e328f248:   jne    0x00007f01e3290a51           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@17
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
                                                                                   ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                                   ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.04%                 0x00007f01e328f24e:   mov    0xc(%r10),%esi               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                                   ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.32%                 0x00007f01e328f252:   test   %esi,%esi
                         0x00007f01e328f254:   je     0x00007f01e328f7e6
   0.12%                 0x00007f01e328f25a:   mov    0x8(,%rsi,8),%edx
   0.05%                 0x00007f01e328f261:   movabs $0x7f0167000000,%rax
   0.05%                 0x00007f01e328f26b:   lea    (%rax,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.26%                 0x00007f01e328f26f:   test   %esi,%esi
          ╭              0x00007f01e328f271:   je     0x00007f01e328f6f0
   0.12%  │              0x00007f01e328f277:   movabs $0x7f0167001b00,%r11         ;   {metadata({type array bool})}
   0.06%  │              0x00007f01e328f281:   cmp    %rdx,%r11
          │              0x00007f01e328f284:   jne    0x00007f01e3290c45           ; ImmutableOopMap {rsi=NarrowOop r10=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop }
          │                                                                        ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          │                                                                        ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@17
          │                                                                        ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
          │                                                                        ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │                                                                        ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │                                                                        ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │                                                                        ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.04%  │      ↗       0x00007f01e328f28a:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f01e3290d1d
   0.35%  │      │       0x00007f01e328f292:   jb     0x00007f01e3290c2f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2330::apply@17
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::compare@33 (line 584)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.05%  │      │       0x00007f01e328f298:   mov    0x28(%rsp),%rbx
   0.30%  │      │       0x00007f01e328f29d:   movsbl 0x10(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.13%  │      │       0x00007f01e328f2a5:   vmovsd 0x10(%rbx),%xmm0             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │      │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │      │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │      │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.45%  │      │       0x00007f01e328f2aa:   test   %dl,%dl
          │╭     │       0x00007f01e328f2ac:   jne    0x00007f01e328f7c5
   0.03%  ││     │       0x00007f01e328f2b2:   movabs $0x7664911f8,%r9             ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
          ││     │                                                                 ;   {oop([D{0x00000007664911f8})}
   0.03%  ││     │       0x00007f01e328f2bc:   movsbl 0x11(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.02%  ││     │       0x00007f01e328f2c4:   vmovsd 0x18(%rbx),%xmm1             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││     │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││     │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││     │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%  ││     │       0x00007f01e328f2c9:   test   %dl,%dl
          ││╭    │       0x00007f01e328f2cb:   jne    0x00007f01e328f7a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││    │                                                                 ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │                                                                 ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │                                                                 ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.34%  │││    │  ↗    0x00007f01e328f2d1:   movsbl 0x12(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││    │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.02%  │││    │  │    0x00007f01e328f2d9:   vmovsd 0x20(%rbx),%xmm2             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││    │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││    │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││    │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││    │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  │││    │  │    0x00007f01e328f2de:   xchg   %ax,%ax
   0.12%  │││    │  │    0x00007f01e328f2e0:   test   %dl,%dl
          │││╭   │  │    0x00007f01e328f2e2:   jne    0x00007f01e328f7ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││││   │  │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  │                                                              ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.41%  ││││   │  │↗   0x00007f01e328f2e8:   movsbl 0x13(,%rsi,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 231)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││││   │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.06%  ││││   │  ││   0x00007f01e328f2f0:   vmovsd 0x28(%rbx),%xmm3             ;*daload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││││   │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││   │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││   │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││   │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  ││││   │  ││   0x00007f01e328f2f5:   test   %dl,%dl
          ││││╭  │  ││   0x00007f01e328f2f7:   jne    0x00007f01e328f7b6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@63 (line 231)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││││  │  ││                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││  │  ││                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││  │  ││                                                             ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││  │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.29%  │││││  │  ││↗  0x00007f01e328f2fd:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.02%  │││││  │  │││  0x00007f01e328f301:   test   %r8d,%r8d
          │││││  │  │││  0x00007f01e328f304:   je     0x00007f01e328f7da
   0.15%  │││││  │  │││  0x00007f01e328f30a:   mov    0x8(,%r8,8),%edx
   0.33%  │││││  │  │││  0x00007f01e328f312:   movabs $0x7f0167000000,%rax
   0.18%  │││││  │  │││  0x00007f01e328f31c:   lea    (%rax,%rdx,1),%rdx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.21%  │││││  │  │││  0x00007f01e328f320:   mov    %esi,%ecx
   0.01%  │││││  │  │││  0x00007f01e328f322:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 587)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││  │  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.00%  │││││  │  │││  0x00007f01e328f326:   test   %r8d,%r8d
          │││││╭ │  │││  0x00007f01e328f329:   je     0x00007f01e328f338           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@4 (line 743)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
          ││││││ │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          ││││││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.18%  ││││││ │  │││  0x00007f01e328f32f:   cmp    %rdx,%r11
          ││││││ │  │││  0x00007f01e328f332:   jne    0x00007f01e3290ba4           ; ImmutableOopMap {rcx=Oop rbx=Oop r8=NarrowOop r10=Oop [48]=Oop }
          ││││││ │  │││                                                            ;*dastore {reexecute=1 rethrow=0 return_oop=0}
          ││││││ │  │││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          ││││││ │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          ││││││ │  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          ││││││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.26%  │││││↘ │  │││  0x00007f01e328f338:   mov    0xc(,%r8,8),%edi             ; implicit exception: dispatches to 0x00007f01e3290d40
   0.00%  │││││  │  │││  0x00007f01e328f340:   test   %edi,%edi
          │││││  │  │││  0x00007f01e328f342:   je     0x00007f01e328ffaf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
          │││││  │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││  │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.16%  │││││  │  │││  0x00007f01e328f348:   mov    0xc4(%rsp),%ebp
   0.20%  │││││  │  │││  0x00007f01e328f34f:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
   0.11%  │││││  │  │││  0x00007f01e328f351:   cmpb   $0x0,0x10(,%r8,8)
   0.39%  │││││ ╭│  │││  0x00007f01e328f35a:   je     0x00007f01e328f6ff           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 155)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.43%  │││││ ││  │││  0x00007f01e328f360:   mov    0x1b8(%r15),%rsi
   0.02%  │││││ ││  │││  0x00007f01e328f367:   lea    0x30(%rsi),%rdx
   0.01%  │││││ ││  │││  0x00007f01e328f36b:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f01e328f372:   ja     0x00007f01e328fa95
   0.08%  │││││ ││  │││  0x00007f01e328f378:   mov    %rdx,0x1b8(%r15)
   0.36%  │││││ ││  │││  0x00007f01e328f37f:   prefetchw 0xf0(%rsi)
   0.49%  │││││ ││  │││  0x00007f01e328f386:   prefetchw 0x130(%rsi)
   0.01%  │││││ ││  │││  0x00007f01e328f38d:   prefetchw 0x170(%rsi)
   0.34%  │││││ ││  │││  0x00007f01e328f394:   prefetchw 0x1b0(%rsi)
   0.24%  │││││ ││  │││  0x00007f01e328f39b:   movq   $0x1,(%rsi)
   0.46%  │││││ ││  │││  0x00007f01e328f3a2:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.35%  │││││ ││  │││  0x00007f01e328f3a9:   movl   $0x4,0xc(%rsi)
   0.23%  │││││ ││  │││  0x00007f01e328f3b0:   movq   $0x0,0x10(%rsi)
   0.46%  │││││ ││  │││  0x00007f01e328f3b8:   movq   $0x0,0x18(%rsi)
   0.95%  │││││ ││  │││  0x00007f01e328f3c0:   movq   $0x0,0x20(%rsi)
   0.25%  │││││ ││  │││  0x00007f01e328f3c8:   movq   $0x0,0x28(%rsi)
   0.23%  │││││ ││  │││  0x00007f01e328f3d0:   mov    %rsi,%r8
   0.02%  │││││ ││  │││  0x00007f01e328f3d3:   vmovsd 0xb0(%rsp),%xmm5
   0.13%  │││││ ││  │││  0x00007f01e328f3dc:   vmovsd 0x50(%rsp),%xmm13
   0.23%  │││││ ││  │││  0x00007f01e328f3e2:   vmovsd 0x80(%rsp),%xmm4
   0.16%  │││││ ││  │││  0x00007f01e328f3eb:   vmovsd 0xa8(%rsp),%xmm6
   0.04%  │││││ ││  │││  0x00007f01e328f3f4:   vmovsd %xmm6,0x28(%r8)
   0.51%  │││││ ││  │││  0x00007f01e328f3fa:   vmovsd %xmm4,0x20(%r8)
   0.26%  │││││ ││  │││  0x00007f01e328f400:   vmovsd %xmm13,0x18(%r8)
   0.28%  │││││ ││  │││  0x00007f01e328f406:   vmovsd %xmm5,0x10(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.35%  │││││ ││  │││  0x00007f01e328f40c:   mov    0x1b8(%r15),%rsi
   0.04%  │││││ ││  │││  0x00007f01e328f413:   lea    0x30(%rsi),%rdx
   0.02%  │││││ ││  │││  0x00007f01e328f417:   nopw   0x0(%rax,%rax,1)
   0.06%  │││││ ││  │││  0x00007f01e328f420:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f01e328f427:   ja     0x00007f01e328f975
   0.33%  │││││ ││  │││  0x00007f01e328f42d:   mov    %rdx,0x1b8(%r15)
   0.02%  │││││ ││  │││  0x00007f01e328f434:   prefetchw 0xf0(%rsi)
   0.03%  │││││ ││  │││  0x00007f01e328f43b:   prefetchw 0x130(%rsi)
   0.10%  │││││ ││  │││  0x00007f01e328f442:   prefetchw 0x170(%rsi)
   0.35%  │││││ ││  │││  0x00007f01e328f449:   prefetchw 0x1b0(%rsi)
   0.24%  │││││ ││  │││  0x00007f01e328f450:   movq   $0x1,(%rsi)
   0.55%  │││││ ││  │││  0x00007f01e328f457:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   1.16%  │││││ ││  │││  0x00007f01e328f45e:   movl   $0x4,0xc(%rsi)
   0.13%  │││││ ││  │││  0x00007f01e328f465:   movq   $0x0,0x10(%rsi)
   0.30%  │││││ ││  │││  0x00007f01e328f46d:   movq   $0x0,0x18(%rsi)
   0.25%  │││││ ││  │││  0x00007f01e328f475:   movq   $0x0,0x20(%rsi)
   0.22%  │││││ ││  │││  0x00007f01e328f47d:   movq   $0x0,0x28(%rsi)
   0.08%  │││││ ││  │││  0x00007f01e328f485:   mov    %rsi,%rdi
   0.10%  │││││ ││  │││  0x00007f01e328f488:   vmovsd 0xb8(%rsp),%xmm10
   0.15%  │││││ ││  │││  0x00007f01e328f491:   vmovsd 0x58(%rsp),%xmm9
   0.20%  │││││ ││  │││  0x00007f01e328f497:   vmovsd 0x70(%rsp),%xmm8
   0.12%  │││││ ││  │││  0x00007f01e328f49d:   vmovsd 0x88(%rsp),%xmm7
   0.12%  │││││ ││  │││  0x00007f01e328f4a6:   vmovsd %xmm7,0x28(%rdi)
   0.15%  │││││ ││  │││  0x00007f01e328f4ab:   vmovsd %xmm8,0x20(%rdi)
   0.16%  │││││ ││  │││  0x00007f01e328f4b0:   vmovsd %xmm9,0x18(%rdi)
   0.17%  │││││ ││  │││  0x00007f01e328f4b5:   vmovsd %xmm10,0x10(%rdi)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.34%  │││││ ││  │││  0x00007f01e328f4ba:   mov    0x1b8(%r15),%rsi
   0.08%  │││││ ││  │││  0x00007f01e328f4c1:   lea    0x30(%rsi),%rdx
   0.03%  │││││ ││  │││  0x00007f01e328f4c5:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f01e328f4cc:   ja     0x00007f01e328fa37
   0.07%  │││││ ││  │││  0x00007f01e328f4d2:   mov    %rdx,0x1b8(%r15)
   0.30%  │││││ ││  │││  0x00007f01e328f4d9:   prefetchw 0xf0(%rsi)
   0.09%  │││││ ││  │││  0x00007f01e328f4e0:   prefetchw 0x130(%rsi)
   0.04%  │││││ ││  │││  0x00007f01e328f4e7:   prefetchw 0x170(%rsi)
   0.09%  │││││ ││  │││  0x00007f01e328f4ee:   prefetchw 0x1b0(%rsi)
   0.55%  │││││ ││  │││  0x00007f01e328f4f5:   movq   $0x1,(%rsi)
   1.38%  │││││ ││  │││  0x00007f01e328f4fc:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.15%  │││││ ││  │││  0x00007f01e328f503:   movl   $0x4,0xc(%rsi)
   0.35%  │││││ ││  │││  0x00007f01e328f50a:   movq   $0x0,0x10(%rsi)
   0.14%  │││││ ││  │││  0x00007f01e328f512:   movq   $0x0,0x18(%rsi)
   0.40%  │││││ ││  │││  0x00007f01e328f51a:   movq   $0x0,0x20(%rsi)
   0.38%  │││││ ││  │││  0x00007f01e328f522:   movq   $0x0,0x28(%rsi)
   0.21%  │││││ ││  │││  0x00007f01e328f52a:   mov    %rsi,%r13
   0.03%  │││││ ││  │││  0x00007f01e328f52d:   vmovsd 0xa0(%rsp),%xmm15
   0.13%  │││││ ││  │││  0x00007f01e328f536:   vmovsd 0x68(%rsp),%xmm14
   0.11%  │││││ ││  │││  0x00007f01e328f53c:   vmovsd 0x78(%rsp),%xmm12
   0.24%  │││││ ││  │││  0x00007f01e328f542:   vmovsd 0x90(%rsp),%xmm11
   0.05%  │││││ ││  │││  0x00007f01e328f54b:   vmovsd %xmm11,0x28(%r13)
   0.14%  │││││ ││  │││  0x00007f01e328f551:   vmovsd %xmm12,0x20(%r13)
   0.16%  │││││ ││  │││  0x00007f01e328f557:   vmovsd %xmm14,0x18(%r13)
   0.22%  │││││ ││  │││  0x00007f01e328f55d:   vmovsd %xmm15,0x10(%r13)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.30%  │││││ ││  │││  0x00007f01e328f563:   mov    0x1b8(%r15),%rsi
   0.05%  │││││ ││  │││  0x00007f01e328f56a:   lea    0x30(%rsi),%rdx
   0.04%  │││││ ││  │││  0x00007f01e328f56e:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f01e328f575:   ja     0x00007f01e328f9d2
   0.08%  │││││ ││  │││  0x00007f01e328f57b:   mov    %rdx,0x1b8(%r15)
   0.32%  │││││ ││  │││  0x00007f01e328f582:   prefetchw 0xf0(%rsi)
   0.04%  │││││ ││  │││  0x00007f01e328f589:   prefetchw 0x130(%rsi)
   0.03%  │││││ ││  │││  0x00007f01e328f590:   prefetchw 0x170(%rsi)
   0.12%  │││││ ││  │││  0x00007f01e328f597:   prefetchw 0x1b0(%rsi)
   0.49%  │││││ ││  │││  0x00007f01e328f59e:   movq   $0x1,(%rsi)
   0.39%  │││││ ││  │││  0x00007f01e328f5a5:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.95%  │││││ ││  │││  0x00007f01e328f5ac:   movl   $0x4,0xc(%rsi)
   0.19%  │││││ ││  │││  0x00007f01e328f5b3:   movq   $0x0,0x10(%rsi)
   0.34%  │││││ ││  │││  0x00007f01e328f5bb:   movq   $0x0,0x18(%rsi)
   0.23%  │││││ ││  │││  0x00007f01e328f5c3:   movq   $0x0,0x20(%rsi)
   0.27%  │││││ ││  │││  0x00007f01e328f5cb:   movq   $0x0,0x28(%rsi)
   0.21%  │││││ ││  │││  0x00007f01e328f5d3:   mov    %rsi,%r14
   0.02%  │││││ ││  │││  0x00007f01e328f5d6:   vmovsd 0x48(%rsp),%xmm14
   0.07%  │││││ ││  │││  0x00007f01e328f5dc:   vmovsd 0x40(%rsp),%xmm15
   0.18%  │││││ ││  │││  0x00007f01e328f5e2:   vmovsd 0x98(%rsp),%xmm11
   0.33%  │││││ ││  │││  0x00007f01e328f5eb:   vmovsd 0x60(%rsp),%xmm12
   0.04%  │││││ ││  │││  0x00007f01e328f5f1:   vmovsd %xmm15,0x28(%r14)
   0.10%  │││││ ││  │││  0x00007f01e328f5f7:   vmovsd %xmm14,0x20(%r14)
   0.18%  │││││ ││  │││  0x00007f01e328f5fd:   vmovsd %xmm12,0x18(%r14)
   0.34%  │││││ ││  │││  0x00007f01e328f603:   vmovsd %xmm11,0x10(%r14)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.34%  │││││ ││  │││  0x00007f01e328f609:   mov    0x1b8(%r15),%rsi
   0.03%  │││││ ││  │││  0x00007f01e328f610:   lea    0x30(%rsi),%rdx
   0.02%  │││││ ││  │││  0x00007f01e328f614:   nopl   0x0(%rax,%rax,1)
   0.05%  │││││ ││  │││  0x00007f01e328f61c:   data16 data16 xchg %ax,%ax
   0.32%  │││││ ││  │││  0x00007f01e328f620:   cmp    0x1c8(%r15),%rdx
          │││││ ││  │││  0x00007f01e328f627:   ja     0x00007f01e328fa11
   0.03%  │││││ ││  │││  0x00007f01e328f62d:   mov    %rdx,0x1b8(%r15)
   0.03%  │││││ ││  │││  0x00007f01e328f634:   prefetchw 0xf0(%rsi)
   0.09%  │││││ ││  │││  0x00007f01e328f63b:   prefetchw 0x130(%rsi)
   0.39%  │││││ ││  │││  0x00007f01e328f642:   prefetchw 0x170(%rsi)
   0.06%  │││││ ││  │││  0x00007f01e328f649:   prefetchw 0x1b0(%rsi)
   0.30%  │││││ ││  │││  0x00007f01e328f650:   movq   $0x1,(%rsi)
   0.35%  │││││ ││  │││  0x00007f01e328f657:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   0.57%  │││││ ││  │││  0x00007f01e328f65e:   movl   $0x4,0xc(%rsi)
   0.45%  │││││ ││  │││  0x00007f01e328f665:   movq   $0x0,0x10(%rsi)
   0.43%  │││││ ││  │││  0x00007f01e328f66d:   movq   $0x0,0x18(%rsi)
   0.18%  │││││ ││  │││  0x00007f01e328f675:   movq   $0x0,0x20(%rsi)
   0.30%  │││││ ││  │││  0x00007f01e328f67d:   movq   $0x0,0x28(%rsi)
   0.49%  │││││ ││  │││  0x00007f01e328f685:   vmovsd %xmm3,0x28(%rsi)
   0.28%  │││││ ││  │││  0x00007f01e328f68a:   vmovsd %xmm2,0x20(%rsi)
   0.37%  │││││ ││  │││  0x00007f01e328f68f:   vmovsd %xmm1,0x18(%rsi)
   0.41%  │││││ ││  │││  0x00007f01e328f694:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
          │││││ ││  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │││││ ││  │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │││││ ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.45%  │││││ ││  │││  0x00007f01e328f699:   mov    %r8,%rcx
   0.00%  │││││ ││  │││  0x00007f01e328f69c:   mov    %r14,%r8
   0.02%  │││││ ││  │││  0x00007f01e328f69f:   mov    %rsi,%rbx
   0.04%  │││││ ││  │││  0x00007f01e328f6a2:   mov    %rdi,%r11
   0.37%  │││││ ││  │││  0x00007f01e328f6a5:   mov    %r13,%r10
   0.01%  │││││ ││  │││  0x00007f01e328f6a8:   vmovsd 0xc8(%rsp),%xmm5
   0.05%  │││││ ││  │││  0x00007f01e328f6b1:   vmovsd 0xd0(%rsp),%xmm7
   0.05%  │││││ ││  │││  0x00007f01e328f6ba:   vmovsd 0xd8(%rsp),%xmm8
   0.38%  │││││ ││  │││  0x00007f01e328f6c3:   vmovsd 0xe8(%rsp),%xmm11
   0.02%  │││││ ││  │││  0x00007f01e328f6cc:   mov    0x118(%rsp),%r13
   0.04%  │││││ ││  │││  0x00007f01e328f6d4:   mov    0x120(%rsp),%r9
   0.05%  │││││ ││  │││  0x00007f01e328f6dc:   mov    0x30(%rsp),%rsi
   0.45%  │││││ ││  │││  0x00007f01e328f6e1:   mov    %ebp,%edi
   0.01%  │││││ ││  │││  0x00007f01e328f6e3:   mov    0x108(%rsp),%rbp
   0.03%  │││││ ││  │││  0x00007f01e328f6eb:   jmp    0x00007f01e328edd0
          ↘││││ ││  │││  0x00007f01e328f6f0:   movabs $0x7f0167001b00,%r11         ;   {metadata({type array bool})}
           ││││ │╰  │││  0x00007f01e328f6fa:   jmp    0x00007f01e328f28a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 587)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@38 (line 229)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
           ││││ │   │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           ││││ │   │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           ││││ │   │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           ││││ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%   ││││ ↘   │││  0x00007f01e328f6ff:   mov    $0x1,%ecx
   0.01%   ││││     │││  0x00007f01e328f704:   vmovsd 0x98(%rsp),%xmm11
   0.01%   ││││     │││  0x00007f01e328f70d:   vmovsd 0xb8(%rsp),%xmm10
   0.01%   ││││     │││  0x00007f01e328f716:   vmovsd 0xb0(%rsp),%xmm5
   0.04%   ││││     │││  0x00007f01e328f71f:   vmovsd 0x60(%rsp),%xmm12
   0.01%   ││││     │││  0x00007f01e328f725:   vmovsd 0x58(%rsp),%xmm9
   0.01%   ││││     │││  0x00007f01e328f72b:   vmovsd 0x50(%rsp),%xmm13
           ││││     │││  0x00007f01e328f731:   vmovsd 0x48(%rsp),%xmm14
   0.03%   ││││     │││  0x00007f01e328f737:   vmovsd 0x70(%rsp),%xmm8
   0.01%   ││││     │││  0x00007f01e328f73d:   vmovsd 0x80(%rsp),%xmm4
   0.01%   ││││     │││  0x00007f01e328f746:   vmovsd 0x40(%rsp),%xmm15
   0.01%   ││││     │││  0x00007f01e328f74c:   vmovsd 0x88(%rsp),%xmm7
   0.03%   ││││     │││  0x00007f01e328f755:   vmovsd 0xa8(%rsp),%xmm6
   0.01%   ││││     │││  0x00007f01e328f75e:   xchg   %ax,%ax
   0.01%   ││││   ╭ │││  0x00007f01e328f760:   jmp    0x00007f01e328f796           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           ││││   │ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@7 (line 154)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││   │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
           ││││   │ │││  0x00007f01e328f765:   data16 data16 nopw 0x0(%rax,%rax,1)
           ││││   │ │││  0x00007f01e328f770:   data16 data16 xchg %ax,%ax
           ││││   │ │││  0x00007f01e328f774:   nopl   0x0(%rax,%rax,1)
           ││││   │ │││  0x00007f01e328f77c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││   │ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││   │ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.02%   ││││   │↗│││  0x00007f01e328f780:   cmp    %ecx,%edi
           ││││   │││││  0x00007f01e328f782:   jbe    0x00007f01e3290b4b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@14 (line 154)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.03%   ││││   │││││  0x00007f01e328f788:   cmpb   $0x0,0x10(%rcx,%r8,8)
   0.05%   ││││   │││││  0x00007f01e328f78e:   jne    0x00007f01e328fb17           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 155)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.02%   ││││   │││││  0x00007f01e328f794:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││   │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@24 (line 154)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││   │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││   │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.01%   ││││   ↘││││  0x00007f01e328f796:   cmp    %ecx,%edi
           ││││    ││││  0x00007f01e328f798:   jle    0x00007f01e328ffaf
   0.04%   ││││    ╰│││  0x00007f01e328f79e:   jmp    0x00007f01e328f780           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││     │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 154)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$13@7 (line 743)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda/0x00007f01680d2d88::apply@8
           ││││     │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 563)
           ││││     │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 741)
           ││││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@264 (line 136)
   0.41%   │↘││     │││  0x00007f01e328f7a0:   vaddsd 0x18(%r9),%xmm1,%xmm1        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
           │ ││     │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │ ││     │││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │ ││     │││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │ ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.21%   │ ││     ╰││  0x00007f01e328f7a6:   jmp    0x00007f01e328f2d1           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
           │ ││      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │ ││      ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.28%   │ ↘│      ││  0x00007f01e328f7ab:   vaddsd 0x20(%r9),%xmm2,%xmm2        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
           │  │      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │  │      ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │  │      ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │  │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.14%   │  │      ╰│  0x00007f01e328f7b1:   jmp    0x00007f01e328f2e8           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@92 (line 231)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
           │  │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
           │  │       │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
           │  │       │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
           │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.51%   │  ↘       │  0x00007f01e328f7b6:   vaddsd 0x28(%r9),%xmm3,%xmm3
   0.20%   │          │  0x00007f01e328f7bc:   nopl   0x0(%rax)
           │          ╰  0x00007f01e328f7c0:   jmp    0x00007f01e328f2fd
   0.02%   ↘             0x00007f01e328f7c5:   movabs $0x7664911f8,%r9             ;   {oop([D{0x00000007664911f8})}
   0.09%                 0x00007f01e328f7cf:   vaddsd 0x10(%r9),%xmm0,%xmm0        ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@79 (line 231)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                                   ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
....................................................................................................
  43.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 

                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
            0x00007f01e328ed95:   vmovsd %xmm5,0xc8(%rsp)
   0.00%    0x00007f01e328ed9e:   mov    $0x0,%edi
            0x00007f01e328eda3:   mov    %rcx,%r11
            0x00007f01e328eda6:   mov    0x108(%rsp),%rbp
   0.00%    0x00007f01e328edae:   mov    0x118(%rsp),%r13
   0.01%    0x00007f01e328edb6:   mov    %r8,%rcx
            0x00007f01e328edb9:   mov    %rbx,%r8
            0x00007f01e328edbc:   mov    %rax,%rbx
            0x00007f01e328edbf:   mov    %rdx,%r10
   0.00%    0x00007f01e328edc2:   data16 nopw 0x0(%rax,%rax,1)
            0x00007f01e328edcc:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
   0.04%    0x00007f01e328edd0:   cmp    0x10(%rsi),%edi
            0x00007f01e328edd3:   jge    0x00007f01e3290825           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@176 (line 125)
   0.48%    0x00007f01e328edd9:   nopl   0x0(%rax)
   0.05%    0x00007f01e328ede0:   cmpl   $0x4,0xc(%r10)
   0.03%    0x00007f01e328ede5:   jb     0x00007f01e3290971           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.03%    0x00007f01e328edeb:   cmpl   $0x4,0xc(%r8)                ;   {no_reloc}
   0.38%    0x00007f01e328edf0:   jb     0x00007f01e3290971           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.05%    0x00007f01e328edf6:   cmpl   $0x4,0xc(%rcx)
   0.02%    0x00007f01e328edfa:   jb     0x00007f01e3290971           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.03%    0x00007f01e328ee00:   cmpl   $0x4,0xc(%r11)
   0.38%    0x00007f01e328ee05:   jb     0x00007f01e3290971           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.06%    0x00007f01e328ee0b:   cmpl   $0x4,0xc(%rbx)
   0.01%    0x00007f01e328ee0f:   jb     0x00007f01e3290971           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%    0x00007f01e328ee15:   mov    %rbx,0x28(%rsp)
   0.34%    0x00007f01e328ee1a:   vmovsd 0x28(%r8),%xmm6              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.06%    0x00007f01e328ee20:   vmovsd 0x28(%r10),%xmm10            ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.02%    0x00007f01e328ee26:   vmovsd 0x20(%r8),%xmm12             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.04%    0x00007f01e328ee2c:   vmovsd 0x20(%r10),%xmm13            ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.38%    0x00007f01e328ee32:   vmovsd 0x18(%r8),%xmm14             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.04%    0x00007f01e328ee38:   vmovsd 0x18(%r10),%xmm15            ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.04%    0x00007f01e328ee3e:   vmovsd 0x10(%r8),%xmm0              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.03%    0x00007f01e328ee44:   vmovsd 0x10(%r10),%xmm1             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.40%    0x00007f01e328ee4a:   vmovsd 0x28(%rcx),%xmm2
   0.05%    0x00007f01e328ee4f:   vmovsd 0x20(%rcx),%xmm4
   0.03%    0x00007f01e328ee54:   vmovsd 0x18(%rcx),%xmm3
   0.04%    0x00007f01e328ee59:   vmovsd 0x10(%rcx),%xmm9             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.40%    0x00007f01e328ee5e:   vmovsd %xmm9,0xb8(%rsp)
   0.05%    0x00007f01e328ee67:   vmovsd 0x28(%r11),%xmm9
   0.03%    0x00007f01e328ee6d:   vmovsd %xmm0,0xb0(%rsp)
   0.05%    0x00007f01e328ee76:   vmovsd 0x20(%r11),%xmm0
   0.40%    0x00007f01e328ee7c:   vmovsd %xmm1,0xa8(%rsp)
   0.06%    0x00007f01e328ee85:   vmovsd 0x18(%r11),%xmm1
   0.03%    0x00007f01e328ee8b:   vmovsd %xmm1,0xa0(%rsp)
   0.04%    0x00007f01e328ee94:   vmovsd 0x10(%r11),%xmm1             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.40%    0x00007f01e328ee9a:   mov    %r10,0x20(%rsp)
   0.07%    0x00007f01e328ee9f:   mov    0x1b8(%r15),%r10
   0.05%    0x00007f01e328eea6:   mov    %r11,0x18(%rsp)
   0.05%    0x00007f01e328eeab:   lea    0x10(%r10),%r11
   0.38%    0x00007f01e328eeaf:   cmp    0x1c8(%r15),%r11
            0x00007f01e328eeb6:   ja     0x00007f01e328f86a
   0.04%    0x00007f01e328eebc:   mov    %r11,0x1b8(%r15)
   0.04%    0x00007f01e328eec3:   prefetchw 0xd0(%r10)
   0.10%    0x00007f01e328eecb:   movq   $0x1,(%r10)
   0.73%    0x00007f01e328eed2:   movl   $0x10c4910,0x8(%r10)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.73%    0x00007f01e328eeda:   movl   $0x0,0xc(%r10)
   0.18%    0x00007f01e328eee2:   mov    %r8,0x8(%rsp)                ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 210)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.03%    0x00007f01e328eee7:   mov    0x1b8(%r15),%r11
   0.11%    0x00007f01e328eeee:   lea    0x30(%r11),%r8
   0.21%    0x00007f01e328eef2:   cmp    0x1c8(%r15),%r8
            0x00007f01e328eef9:   ja     0x00007f01e328f8f6
   0.24%    0x00007f01e328eeff:   mov    %r8,0x1b8(%r15)
   0.15%    0x00007f01e328ef06:   prefetchw 0xf0(%r11)
   0.58%    0x00007f01e328ef0e:   prefetchw 0x130(%r11)
   0.14%    0x00007f01e328ef16:   prefetchw 0x170(%r11)
   0.42%    0x00007f01e328ef1e:   prefetchw 0x1b0(%r11)
   0.47%    0x00007f01e328ef26:   movq   $0x1,(%r11)
   2.31%    0x00007f01e328ef2d:   movl   $0x20d0,0x8(%r11)            ;   {metadata({type array double})}
   0.08%    0x00007f01e328ef35:   movl   $0x4,0xc(%r11)
   0.39%    0x00007f01e328ef3d:   movq   $0x0,0x10(%r11)
   0.10%    0x00007f01e328ef45:   movq   $0x0,0x18(%r11)
   0.46%    0x00007f01e328ef4d:   movq   $0x0,0x20(%r11)
   0.18%    0x00007f01e328ef55:   movq   $0x0,0x28(%r11)
   0.36%    0x00007f01e328ef5d:   vmovsd %xmm1,0x98(%rsp)
   0.03%    0x00007f01e328ef66:   vmovsd 0xa8(%rsp),%xmm1
   0.12%    0x00007f01e328ef6f:   mov    %rcx,0x10(%rsp)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.05%    0x00007f01e328ef74:   vsubsd %xmm6,%xmm10,%xmm6           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$40@2 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d16c0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.31%    0x00007f01e328ef78:   vaddsd %xmm5,%xmm6,%xmm6            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.03%    0x00007f01e328ef7c:   vmovsd %xmm6,0xa8(%rsp)
   0.13%    0x00007f01e328ef85:   vmulsd %xmm6,%xmm6,%xmm10           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.04%    0x00007f01e328ef89:   vmovsd %xmm10,0x90(%rsp)
   0.33%    0x00007f01e328ef92:   vaddsd %xmm2,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.02%    0x00007f01e328ef96:   vmulsd %xmm9,%xmm2,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.11%    0x00007f01e328ef9b:   vaddsd %xmm11,%xmm2,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.07%    0x00007f01e328efa0:   vmovsd %xmm2,0x88(%rsp)
   0.35%    0x00007f01e328efa9:   vmulsd %xmm2,%xmm2,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.06%    0x00007f01e328efad:   vaddsd %xmm9,%xmm10,%xmm2           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.72%    0x00007f01e328efb2:   vmovsd %xmm2,0x28(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.40%    0x00007f01e328efb8:   vsubsd %xmm12,%xmm13,%xmm2          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$40@2 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d16c0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.09%    0x00007f01e328efbd:   vaddsd %xmm7,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.01%    0x00007f01e328efc1:   vmovsd %xmm2,0x80(%rsp)
   0.03%    0x00007f01e328efca:   vmulsd %xmm2,%xmm2,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.37%    0x00007f01e328efce:   vmovsd %xmm12,0x78(%rsp)
   0.10%    0x00007f01e328efd4:   vaddsd %xmm4,%xmm4,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.01%    0x00007f01e328efd8:   vmulsd %xmm0,%xmm4,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.03%    0x00007f01e328efdc:   vaddsd %xmm11,%xmm0,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.40%    0x00007f01e328efe1:   vmovsd %xmm0,0x70(%rsp)
   0.08%    0x00007f01e328efe7:   vmulsd %xmm0,%xmm0,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.01%    0x00007f01e328efeb:   vaddsd %xmm4,%xmm12,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.69%    0x00007f01e328efef:   vmovsd %xmm13,0x20(%r11)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.41%    0x00007f01e328eff5:   vsubsd %xmm14,%xmm15,%xmm13         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$40@2 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d16c0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   0.05%    0x00007f01e328effa:   vaddsd %xmm8,%xmm13,%xmm13          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.01%    0x00007f01e328efff:   vmulsd %xmm13,%xmm13,%xmm14         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.03%    0x00007f01e328f004:   vmovsd %xmm14,0x68(%rsp)
   0.40%    0x00007f01e328f00a:   vaddsd %xmm3,%xmm3,%xmm3            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.07%    0x00007f01e328f00e:   vmulsd 0xa0(%rsp),%xmm3,%xmm3       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.06%    0x00007f01e328f017:   vaddsd %xmm11,%xmm3,%xmm3           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.06%    0x00007f01e328f01c:   vmulsd %xmm3,%xmm3,%xmm15           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.44%    0x00007f01e328f020:   vaddsd %xmm15,%xmm14,%xmm0          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.98%    0x00007f01e328f025:   vmovsd %xmm0,0x18(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.43%    0x00007f01e328f02b:   vsubsd 0xb0(%rsp),%xmm1,%xmm0       ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$40@2 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d16c0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$41@8 (line 823)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d14a8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
                                                                      ;   {no_reloc}
   0.02%    0x00007f01e328f034:   vaddsd 0xe0(%rsp),%xmm0,%xmm0       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.05%    0x00007f01e328f03d:   vmovsd %xmm0,0xb0(%rsp)
   0.03%    0x00007f01e328f046:   vmulsd %xmm0,%xmm0,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.53%    0x00007f01e328f04a:   vmovsd %xmm1,0xa0(%rsp)
   0.03%    0x00007f01e328f053:   vmovsd 0xb8(%rsp),%xmm5
   0.02%    0x00007f01e328f05c:   vaddsd %xmm5,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   0.01%    0x00007f01e328f060:   vmulsd 0x98(%rsp),%xmm5,%xmm5       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.39%    0x00007f01e328f069:   vaddsd %xmm11,%xmm5,%xmm5           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.04%    0x00007f01e328f06e:   vmulsd %xmm5,%xmm5,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1af0::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d18d8::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.91%    0x00007f01e328f072:   vaddsd %xmm0,%xmm1,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d1290::apply@4
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   1.78%    0x00007f01e328f076:   vmovsd %xmm2,0x10(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d0e80::apply@12
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@32 (line 382)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
   0.44%    0x00007f01e328f07c:   mov    0x1b8(%r15),%r8
   0.01%    0x00007f01e328f083:   lea    0x10(%r8),%rcx
            0x00007f01e328f087:   cmp    0x1c8(%r15),%rcx
            0x00007f01e328f08e:   ja     0x00007f01e328f84b
   0.02%    0x00007f01e328f094:   mov    %rcx,0x1b8(%r15)
   0.51%    0x00007f01e328f09b:   prefetchw 0xd0(%r8)
   0.01%    0x00007f01e328f0a3:   movq   $0x1,(%r8)
   0.01%    0x00007f01e328f0aa:   movl   $0x10c4910,0x8(%r8)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%    0x00007f01e328f0b2:   movl   $0x0,0xc(%r8)                ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@43 (line 3824)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3745)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda/0x00007f01680cc060::fromBits@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@29 (line 210)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
                                                                      ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
                                                                      ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1969)
                                                                      ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.53%    0x00007f01e328f0ba:   mov    0x1b8(%r15),%rcx
   0.09%    0x00007f01e328f0c1:   lea    0x30(%rcx),%rbx
   0.01%    0x00007f01e328f0c5:   cmp    0x1c8(%r15),%rbx
            0x00007f01e328f0cc:   ja     0x00007f01e328f8ca
   0.01%    0x00007f01e328f0d2:   mov    %rbx,0x1b8(%r15)
   0.48%    0x00007f01e328f0d9:   prefetchw 0xf0(%rcx)
   0.02%    0x00007f01e328f0e0:   prefetchw 0x130(%rcx)
   0.00%    0x00007f01e328f0e7:   prefetchw 0x170(%rcx)
   0.03%    0x00007f01e328f0ee:   prefetchw 0x1b0(%rcx)
   0.66%    0x00007f01e328f0f5:   movq   $0x1,(%rcx)
   0.05%    0x00007f01e328f0fc:   movl   $0x20d0,0x8(%rcx)            ;   {metadata({type array double})}
   0.01%    0x00007f01e328f103:   movl   $0x4,0xc(%rcx)
   0.03%    0x00007f01e328f10a:   movq   $0x0,0x10(%rcx)
   0.45%    0x00007f01e328f112:   movq   $0x0,0x18(%rcx)
   0.03%    0x00007f01e328f11a:   movq   $0x0,0x20(%rcx)
   0.03%    0x00007f01e328f122:   movq   $0x0,0x28(%rcx)
   0.03%    0x00007f01e328f12a:   vmovsd -0x7e2(%rip),%xmm2        # 0x00007f01e328e950
                                                                      ;   {section_word}
   0.48%    0x00007f01e328f132:   vmovsd %xmm2,0x28(%rcx)
   0.07%    0x00007f01e328f137:   vmovsd %xmm2,0x20(%rcx)
   0.05%    0x00007f01e328f13c:   vmovsd %xmm2,0x18(%rcx)
   0.07%    0x00007f01e328f141:   vmovsd %xmm2,0x10(%rcx)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@4 (line 3819)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3745)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda/0x00007f01680cc060::fromBits@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@29 (line 210)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
                                                                      ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
                                                                      ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 607)
                                                                      ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1969)
                                                                      ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
   0.43%    0x00007f01e328f146:   mov    %r11,%rbx
   0.03%    0x00007f01e328f149:   shr    $0x3,%rbx
            0x00007f01e328f14d:   mov    %ebx,0xc(%r10)
   0.04%    0x00007f01e328f151:   mov    %r10,%rbx
   0.43%    0x00007f01e328f154:   xor    %r11,%rbx
   0.04%    0x00007f01e328f157:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f01e328f160:   test   $0xffffffffffe00000,%rbx
            0x00007f01e328f167:   je     0x00007f01e328f18b
            0x00007f01e328f16d:   test   %r11,%r11
            0x00007f01e328f170:   je     0x00007f01e328f18b
            0x00007f01e328f176:   mov    %r10,%r11
            0x00007f01e328f179:   shr    $0x9,%r11
            0x00007f01e328f17d:   data16 xchg %ax,%ax
            0x00007f01e328f180:   cmpb   $0x2,(%r11,%r9,1)
   0.00%    0x00007f01e328f185:   jne    0x00007f01e328f810           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  29.61%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1249 

               0x00007f01e3255fe6:   cmp    $0x6,%r10d
               0x00007f01e3255fea:   je     0x00007f01e325641c
               0x00007f01e3255ff0:   cmp    $0x7,%r10d
               0x00007f01e3255ff4:   je     0x00007f01e325641c
               0x00007f01e3255ffa:   jmp    0x00007f01e325641c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@1 (line 1927)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.05%       0x00007f01e3255fff:   vucomisd %xmm1,%xmm0
   0.05%       0x00007f01e3256003:   setb   %r9b
   0.04%       0x00007f01e3256007:   movzbl %r9b,%r9d
   0.49%       0x00007f01e325600b:   xor    $0x1,%r9d                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.08%       0x00007f01e325600f:   mov    %r8d,%ecx
   0.01%       0x00007f01e3256012:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@10 (line 473)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.00%       0x00007f01e3256016:   mov    %esi,%ebx
   0.41%       0x00007f01e3256018:   shl    $0x3,%rbx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@1 (line 472)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.09%       0x00007f01e325601c:   nopl   0x0(%rax)
   0.00%       0x00007f01e3256020:   cmp    $0x2,%eax                    ;   {no_reloc}
               0x00007f01e3256023:   jb     0x00007f01e32563e4           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.00%       0x00007f01e3256029:   cmp    $0x2,%edx
               0x00007f01e325602c:   jb     0x00007f01e32564ad
   0.41%       0x00007f01e3256032:   vmovsd 0x18(,%r8,8),%xmm2           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.07%       0x00007f01e325603c:   vmovsd 0x18(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f01e3256045:   cmp    $0x5,%r10d
          ╭    0x00007f01e3256049:   je     0x00007f01e325605e
   0.00%  │    0x00007f01e325604f:   cmp    $0x0,%r10d
          │    0x00007f01e3256053:   je     0x00007f01e3256231
          │    0x00007f01e3256059:   jmp    0x00007f01e325640d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
          │                                                              ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%  ↘    0x00007f01e325605e:   vucomisd %xmm3,%xmm2
   0.37%       0x00007f01e3256062:   setb   %dil
   0.08%       0x00007f01e3256066:   movzbl %dil,%edi
   0.03%       0x00007f01e325606a:   xor    $0x1,%edi                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.10%       0x00007f01e325606d:   cmp    $0x3,%eax
               0x00007f01e3256070:   jb     0x00007f01e32563bc           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.31%       0x00007f01e3256076:   cmp    $0x3,%edx
               0x00007f01e3256079:   jb     0x00007f01e3256440
   0.06%       0x00007f01e325607f:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f01e3256089:   vmovsd 0x20(,%rsi,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.09%       0x00007f01e3256092:   cmp    $0x5,%r10d
           ╭   0x00007f01e3256096:   je     0x00007f01e32560ab
           │   0x00007f01e325609c:   cmp    $0x0,%r10d
           │   0x00007f01e32560a0:   je     0x00007f01e3256290
           │   0x00007f01e32560a6:   jmp    0x00007f01e3256477           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
           │                                                             ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.32%   ↘   0x00007f01e32560ab:   vucomisd %xmm1,%xmm0
   0.08%       0x00007f01e32560af:   setb   %bpl
   0.01%       0x00007f01e32560b3:   movzbl %bpl,%ebp
   0.19%       0x00007f01e32560b7:   xor    $0x1,%ebp                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.40%       0x00007f01e32560ba:   nopw   0x0(%rax,%rax,1)
   0.07%       0x00007f01e32560c0:   cmp    $0x4,%eax
               0x00007f01e32560c3:   jb     0x00007f01e325649b           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.02%       0x00007f01e32560c9:   cmp    $0x4,%edx
               0x00007f01e32560cc:   jb     0x00007f01e3256382
   0.08%       0x00007f01e32560d2:   vmovsd 0x28(,%r8,8),%xmm2           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@52 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.30%       0x00007f01e32560dc:   vmovsd 0x28(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@47 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.06%       0x00007f01e32560e5:   cmp    $0x5,%r10d
            ╭  0x00007f01e32560e9:   je     0x00007f01e32560fe
            │  0x00007f01e32560ef:   cmp    $0x0,%r10d
            │  0x00007f01e32560f3:   je     0x00007f01e3256272
            │  0x00007f01e32560f9:   jmp    0x00007f01e32563ad           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
            │                                                            ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%    ↘  0x00007f01e32560fe:   vucomisd %xmm3,%xmm2
   0.09%       0x00007f01e3256102:   setb   %sil
   0.34%       0x00007f01e3256106:   movzbl %sil,%esi
   0.07%       0x00007f01e325610a:   xor    $0x1,%esi                    ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@93 (line 1931)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.01%       0x00007f01e325610d:   mov    %esi,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::compareWithOp@140 (line 1927)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$60@4 (line 1896)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f01680d2740::apply@9
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@53 (line 476)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.12%       0x00007f01e3256110:   mov    0x1b8(%r15),%rsi
   0.33%       0x00007f01e3256117:   lea    0x10(%rsi),%rax
   0.05%       0x00007f01e325611b:   nopl   0x0(%rax,%rax,1)
   0.01%       0x00007f01e3256120:   cmp    0x1c8(%r15),%rax             ;   {no_reloc}
               0x00007f01e3256127:   ja     0x00007f01e3256305
   0.08%       0x00007f01e325612d:   mov    %rax,0x1b8(%r15)
   0.32%       0x00007f01e3256134:   prefetchw 0xd0(%rsi)
   0.08%       0x00007f01e325613b:   movq   $0x1,(%rsi)
   0.01%       0x00007f01e3256142:   movl   $0x10c4f80,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.09%       0x00007f01e3256149:   movl   $0x0,0xc(%rsi)
   0.39%       0x00007f01e3256150:   mov    %rsi,%r13                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@0 (line 137)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@2 (line 41)
                                                                         ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                         ; - jdk.incubator.vector.DoubleVector::maskFactory@5 (line 116)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@68 (line 478)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.06%       0x00007f01e3256153:   mov    0x1b8(%r15),%rsi
   0.04%       0x00007f01e325615a:   lea    0x18(%rsi),%rax
   0.09%       0x00007f01e325615e:   xchg   %ax,%ax
   0.31%       0x00007f01e3256160:   cmp    0x1c8(%r15),%rax
               0x00007f01e3256167:   ja     0x00007f01e3256326
   0.08%       0x00007f01e325616d:   mov    %rax,0x1b8(%r15)
   0.19%       0x00007f01e3256174:   prefetchw 0xd8(%rsi)
   0.58%       0x00007f01e325617b:   prefetchw 0x118(%rsi)
   0.57%       0x00007f01e3256182:   prefetchw 0x158(%rsi)
   0.10%       0x00007f01e3256189:   prefetchw 0x198(%rsi)
   0.36%       0x00007f01e3256190:   movq   $0x1,(%rsi)
   1.32%       0x00007f01e3256197:   movl   $0x1b00,0x8(%rsi)            ;   {metadata({type array bool})}
   0.11%       0x00007f01e325619e:   movl   $0x4,0xc(%rsi)
   0.49%       0x00007f01e32561a5:   movq   $0x0,0x10(%rsi)
   0.06%       0x00007f01e32561ad:   mov    %r8b,0x13(%rsi)
   0.39%       0x00007f01e32561b1:   mov    %bpl,0x12(%rsi)
   0.07%       0x00007f01e32561b5:   mov    %dil,0x11(%rsi)
   0.39%       0x00007f01e32561b9:   mov    %r9b,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::prepare@6 (line 563)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::&lt;init&gt;@3 (line 555)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::&lt;init&gt;@3 (line 551)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@5 (line 137)
                                                                         ; - jdk.incubator.vector.Double256Vector::maskFromArray@2 (line 41)
                                                                         ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 328)
                                                                         ; - jdk.incubator.vector.DoubleVector::maskFactory@5 (line 116)
                                                                         ; - jdk.incubator.vector.DoubleVector::bTest@68 (line 478)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61@9 (line 1895)
   0.19%       0x00007f01e32561bd:   mov    %rsi,%rax
   0.03%       0x00007f01e32561c0:   shr    $0x3,%rax
   0.06%       0x00007f01e32561c4:   mov    %eax,0xc(%r13)
   0.32%       0x00007f01e32561c8:   mov    %r13,%rax
   0.09%       0x00007f01e32561cb:   xor    %rsi,%rax
   0.03%       0x00007f01e32561ce:   test   $0xffffffffffe00000,%rax
               0x00007f01e32561d5:   je     0x00007f01e325620b
               0x00007f01e32561db:   nopl   0x0(%rax,%rax,1)
               0x00007f01e32561e0:   test   %rsi,%rsi
               0x00007f01e32561e3:   je     0x00007f01e325620b
               0x00007f01e32561e9:   mov    %r13,%r10
               0x00007f01e32561ec:   shr    $0x9,%r10
               0x00007f01e32561f0:   movabs $0x7f01d6dee000,%r11
               0x00007f01e32561fa:   nopw   0x0(%rax,%rax,1)
               0x00007f01e3256200:   cmpb   $0x2,(%r10,%r11,1)
               0x00007f01e3256205:   jne    0x00007f01e32562ca           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.20%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 
  29.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 
  12.20%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1249 
   5.23%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1249 
   2.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 
   1.37%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1249 
   0.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 
   0.14%              kernel  [unknown] 
   0.12%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%              kernel  [unknown] 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1334 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1336 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   3.26%  <...other 668 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 4, compile id 1281 
  18.80%      jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1249 
   1.53%              kernel  [unknown] 
   0.26%                      <unknown> 
   0.14%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1334 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%           libjvm.so  FreeListAllocator::reset 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 3, compile id 1336 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   1.21%  <...other 221 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.17%      jvmci, level 4
   1.53%              kernel
   1.38%           libjvm.so
   0.26%                    
   0.25%        libc-2.31.so
   0.14%         interpreter
   0.10%         c1, level 3
   0.08%  libpthread-2.31.so
   0.04%              [vdso]
   0.03%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.00%    perf-2113897.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 512)

# Run progress: 87.50% complete, ETA 00:01:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2075.414 ms/op
# Warmup Iteration   2: 725.115 ms/op
# Warmup Iteration   3: 724.291 ms/op
# Warmup Iteration   4: 723.965 ms/op
# Warmup Iteration   5: 723.630 ms/op
Iteration   1: 724.136 ms/op
Iteration   2: 723.852 ms/op
Iteration   3: 724.191 ms/op
Iteration   4: 724.029 ms/op
Iteration   5: 724.221 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  724.086 ±(99.9%) 0.576 ms/op [Average]
  (min, avg, max) = (723.852, 724.086, 724.221), stdev = 0.150
  CI (99.9%): [723.509, 724.662] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 334444 total address lines.
Perf output processed (skipped 61.731 seconds):
 Column 1: cycles (52747 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 

                # parm2:    r8:r8     = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6273277ac0:   mov    0x8(%rsi),%r10d
                0x00007f6273277ac4:   movabs $0x7f61f7000000,%r12
                0x00007f6273277ace:   add    %r12,%r10
                0x00007f6273277ad1:   xor    %r12,%r12
                0x00007f6273277ad4:   cmp    %r10,%rax
                0x00007f6273277ad7:   jne    0x00007f6272c2f080           ;   {runtime_call ic_miss_stub}
                0x00007f6273277add:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.65%        0x00007f6273277ae0:   mov    %eax,-0x14000(%rsp)
   0.28%        0x00007f6273277ae7:   sub    $0x18,%rsp
   0.30%        0x00007f6273277aeb:   nop
   0.32%        0x00007f6273277aec:   cmpl   $0x1,0x20(%r15)
   0.14%        0x00007f6273277af4:   jne    0x00007f62732780ed
   0.13%        0x00007f6273277afa:   mov    %rbp,0x10(%rsp)
   0.28%        0x00007f6273277aff:   mov    %rdx,%r10                    ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@0
   0.33%        0x00007f6273277b02:   cmpl   $0x10c4910,0x8(%r10)         ; implicit exception: dispatches to 0x00007f6273278111
                                                                          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.15%        0x00007f6273277b0a:   jne    0x00007f6273278099           ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@0
   0.13%        0x00007f6273277b10:   cmpl   $0x10c4910,0x8(%rcx)         ; implicit exception: dispatches to 0x00007f6273278134
                                                                          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.31%        0x00007f6273277b17:   jne    0x00007f6273277ff8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@5
   0.37%        0x00007f6273277b1d:   data16 xchg %ax,%ax
   0.08%        0x00007f6273277b20:   test   %r8,%r8
                0x00007f6273277b23:   je     0x00007f6273277ea6
   0.04%        0x00007f6273277b29:   mov    0x8(%r8),%esi
   0.09%        0x00007f6273277b2d:   movabs $0x7f61f7000000,%rax
   0.01%        0x00007f6273277b37:   lea    (%rax,%rsi,1),%rsi
   0.03%        0x00007f6273277b3b:   mov    0x48(%rsi),%rsi
   0.19%        0x00007f6273277b3f:   movabs $0x7f61f80c3208,%rax         ;   {metadata(&apos;jdk/incubator/vector/VectorMask&apos;)}
   0.08%        0x00007f6273277b49:   cmp    %rsi,%rax
   0.06%        0x00007f6273277b4c:   sete   %sil
   0.08%        0x00007f6273277b50:   movzbl %sil,%esi
   0.78%        0x00007f6273277b54:   test   %r8,%r8
          ╭     0x00007f6273277b57:   je     0x00007f6273277b68
   0.02%  │     0x00007f6273277b5d:   data16 xchg %ax,%ax
   0.00%  │     0x00007f6273277b60:   test   %esi,%esi
          │     0x00007f6273277b62:   je     0x00007f627327801e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@9
   0.71%  ↘     0x00007f6273277b68:   test   %r8,%r8
                0x00007f6273277b6b:   je     0x00007f6273277e9a
   0.14%        0x00007f6273277b71:   mov    0x8(%r8),%esi
   0.01%        0x00007f6273277b75:   movabs $0x7f61f7000000,%rax
   0.01%        0x00007f6273277b7f:   lea    (%rax,%rsi,1),%rsi
   0.75%        0x00007f6273277b83:   test   %r8,%r8
           ╭    0x00007f6273277b86:   je     0x00007f6273277b9f
   0.13%   │    0x00007f6273277b8c:   movabs $0x7f61f80c4f80,%rax         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.02%   │    0x00007f6273277b96:   cmp    %rsi,%rax
           │    0x00007f6273277b99:   jne    0x00007f627327804d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 213)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
           │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.70%   ↘    0x00007f6273277b9f:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.01%        0x00007f6273277ba3:   test   %r11d,%r11d
                0x00007f6273277ba6:   je     0x00007f6273277eb0
   0.14%        0x00007f6273277bac:   mov    0x8(,%r11,8),%esi
   0.61%        0x00007f6273277bb4:   movabs $0x7f61f7000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@20 (line 227)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.38%        0x00007f6273277bbe:   lea    (%rax,%rsi,1),%rsi
   0.34%        0x00007f6273277bc2:   movabs $0x7f61f70020d0,%r9          ;   {metadata({type array double})}
   0.13%        0x00007f6273277bcc:   test   %r11d,%r11d
            ╭   0x00007f6273277bcf:   je     0x00007f6273277bde
   0.02%    │   0x00007f6273277bd5:   cmp    %rsi,%r9
            │   0x00007f6273277bd8:   jne    0x00007f62732780a5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
            │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.73%    ↘   0x00007f6273277bde:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@0
   0.01%        0x00007f6273277be0:   cmpl   $0x4,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007f6273278157
   0.17%        0x00007f6273277be9:   jb     0x00007f6273278055           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.87%        0x00007f6273277bef:   mov    0xc(%rcx),%ebx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.00%        0x00007f6273277bf2:   test   %ebx,%ebx
                0x00007f6273277bf4:   je     0x00007f6273277e8e
   0.01%        0x00007f6273277bfa:   mov    0x8(,%rbx,8),%esi
   0.32%        0x00007f6273277c01:   movabs $0x7f61f7000000,%rax
   0.66%        0x00007f6273277c0b:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@29 (line 228)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.16%        0x00007f6273277c0f:   test   %ebx,%ebx
             ╭  0x00007f6273277c11:   je     0x00007f6273277c20
   0.00%     │  0x00007f6273277c17:   cmp    %rsi,%r9
             │  0x00007f6273277c1a:   jne    0x00007f6273277fd3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.83%     ↘  0x00007f6273277c20:   test   %r8,%r8
                0x00007f6273277c23:   jne    0x00007f6273277db1           ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@0
   0.41%        0x00007f6273277c29:   cmpl   $0x4,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f627327817a
   0.03%        0x00007f6273277c31:   jb     0x00007f62732780b0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.34%        0x00007f6273277c37:   vmovsd 0x10(,%r11,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.36%        0x00007f6273277c41:   vaddsd 0x10(,%rbx,8),%xmm0,%xmm0    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   2.16%        0x00007f6273277c4a:   vmovsd 0x18(,%r11,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
                0x00007f6273277c54:   vaddsd 0x18(,%rbx,8),%xmm1,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.71%        0x00007f6273277c5d:   vmovsd 0x20(,%r11,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.00%        0x00007f6273277c67:   vaddsd 0x20(,%rbx,8),%xmm2,%xmm2    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.46%        0x00007f6273277c70:   vmovsd 0x28(,%r11,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.27%        0x00007f6273277c7a:   vaddsd 0x28(,%rbx,8),%xmm3,%xmm3    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$38@2 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d1290::apply@4
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.28%        0x00007f6273277c83:   mov    0x1b8(%r15),%rsi
   0.18%        0x00007f6273277c8a:   lea    0x10(%rsi),%rax
   0.43%        0x00007f6273277c8e:   cmp    0x1c8(%r15),%rax
                0x00007f6273277c95:   ja     0x00007f6273277f2a
   0.27%        0x00007f6273277c9b:   mov    %rax,0x1b8(%r15)
   0.02%        0x00007f6273277ca2:   prefetchw 0xd0(%rsi)
   0.18%        0x00007f6273277ca9:   movq   $0x1,(%rsi)
   0.53%        0x00007f6273277cb0:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.66%        0x00007f6273277cb7:   movl   $0x0,0xc(%rsi)
   0.47%        0x00007f6273277cbe:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 210)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.09%        0x00007f6273277cc1:   mov    0x1b8(%r15),%rsi
   0.25%        0x00007f6273277cc8:   lea    0x30(%rsi),%rax
   0.84%        0x00007f6273277ccc:   cmp    0x1c8(%r15),%rax
                0x00007f6273277cd3:   ja     0x00007f6273277f0b
   0.77%        0x00007f6273277cd9:   mov    %rax,0x1b8(%r15)
   0.91%        0x00007f6273277ce0:   prefetchw 0xf0(%rsi)
   1.56%        0x00007f6273277ce7:   prefetchw 0x130(%rsi)
   0.18%        0x00007f6273277cee:   prefetchw 0x170(%rsi)
   0.67%        0x00007f6273277cf5:   prefetchw 0x1b0(%rsi)
   0.45%        0x00007f6273277cfc:   movq   $0x1,(%rsi)
   1.35%        0x00007f6273277d03:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   2.74%        0x00007f6273277d0a:   movl   $0x4,0xc(%rsi)
   0.16%        0x00007f6273277d11:   movq   $0x0,0x10(%rsi)
   0.96%        0x00007f6273277d19:   movq   $0x0,0x18(%rsi)
   0.43%        0x00007f6273277d21:   movq   $0x0,0x20(%rsi)
   0.46%        0x00007f6273277d29:   movq   $0x0,0x28(%rsi)
   1.08%        0x00007f6273277d31:   vmovsd %xmm3,0x28(%rsi)
   0.46%        0x00007f6273277d36:   vmovsd %xmm2,0x20(%rsi)
   0.47%        0x00007f6273277d3b:   vmovsd %xmm1,0x18(%rsi)
   0.32%        0x00007f6273277d40:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39@8 (line 821)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d0e80::apply@12
   0.41%        0x00007f6273277d45:   mov    %rsi,%rax
   0.09%        0x00007f6273277d48:   shr    $0x3,%rax
   0.20%        0x00007f6273277d4c:   mov    %eax,0xc(%r11)
   0.14%        0x00007f6273277d50:   mov    %r11,%rax
   0.43%        0x00007f6273277d53:   xor    %rsi,%rax
   0.11%        0x00007f6273277d56:   data16 nopw 0x0(%rax,%rax,1)
   0.21%        0x00007f6273277d60:   test   $0xffffffffffe00000,%rax
                0x00007f6273277d67:   je     0x00007f6273277d92
                0x00007f6273277d6d:   test   %rsi,%rsi
                0x00007f6273277d70:   je     0x00007f6273277d92
                0x00007f6273277d76:   mov    %r11,%r10
                0x00007f6273277d79:   shr    $0x9,%r10
                0x00007f6273277d7d:   movabs $0x7f62668c8000,%r8
                0x00007f6273277d87:   cmpb   $0x2,(%r10,%r8,1)
   0.00%        0x00007f6273277d8c:   jne    0x00007f6273277ebc           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  36.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 

   0.13%        0x00007f6273278fa0:   test   %r8,%r8
                0x00007f6273278fa3:   je     0x00007f6273279326
                0x00007f6273278fa9:   mov    0x8(%r8),%esi
                0x00007f6273278fad:   movabs $0x7f61f7000000,%rax
                0x00007f6273278fb7:   lea    (%rax,%rsi,1),%rsi
                0x00007f6273278fbb:   mov    0x48(%rsi),%rsi
                0x00007f6273278fbf:   movabs $0x7f61f80c3208,%rax         ;   {metadata(&apos;jdk/incubator/vector/VectorMask&apos;)}
                0x00007f6273278fc9:   cmp    %rsi,%rax
                0x00007f6273278fcc:   sete   %sil
                0x00007f6273278fd0:   movzbl %sil,%esi
   0.44%        0x00007f6273278fd4:   test   %r8,%r8
          ╭     0x00007f6273278fd7:   je     0x00007f6273278fe8
          │     0x00007f6273278fdd:   data16 xchg %ax,%ax
          │     0x00007f6273278fe0:   test   %esi,%esi
          │     0x00007f6273278fe2:   je     0x00007f627327949e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@9
   0.53%  ↘     0x00007f6273278fe8:   test   %r8,%r8
                0x00007f6273278feb:   je     0x00007f627327931a
                0x00007f6273278ff1:   mov    0x8(%r8),%esi
                0x00007f6273278ff5:   movabs $0x7f61f7000000,%rax
                0x00007f6273278fff:   lea    (%rax,%rsi,1),%rsi
   0.56%        0x00007f6273279003:   test   %r8,%r8
           ╭    0x00007f6273279006:   je     0x00007f627327901f
           │    0x00007f627327900c:   movabs $0x7f61f80c4f80,%rax         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
           │    0x00007f6273279016:   cmp    %rsi,%rax
           │    0x00007f6273279019:   jne    0x00007f62732794cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 213)
           │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
           │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.53%   ↘    0x00007f627327901f:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
                0x00007f6273279023:   test   %r11d,%r11d
                0x00007f6273279026:   je     0x00007f6273279330
                0x00007f627327902c:   mov    0x8(,%r11,8),%esi
   0.90%        0x00007f6273279034:   movabs $0x7f61f7000000,%rax         ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@20 (line 227)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.11%        0x00007f627327903e:   lea    (%rax,%rsi,1),%rsi
   0.43%        0x00007f6273279042:   movabs $0x7f61f70020d0,%r9          ;   {metadata({type array double})}
                0x00007f627327904c:   test   %r11d,%r11d
            ╭   0x00007f627327904f:   je     0x00007f627327905e
            │   0x00007f6273279055:   cmp    %rsi,%r9
            │   0x00007f6273279058:   jne    0x00007f6273279525           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 205)
            │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
            │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   1.04%    ↘   0x00007f627327905e:   xchg   %ax,%ax                      ; ImmutableOopMap {rcx=Oop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@0
                0x00007f6273279060:   cmpl   $0x4,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007f62732795d7
   0.94%        0x00007f6273279069:   jb     0x00007f62732794d5           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.55%        0x00007f627327906f:   mov    0xc(%rcx),%ebx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@4 (line 164)
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
                0x00007f6273279072:   test   %ebx,%ebx
                0x00007f6273279074:   je     0x00007f627327930e
   0.00%        0x00007f627327907a:   mov    0x8(,%rbx,8),%esi
   1.10%        0x00007f6273279081:   movabs $0x7f61f7000000,%rax
   0.03%        0x00007f627327908b:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@29 (line 228)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.51%        0x00007f627327908f:   test   %ebx,%ebx
             ╭  0x00007f6273279091:   je     0x00007f62732790a0
             │  0x00007f6273279097:   cmp    %rsi,%r9
             │  0x00007f627327909a:   jne    0x00007f6273279453           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 206)
             │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
             │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
             │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
             │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.53%     ↘  0x00007f62732790a0:   test   %r8,%r8
                0x00007f62732790a3:   jne    0x00007f6273279231           ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r8=Oop r10=Oop r11=NarrowOop }
                                                                          ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@0
   0.03%        0x00007f62732790a9:   cmpl   $0x4,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f62732795fa
                0x00007f62732790b1:   jb     0x00007f6273279530           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 231)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.52%        0x00007f62732790b7:   vmovsd 0x10(,%r11,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.03%        0x00007f62732790c1:   vmulsd 0x10(,%rbx,8),%xmm0,%xmm0    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   1.89%        0x00007f62732790ca:   vmovsd 0x18(,%r11,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
                0x00007f62732790d4:   vmulsd 0x18(,%rbx,8),%xmm1,%xmm1    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.54%        0x00007f62732790dd:   vmovsd 0x20(,%r11,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
                0x00007f62732790e7:   vmulsd 0x20(,%rbx,8),%xmm2,%xmm2    ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.49%        0x00007f62732790f0:   vmovsd 0x28(,%r11,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.00%        0x00007f62732790fa:   vmulsd 0x28(,%rbx,8),%xmm3,%xmm3    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$42@2 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d1af0::apply@4
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 208)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.50%        0x00007f6273279103:   mov    0x1b8(%r15),%rsi
   0.01%        0x00007f627327910a:   lea    0x10(%rsi),%rax
                0x00007f627327910e:   cmp    0x1c8(%r15),%rax
                0x00007f6273279115:   ja     0x00007f62732793aa
   0.52%        0x00007f627327911b:   mov    %rax,0x1b8(%r15)
                0x00007f6273279122:   prefetchw 0xd0(%rsi)
   0.02%        0x00007f6273279129:   movq   $0x1,(%rsi)
   0.00%        0x00007f6273279130:   movl   $0x10c4910,0x8(%rsi)         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.77%        0x00007f6273279137:   movl   $0x0,0xc(%rsi)
   0.32%        0x00007f627327913e:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 210)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.01%        0x00007f6273279141:   mov    0x1b8(%r15),%rsi
   0.25%        0x00007f6273279148:   lea    0x30(%rsi),%rax
   0.71%        0x00007f627327914c:   cmp    0x1c8(%r15),%rax
                0x00007f6273279153:   ja     0x00007f627327938b
   0.56%        0x00007f6273279159:   mov    %rax,0x1b8(%r15)
   0.53%        0x00007f6273279160:   prefetchw 0xf0(%rsi)
   0.85%        0x00007f6273279167:   prefetchw 0x130(%rsi)
   0.04%        0x00007f627327916e:   prefetchw 0x170(%rsi)
   0.51%        0x00007f6273279175:   prefetchw 0x1b0(%rsi)
   0.32%        0x00007f627327917c:   movq   $0x1,(%rsi)
                0x00007f6273279183:   movl   $0x20d0,0x8(%rsi)            ;   {metadata({type array double})}
   2.17%        0x00007f627327918a:   movl   $0x4,0xc(%rsi)
   1.25%        0x00007f6273279191:   movq   $0x0,0x10(%rsi)
   0.04%        0x00007f6273279199:   movq   $0x0,0x18(%rsi)
   0.13%        0x00007f62732791a1:   movq   $0x0,0x20(%rsi)
   0.23%        0x00007f62732791a9:   movq   $0x0,0x28(%rsi)
   0.60%        0x00007f62732791b1:   vmovsd %xmm3,0x28(%rsi)
   0.05%        0x00007f62732791b6:   vmovsd %xmm2,0x20(%rsi)
   0.57%        0x00007f62732791bb:   vmovsd %xmm1,0x18(%rsi)
   0.00%        0x00007f62732791c0:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 204)
                                                                          ; - jdk.incubator.vector.DoubleVector::bOpTemplate@7 (line 224)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                          ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                          ; - jdk.incubator.vector.DoubleVector::lambda$binaryOperations$43@8 (line 825)
                                                                          ; - jdk.incubator.vector.DoubleVector$$Lambda/0x00007f61f80d18d8::apply@12
   0.09%        0x00007f62732791c5:   mov    %rsi,%rax
   0.01%        0x00007f62732791c8:   shr    $0x3,%rax
   0.39%        0x00007f62732791cc:   mov    %eax,0xc(%r11)
   0.01%        0x00007f62732791d0:   mov    %r11,%rax
   0.11%        0x00007f62732791d3:   xor    %rsi,%rax
   0.02%        0x00007f62732791d6:   data16 nopw 0x0(%rax,%rax,1)
   0.35%        0x00007f62732791e0:   test   $0xffffffffffe00000,%rax
                0x00007f62732791e7:   je     0x00007f6273279212
                0x00007f62732791ed:   test   %rsi,%rsi
                0x00007f62732791f0:   je     0x00007f6273279212
                0x00007f62732791f6:   mov    %r11,%r10
                0x00007f62732791f9:   shr    $0x9,%r10
                0x00007f62732791fd:   movabs $0x7f62668c8000,%r8
                0x00007f6273279207:   cmpb   $0x2,(%r10,%r8,1)
                0x00007f627327920c:   jne    0x00007f627327933c           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                          ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  23.67%  <total for region 2>

....[Hottest Regions]...............................................................................
  36.21%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 
  23.67%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
   6.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276 
   5.79%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1234 
   5.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276 
   5.16%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 
   3.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276 
   2.24%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1234 
   2.16%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 
   1.98%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
   1.28%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
   0.79%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
   0.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1327 
   0.41%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1234 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276 
   0.29%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1326 
   2.65%  <...other 606 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.54%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 
  27.72%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
  16.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276 
   8.44%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$61, version 2, compile id 1234 
   1.62%               kernel  [unknown] 
   0.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1327 
   0.11%                       <unknown> 
   0.09%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1326 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$binaryOperations$39, version 2, compile id 1269 
   0.05%         libc-2.31.so  __memset_avx2_erms 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%          interpreter  dload  24 dload  
   0.02%            libjvm.so  ObjAllocator::initialize 
   0.02%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.88%  <...other 251 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.95%       jvmci, level 4
   1.62%               kernel
   0.73%            libjvm.so
   0.17%         libc-2.31.so
   0.12%          interpreter
   0.12%  libjvmcicompiler.so
   0.11%                     
   0.10%          c1, level 3
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:42

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

Benchmark                                    (iterations)  (size)  Mode  Cnt    Score   Error  Units
MandelbrotVectorApiBenchmark.baseline                1000     256  avgt    5   32.916 ± 0.001  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                1000     512  avgt    5  131.292 ± 0.031  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                2000     256  avgt    5   64.634 ± 0.005  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                2000     512  avgt    5  258.052 ± 0.016  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized              1000     256  avgt    5   35.103 ± 0.118  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized              1000     512  avgt    5  366.090 ± 0.920  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized              2000     256  avgt    5   68.963 ± 1.025  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized              2000     512  avgt    5  724.086 ± 0.576  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     512  avgt           NaN            ---
