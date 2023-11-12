# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 33.821 ms/op
# Warmup Iteration   2: 33.367 ms/op
# Warmup Iteration   3: 33.366 ms/op
# Warmup Iteration   4: 33.366 ms/op
# Warmup Iteration   5: 33.368 ms/op
Iteration   1: 33.368 ms/op
Iteration   2: 33.368 ms/op
Iteration   3: 33.378 ms/op
Iteration   4: 33.361 ms/op
Iteration   5: 33.362 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  33.367 ±(99.9%) 0.027 ms/op [Average]
  (min, avg, max) = (33.361, 33.367, 33.378), stdev = 0.007
  CI (99.9%): [33.340, 33.394] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 322210 total address lines.
Perf output processed (skipped 61.138 seconds):
 Column 1: cycles (56240 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 4, compile id 1010 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@62 (line 82)
                     0x00007f97ced8080c:   vmulsd %xmm1,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@66 (line 82)
                     0x00007f97ced80810:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                     0x00007f97ced80814:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                     0x00007f97ced80818:   mov    $0x0,%ebx
                     0x00007f97ced8081d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.01%        ↗ ↗  0x00007f97ced80820:   cmp    %ebx,%r11d
          ╭     │ │  0x00007f97ced80823:   jle    0x00007f97ced808d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.03%  │     │ │  0x00007f97ced80829:   mov    %ebx,%edi
   0.01%  │     │ │  0x00007f97ced8082b:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.01%  │     │ │  0x00007f97ced8082d:   vxorpd %xmm8,%xmm8,%xmm8
          │     │ │  0x00007f97ced80832:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.06%  │     │ │  0x00007f97ced80836:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.00%  │     │ │  0x00007f97ced8083a:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.01%  │     │ │  0x00007f97ced8083e:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.07%  │     │ │  0x00007f97ced80842:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.03%  │     │ │  0x00007f97ced80846:   mov    $0x1,%r13d
   0.01%  │     │ │  0x00007f97ced8084c:   vmovupd %xmm7,%xmm10
   0.00%  │╭    │ │  0x00007f97ced80850:   jmp    0x00007f97ced80883           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          ││    │ │  0x00007f97ced80855:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   5.56%  ││  ↗ │ │  0x00007f97ced80860:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.02%  ││  │ │ │  0x00007f97ced80863:   cmp    %r13d,%r8d
          ││╭ │ │ │  0x00007f97ced80866:   jle    0x00007f97ced8089f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.03%  │││ │ │ │  0x00007f97ced8086c:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   0.97%  │││ │ │ │  0x00007f97ced80870:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   5.74%  │││ │ │ │  0x00007f97ced80875:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.04%  │││ │ │ │  0x00007f97ced80879:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.02%  │││ │ │ │  0x00007f97ced8087e:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   3.21%  │↘│ │ │ │  0x00007f97ced80883:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  23.07%  │ │ │ │ │  0x00007f97ced80888:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.83%  │ │ │ │ │  0x00007f97ced8088d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  26.50%  │ │ │ │ │  0x00007f97ced80892:   vucomisd %xmm1,%xmm13
  11.59%  │ │╭│ │ │  0x00007f97ced80896:   jp     0x00007f97ced8089a
   7.49%  │ ││╰ │ │  0x00007f97ced80898:   jbe    0x00007f97ced80860
   0.07%  │ │↘ ╭│ │  0x00007f97ced8089a:   jmp    0x00007f97ced808b5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.01%  │ ↘  ││↗│  0x00007f97ced8089f:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │    ││││  0x00007f97ced808a5:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │    ││││  0x00007f97ced808ac:   test   %eax,(%rdi)                  ;   {poll}
          │    ││││  0x00007f97ced808ae:   inc    %ebx
   0.00%  │    │╰││  0x00007f97ced808b0:   jmp    0x00007f97ced80820           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.02%  │    ↘ ││  0x00007f97ced808b5:   cmp    %r13d,%r8d
          │      ╰│  0x00007f97ced808b8:   jle    0x00007f97ced8089f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.01%  │       │  0x00007f97ced808ba:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.03%  │       │  0x00007f97ced808c0:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.04%  │       │  0x00007f97ced808c7:   test   %eax,(%rdi)                  ;   {poll}
   0.01%  │       │  0x00007f97ced808c9:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.00%  │       ╰  0x00007f97ced808cb:   jmp    0x00007f97ced80820           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
          ↘          0x00007f97ced808d0:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                               ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007f97ced808d7:   test   %eax,(%rcx)                  ;   {poll}
                     0x00007f97ced808d9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007f97ced808dc:   nopl   0x0(%rax)
                     0x00007f97ced808e0:   cmp    %r9d,%r11d
....................................................................................................
  88.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 4, compile id 1010 
   1.16%               kernel  [unknown] 
   1.13%               kernel  [unknown] 
   1.12%               kernel  [unknown] 
   0.80%               kernel  [unknown] 
   0.20%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%            libjvm.so  ElfSymbolTable::lookup 
   0.10%               kernel  [unknown] 
   0.09%           ld-2.31.so  __tls_get_addr 
   0.09%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%            libjvm.so  xmlStream::write_text 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%            libjvm.so  xmlStream::write_text 
   0.06%            libjvm.so  stringStream::write 
   0.06%   libpthread-2.31.so  __libc_write 
   5.82%  <...other 1337 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 4, compile id 1010 
   7.07%               kernel  [unknown] 
   0.25%         libc-2.31.so  __vfprintf_internal 
   0.20%                       <unknown> 
   0.16%            libjvm.so  xmlStream::write_text 
   0.11%         libc-2.31.so  _IO_fwrite 
   0.10%            libjvm.so  ElfSymbolTable::lookup 
   0.10%            libjvm.so  defaultStream::write 
   0.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1217 
   0.09%           ld-2.31.so  __tls_get_addr 
   0.09%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%         libc-2.31.so  _IO_default_xsputn 
   0.09%       hsdis-amd64.so  print_insn 
   0.08%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1326 
   0.07%         libc-2.31.so  __strchr_avx2 
   0.07%            libjvm.so  stringStream::write 
   0.07%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.07%         libc-2.31.so  __vsnprintf_internal 
   0.06%         libc-2.31.so  __strchrnul_avx2 
   0.06%          interpreter  invokevirtual  182 invokevirtual  
   2.53%  <...other 575 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.76%       jvmci, level 4
   7.07%               kernel
   1.30%            libjvm.so
   1.13%         libc-2.31.so
   0.54%  libjvmcicompiler.so
   0.35%          interpreter
   0.20%                     
   0.20%       hsdis-amd64.so
   0.15%          c1, level 3
   0.15%   libpthread-2.31.so
   0.09%           ld-2.31.so
   0.03%     perf-2133996.map
   0.01%               [vdso]
   0.00%     Unknown, level 0
   0.00%          c1, level 1
   0.00%       libz.so.1.2.11
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 134.972 ms/op
# Warmup Iteration   2: 133.119 ms/op
# Warmup Iteration   3: 133.120 ms/op
# Warmup Iteration   4: 133.115 ms/op
# Warmup Iteration   5: 133.111 ms/op
Iteration   1: 133.106 ms/op
Iteration   2: 133.099 ms/op
Iteration   3: 133.094 ms/op
Iteration   4: 133.094 ms/op
Iteration   5: 133.092 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  133.097 ±(99.9%) 0.022 ms/op [Average]
  (min, avg, max) = (133.092, 133.097, 133.106), stdev = 0.006
  CI (99.9%): [133.075, 133.119] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 320472 total address lines.
Perf output processed (skipped 61.480 seconds):
 Column 1: cycles (57010 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 995 

                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
                     0x00007f093ad81e7f:   vxorpd %xmm6,%xmm6,%xmm6
                     0x00007f093ad81e83:   vcvtsi2sd %r9d,%xmm6,%xmm6          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@52 (line 82)
                     0x00007f093ad81e88:   vsubsd %xmm4,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@62 (line 82)
                     0x00007f093ad81e8c:   vmulsd %xmm1,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@66 (line 82)
                     0x00007f093ad81e90:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
   0.00%             0x00007f093ad81e94:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                     0x00007f093ad81e98:   mov    $0x0,%ebx
                     0x00007f093ad81e9d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.01%        ↗ ↗  0x00007f093ad81ea0:   cmp    %ebx,%r11d
          ╭     │ │  0x00007f093ad81ea3:   jle    0x00007f093ad81f50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.02%  │     │ │  0x00007f093ad81ea9:   mov    %ebx,%edi
   0.01%  │     │ │  0x00007f093ad81eab:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.01%  │     │ │  0x00007f093ad81ead:   vxorpd %xmm8,%xmm8,%xmm8
   0.01%  │     │ │  0x00007f093ad81eb2:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.06%  │     │ │  0x00007f093ad81eb6:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.01%  │     │ │  0x00007f093ad81eba:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.01%  │     │ │  0x00007f093ad81ebe:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.10%  │     │ │  0x00007f093ad81ec2:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.04%  │     │ │  0x00007f093ad81ec6:   mov    $0x1,%r13d
   0.01%  │     │ │  0x00007f093ad81ecc:   vmovupd %xmm7,%xmm10
   0.01%  │╭    │ │  0x00007f093ad81ed0:   jmp    0x00007f093ad81f03           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          ││    │ │  0x00007f093ad81ed5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   5.57%  ││  ↗ │ │  0x00007f093ad81ee0:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.03%  ││  │ │ │  0x00007f093ad81ee3:   cmp    %r13d,%r8d
          ││╭ │ │ │  0x00007f093ad81ee6:   jle    0x00007f093ad81f1f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.02%  │││ │ │ │  0x00007f093ad81eec:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   0.94%  │││ │ │ │  0x00007f093ad81ef0:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   5.85%  │││ │ │ │  0x00007f093ad81ef5:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.02%  │││ │ │ │  0x00007f093ad81ef9:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.02%  │││ │ │ │  0x00007f093ad81efe:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   3.40%  │↘│ │ │ │  0x00007f093ad81f03:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  22.51%  │ │ │ │ │  0x00007f093ad81f08:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.91%  │ │ │ │ │  0x00007f093ad81f0d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  26.48%  │ │ │ │ │  0x00007f093ad81f12:   vucomisd %xmm1,%xmm13
  11.57%  │ │╭│ │ │  0x00007f093ad81f16:   jp     0x00007f093ad81f1a
   7.37%  │ ││╰ │ │  0x00007f093ad81f18:   jbe    0x00007f093ad81ee0
   0.06%  │ │↘ ╭│ │  0x00007f093ad81f1a:   jmp    0x00007f093ad81f35           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.01%  │ ↘  ││↗│  0x00007f093ad81f1f:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │    ││││  0x00007f093ad81f25:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │    ││││  0x00007f093ad81f2c:   test   %eax,(%rdi)                  ;   {poll}
          │    ││││  0x00007f093ad81f2e:   inc    %ebx
   0.01%  │    │╰││  0x00007f093ad81f30:   jmp    0x00007f093ad81ea0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.03%  │    ↘ ││  0x00007f093ad81f35:   cmp    %r13d,%r8d
          │      ╰│  0x00007f093ad81f38:   jle    0x00007f093ad81f1f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.01%  │       │  0x00007f093ad81f3a:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.02%  │       │  0x00007f093ad81f40:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.04%  │       │  0x00007f093ad81f47:   test   %eax,(%rdi)                  ;   {poll}
   0.02%  │       │  0x00007f093ad81f49:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │       ╰  0x00007f093ad81f4b:   jmp    0x00007f093ad81ea0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
          ↘          0x00007f093ad81f50:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                               ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007f093ad81f57:   test   %eax,(%rcx)                  ;   {poll}
                     0x00007f093ad81f59:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007f093ad81f5c:   nopl   0x0(%rax)
....................................................................................................
  88.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 995 
   1.17%              kernel  [unknown] 
   1.16%              kernel  [unknown] 
   1.06%              kernel  [unknown] 
   0.72%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.10%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%  libpthread-2.31.so  __libc_write 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  fileStream::flush 
   0.07%        libc-2.31.so  _IO_default_xsputn 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  xmlStream::write_text 
   0.06%              kernel  [unknown] 
   6.20%  <...other 1459 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 995 
   7.12%              kernel  [unknown] 
   0.92%                      <unknown> 
   0.20%        libc-2.31.so  __vfprintf_internal 
   0.13%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1205 
   0.13%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1294 
   0.13%           libjvm.so  xmlStream::write_text 
   0.12%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1226 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.11%           libjvm.so  defaultStream::write 
   0.11%        libc-2.31.so  _IO_default_xsputn 
   0.10%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%  libpthread-2.31.so  __libc_write 
   0.08%      hsdis-amd64.so  print_insn 
   0.08%           libjvm.so  fileStream::flush 
   0.08%        libc-2.31.so  _IO_fwrite 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.07%         interpreter  return entry points  
   0.07%        libc-2.31.so  __strchrnul_avx2 
   0.07%         interpreter  invokevirtual  182 invokevirtual  
   2.01%  <...other 340 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.60%      jvmci, level 4
   7.12%              kernel
   1.25%           libjvm.so
   1.06%        libc-2.31.so
   0.92%                    
   0.41%         interpreter
   0.21%         c1, level 3
   0.15%      hsdis-amd64.so
   0.15%  libpthread-2.31.so
   0.08%          ld-2.31.so
   0.03%    perf-2134075.map
   0.01%         c1, level 2
   0.01%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:12:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 66.948 ms/op
# Warmup Iteration   2: 65.816 ms/op
# Warmup Iteration   3: 65.818 ms/op
# Warmup Iteration   4: 65.818 ms/op
# Warmup Iteration   5: 65.818 ms/op
Iteration   1: 65.816 ms/op
Iteration   2: 65.818 ms/op
Iteration   3: 65.817 ms/op
Iteration   4: 65.818 ms/op
Iteration   5: 65.819 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  65.818 ±(99.9%) 0.004 ms/op [Average]
  (min, avg, max) = (65.816, 65.818, 65.819), stdev = 0.001
  CI (99.9%): [65.814, 65.821] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 318338 total address lines.
Perf output processed (skipped 61.035 seconds):
 Column 1: cycles (56608 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 994 

                    0x00007f6a9ed84126:   movslq %edi,%rdx
                    0x00007f6a9ed84129:   add    %r9,%rdx
                    0x00007f6a9ed8412c:   cmp    %rdx,%rcx
                    0x00007f6a9ed8412f:   jbe    0x00007f6a9ed843a2
                    0x00007f6a9ed84135:   cmp    %edi,%r10d
                    0x00007f6a9ed84138:   jbe    0x00007f6a9ed843a2           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
                    0x00007f6a9ed8413e:   vxorpd %xmm6,%xmm6,%xmm6
                    0x00007f6a9ed84142:   vcvtsi2sd %ebx,%xmm6,%xmm6          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@52 (line 82)
   0.00%            0x00007f6a9ed84146:   vsubsd %xmm4,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@62 (line 82)
                    0x00007f6a9ed8414a:   vmulsd %xmm1,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@66 (line 82)
                    0x00007f6a9ed8414e:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
   0.00%            0x00007f6a9ed84152:   mov    $0x0,%edx
                    0x00007f6a9ed84157:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
   0.00%        ↗↗  0x00007f6a9ed84160:   cmp    %edx,%r11d
          ╭     ││  0x00007f6a9ed84163:   jle    0x00007f6a9ed84217           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.03%  │     ││  0x00007f6a9ed84169:   vxorpd %xmm7,%xmm7,%xmm7
   0.01%  │     ││  0x00007f6a9ed8416d:   vcvtsi2sd %edx,%xmm7,%xmm7          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.01%  │     ││  0x00007f6a9ed84171:   vsubsd %xmm4,%xmm7,%xmm7            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.03%  │     ││  0x00007f6a9ed84175:   vmulsd %xmm1,%xmm7,%xmm7            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
   0.02%  │     ││  0x00007f6a9ed84179:   vdivsd %xmm2,%xmm7,%xmm7            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.03%  │     ││  0x00007f6a9ed8417d:   mov    %edx,%ebp
   0.00%  │     ││  0x00007f6a9ed8417f:   add    %edi,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.02%  │     ││  0x00007f6a9ed84181:   mov    $0x0,%r13d
   0.00%  │     ││  0x00007f6a9ed84187:   vmovupd %xmm5,%xmm9
   0.01%  │     ││  0x00007f6a9ed8418b:   vmovupd %xmm5,%xmm8
          │╭    ││  0x00007f6a9ed8418f:   jmp    0x00007f6a9ed841c4           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          ││    ││  0x00007f6a9ed84194:   nopl   0x0(%rax,%rax,1)
          ││    ││  0x00007f6a9ed8419c:   data16 data16 xchg %ax,%ax          ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   5.50%  ││  ↗ ││  0x00007f6a9ed841a0:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.03%  ││  │ ││  0x00007f6a9ed841a3:   cmp    %r13d,%r8d
          ││╭ │ ││  0x00007f6a9ed841a6:   jle    0x00007f6a9ed84200           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.03%  │││ │ ││  0x00007f6a9ed841ac:   vmulsd %xmm3,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   1.01%  │││ │ ││  0x00007f6a9ed841b0:   vmulsd %xmm9,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   5.84%  │││ │ ││  0x00007f6a9ed841b5:   vaddsd %xmm8,%xmm6,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.11%  │││ │ ││  0x00007f6a9ed841ba:   vsubsd %xmm11,%xmm10,%xmm8          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.03%  │││ │ ││  0x00007f6a9ed841bf:   vaddsd %xmm8,%xmm7,%xmm8            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   3.33%  │↘│ │ ││  0x00007f6a9ed841c4:   vmulsd %xmm8,%xmm8,%xmm10           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  22.54%  │ │ │ ││  0x00007f6a9ed841c9:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.89%  │ │ │ ││  0x00007f6a9ed841ce:   vaddsd %xmm11,%xmm10,%xmm12         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  26.42%  │ │ │ ││  0x00007f6a9ed841d3:   vucomisd %xmm1,%xmm12
  11.58%  │ │╭│ ││  0x00007f6a9ed841d7:   jp     0x00007f6a9ed841db
   7.36%  │ ││╰ ││  0x00007f6a9ed841d9:   jbe    0x00007f6a9ed841a0           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.05%  │ │↘  ││  0x00007f6a9ed841db:   nopl   0x0(%rax,%rax,1)
   0.01%  │ │   ││  0x00007f6a9ed841e0:   cmp    %r13d,%r8d
          │ │  ╭││  0x00007f6a9ed841e3:   jle    0x00007f6a9ed84200           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
          │ │  │││                                                            ;   {no_reloc}
   0.02%  │ │  │││  0x00007f6a9ed841e9:   vmovsd %xmm5,0x10(%rax,%rbp,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%  │ │  │││  0x00007f6a9ed841ef:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │  │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.02%  │ │  │││  0x00007f6a9ed841f6:   test   %eax,0x0(%rbp)               ;   {poll}
   0.01%  │ │  │││  0x00007f6a9ed841f9:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │ │  │╰│  0x00007f6a9ed841fb:   jmp    0x00007f6a9ed84160           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
          │ ↘  ↘ │  0x00007f6a9ed84200:   vmovsd %xmm0,0x10(%rax,%rbp,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │      │  0x00007f6a9ed84206:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │      │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │      │  0x00007f6a9ed8420d:   test   %eax,0x0(%rbp)               ;   {poll}
          │      │  0x00007f6a9ed84210:   inc    %edx
   0.01%  │      ╰  0x00007f6a9ed84212:   jmp    0x00007f6a9ed84160           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          ↘         0x00007f6a9ed84217:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                              ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                    0x00007f6a9ed8421e:   test   %eax,(%rdi)                  ;   {poll}
                    0x00007f6a9ed84220:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                    0x00007f6a9ed84222:   cmp    %ebx,%r11d
                    0x00007f6a9ed84225:   jg     0x00007f6a9ed84120
                    0x00007f6a9ed8422b:   mov    0x20(%rsp),%rbp
....................................................................................................
  87.96%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 994 
   2.36%              kernel  [unknown] 
   1.13%              kernel  [unknown] 
   1.02%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.09%              kernel  [unknown] 
   0.09%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%          ld-2.31.so  __tls_get_addr 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  fileStream::write 
   0.07%        libc-2.31.so  _IO_default_xsputn 
   0.07%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1194 
   0.06%         interpreter  return entry points  
   0.06%              kernel  [unknown] 
   5.99%  <...other 1334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 994 
   7.63%              kernel  [unknown] 
   0.67%                      <unknown> 
   0.27%        libc-2.31.so  __vfprintf_internal 
   0.15%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1194 
   0.14%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1277 
   0.11%        libc-2.31.so  _IO_fwrite 
   0.11%           libjvm.so  ElfSymbolTable::lookup 
   0.10%           libjvm.so  xmlStream::write_text 
   0.10%        libc-2.31.so  _IO_default_xsputn 
   0.09%           libjvm.so  defaultStream::write 
   0.09%      hsdis-amd64.so  print_insn 
   0.09%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.09%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1218 
   0.08%        libc-2.31.so  __strchrnul_avx2 
   0.08%          ld-2.31.so  __tls_get_addr 
   0.08%        libc-2.31.so  __strchr_avx2 
   0.07%           libjvm.so  fileStream::write 
   0.07%         interpreter  return entry points  
   0.06%        libc-2.31.so  __strlen_avx2 
   1.96%  <...other 327 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.31%      jvmci, level 4
   7.63%              kernel
   1.24%           libjvm.so
   1.19%        libc-2.31.so
   0.67%                    
   0.36%         interpreter
   0.20%         c1, level 3
   0.15%      hsdis-amd64.so
   0.10%  libpthread-2.31.so
   0.08%          ld-2.31.so
   0.03%    perf-2134138.map
   0.02%         c1, level 2
   0.00%        runtime stub
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 265.971 ms/op
# Warmup Iteration   2: 262.595 ms/op
# Warmup Iteration   3: 262.600 ms/op
# Warmup Iteration   4: 262.626 ms/op
# Warmup Iteration   5: 262.597 ms/op
Iteration   1: 262.597 ms/op
Iteration   2: 262.599 ms/op
Iteration   3: 262.733 ms/op
Iteration   4: 262.590 ms/op
Iteration   5: 262.589 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline":
  262.621 ±(99.9%) 0.240 ms/op [Average]
  (min, avg, max) = (262.589, 262.621, 262.733), stdev = 0.062
  CI (99.9%): [262.381, 262.862] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 307811 total address lines.
Perf output processed (skipped 61.844 seconds):
 Column 1: cycles (57392 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 988 

                     0x00007faa3ad86690:   vdivsd %xmm2,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@72 (line 82)
                     0x00007faa3ad86694:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
                     0x00007faa3ad86698:   mov    $0x0,%ebx
                     0x00007faa3ad8669d:   data16 xchg %ax,%ax                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
                ↗ ↗  0x00007faa3ad866a0:   cmp    %ebx,%r11d
          ╭     │ │  0x00007faa3ad866a3:   jle    0x00007faa3ad86750           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@23 (line 80)
   0.03%  │     │ │  0x00007faa3ad866a9:   mov    %ebx,%edi
   0.00%  │     │ │  0x00007faa3ad866ab:   add    %ecx,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@188 (line 93)
   0.01%  │     │ │  0x00007faa3ad866ad:   vxorpd %xmm8,%xmm8,%xmm8
   0.00%  │     │ │  0x00007faa3ad866b2:   vcvtsi2sd %ebx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@28 (line 81)
   0.03%  │     │ │  0x00007faa3ad866b6:   vsubsd %xmm4,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@38 (line 81)
   0.01%  │     │ │  0x00007faa3ad866ba:   vmulsd %xmm1,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@42 (line 81)
          │     │ │  0x00007faa3ad866be:   vdivsd %xmm2,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@48 (line 81)
   0.04%  │     │ │  0x00007faa3ad866c2:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   0.01%  │     │ │  0x00007faa3ad866c6:   mov    $0x1,%r13d
   0.01%  │     │ │  0x00007faa3ad866cc:   vmovupd %xmm7,%xmm10
   0.00%  │╭    │ │  0x00007faa3ad866d0:   jmp    0x00007faa3ad86703           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@84 (line 85)
          ││    │ │  0x00007faa3ad866d5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   5.52%  ││  ↗ │ │  0x00007faa3ad866e0:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@143 (line 90)
   0.02%  ││  │ │ │  0x00007faa3ad866e3:   cmp    %r13d,%r8d
          ││╭ │ │ │  0x00007faa3ad866e6:   jle    0x00007faa3ad8671f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@90 (line 85)
   0.02%  │││ │ │ │  0x00007faa3ad866ec:   vmulsd %xmm3,%xmm9,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@130 (line 87)
   0.98%  │││ │ │ │  0x00007faa3ad866f0:   vmulsd %xmm10,%xmm9,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@133 (line 87)
   5.72%  │││ │ │ │  0x00007faa3ad866f5:   vaddsd %xmm6,%xmm9,%xmm10           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@136 (line 87)
   1.03%  │││ │ │ │  0x00007faa3ad866f9:   vsubsd %xmm12,%xmm11,%xmm9          ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@119 (line 86)
   0.01%  │││ │ │ │  0x00007faa3ad866fe:   vaddsd %xmm8,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@122 (line 86)
   3.42%  │↘│ │ │ │  0x00007faa3ad86703:   vmulsd %xmm9,%xmm9,%xmm11           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@97 (line 85)
  22.96%  │ │ │ │ │  0x00007faa3ad86708:   vmulsd %xmm10,%xmm10,%xmm12         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@102 (line 85)
   2.93%  │ │ │ │ │  0x00007faa3ad8670d:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@103 (line 85)
  26.89%  │ │ │ │ │  0x00007faa3ad86712:   vucomisd %xmm1,%xmm13
  11.67%  │ │╭│ │ │  0x00007faa3ad86716:   jp     0x00007faa3ad8671a
   7.65%  │ ││╰ │ │  0x00007faa3ad86718:   jbe    0x00007faa3ad866e0
   0.04%  │ │↘ ╭│ │  0x00007faa3ad8671a:   jmp    0x00007faa3ad86735           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@106 (line 85)
   0.01%  │ ↘  ││↗│  0x00007faa3ad8671f:   vmovsd %xmm0,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@190 (line 93)
          │    ││││  0x00007faa3ad86725:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    ││││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
          │    ││││  0x00007faa3ad8672c:   test   %eax,(%rdi)                  ;   {poll}
          │    ││││  0x00007faa3ad8672e:   inc    %ebx
   0.00%  │    │╰││  0x00007faa3ad86730:   jmp    0x00007faa3ad866a0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.02%  │    ↘ ││  0x00007faa3ad86735:   cmp    %r13d,%r8d
          │      ╰│  0x00007faa3ad86738:   jle    0x00007faa3ad8671f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@155 (line 92)
   0.00%  │       │  0x00007faa3ad8673a:   vmovsd %xmm5,0x10(%rax,%rdi,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@172 (line 92)
   0.01%  │       │  0x00007faa3ad86740:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@173 (line 92)
   0.01%  │       │  0x00007faa3ad86747:   test   %eax,(%rdi)                  ;   {poll}
   0.01%  │       │  0x00007faa3ad86749:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@191 (line 80)
   0.00%  │       ╰  0x00007faa3ad8674b:   jmp    0x00007faa3ad866a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@17 (line 80)
          ↘          0x00007faa3ad86750:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                               ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007faa3ad86757:   test   %eax,(%rcx)                  ;   {poll}
                     0x00007faa3ad86759:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline@197 (line 79)
                     0x00007faa3ad8675c:   nopl   0x0(%rax)
                     0x00007faa3ad86760:   cmp    %r9d,%r11d
....................................................................................................
  89.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 988 
   1.08%              kernel  [unknown] 
   1.07%              kernel  [unknown] 
   0.99%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%          ld-2.31.so  __tls_get_addr 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.07%           libjvm.so  fileStream::flush 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  defaultStream::write 
   0.06%        libc-2.31.so  syscall 
   0.06%        libc-2.31.so  __strchrnul_avx2 
   5.82%  <...other 1392 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 6, compile id 988 
   6.65%              kernel  [unknown] 
   0.90%                      <unknown> 
   0.19%        libc-2.31.so  __vfprintf_internal 
   0.15%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1280 
   0.13%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1184 
   0.12%           libjvm.so  ElfSymbolTable::lookup 
   0.12%        libc-2.31.so  _IO_fwrite 
   0.11%      jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 1187 
   0.10%           libjvm.so  xmlStream::write_text 
   0.09%           libjvm.so  defaultStream::write 
   0.09%          ld-2.31.so  __tls_get_addr 
   0.08%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.08%        libc-2.31.so  _IO_default_xsputn 
   0.07%           libjvm.so  fileStream::flush 
   0.07%  libpthread-2.31.so  __libc_write 
   0.07%        libc-2.31.so  __strchr_avx2 
   0.07%        libc-2.31.so  __strchrnul_avx2 
   0.06%        libc-2.31.so  syscall 
   0.06%        libc-2.31.so  __vsnprintf_internal 
   1.71%  <...other 325 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.45%      jvmci, level 4
   6.65%              kernel
   1.15%           libjvm.so
   0.99%        libc-2.31.so
   0.90%                    
   0.32%         interpreter
   0.22%         c1, level 3
   0.14%  libpthread-2.31.so
   0.09%          ld-2.31.so
   0.04%         c1, level 2
   0.02%    perf-2134203.map
   0.01%    Unknown, level 0
   0.00%              [vdso]
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.120 ms/op
# Warmup Iteration   2: 3.620 ms/op
# Warmup Iteration   3: 3.620 ms/op
# Warmup Iteration   4: 3.620 ms/op
# Warmup Iteration   5: 3.620 ms/op
Iteration   1: 3.620 ms/op
Iteration   2: 3.620 ms/op
Iteration   3: 3.620 ms/op
Iteration   4: 3.620 ms/op
Iteration   5: 3.620 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  3.620 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (3.620, 3.620, 3.620), stdev = 0.001
  CI (99.9%): [3.620, 3.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 311313 total address lines.
Perf output processed (skipped 61.177 seconds):
 Column 1: cycles (51417 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1275 

                  0x00007fae96d9da75:   cmp    %edx,%r10d
                  0x00007fae96d9da78:   jbe    0x00007fae96d9ddba           ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                            ; - java.util.Objects::checkIndex@3 (line 385)
                                                                            ; - jdk.incubator.vector.VectorIntrinsics::checkFromIndexSize@43 (line 61)
                                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@7 (line 3064)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
                  0x00007fae96d9da7e:   vxorpd %xmm8,%xmm8,%xmm8
                  0x00007fae96d9da83:   vcvtsi2sd %edi,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@26 (line 107)
   0.00%          0x00007fae96d9da87:   vbroadcastsd %xmm8,%ymm8            ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@-3
                                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
                                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
                                                                            ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 600)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@27 (line 107)
                  0x00007fae96d9da8c:   vsubpd %ymm4,%ymm8,%ymm9            ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@108 (line 115)
                  0x00007fae96d9da90:   vmulpd %ymm9,%ymm1,%ymm9            ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
                  0x00007fae96d9da95:   mov    $0x0,%ebp
                  0x00007fae96d9da9a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.01%      ↗↗  0x00007fae96d9daa0:   cmp    %ebp,%r9d
          ╭   ││  0x00007fae96d9daa3:   jle    0x00007fae96d9dbc6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@49 (line 110)
   0.02%  │   ││  0x00007fae96d9daa9:   mov    %ebp,%r13d
          │   ││  0x00007fae96d9daac:   add    %edx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@318 (line 144)
          │   ││  0x00007fae96d9daaf:   vxorpd %xmm10,%xmm10,%xmm10
   0.02%  │   ││  0x00007fae96d9dab4:   vcvtsi2sd %ebp,%xmm10,%xmm10        ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@57 (line 112)
   0.03%  │   ││  0x00007fae96d9dab8:   vbroadcastsd %xmm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 600)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@58 (line 113)
          │   ││  0x00007fae96d9dabd:   vaddpd %ymm6,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@64 (line 113)
   0.02%  │   ││  0x00007fae96d9dac1:   vsubpd %ymm4,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.03%  │   ││  0x00007fae96d9dac5:   vmulpd %ymm1,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.01%  │   ││  0x00007fae96d9dac9:   vmovupd %ymm3,%ymm15
          │   ││  0x00007fae96d9dacd:   vmovupd %ymm3,%ymm14
   0.02%  │   ││  0x00007fae96d9dad1:   vmovupd %ymm3,%ymm13
   0.02%  │   ││  0x00007fae96d9dad5:   vmovupd %ymm3,%ymm12
   0.00%  │   ││  0x00007fae96d9dad9:   vmovupd %ymm3,%ymm11
          │   ││  0x00007fae96d9dadd:   mov    $0x0,%r14d
   0.04%  │╭  ││  0x00007fae96d9dae3:   jmp    0x00007fae96d9db22           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
          ││  ││  0x00007fae96d9dae8:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  ││  0x00007fae96d9daf3:   data16 data16 xchg %ax,%ax
          ││  ││  0x00007fae96d9daf7:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
  10.26%  ││ ↗││  0x00007fae96d9db00:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
   0.01%  ││ │││  0x00007fae96d9db03:   cmp    %r14d,%r11d
          ││╭│││  0x00007fae96d9db06:   jle    0x00007fae96d9db95           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@176 (line 125)
          ││││││  0x00007fae96d9db0c:   vmovupd %ymm13,0x10(%rsp)
   0.05%  ││││││  0x00007fae96d9db12:   vmovupd %ymm14,%ymm13
   5.19%  ││││││  0x00007fae96d9db17:   vmovupd %ymm12,%ymm14
          ││││││  0x00007fae96d9db1c:   vmovupd 0x10(%rsp),%ymm12           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
   0.03%  │↘││││  0x00007fae96d9db22:   vaddpd %ymm2,%ymm11,%ymm1           ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.05%  │ ││││  0x00007fae96d9db26:   vaddpd %ymm14,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   5.20%  │ ││││  0x00007fae96d9db2b:   vmulpd %ymm15,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
          │ ││││                                                            ;   {no_reloc}
   0.03%  │ ││││  0x00007fae96d9db30:   vaddpd %ymm14,%ymm9,%ymm15          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.02%  │ ││││  0x00007fae96d9db35:   vmulpd %ymm15,%ymm15,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.05%  │ ││││  0x00007fae96d9db3a:   vsubpd %ymm13,%ymm12,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   8.82%  │ ││││  0x00007fae96d9db3f:   vaddpd %ymm12,%ymm10,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.03%  │ ││││  0x00007fae96d9db44:   vmulpd %ymm12,%ymm12,%ymm13         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.02%  │ ││││  0x00007fae96d9db49:   vaddpd %ymm13,%ymm14,%ymm4          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
  15.23%  │ ││││  0x00007fae96d9db4e:   vcmplt_oqpd %ymm4,%ymm5,%ymm4       ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
  20.39%  │ ││││  0x00007fae96d9db53:   vblendvpd %ymm4,%ymm11,%ymm1,%ymm11 ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
  17.99%  │ ││││  0x00007fae96d9db59:   vpxor  %ymm7,%ymm4,%ymm1
   1.83%  │ ││││  0x00007fae96d9db5d:   vptest %ymm1,%ymm1
  10.98%  │ │╰││  0x00007fae96d9db62:   jne    0x00007fae96d9db00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
   0.10%  │ │ ││  0x00007fae96d9db64:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
   0.02%  │ │ ││  0x00007fae96d9db69:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.12%  │ │ ││  0x00007fae96d9db6f:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │ │ ││  0x00007fae96d9db76:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │ ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │ │ ││  0x00007fae96d9db7d:   test   %eax,0x0(%r13)               ;   {poll}
   0.03%  │ │ ││  0x00007fae96d9db81:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.02%  │ │ ││  0x00007fae96d9db84:   vmovupd 0x30(%rsp),%ymm4
   0.00%  │ │ ││  0x00007fae96d9db8a:   vmovupd 0x50(%rsp),%ymm1
          │ │ ╰│  0x00007fae96d9db90:   jmp    0x00007fae96d9daa0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.00%  │ ↘  │  0x00007fae96d9db95:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
          │    │  0x00007fae96d9db9a:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.01%  │    │  0x00007fae96d9dba0:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007fae96d9dba7:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │    │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007fae96d9dbae:   test   %eax,0x0(%r13)               ;   {poll}
   0.00%  │    │  0x00007fae96d9dbb2:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.00%  │    │  0x00007fae96d9dbb5:   vmovupd 0x30(%rsp),%ymm4
          │    │  0x00007fae96d9dbbb:   vmovupd 0x50(%rsp),%ymm1
          │    ╰  0x00007fae96d9dbc1:   jmp    0x00007fae96d9daa0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
          ↘       0x00007fae96d9dbc6:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@338 (line 106)
                  0x00007fae96d9dbcd:   test   %eax,(%rdx)                  ;   {poll}
                  0x00007fae96d9dbcf:   lea    0x4(%rdi),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@347 (line 106)
....................................................................................................
  96.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1275 
   1.38%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1331 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         interpreter  dload  24 dload  
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         interpreter  dmul  107 dmul  
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.17%  <...other 407 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1275 
   2.54%              kernel  [unknown] 
   0.16%                      <unknown> 
   0.07%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1331 
   0.03%         interpreter  dload  24 dload  
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         interpreter  dmul  107 dmul  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  lload  22 lload  
   0.01%         interpreter  dadd  99 dadd  
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  if_icmpge  162 if_icmpge  
   0.01%           libjvm.so  stringStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%         interpreter  getstatic  178 getstatic  
   0.31%  <...other 112 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.72%      jvmci, level 4
   2.54%              kernel
   0.18%           libjvm.so
   0.16%         interpreter
   0.16%                    
   0.11%        libc-2.31.so
   0.07%         c1, level 3
   0.03%  libpthread-2.31.so
   0.03%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.956 ms/op
# Warmup Iteration   2: 13.665 ms/op
# Warmup Iteration   3: 13.665 ms/op
# Warmup Iteration   4: 13.665 ms/op
# Warmup Iteration   5: 13.664 ms/op
Iteration   1: 13.665 ms/op
Iteration   2: 13.665 ms/op
Iteration   3: 13.665 ms/op
Iteration   4: 13.664 ms/op
Iteration   5: 13.664 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  13.665 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (13.664, 13.665, 13.665), stdev = 0.001
  CI (99.9%): [13.663, 13.666] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 317314 total address lines.
Perf output processed (skipped 60.967 seconds):
 Column 1: cycles (51151 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1259 

                                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
                  0x00007fa1cada0715:   mov    $0x0,%ebp
                  0x00007fa1cada071a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.02%      ↗↗  0x00007fa1cada0720:   cmp    %ebp,%r9d
          ╭   ││  0x00007fa1cada0723:   jle    0x00007fa1cada0846           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@49 (line 110)
   0.01%  │   ││  0x00007fa1cada0729:   mov    %ebp,%r13d
   0.01%  │   ││  0x00007fa1cada072c:   add    %edx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@318 (line 144)
          │   ││  0x00007fa1cada072f:   vxorpd %xmm10,%xmm10,%xmm10
   0.03%  │   ││  0x00007fa1cada0734:   vcvtsi2sd %ebp,%xmm10,%xmm10        ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@57 (line 112)
   0.03%  │   ││  0x00007fa1cada0738:   vbroadcastsd %xmm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 600)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@58 (line 113)
   0.00%  │   ││  0x00007fa1cada073d:   vaddpd %ymm6,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@64 (line 113)
   0.02%  │   ││  0x00007fa1cada0741:   vsubpd %ymm4,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.03%  │   ││  0x00007fa1cada0745:   vmulpd %ymm1,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.01%  │   ││  0x00007fa1cada0749:   vmovupd %ymm3,%ymm15
          │   ││  0x00007fa1cada074d:   vmovupd %ymm3,%ymm14
   0.02%  │   ││  0x00007fa1cada0751:   vmovupd %ymm3,%ymm13
   0.01%  │   ││  0x00007fa1cada0755:   vmovupd %ymm3,%ymm12
   0.01%  │   ││  0x00007fa1cada0759:   vmovupd %ymm3,%ymm11
          │   ││  0x00007fa1cada075d:   mov    $0x0,%r14d
   0.03%  │╭  ││  0x00007fa1cada0763:   jmp    0x00007fa1cada07a2           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
          ││  ││  0x00007fa1cada0768:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  ││  0x00007fa1cada0773:   data16 data16 xchg %ax,%ax
          ││  ││  0x00007fa1cada0777:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
  10.39%  ││ ↗││  0x00007fa1cada0780:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
   0.02%  ││ │││  0x00007fa1cada0783:   cmp    %r14d,%r11d
          ││╭│││  0x00007fa1cada0786:   jle    0x00007fa1cada0815           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@176 (line 125)
   0.00%  ││││││  0x00007fa1cada078c:   vmovupd %ymm13,0x10(%rsp)
   0.03%  ││││││  0x00007fa1cada0792:   vmovupd %ymm14,%ymm13
   5.08%  ││││││  0x00007fa1cada0797:   vmovupd %ymm12,%ymm14
          ││││││  0x00007fa1cada079c:   vmovupd 0x10(%rsp),%ymm12           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
   0.05%  │↘││││  0x00007fa1cada07a2:   vaddpd %ymm2,%ymm11,%ymm1           ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.04%  │ ││││  0x00007fa1cada07a6:   vaddpd %ymm14,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   5.32%  │ ││││  0x00007fa1cada07ab:   vmulpd %ymm15,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
          │ ││││                                                            ;   {no_reloc}
   0.02%  │ ││││  0x00007fa1cada07b0:   vaddpd %ymm14,%ymm9,%ymm15          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.03%  │ ││││  0x00007fa1cada07b5:   vmulpd %ymm15,%ymm15,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.05%  │ ││││  0x00007fa1cada07ba:   vsubpd %ymm13,%ymm12,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   8.84%  │ ││││  0x00007fa1cada07bf:   vaddpd %ymm12,%ymm10,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.02%  │ ││││  0x00007fa1cada07c4:   vmulpd %ymm12,%ymm12,%ymm13         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.03%  │ ││││  0x00007fa1cada07c9:   vaddpd %ymm13,%ymm14,%ymm4          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
  14.86%  │ ││││  0x00007fa1cada07ce:   vcmplt_oqpd %ymm4,%ymm5,%ymm4       ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
  20.30%  │ ││││  0x00007fa1cada07d3:   vblendvpd %ymm4,%ymm11,%ymm1,%ymm11 ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
  18.03%  │ ││││  0x00007fa1cada07d9:   vpxor  %ymm7,%ymm4,%ymm1
   1.86%  │ ││││  0x00007fa1cada07dd:   vptest %ymm1,%ymm1
  11.20%  │ │╰││  0x00007fa1cada07e2:   jne    0x00007fa1cada0780           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
   0.10%  │ │ ││  0x00007fa1cada07e4:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
   0.04%  │ │ ││  0x00007fa1cada07e9:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.08%  │ │ ││  0x00007fa1cada07ef:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.03%  │ │ ││  0x00007fa1cada07f6:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │ ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │ │ ││  0x00007fa1cada07fd:   test   %eax,0x0(%r13)               ;   {poll}
   0.02%  │ │ ││  0x00007fa1cada0801:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.02%  │ │ ││  0x00007fa1cada0804:   vmovupd 0x30(%rsp),%ymm4
   0.00%  │ │ ││  0x00007fa1cada080a:   vmovupd 0x50(%rsp),%ymm1
          │ │ ╰│  0x00007fa1cada0810:   jmp    0x00007fa1cada0720           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.01%  │ ↘  │  0x00007fa1cada0815:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
          │    │  0x00007fa1cada081a:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.02%  │    │  0x00007fa1cada0820:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007fa1cada0827:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │    │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007fa1cada082e:   test   %eax,0x0(%r13)               ;   {poll}
          │    │  0x00007fa1cada0832:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.00%  │    │  0x00007fa1cada0835:   vmovupd 0x30(%rsp),%ymm4
          │    │  0x00007fa1cada083b:   vmovupd 0x50(%rsp),%ymm1
          │    ╰  0x00007fa1cada0841:   jmp    0x00007fa1cada0720           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
          ↘       0x00007fa1cada0846:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@338 (line 106)
                  0x00007fa1cada084d:   test   %eax,(%rdx)                  ;   {poll}
                  0x00007fa1cada084f:   lea    0x4(%rdi),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@347 (line 106)
....................................................................................................
  96.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1259 
   0.47%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1319 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1320 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.77%  <...other 571 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1259 
   2.22%               kernel  [unknown] 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1319 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1320 
   0.07%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  fileStream::write 
   0.01%          interpreter  dmul  107 dmul  
   0.01%          interpreter  dload  24 dload  
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%  libjvmcicompiler.so  org.graalvm.compiler.graph.iterators.PredicatedProxyNodeIterator::forward 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.53%  <...other 206 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.83%       jvmci, level 4
   2.22%               kernel
   0.21%            libjvm.so
   0.19%  libjvmcicompiler.so
   0.16%          c1, level 3
   0.13%          interpreter
   0.12%         libc-2.31.so
   0.07%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%     perf-2134332.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 12.599 ms/op
# Warmup Iteration   2: 7.186 ms/op
# Warmup Iteration   3: 7.187 ms/op
# Warmup Iteration   4: 7.187 ms/op
# Warmup Iteration   5: 7.187 ms/op
Iteration   1: 7.187 ms/op
Iteration   2: 7.187 ms/op
Iteration   3: 7.187 ms/op
Iteration   4: 7.187 ms/op
Iteration   5: 7.187 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  7.187 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (7.187, 7.187, 7.187), stdev = 0.001
  CI (99.9%): [7.186, 7.187] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 317992 total address lines.
Perf output processed (skipped 61.103 seconds):
 Column 1: cycles (50856 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1299 

                                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
                  0x00007f97b6d9be9e:   mov    $0x0,%r13d
                  0x00007f97b6d9bea4:   nopl   0x0(%rax,%rax,1)
                  0x00007f97b6d9beac:   data16 data16 xchg %ax,%ax
   0.01%      ↗↗  0x00007f97b6d9beb0:   cmp    %r13d,%r9d
          ╭   ││  0x00007f97b6d9beb3:   jle    0x00007f97b6d9bfc6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@49 (line 110)
   0.00%  │   ││  0x00007f97b6d9beb9:   mov    %r13d,%r14d
   0.00%  │   ││  0x00007f97b6d9bebc:   add    %edx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@318 (line 144)
          │   ││  0x00007f97b6d9bebf:   vxorpd %xmm10,%xmm10,%xmm10
   0.01%  │   ││  0x00007f97b6d9bec4:   vcvtsi2sd %r13d,%xmm10,%xmm10       ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@57 (line 112)
   0.01%  │   ││  0x00007f97b6d9bec9:   vbroadcastsd %xmm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 600)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@58 (line 113)
   0.00%  │   ││  0x00007f97b6d9bece:   vaddpd %ymm4,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@64 (line 113)
   0.02%  │   ││  0x00007f97b6d9bed2:   vsubpd %ymm2,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.02%  │   ││  0x00007f97b6d9bed6:   vmulpd %ymm1,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.00%  │   ││  0x00007f97b6d9beda:   vmovupd %ymm7,%ymm15
   0.00%  │   ││  0x00007f97b6d9bede:   vmovupd %ymm7,%ymm14
   0.01%  │   ││  0x00007f97b6d9bee2:   vmovupd %ymm7,%ymm13
   0.01%  │   ││  0x00007f97b6d9bee6:   vmovupd %ymm7,%ymm12
   0.01%  │   ││  0x00007f97b6d9beea:   vmovupd %ymm7,%ymm11
   0.00%  │   ││  0x00007f97b6d9beee:   mov    $0x0,%edi
   0.02%  │╭  ││  0x00007f97b6d9bef3:   jmp    0x00007f97b6d9bf21           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
          ││  ││  0x00007f97b6d9bef8:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
  10.75%  ││ ↗││  0x00007f97b6d9bf00:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
          ││ │││  0x00007f97b6d9bf02:   cmp    %edi,%r8d
          ││╭│││  0x00007f97b6d9bf05:   jle    0x00007f97b6d9bf93           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@176 (line 125)
          ││││││  0x00007f97b6d9bf0b:   vmovupd %ymm13,0x10(%rsp)
   0.03%  ││││││  0x00007f97b6d9bf11:   vmovupd %ymm14,%ymm13
   5.22%  ││││││  0x00007f97b6d9bf16:   vmovupd %ymm12,%ymm14
          ││││││  0x00007f97b6d9bf1b:   vmovupd 0x10(%rsp),%ymm12           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
   0.00%  │↘││││  0x00007f97b6d9bf21:   vaddpd %ymm6,%ymm11,%ymm1           ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.02%  │ ││││  0x00007f97b6d9bf25:   vaddpd %ymm14,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   5.26%  │ ││││  0x00007f97b6d9bf2a:   vmulpd %ymm15,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
   0.01%  │ ││││  0x00007f97b6d9bf2f:   vaddpd %ymm14,%ymm9,%ymm15          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.01%  │ ││││  0x00007f97b6d9bf34:   vmulpd %ymm15,%ymm15,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
          │ ││││                                                            ;   {no_reloc}
   0.04%  │ ││││  0x00007f97b6d9bf39:   vsubpd %ymm13,%ymm12,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   9.14%  │ ││││  0x00007f97b6d9bf3e:   vaddpd %ymm12,%ymm10,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.01%  │ ││││  0x00007f97b6d9bf43:   vmulpd %ymm12,%ymm12,%ymm13         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  │ ││││  0x00007f97b6d9bf48:   vaddpd %ymm13,%ymm14,%ymm2          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
  14.96%  │ ││││  0x00007f97b6d9bf4d:   vcmplt_oqpd %ymm2,%ymm3,%ymm2       ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
  20.93%  │ ││││  0x00007f97b6d9bf52:   vblendvpd %ymm2,%ymm11,%ymm1,%ymm11 ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
  18.26%  │ ││││  0x00007f97b6d9bf58:   vpxor  %ymm5,%ymm2,%ymm1
   1.74%  │ ││││  0x00007f97b6d9bf5c:   vptest %ymm1,%ymm1
  11.10%  │ │╰││  0x00007f97b6d9bf61:   jne    0x00007f97b6d9bf00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
   0.06%  │ │ ││  0x00007f97b6d9bf63:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
   0.00%  │ │ ││  0x00007f97b6d9bf68:   vblendvpd %ymm1,%ymm6,%ymm7,%ymm1   ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.06%  │ │ ││  0x00007f97b6d9bf6e:   vmovupd %ymm1,0x10(%rax,%r14,8)     ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.00%  │ │ ││  0x00007f97b6d9bf75:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop [8]=Oop }
          │ │ ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │ │ ││  0x00007f97b6d9bf7c:   test   %eax,(%rdi)                  ;   {poll}
   0.01%  │ │ ││  0x00007f97b6d9bf7e:   lea    0x4(%r13),%r13d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.01%  │ │ ││  0x00007f97b6d9bf82:   vmovupd 0x50(%rsp),%ymm2
   0.00%  │ │ ││  0x00007f97b6d9bf88:   vmovupd 0x70(%rsp),%ymm1
          │ │ ╰│  0x00007f97b6d9bf8e:   jmp    0x00007f97b6d9beb0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.00%  │ ↘  │  0x00007f97b6d9bf93:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
          │    │  0x00007f97b6d9bf98:   vblendvpd %ymm1,%ymm6,%ymm7,%ymm1   ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.01%  │    │  0x00007f97b6d9bf9e:   vmovupd %ymm1,0x10(%rax,%r14,8)     ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007f97b6d9bfa5:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop [8]=Oop }
          │    │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │    │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007f97b6d9bfac:   test   %eax,(%rdi)                  ;   {poll}
   0.00%  │    │  0x00007f97b6d9bfae:   lea    0x4(%r13),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
          │    │  0x00007f97b6d9bfb2:   mov    %edi,%r13d
          │    │  0x00007f97b6d9bfb5:   vmovupd 0x50(%rsp),%ymm2
          │    │  0x00007f97b6d9bfbb:   vmovupd 0x70(%rsp),%ymm1
   0.00%  │    ╰  0x00007f97b6d9bfc1:   jmp    0x00007f97b6d9beb0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
          ↘       0x00007f97b6d9bfc6:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rax=Oop [8]=Oop }
                                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@338 (line 106)
                  0x00007f97b6d9bfcd:   test   %eax,(%rdi)                  ;   {poll}
                  0x00007f97b6d9bfcf:   mov    %ebp,%edi
                  0x00007f97b6d9bfd1:   jmp    0x00007f97b6d9be50           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@338 (line 106)
                  0x00007f97b6d9bfd6:   vcmpeqpd %ymm0,%ymm7,%ymm1          ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
....................................................................................................
  97.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1299 
   0.17%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1363 
   0.05%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1362 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1362 
   0.03%          interpreter  dload  24 dload  
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.28%  <...other 429 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1299 
   1.33%               kernel  [unknown] 
   0.09%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1362 
   0.07%                       <unknown> 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1363 
   0.03%          interpreter  dload  24 dload  
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  fileStream::write 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%          interpreter  if_icmpge  162 if_icmpge  
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%          interpreter  dmul  107 dmul  
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.44%  <...other 173 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.86%       jvmci, level 4
   1.33%               kernel
   0.20%            libjvm.so
   0.14%          interpreter
   0.13%  libjvmcicompiler.so
   0.11%         libc-2.31.so
   0.09%          c1, level 3
   0.07%                     
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 55.995 ms/op
# Warmup Iteration   2: 27.095 ms/op
# Warmup Iteration   3: 27.095 ms/op
# Warmup Iteration   4: 27.094 ms/op
# Warmup Iteration   5: 27.095 ms/op
Iteration   1: 27.096 ms/op
Iteration   2: 27.096 ms/op
Iteration   3: 27.094 ms/op
Iteration   4: 27.094 ms/op
Iteration   5: 27.095 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized":
  27.095 ±(99.9%) 0.003 ms/op [Average]
  (min, avg, max) = (27.094, 27.095, 27.096), stdev = 0.001
  CI (99.9%): [27.092, 27.097] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 337801 total address lines.
Perf output processed (skipped 61.110 seconds):
 Column 1: cycles (51236 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 8, compile id 1284 

                                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@108 (line 115)
                  0x00007f8626da4390:   vmulpd %ymm9,%ymm1,%ymm9            ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
                                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
                                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@120 (line 115)
   0.00%          0x00007f8626da4395:   mov    $0x0,%ebp
                  0x00007f8626da439a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.01%      ↗↗  0x00007f8626da43a0:   cmp    %ebp,%r9d
          ╭   ││  0x00007f8626da43a3:   jle    0x00007f8626da44c6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@49 (line 110)
   0.01%  │   ││  0x00007f8626da43a9:   mov    %ebp,%r13d
   0.00%  │   ││  0x00007f8626da43ac:   add    %edx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@318 (line 144)
          │   ││  0x00007f8626da43af:   vxorpd %xmm10,%xmm10,%xmm10
   0.01%  │   ││  0x00007f8626da43b4:   vcvtsi2sd %ebp,%xmm10,%xmm10        ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@57 (line 112)
   0.02%  │   ││  0x00007f8626da43b8:   vbroadcastsd %xmm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::fromBitsCoerced@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@19 (line 3742)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3751)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::broadcast@7 (line 600)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@58 (line 113)
          │   ││  0x00007f8626da43bd:   vaddpd %ymm6,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@64 (line 113)
   0.01%  │   ││  0x00007f8626da43c1:   vsubpd %ymm4,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1323)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@80 (line 114)
   0.01%  │   ││  0x00007f8626da43c5:   vmulpd %ymm1,%ymm10,%ymm10          ;* unwind (locked if synchronized)
          │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │   ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@7 (line 872)
          │   ││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1397)
          │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@92 (line 114)
   0.01%  │   ││  0x00007f8626da43c9:   vmovupd %ymm3,%ymm15
          │   ││  0x00007f8626da43cd:   vmovupd %ymm3,%ymm14
   0.01%  │   ││  0x00007f8626da43d1:   vmovupd %ymm3,%ymm13
   0.01%  │   ││  0x00007f8626da43d5:   vmovupd %ymm3,%ymm12
          │   ││  0x00007f8626da43d9:   vmovupd %ymm3,%ymm11
          │   ││  0x00007f8626da43dd:   mov    $0x0,%r14d
   0.02%  │╭  ││  0x00007f8626da43e3:   jmp    0x00007f8626da4422           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
          ││  ││  0x00007f8626da43e8:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  ││  0x00007f8626da43f3:   data16 data16 xchg %ax,%ax
          ││  ││  0x00007f8626da43f7:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
  10.20%  ││ ↗││  0x00007f8626da4400:   inc    %r14d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@273 (line 139)
          ││ │││  0x00007f8626da4403:   cmp    %r14d,%r11d
          ││╭│││  0x00007f8626da4406:   jle    0x00007f8626da4495           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@176 (line 125)
          ││││││  0x00007f8626da440c:   vmovupd %ymm13,0x10(%rsp)
   0.02%  ││││││  0x00007f8626da4412:   vmovupd %ymm14,%ymm13
   5.39%  ││││││  0x00007f8626da4417:   vmovupd %ymm12,%ymm14
          ││││││  0x00007f8626da441c:   vmovupd 0x10(%rsp),%ymm12           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@170 (line 125)
   0.01%  │↘││││  0x00007f8626da4422:   vaddpd %ymm2,%ymm11,%ymm1           ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
   0.02%  │ ││││  0x00007f8626da4426:   vaddpd %ymm14,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@197 (line 127)
   5.29%  │ ││││  0x00007f8626da442b:   vmulpd %ymm15,%ymm14,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@202 (line 127)
          │ ││││                                                            ;   {no_reloc}
   0.01%  │ ││││  0x00007f8626da4430:   vaddpd %ymm14,%ymm9,%ymm15          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@207 (line 127)
   0.01%  │ ││││  0x00007f8626da4435:   vmulpd %ymm15,%ymm15,%ymm14         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@229 (line 131)
   0.03%  │ ││││  0x00007f8626da443a:   vsubpd %ymm13,%ymm12,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1298)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@183 (line 126)
   9.01%  │ ││││  0x00007f8626da443f:   vaddpd %ymm12,%ymm10,%ymm12         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@188 (line 126)
   0.02%  │ ││││  0x00007f8626da4444:   vmulpd %ymm12,%ymm12,%ymm13         ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1372)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@220 (line 130)
   0.01%  │ ││││  0x00007f8626da4449:   vaddpd %ymm13,%ymm14,%ymm4          ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@96 (line 774)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 285)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1223)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@238 (line 134)
  14.93%  │ ││││  0x00007f8626da444e:   vcmplt_oqpd %ymm4,%ymm5,%ymm4       ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1969)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 377)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@245 (line 134)
  20.95%  │ ││││  0x00007f8626da4453:   vblendvpd %ymm4,%ymm11,%ymm1,%ymm11 ;* unwind (locked if synchronized)
          │ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ ││││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ ││││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1260)
          │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@257 (line 135)
  17.83%  │ ││││  0x00007f8626da4459:   vpxor  %ymm7,%ymm4,%ymm1
   1.84%  │ ││││  0x00007f8626da445d:   vptest %ymm1,%ymm1
  11.22%  │ │╰││  0x00007f8626da4462:   jne    0x00007f8626da4400           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@267 (line 136)
   0.05%  │ │ ││  0x00007f8626da4464:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
   0.01%  │ │ ││  0x00007f8626da4469:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │ │ ││                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.06%  │ │ ││  0x00007f8626da446f:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │ │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │ │ ││                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
   0.01%  │ │ ││  0x00007f8626da4476:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │ │ ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │ │ ││  0x00007f8626da447d:   test   %eax,0x0(%r13)               ;   {poll}
   0.01%  │ │ ││  0x00007f8626da4481:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.01%  │ │ ││  0x00007f8626da4484:   vmovupd 0x30(%rsp),%ymm4
   0.00%  │ │ ││  0x00007f8626da448a:   vmovupd 0x50(%rsp),%ymm1
          │ │ ╰│  0x00007f8626da4490:   jmp    0x00007f8626da43a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
   0.01%  │ ↘  │  0x00007f8626da4495:   vcmpeqpd %ymm0,%ymm11,%ymm1         ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@42 (line 1890)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 2011)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 383)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@296 (line 143)
          │    │  0x00007f8626da449a:   vblendvpd %ymm1,%ymm2,%ymm3,%ymm1   ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@123 (line 808)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@9 (line 291)
          │    │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@4 (line 41)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@9 (line 900)
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1288)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@299 (line 143)
   0.01%  │    │  0x00007f8626da44a0:   vmovupd %ymm1,0x10(%rax,%r13,8)     ;* unwind (locked if synchronized)
          │    │                                                            ; - jdk.internal.vm.vector.VectorSupport::store@-3
          │    │                                                            ; - jdk.incubator.vector.DoubleVector::intoArray@43 (line 3066)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007f8626da44a7:   mov    0x458(%r15),%r13             ; ImmutableOopMap {rax=Oop rsi=Oop }
          │    │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │    │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::intoArray@46 (line 3074)
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@319 (line 144)
          │    │  0x00007f8626da44ae:   test   %eax,0x0(%r13)               ;   {poll}
   0.00%  │    │  0x00007f8626da44b2:   lea    0x4(%rbp),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@332 (line 111)
   0.00%  │    │  0x00007f8626da44b5:   vmovupd 0x30(%rsp),%ymm4
          │    │  0x00007f8626da44bb:   vmovupd 0x50(%rsp),%ymm1
          │    ╰  0x00007f8626da44c1:   jmp    0x00007f8626da43a0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@35 (line 110)
          ↘       0x00007f8626da44c6:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@338 (line 106)
                  0x00007f8626da44cd:   test   %eax,(%rdx)                  ;   {poll}
                  0x00007f8626da44cf:   lea    0x4(%rdi),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized@347 (line 106)
....................................................................................................
  97.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 8, compile id 1284 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1335 
   0.23%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1334 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
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
   1.54%  <...other 507 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 8, compile id 1284 
   1.70%              kernel  [unknown] 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1335 
   0.25%                      <unknown> 
   0.13%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1334 
   0.02%        libc-2.31.so  syscall 
   0.02%           libjvm.so  defaultStream::write 
   0.02%         interpreter  dload  24 dload  
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         interpreter  getstatic  178 getstatic  
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  dmul  107 dmul  
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%         interpreter  dstore  57 dstore  
   0.29%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.45%      jvmci, level 4
   1.70%              kernel
   0.25%                    
   0.18%           libjvm.so
   0.13%         interpreter
   0.13%         c1, level 3
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-2134463.map
   0.00%      libz.so.1.2.11
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:36

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

Benchmark                                    (iterations)  (size)  Mode  Cnt    Score    Error  Units
MandelbrotVectorApiBenchmark.baseline                1000     256  avgt    5   33.367 ±  0.027  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                1000     512  avgt    5  133.097 ±  0.022  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                2000     256  avgt    5   65.818 ±  0.004  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.baseline                2000     512  avgt    5  262.621 ±  0.240  ms/op
MandelbrotVectorApiBenchmark.baseline:asm            2000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              1000     256  avgt    5    3.620 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              1000     512  avgt    5   13.665 ±  0.002  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          1000     512  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              2000     256  avgt    5    7.187 ±  0.001  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     256  avgt           NaN             ---
MandelbrotVectorApiBenchmark.vectorized              2000     512  avgt    5   27.095 ±  0.003  ms/op
MandelbrotVectorApiBenchmark.vectorized:asm          2000     512  avgt           NaN             ---
