# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 256)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.247 ms/op
# Warmup Iteration   2: 32.914 ms/op
# Warmup Iteration   3: 32.915 ms/op
# Warmup Iteration   4: 32.916 ms/op
# Warmup Iteration   5: 32.917 ms/op
Iteration   1: 32.918 ms/op
Iteration   2: 32.915 ms/op
Iteration   3: 32.914 ms/op
Iteration   4: 32.914 ms/op
Iteration   5: 32.916 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  32.915 ±(99.9%) 0.006 ms/op [Average]
  (min, avg, max) = (32.914, 32.915, 32.918), stdev = 0.001
  CI (99.9%): [32.910, 32.921] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 270230 total address lines.
Perf output processed (skipped 58.784 seconds):
 Column 1: cycles (55440 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 757 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007f3d03003df9:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                      0x00007f3d03003dfd:   mov    $0x0,%edx
                      0x00007f3d03003e02:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007f3d03003e0c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗↗   0x00007f3d03003e10:   cmp    %edx,%r11d
          ╭      ││   0x00007f3d03003e13:   jle    0x00007f3d03003ef3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.02%  │      ││   0x00007f3d03003e19:   nopl   0x0(%rax)
   0.04%  │      ││   0x00007f3d03003e20:   cmp    $0x1,%r8d
          │╭     ││   0x00007f3d03003e24:   jl     0x00007f3d03003eec           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%  ││     ││   0x00007f3d03003e2a:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.01%  ││     ││   0x00007f3d03003e2e:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.05%  ││     ││   0x00007f3d03003e32:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.00%  ││     ││   0x00007f3d03003e36:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.13%  ││     ││   0x00007f3d03003e3a:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.09%  ││     ││   0x00007f3d03003e3e:   vmovapd %xmm9,%xmm10
   0.03%  ││     ││   0x00007f3d03003e43:   vmovapd %xmm7,%xmm9
   0.01%  ││     ││   0x00007f3d03003e47:   mov    $0x1,%ebp
          ││╭    ││   0x00007f3d03003e4c:   jmp    0x00007f3d03003e9d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          │││    ││   0x00007f3d03003e51:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007f3d03003e5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.82%  │││  ↗ ││   0x00007f3d03003e60:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  17.73%  │││  │ ││   0x00007f3d03003e65:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   2.27%  │││  │ ││   0x00007f3d03003e6a:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  28.56%  │││  │ ││   0x00007f3d03003e6f:   vucomisd %xmm4,%xmm13
  11.50%  │││╭ │ ││   0x00007f3d03003e73:   jp     0x00007f3d03003ea5
  10.81%  ││││╭│ ││   0x00007f3d03003e79:   ja     0x00007f3d03003ea5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   2.82%  ││││││ ││   0x00007f3d03003e7f:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.04%  ││││││ ││   0x00007f3d03003e84:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   5.40%  ││││││ ││   0x00007f3d03003e89:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   1.08%  ││││││ ││   0x00007f3d03003e8d:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   0.61%  ││││││ ││   0x00007f3d03003e92:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.48%  ││││││ ││   0x00007f3d03003e96:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   4.67%  ││││││ ││   0x00007f3d03003e98:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
   1.03%  ││↘│││ ││   0x00007f3d03003e9d:   data16 xchg %ax,%ax
   0.92%  ││ │││ ││   0x00007f3d03003ea0:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007f3d03003ea3:   jg     0x00007f3d03003e60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.08%  ││ ↘↘  ││↗  0x00007f3d03003ea5:   mov    %edx,%r13d
   0.03%  ││     │││  0x00007f3d03003ea8:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%  ││     │││  0x00007f3d03003eab:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007f3d03003eae:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.04%  ││     │││  0x00007f3d03003eb1:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007f3d03003eb4:   jle    0x00007f3d03003ed3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
   0.01%  ││    ││││  0x00007f3d03003eba:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.01%  ││    ││││  0x00007f3d03003ec1:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
   0.01%  ││    ││││  0x00007f3d03003ec8:   test   %eax,0x0(%rbp)               ;   {poll}
   0.05%  ││    ││││  0x00007f3d03003ecb:   mov    %r13d,%edx
          ││    │╰││  0x00007f3d03003ece:   jmp    0x00007f3d03003e10           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.00%  ││    ↘ ││  0x00007f3d03003ed3:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          ││      ││  0x00007f3d03003eda:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ││      ││  0x00007f3d03003ee1:   test   %eax,0x0(%rbp)               ;   {poll}
   0.00%  ││      ││  0x00007f3d03003ee4:   mov    %r13d,%edx
   0.01%  ││      ╰│  0x00007f3d03003ee7:   jmp    0x00007f3d03003e10
          │↘       │  0x00007f3d03003eec:   mov    $0x0,%ebp
          │        ╰  0x00007f3d03003ef1:   jmp    0x00007f3d03003ea5           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007f3d03003ef3:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f3d03003efa:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007f3d03003efc:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f3d03003efe:   xchg   %ax,%ax
   0.00%              0x00007f3d03003f00:   cmp    %ebx,%r11d
                      0x00007f3d03003f03:   jg     0x00007f3d03003dc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@11 (line 75)
                      0x00007f3d03003f09:   mov    0x10(%rsp),%rbp
                      0x00007f3d03003f0e:   add    $0x18,%rsp
                      0x00007f3d03003f12:   mov    0x348(%r15),%rcx
                      0x00007f3d03003f19:   test   %eax,(%rcx)                  ;   {poll_return}
                      0x00007f3d03003f1b:   ret    
                      0x00007f3d03003f1c:   movl   $0xffffffe5,0x370(%r15)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
                      0x00007f3d03003f27:   movq   $0x294,0x378(%r15)
....................................................................................................
  89.39%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 757 
   1.07%               kernel  [unknown] 
   1.02%               kernel  [unknown] 
   0.88%               kernel  [unknown] 
   0.62%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.12%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%            libjvm.so  fileStream::flush 
   0.08%               kernel  [unknown] 
   0.07%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.07%            libjvm.so  xmlStream::write_text 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%         libc-2.31.so  __strncat_ssse3 
   0.05%               kernel  [unknown] 
   5.74%  <...other 1373 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 8, compile id 757 
   6.62%               kernel  [unknown] 
   0.45%                       <unknown> 
   0.16%         libc-2.31.so  __strncat_ssse3 
   0.15%         libc-2.31.so  __strxfrm_l 
   0.13%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 942 
   0.12%            libjvm.so  ElfSymbolTable::lookup 
   0.11%            libjvm.so  xmlStream::write_text 
   0.08%       hsdis-amd64.so  print_insn 
   0.08%            libjvm.so  fileStream::flush 
   0.07%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%          c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 1012 
   0.06%   libpthread-2.31.so  __libc_write 
   0.06%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.06%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1072 
   0.05%         libc-2.31.so  tcache_init.part.0 
   0.05%            libjvm.so  defaultStream::write 
   0.05%            libjvm.so  stringStream::write 
   0.04%         libc-2.31.so  __strchr_sse2 
   0.04%          interpreter  return entry points  
   2.15%  <...other 534 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.61%       jvmci, level 4
   6.62%               kernel
   1.06%            libjvm.so
   0.73%         libc-2.31.so
   0.52%  libjvmcicompiler.so
   0.45%                     
   0.32%          interpreter
   0.23%          c1, level 3
   0.18%       hsdis-amd64.so
   0.13%   libpthread-2.31.so
   0.07%           ld-2.31.so
   0.04%       perf-30480.map
   0.02%          c1, level 2
   0.00%               [vdso]
   0.00%          c1, level 1
   0.00%           libjava.so
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 1000, size = 512)

# Run progress: 12.50% complete, ETA 00:13:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 132.502 ms/op
# Warmup Iteration   2: 131.325 ms/op
# Warmup Iteration   3: 131.314 ms/op
# Warmup Iteration   4: 131.327 ms/op
# Warmup Iteration   5: 131.323 ms/op
Iteration   1: 131.338 ms/op
Iteration   2: 131.325 ms/op
Iteration   3: 131.319 ms/op
Iteration   4: 131.321 ms/op
Iteration   5: 131.314 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  131.323 ±(99.9%) 0.035 ms/op [Average]
  (min, avg, max) = (131.314, 131.323, 131.338), stdev = 0.009
  CI (99.9%): [131.289, 131.358] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 272456 total address lines.
Perf output processed (skipped 59.283 seconds):
 Column 1: cycles (58063 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 750 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@52 (line 78)
                      0x00007f2456ffed6d:   vsubsd %xmm2,%xmm6,%xmm6            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@62 (line 78)
                      0x00007f2456ffed71:   vmulsd %xmm4,%xmm6,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@66 (line 78)
                      0x00007f2456ffed75:   vdivsd %xmm0,%xmm6,%xmm6            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007f2456ffed79:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                      0x00007f2456ffed7d:   mov    $0x0,%edx
   0.00%              0x00007f2456ffed82:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007f2456ffed8c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗↗   0x00007f2456ffed90:   cmp    %edx,%r11d
          ╭      ││   0x00007f2456ffed93:   jle    0x00007f2456ffee73           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.01%  │      ││   0x00007f2456ffed99:   nopl   0x0(%rax)
   0.05%  │      ││   0x00007f2456ffeda0:   cmp    $0x1,%r8d
          │╭     ││   0x00007f2456ffeda4:   jl     0x00007f2456ffee6c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%  ││     ││   0x00007f2456ffedaa:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.02%  ││     ││   0x00007f2456ffedae:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.07%  ││     ││   0x00007f2456ffedb2:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.01%  ││     ││   0x00007f2456ffedb6:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.12%  ││     ││   0x00007f2456ffedba:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.08%  ││     ││   0x00007f2456ffedbe:   vmovapd %xmm9,%xmm10
   0.03%  ││     ││   0x00007f2456ffedc3:   vmovapd %xmm7,%xmm9
   0.00%  ││     ││   0x00007f2456ffedc7:   mov    $0x1,%ebp
          ││╭    ││   0x00007f2456ffedcc:   jmp    0x00007f2456ffee1d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          │││    ││   0x00007f2456ffedd1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007f2456ffeddc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.76%  │││  ↗ ││   0x00007f2456ffede0:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  17.27%  │││  │ ││   0x00007f2456ffede5:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   2.16%  │││  │ ││   0x00007f2456ffedea:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  27.64%  │││  │ ││   0x00007f2456ffedef:   vucomisd %xmm4,%xmm13
  10.96%  │││╭ │ ││   0x00007f2456ffedf3:   jp     0x00007f2456ffee25
  10.87%  ││││╭│ ││   0x00007f2456ffedf9:   ja     0x00007f2456ffee25           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   2.89%  ││││││ ││   0x00007f2456ffedff:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.03%  ││││││ ││   0x00007f2456ffee04:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   5.13%  ││││││ ││   0x00007f2456ffee09:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   1.01%  ││││││ ││   0x00007f2456ffee0d:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   0.69%  ││││││ ││   0x00007f2456ffee12:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.49%  ││││││ ││   0x00007f2456ffee16:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   4.48%  ││││││ ││   0x00007f2456ffee18:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
   1.11%  ││↘│││ ││   0x00007f2456ffee1d:   data16 xchg %ax,%ax
   0.93%  ││ │││ ││   0x00007f2456ffee20:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007f2456ffee23:   jg     0x00007f2456ffede0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.08%  ││ ↘↘  ││↗  0x00007f2456ffee25:   mov    %edx,%r13d
   0.03%  ││     │││  0x00007f2456ffee28:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%  ││     │││  0x00007f2456ffee2b:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007f2456ffee2e:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.05%  ││     │││  0x00007f2456ffee31:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007f2456ffee34:   jle    0x00007f2456ffee53           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
          ││    ││││  0x00007f2456ffee3a:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.02%  ││    ││││  0x00007f2456ffee41:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
   0.01%  ││    ││││  0x00007f2456ffee48:   test   %eax,0x0(%rbp)               ;   {poll}
   0.07%  ││    ││││  0x00007f2456ffee4b:   mov    %r13d,%edx
          ││    │╰││  0x00007f2456ffee4e:   jmp    0x00007f2456ffed90           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.00%  ││    ↘ ││  0x00007f2456ffee53:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          ││      ││  0x00007f2456ffee5a:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.00%  ││      ││  0x00007f2456ffee61:   test   %eax,0x0(%rbp)               ;   {poll}
   0.00%  ││      ││  0x00007f2456ffee64:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007f2456ffee67:   jmp    0x00007f2456ffed90
          │↘       │  0x00007f2456ffee6c:   mov    $0x0,%ebp
          │        ╰  0x00007f2456ffee71:   jmp    0x00007f2456ffee25           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007f2456ffee73:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f2456ffee7a:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007f2456ffee7c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f2456ffee7e:   xchg   %ax,%ax
....................................................................................................
  87.11%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 750 
   1.40%               kernel  [unknown] 
   1.08%               kernel  [unknown] 
   0.99%               kernel  [unknown] 
   0.65%               kernel  [unknown] 
   0.43%               kernel  [unknown] 
   0.23%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 941 
   0.14%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.11%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 971 
   0.10%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 971 
   0.10%            libjvm.so  ElfSymbolTable::lookup 
   0.09%               kernel  [unknown] 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 941 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   6.90%  <...other 1686 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 750 
   7.31%               kernel  [unknown] 
   0.54%                       <unknown> 
   0.40%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 941 
   0.30%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1062 
   0.24%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 971 
   0.12%         libc-2.31.so  __strxfrm_l 
   0.12%         libc-2.31.so  __strncat_ssse3 
   0.10%            libjvm.so  ElfSymbolTable::lookup 
   0.10%            libjvm.so  xmlStream::write_text 
   0.08%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%       hsdis-amd64.so  print_insn 
   0.07%         libc-2.31.so  tcache_init.part.0 
   0.07%       jvmci, level 4  jdk.incubator.vector.Double256Vector::bOp, version 2, compile id 987 
   0.07%            libjvm.so  stringStream::write 
   0.06%            libjvm.so  fileStream::write 
   0.06%            libjvm.so  defaultStream::write 
   0.06%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 989 
   0.05%   libpthread-2.31.so  __libc_write 
   2.99%  <...other 760 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.05%       jvmci, level 4
   7.31%               kernel
   1.24%            libjvm.so
   1.09%  libjvmcicompiler.so
   0.64%         libc-2.31.so
   0.54%                     
   0.48%          c1, level 3
   0.29%          interpreter
   0.14%       hsdis-amd64.so
   0.11%   libpthread-2.31.so
   0.08%           ld-2.31.so
   0.02%       perf-30550.map
   0.01%               [vdso]
   0.01%     Unknown, level 0
   0.00%         libjimage.so
   0.00%          c1, level 1
   0.00%          c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 256)

# Run progress: 25.00% complete, ETA 00:11:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 65.232 ms/op
# Warmup Iteration   2: 64.638 ms/op
# Warmup Iteration   3: 64.638 ms/op
# Warmup Iteration   4: 64.636 ms/op
# Warmup Iteration   5: 64.639 ms/op
Iteration   1: 64.636 ms/op
Iteration   2: 64.637 ms/op
Iteration   3: 64.638 ms/op
Iteration   4: 64.637 ms/op
Iteration   5: 64.637 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  64.637 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (64.636, 64.637, 64.638), stdev = 0.001
  CI (99.9%): [64.635, 64.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 273789 total address lines.
Perf output processed (skipped 58.824 seconds):
 Column 1: cycles (56264 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 752 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007f8de3001579:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                      0x00007f8de300157d:   mov    $0x0,%edx
                      0x00007f8de3001582:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007f8de300158c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗↗   0x00007f8de3001590:   cmp    %edx,%r11d
          ╭      ││   0x00007f8de3001593:   jle    0x00007f8de3001673           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.01%  │      ││   0x00007f8de3001599:   nopl   0x0(%rax)
   0.03%  │      ││   0x00007f8de30015a0:   cmp    $0x1,%r8d
          │╭     ││   0x00007f8de30015a4:   jl     0x00007f8de300166c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.00%  ││     ││   0x00007f8de30015aa:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
          ││     ││   0x00007f8de30015ae:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.04%  ││     ││   0x00007f8de30015b2:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.01%  ││     ││   0x00007f8de30015b6:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.06%  ││     ││   0x00007f8de30015ba:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.05%  ││     ││   0x00007f8de30015be:   vmovapd %xmm9,%xmm10
   0.01%  ││     ││   0x00007f8de30015c3:   vmovapd %xmm7,%xmm9
   0.00%  ││     ││   0x00007f8de30015c7:   mov    $0x1,%ebp
          ││╭    ││   0x00007f8de30015cc:   jmp    0x00007f8de300161d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          │││    ││   0x00007f8de30015d1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007f8de30015dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.69%  │││  ↗ ││   0x00007f8de30015e0:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  17.84%  │││  │ ││   0x00007f8de30015e5:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   2.34%  │││  │ ││   0x00007f8de30015ea:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  28.31%  │││  │ ││   0x00007f8de30015ef:   vucomisd %xmm4,%xmm13
  11.29%  │││╭ │ ││   0x00007f8de30015f3:   jp     0x00007f8de3001625
  10.83%  ││││╭│ ││   0x00007f8de30015f9:   ja     0x00007f8de3001625           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   3.00%  ││││││ ││   0x00007f8de30015ff:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.03%  ││││││ ││   0x00007f8de3001604:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   5.32%  ││││││ ││   0x00007f8de3001609:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   1.05%  ││││││ ││   0x00007f8de300160d:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   0.62%  ││││││ ││   0x00007f8de3001612:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.51%  ││││││ ││   0x00007f8de3001616:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   4.49%  ││││││ ││   0x00007f8de3001618:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
   1.09%  ││↘│││ ││   0x00007f8de300161d:   data16 xchg %ax,%ax
   0.92%  ││ │││ ││   0x00007f8de3001620:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007f8de3001623:   jg     0x00007f8de30015e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.05%  ││ ↘↘  ││↗  0x00007f8de3001625:   mov    %edx,%r13d
   0.02%  ││     │││  0x00007f8de3001628:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.01%  ││     │││  0x00007f8de300162b:   mov    %edx,%r14d
   0.00%  ││     │││  0x00007f8de300162e:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.03%  ││     │││  0x00007f8de3001631:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007f8de3001634:   jle    0x00007f8de3001653           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
          ││    ││││  0x00007f8de300163a:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.02%  ││    ││││  0x00007f8de3001641:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
   0.01%  ││    ││││  0x00007f8de3001648:   test   %eax,0x0(%rbp)               ;   {poll}
   0.03%  ││    ││││  0x00007f8de300164b:   mov    %r13d,%edx
          ││    │╰││  0x00007f8de300164e:   jmp    0x00007f8de3001590           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
   0.00%  ││    ↘ ││  0x00007f8de3001653:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          ││      ││  0x00007f8de300165a:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ││      ││  0x00007f8de3001661:   test   %eax,0x0(%rbp)               ;   {poll}
   0.00%  ││      ││  0x00007f8de3001664:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007f8de3001667:   jmp    0x00007f8de3001590
          │↘       │  0x00007f8de300166c:   mov    $0x0,%ebp
          │        ╰  0x00007f8de3001671:   jmp    0x00007f8de3001625           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007f8de3001673:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f8de300167a:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007f8de300167c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f8de300167e:   xchg   %ax,%ax
....................................................................................................
  88.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 752 
   1.15%               kernel  [unknown] 
   0.90%               kernel  [unknown] 
   0.66%               kernel  [unknown] 
   0.58%               kernel  [unknown] 
   0.50%               kernel  [unknown] 
   0.44%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%            libjvm.so  ElfSymbolTable::lookup 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%            libjvm.so  xmlStream::write_text 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 964 
   0.06%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 964 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   5.88%  <...other 1367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 7, compile id 752 
   6.92%               kernel  [unknown] 
   0.50%                       <unknown> 
   0.26%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 964 
   0.13%         libc-2.31.so  __strncat_ssse3 
   0.13%         libc-2.31.so  __strxfrm_l 
   0.12%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1048 
   0.12%            libjvm.so  xmlStream::write_text 
   0.09%            libjvm.so  ElfSymbolTable::lookup 
   0.08%       hsdis-amd64.so  print_insn 
   0.07%            libjvm.so  stringStream::write 
   0.06%          interpreter  invokevirtual  182 invokevirtual  
   0.06%   libpthread-2.31.so  __libc_write 
   0.06%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  defaultStream::write 
   0.05%         libc-2.31.so  tcache_init.part.0 
   0.04%         libc-2.31.so  getifaddrs_internal 
   0.04%          c1, level 3  jdk.incubator.vector.Double256Vector::compare, version 1, compile id 973 
   0.04%          interpreter  return entry points  
   2.37%  <...other 585 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.16%       jvmci, level 4
   6.92%               kernel
   1.08%            libjvm.so
   0.69%  libjvmcicompiler.so
   0.66%         libc-2.31.so
   0.50%                     
   0.36%          interpreter
   0.21%          c1, level 3
   0.16%       hsdis-amd64.so
   0.11%   libpthread-2.31.so
   0.06%           ld-2.31.so
   0.04%       perf-30608.map
   0.04%          c1, level 2
   0.01%               [vdso]
   0.00%          c1, level 1
   0.00%     Unknown, level 0
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline
# Parameters: (iterations = 2000, size = 512)

# Run progress: 37.50% complete, ETA 00:09:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 261.655 ms/op
# Warmup Iteration   2: 258.063 ms/op
# Warmup Iteration   3: 258.022 ms/op
# Warmup Iteration   4: 258.044 ms/op
# Warmup Iteration   5: 258.016 ms/op
Iteration   1: 258.009 ms/op
Iteration   2: 258.038 ms/op
Iteration   3: 258.030 ms/op
Iteration   4: 258.016 ms/op
Iteration   5: 258.021 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline":
  258.023 ±(99.9%) 0.045 ms/op [Average]
  (min, avg, max) = (258.009, 258.023, 258.038), stdev = 0.012
  CI (99.9%): [257.978, 258.067] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.baseline:·asm":
PrintAssembly processed: 285710 total address lines.
Perf output processed (skipped 59.283 seconds):
 Column 1: cycles (58555 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 757 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@72 (line 78)
                      0x00007f47fefff779:   vaddsd %xmm5,%xmm6,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
                      0x00007f47fefff77d:   mov    $0x0,%edx
                      0x00007f47fefff782:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007f47fefff78c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
                 ↗↗   0x00007f47fefff790:   cmp    %edx,%r11d
          ╭      ││   0x00007f47fefff793:   jle    0x00007f47fefff873           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@23 (line 76)
   0.01%  │      ││   0x00007f47fefff799:   nopl   0x0(%rax)
   0.02%  │      ││   0x00007f47fefff7a0:   cmp    $0x1,%r8d
          │╭     ││   0x00007f47fefff7a4:   jl     0x00007f47fefff86c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.01%  ││     ││   0x00007f47fefff7aa:   vcvtsi2sd %edx,%xmm8,%xmm8          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@28 (line 77)
   0.01%  ││     ││   0x00007f47fefff7ae:   vsubsd %xmm2,%xmm8,%xmm8            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@38 (line 77)
   0.03%  ││     ││   0x00007f47fefff7b2:   vmulsd %xmm4,%xmm8,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@42 (line 77)
   0.00%  ││     ││   0x00007f47fefff7b6:   vdivsd %xmm0,%xmm8,%xmm8            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@48 (line 77)
   0.05%  ││     ││   0x00007f47fefff7ba:   vaddsd %xmm5,%xmm8,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   0.04%  ││     ││   0x00007f47fefff7be:   vmovapd %xmm9,%xmm10
   0.03%  ││     ││   0x00007f47fefff7c3:   vmovapd %xmm7,%xmm9
   0.01%  ││     ││   0x00007f47fefff7c7:   mov    $0x1,%ebp
          ││╭    ││   0x00007f47fefff7cc:   jmp    0x00007f47fefff81d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
          │││    ││   0x00007f47fefff7d1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││    ││   0x00007f47fefff7dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.78%  │││  ↗ ││   0x00007f47fefff7e0:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@97 (line 81)
  17.18%  │││  │ ││   0x00007f47fefff7e5:   vmulsd %xmm9,%xmm9,%xmm12           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@102 (line 81)
   2.24%  │││  │ ││   0x00007f47fefff7ea:   vaddsd %xmm12,%xmm11,%xmm13         ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@103 (line 81)
  27.37%  │││  │ ││   0x00007f47fefff7ef:   vucomisd %xmm4,%xmm13
  10.93%  │││╭ │ ││   0x00007f47fefff7f3:   jp     0x00007f47fefff825
  10.66%  ││││╭│ ││   0x00007f47fefff7f9:   ja     0x00007f47fefff825           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@106 (line 81)
   2.93%  ││││││ ││   0x00007f47fefff7ff:   vsubsd %xmm12,%xmm11,%xmm11         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@119 (line 82)
   0.01%  ││││││ ││   0x00007f47fefff804:   vaddsd %xmm8,%xmm11,%xmm11          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@122 (line 82)
   5.13%  ││││││ ││   0x00007f47fefff809:   vmulsd %xmm1,%xmm10,%xmm10          ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@130 (line 83)
   0.99%  ││││││ ││   0x00007f47fefff80d:   vmulsd %xmm9,%xmm10,%xmm9           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@133 (line 83)
   0.58%  ││││││ ││   0x00007f47fefff812:   vaddsd %xmm6,%xmm9,%xmm9            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@136 (line 83)
   0.45%  ││││││ ││   0x00007f47fefff816:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@143 (line 86)
   4.39%  ││││││ ││   0x00007f47fefff818:   vmovapd %xmm11,%xmm10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@84 (line 81)
   1.09%  ││↘│││ ││   0x00007f47fefff81d:   data16 xchg %ax,%ax
   0.88%  ││ │││ ││   0x00007f47fefff820:   cmp    %ebp,%r8d
          ││ ││╰ ││   0x00007f47fefff823:   jg     0x00007f47fefff7e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@90 (line 81)
   0.04%  ││ ↘↘  ││↗  0x00007f47fefff825:   mov    %edx,%r13d
   0.01%  ││     │││  0x00007f47fefff828:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
   0.00%  ││     │││  0x00007f47fefff82b:   mov    %edx,%r14d
   0.01%  ││     │││  0x00007f47fefff82e:   add    %edi,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@188 (line 89)
   0.03%  ││     │││  0x00007f47fefff831:   cmp    %ebp,%r8d
          ││    ╭│││  0x00007f47fefff834:   jle    0x00007f47fefff853           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@155 (line 88)
          ││    ││││  0x00007f47fefff83a:   vmovsd %xmm5,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@172 (line 88)
   0.01%  ││    ││││  0x00007f47fefff841:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││    ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││    ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@173 (line 88)
   0.01%  ││    ││││  0x00007f47fefff848:   test   %eax,0x0(%rbp)               ;   {poll}
   0.02%  ││    ││││  0x00007f47fefff84b:   mov    %r13d,%edx
          ││    │╰││  0x00007f47fefff84e:   jmp    0x00007f47fefff790           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@17 (line 76)
          ││    ↘ ││  0x00007f47fefff853:   vmovsd %xmm3,0x10(%rax,%r14,8)      ;*dastore {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@190 (line 89)
          ││      ││  0x00007f47fefff85a:   mov    0x348(%r15),%rbp             ; ImmutableOopMap {rax=Oop rsi=Oop }
          ││      ││                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          ││      ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ││      ││  0x00007f47fefff861:   test   %eax,0x0(%rbp)               ;   {poll}
          ││      ││  0x00007f47fefff864:   mov    %r13d,%edx
   0.00%  ││      ╰│  0x00007f47fefff867:   jmp    0x00007f47fefff790
          │↘       │  0x00007f47fefff86c:   mov    $0x0,%ebp
          │        ╰  0x00007f47fefff871:   jmp    0x00007f47fefff825           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@191 (line 76)
          ↘           0x00007f47fefff873:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                                ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f47fefff87a:   test   %eax,(%rdi)                  ;   {poll}
                      0x00007f47fefff87c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline@197 (line 75)
                      0x00007f47fefff87e:   xchg   %ax,%ax
....................................................................................................
  85.96%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 757 
   2.50%               kernel  [unknown] 
   1.12%               kernel  [unknown] 
   0.56%               kernel  [unknown] 
   0.29%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 953 
   0.20%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 953 
   0.17%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.12%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 979 
   0.12%               kernel  [unknown] 
   0.10%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.09%               kernel  [unknown] 
   0.09%            libjvm.so  ElfSymbolTable::lookup 
   0.08%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 979 
   0.07%   libpthread-2.31.so  __libc_write 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  xmlStream::write_text 
   0.06%         libc-2.31.so  __strncat_ssse3 
   7.93%  <...other 1794 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 5, compile id 757 
   7.20%               kernel  [unknown] 
   0.63%       jvmci, level 4  jdk.incubator.vector.Double256Vector::lanewise, version 2, compile id 953 
   0.60%                       <unknown> 
   0.32%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 979 
   0.29%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 1, compile id 1059 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1067 
   0.15%         libc-2.31.so  __strncat_ssse3 
   0.15%         libc-2.31.so  __strxfrm_l 
   0.12%            libjvm.so  xmlStream::write_text 
   0.12%       jvmci, level 4  jdk.incubator.vector.Double256Vector::blend, version 2, compile id 1051 
   0.11%       hsdis-amd64.so  print_insn 
   0.10%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1049 
   0.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 986 
   0.09%            libjvm.so  ElfSymbolTable::lookup 
   0.09%            libjvm.so  defaultStream::write 
   0.08%            libjvm.so  stringStream::write 
   0.07%   libpthread-2.31.so  __libc_write 
   0.06%         libc-2.31.so  getifaddrs_internal 
   3.48%  <...other 827 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.52%       jvmci, level 4
   7.20%               kernel
   1.39%  libjvmcicompiler.so
   1.30%            libjvm.so
   0.74%         libc-2.31.so
   0.60%                     
   0.40%          c1, level 3
   0.30%          interpreter
   0.20%       hsdis-amd64.so
   0.13%   libpthread-2.31.so
   0.10%           ld-2.31.so
   0.05%          c1, level 2
   0.03%       perf-30668.map
   0.01%               [vdso]
   0.01%     Unknown, level 0
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 256)

# Run progress: 50.00% complete, ETA 00:07:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 131.849 ms/op
# Warmup Iteration   2: 56.197 ms/op
# Warmup Iteration   3: 56.119 ms/op
# Warmup Iteration   4: 56.133 ms/op
# Warmup Iteration   5: 56.149 ms/op
Iteration   1: 56.121 ms/op
Iteration   2: 56.095 ms/op
Iteration   3: 56.142 ms/op
Iteration   4: 56.187 ms/op
Iteration   5: 56.267 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  56.162 ±(99.9%) 0.260 ms/op [Average]
  (min, avg, max) = (56.095, 56.162, 56.267), stdev = 0.067
  CI (99.9%): [55.902, 56.422] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 294786 total address lines.
Perf output processed (skipped 59.296 seconds):
 Column 1: cycles (51245 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 

                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
            0x00007fb307039a54:   mov    %rdx,%r14
            0x00007fb307039a57:   mov    %rax,%r13
   0.11%    0x00007fb307039a5a:   movabs $0x7662af100,%rdi            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800c867e8&apos;{0x00000007662af100})}
            0x00007fb307039a64:   shl    $0x3,%rcx                    ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.11%    0x00007fb307039a68:   mov    0xb8(%rsp),%rsi
   0.09%    0x00007fb307039a70:   mov    0x90(%rsp),%rdx
   0.08%    0x00007fb307039a78:   mov    %rcx,0x48(%rsp)
   0.00%    0x00007fb307039a7d:   mov    0xb0(%rsp),%rcx
   0.12%    0x00007fb307039a85:   mov    $0x4,%r8d
   0.09%    0x00007fb307039a8b:   mov    %r11,%r9
   0.11%    0x00007fb307039a8e:   mov    %rdi,%r10
   0.00%    0x00007fb307039a91:   mov    %r14,%rdi
   0.13%    0x00007fb307039a94:   mov    %r13,(%rsp)
   0.14%    0x00007fb307039a98:   mov    %r10,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.13%    0x00007fb307039a9d:   mov    %r14,0x40(%rsp)
   0.01%    0x00007fb307039aa2:   mov    %r13,0x38(%rsp)
   0.13%    0x00007fb307039aa7:   call   0x00007fb3070135c0           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                                                                      ;   {static_call}
   0.18%    0x00007fb307039aac:   nop
   0.05%    0x00007fb307039aad:   mov    %rax,%r11                    ; ImmutableOopMap {r11=Oop [56]=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%    0x00007fb307039ab0:   cmpl   $0xc3dce8,0x8(%r11)          ; implicit exception: dispatches to 0x00007fb30703c8c6
                                                                      ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.11%    0x00007fb307039ab8:   jne    0x00007fb30703c1e5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.20%    0x00007fb307039abe:   mov    0x38(%rsp),%r10
   0.43%    0x00007fb307039ac3:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.76%    0x00007fb307039ac7:   test   %r8d,%r8d
            0x00007fb307039aca:   je     0x00007fb30703a085
   0.24%    0x00007fb307039ad0:   mov    0x8(,%r8,8),%esi
   0.87%    0x00007fb307039ad8:   movabs $0x800000000,%rax
   0.01%    0x00007fb307039ae2:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.23%    0x00007fb307039ae6:   test   %r8d,%r8d
            0x00007fb307039ae9:   je     0x00007fb307039f59
   0.01%    0x00007fb307039aef:   movabs $0x800000960,%r14            ;   {metadata({type array bool})}
   0.02%    0x00007fb307039af9:   nopl   0x0(%rax)
   0.00%    0x00007fb307039b00:   cmp    %rsi,%r14
            0x00007fb307039b03:   jne    0x00007fb30703b79c           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.25%    0x00007fb307039b09:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007fb30703c8e6
   0.02%    0x00007fb307039b11:   test   %r9d,%r9d
            0x00007fb307039b14:   je     0x00007fb30703b2b7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.04%    0x00007fb307039b1a:   mov    0x174(%rsp),%ecx
   0.01%    0x00007fb307039b21:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@275 (line 135)
   0.21%    0x00007fb307039b23:   cmpb   $0x0,0x10(,%r8,8)
   0.06%    0x00007fb307039b2c:   je     0x00007fb307039f75           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%    0x00007fb307039b32:   mov    0x108(%r15),%rsi
   0.22%    0x00007fb307039b39:   lea    0x10(%rsi),%rax
   0.02%    0x00007fb307039b3d:   data16 xchg %ax,%ax
   0.02%    0x00007fb307039b40:   cmp    0x118(%r15),%rax
            0x00007fb307039b47:   ja     0x00007fb30703a500
   0.01%    0x00007fb307039b4d:   mov    %rax,0x108(%r15)
   0.20%    0x00007fb307039b54:   prefetchw 0xd0(%rsi)
   0.02%    0x00007fb307039b5b:   movq   $0x1,(%rsi)
   0.01%    0x00007fb307039b62:   movl   $0xc3dce8,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%    0x00007fb307039b69:   movl   $0x0,0xc(%rsi)
   0.26%    0x00007fb307039b70:   mov    %rsi,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.01%    0x00007fb307039b73:   mov    0x108(%r15),%rsi
   0.04%    0x00007fb307039b7a:   lea    0x30(%rsi),%rax
   0.02%    0x00007fb307039b7e:   xchg   %ax,%ax
   0.19%    0x00007fb307039b80:   cmp    0x118(%r15),%rax
            0x00007fb307039b87:   ja     0x00007fb30703a5f8
   0.02%    0x00007fb307039b8d:   mov    %rax,0x108(%r15)
   0.03%    0x00007fb307039b94:   prefetchw 0xf0(%rsi)
   0.01%    0x00007fb307039b9b:   prefetchw 0x130(%rsi)
   0.21%    0x00007fb307039ba2:   prefetchw 0x170(%rsi)
   0.02%    0x00007fb307039ba9:   prefetchw 0x1b0(%rsi)
   0.20%    0x00007fb307039bb0:   movq   $0x1,(%rsi)
   0.01%    0x00007fb307039bb7:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.80%    0x00007fb307039bbe:   movl   $0x4,0xc(%rsi)
   0.01%    0x00007fb307039bc5:   movq   $0x0,0x10(%rsi)
   0.65%    0x00007fb307039bcd:   movq   $0x0,0x18(%rsi)
   0.01%    0x00007fb307039bd5:   movq   $0x0,0x20(%rsi)
   0.17%    0x00007fb307039bdd:   movq   $0x0,0x28(%rsi)
   0.39%    0x00007fb307039be5:   mov    %rsi,%rbp
   0.02%    0x00007fb307039be8:   vmovsd 0x168(%rsp),%xmm4
   0.03%    0x00007fb307039bf1:   vmovsd 0xd8(%rsp),%xmm10
   0.10%    0x00007fb307039bfa:   vmovsd 0xe0(%rsp),%xmm12
   0.22%    0x00007fb307039c03:   vmovsd 0xe8(%rsp),%xmm14
   0.04%    0x00007fb307039c0c:   vmovsd %xmm4,0x28(%rbp)
   0.06%    0x00007fb307039c11:   vmovsd %xmm10,0x20(%rbp)
   0.10%    0x00007fb307039c16:   vmovsd %xmm12,0x18(%rbp)
   0.24%    0x00007fb307039c1b:   vmovsd %xmm14,0x10(%rbp)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.10%    0x00007fb307039c20:   mov    0x108(%r15),%rsi
   0.04%    0x00007fb307039c27:   lea    0x10(%rsi),%rax
   0.07%    0x00007fb307039c2b:   cmp    0x118(%r15),%rax
            0x00007fb307039c32:   ja     0x00007fb30703a3f2
   0.12%    0x00007fb307039c38:   mov    %rax,0x108(%r15)
   0.11%    0x00007fb307039c3f:   prefetchw 0xd0(%rsi)
   0.04%    0x00007fb307039c46:   movq   $0x1,(%rsi)
   0.43%    0x00007fb307039c4d:   movl   $0xc3dce8,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.52%    0x00007fb307039c54:   movl   $0x0,0xc(%rsi)
   0.29%    0x00007fb307039c5b:   mov    %rsi,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.01%    0x00007fb307039c5e:   mov    0x108(%r15),%rsi
   0.04%    0x00007fb307039c65:   lea    0x30(%rsi),%rax
   0.12%    0x00007fb307039c69:   cmp    0x118(%r15),%rax
            0x00007fb307039c70:   ja     0x00007fb30703a2d6
   0.15%    0x00007fb307039c76:   mov    %rax,0x108(%r15)
   0.08%    0x00007fb307039c7d:   prefetchw 0xf0(%rsi)
   0.33%    0x00007fb307039c84:   prefetchw 0x130(%rsi)
   0.03%    0x00007fb307039c8b:   prefetchw 0x170(%rsi)
   0.27%    0x00007fb307039c92:   prefetchw 0x1b0(%rsi)
   0.20%    0x00007fb307039c99:   movq   $0x1,(%rsi)
   0.01%    0x00007fb307039ca0:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.24%    0x00007fb307039ca7:   movl   $0x4,0xc(%rsi)
   1.38%    0x00007fb307039cae:   movq   $0x0,0x10(%rsi)
   0.05%    0x00007fb307039cb6:   movq   $0x0,0x18(%rsi)
   0.23%    0x00007fb307039cbe:   movq   $0x0,0x20(%rsi)
   0.02%    0x00007fb307039cc6:   movq   $0x0,0x28(%rsi)
   0.25%    0x00007fb307039cce:   mov    %rsi,%rdi
   0.01%    0x00007fb307039cd1:   vmovsd 0x148(%rsp),%xmm5
   0.09%    0x00007fb307039cda:   vmovsd 0x158(%rsp),%xmm6
   0.01%    0x00007fb307039ce3:   vmovsd 0xf0(%rsp),%xmm7
   0.19%    0x00007fb307039cec:   vmovsd 0xf8(%rsp),%xmm8
   0.02%    0x00007fb307039cf5:   vmovsd %xmm5,0x28(%rdi)
   0.17%    0x00007fb307039cfa:   vmovsd %xmm6,0x20(%rdi)
   0.01%    0x00007fb307039cff:   vmovsd %xmm7,0x18(%rdi)
   0.22%    0x00007fb307039d04:   vmovsd %xmm8,0x10(%rdi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.03%    0x00007fb307039d09:   mov    0x108(%r15),%rsi
   0.04%    0x00007fb307039d10:   lea    0x30(%rsi),%rax
   0.01%    0x00007fb307039d14:   nopl   0x0(%rax,%rax,1)
   0.22%    0x00007fb307039d1c:   data16 data16 xchg %ax,%ax
   0.03%    0x00007fb307039d20:   cmp    0x118(%r15),%rax
            0x00007fb307039d27:   ja     0x00007fb30703a385
   0.03%    0x00007fb307039d2d:   mov    %rax,0x108(%r15)
   0.01%    0x00007fb307039d34:   prefetchw 0xf0(%rsi)
   0.23%    0x00007fb307039d3b:   prefetchw 0x130(%rsi)
   0.02%    0x00007fb307039d42:   prefetchw 0x170(%rsi)
   0.03%    0x00007fb307039d49:   prefetchw 0x1b0(%rsi)
   0.16%    0x00007fb307039d50:   movq   $0x1,(%rsi)
   0.32%    0x00007fb307039d57:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.42%    0x00007fb307039d5e:   movl   $0x4,0xc(%rsi)
   0.07%    0x00007fb307039d65:   movq   $0x0,0x10(%rsi)
   0.33%    0x00007fb307039d6d:   movq   $0x0,0x18(%rsi)
   0.14%    0x00007fb307039d75:   movq   $0x0,0x20(%rsi)
   0.27%    0x00007fb307039d7d:   movq   $0x0,0x28(%rsi)
   0.17%    0x00007fb307039d85:   mov    %rsi,%rbx
   0.01%    0x00007fb307039d88:   vmovsd 0x100(%rsp),%xmm9
   0.03%    0x00007fb307039d91:   vmovsd 0x108(%rsp),%xmm11
   0.11%    0x00007fb307039d9a:   vmovsd 0x110(%rsp),%xmm13
   0.14%    0x00007fb307039da3:   vmovsd 0x118(%rsp),%xmm15
   0.01%    0x00007fb307039dac:   vmovsd %xmm9,0x28(%rbx)
   0.01%    0x00007fb307039db1:   vmovsd %xmm11,0x20(%rbx)
   0.25%    0x00007fb307039db6:   vmovsd %xmm13,0x18(%rbx)
   0.19%    0x00007fb307039dbb:   vmovsd %xmm15,0x10(%rbx)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.14%    0x00007fb307039dc0:   mov    0x108(%r15),%rsi
   0.05%    0x00007fb307039dc7:   lea    0x30(%rsi),%rax
   0.04%    0x00007fb307039dcb:   cmp    0x118(%r15),%rax
            0x00007fb307039dd2:   ja     0x00007fb30703a4ab
   0.05%    0x00007fb307039dd8:   mov    %rax,0x108(%r15)
   0.20%    0x00007fb307039ddf:   prefetchw 0xf0(%rsi)
   0.01%    0x00007fb307039de6:   prefetchw 0x130(%rsi)
   0.07%    0x00007fb307039ded:   prefetchw 0x170(%rsi)
   0.08%    0x00007fb307039df4:   prefetchw 0x1b0(%rsi)
   0.28%    0x00007fb307039dfb:   movq   $0x1,(%rsi)
   0.15%    0x00007fb307039e02:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.35%    0x00007fb307039e09:   movl   $0x4,0xc(%rsi)
   0.18%    0x00007fb307039e10:   movq   $0x0,0x10(%rsi)
   0.29%    0x00007fb307039e18:   movq   $0x0,0x18(%rsi)
   0.23%    0x00007fb307039e20:   movq   $0x0,0x20(%rsi)
   0.21%    0x00007fb307039e28:   movq   $0x0,0x28(%rsi)
   0.24%    0x00007fb307039e30:   mov    %rsi,%r13
   0.01%    0x00007fb307039e33:   vmovsd 0x120(%rsp),%xmm2
   0.05%    0x00007fb307039e3c:   vmovsd 0x128(%rsp),%xmm9
   0.05%    0x00007fb307039e45:   vmovsd 0x160(%rsp),%xmm6
   0.23%    0x00007fb307039e4e:   vmovsd 0x150(%rsp),%xmm8
   0.01%    0x00007fb307039e57:   vmovsd %xmm2,0x28(%r13)
   0.02%    0x00007fb307039e5d:   vmovsd %xmm9,0x20(%r13)
   0.24%    0x00007fb307039e63:   vmovsd %xmm6,0x18(%r13)
   0.27%    0x00007fb307039e69:   vmovsd %xmm8,0x10(%r13)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.27%    0x00007fb307039e6f:   mov    %rbp,%rsi
   0.01%    0x00007fb307039e72:   shr    $0x3,%rsi
   0.00%    0x00007fb307039e76:   mov    %esi,0xc(%r8)
   0.25%    0x00007fb307039e7a:   mov    %r8,%rsi
   0.04%    0x00007fb307039e7d:   xor    %rbp,%rsi
   0.01%    0x00007fb307039e80:   test   $0xffffffffffe00000,%rsi
            0x00007fb307039e87:   je     0x00007fb30703a0fa
            0x00007fb307039e8d:   test   %rbp,%rbp
            0x00007fb307039e90:   je     0x00007fb30703a107
            0x00007fb307039e96:   mov    0x2b8(%rsp),%rbp
            0x00007fb307039e9e:   mov    %r8,%r10
            0x00007fb307039ea1:   shr    $0x9,%r10
            0x00007fb307039ea5:   cmpb   $0x4,(%r10,%rbp,1)
            0x00007fb307039eaa:   jne    0x00007fb30703a114
            0x00007fb307039eb0:   mov    %rbp,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
....................................................................................................
  22.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 

               0x00007fb307039304:   vmovsd 0x1c0(%rsp),%xmm3
               0x00007fb30703930d:   vmovsd 0x208(%rsp),%xmm0
               0x00007fb307039316:   vmovsd 0x210(%rsp),%xmm2
   0.00%       0x00007fb30703931f:   vmovsd 0x218(%rsp),%xmm4
               0x00007fb307039328:   mov    0x298(%rsp),%rbp
               0x00007fb307039330:   mov    0x2a8(%rsp),%rdx
               0x00007fb307039338:   mov    0xb0(%rsp),%rax
               0x00007fb307039340:   mov    0xb8(%rsp),%rbx
               0x00007fb307039348:   mov    0xc0(%rsp),%rsi              ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.23%       0x00007fb307039350:   cmp    0x10(%rsi),%r14d
               0x00007fb307039354:   jge    0x00007fb30703b417           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@177 (line 121)
   0.08%       0x00007fb30703935a:   nopw   0x0(%rax,%rax,1)
   0.04%       0x00007fb307039360:   cmpl   $0x4,0xc(%r9)
   0.01%       0x00007fb307039365:   jb     0x00007fb30703b86d           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.24%       0x00007fb30703936b:   cmpl   $0x4,0xc(%r8)
   0.05%       0x00007fb307039370:   jb     0x00007fb30703bfbd
   0.03%       0x00007fb307039376:   vmovsd 0x28(%r8),%xmm8              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%       0x00007fb30703937c:   vmovsd %xmm8,0x168(%rsp)
   0.22%       0x00007fb307039385:   vmovsd 0x28(%r9),%xmm9              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.05%       0x00007fb30703938b:   vmovsd %xmm9,0x160(%rsp)
   0.04%       0x00007fb307039394:   vmovsd 0x20(%r8),%xmm10             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.00%       0x00007fb30703939a:   vmovsd 0x20(%r9),%xmm11             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.24%       0x00007fb3070393a0:   vmovsd 0x18(%r8),%xmm12             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.04%       0x00007fb3070393a6:   vmovsd 0x18(%r9),%xmm13             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.04%       0x00007fb3070393ac:   vmovsd 0x10(%r8),%xmm14             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%       0x00007fb3070393b2:   vmovsd 0x10(%r9),%xmm15             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.23%       0x00007fb3070393b8:   mov    %r8,0x68(%rsp)
   0.04%       0x00007fb3070393bd:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.03%       0x00007fb3070393c1:   test   %r8d,%r8d
               0x00007fb3070393c4:   je     0x00007fb30703a04b
   0.01%       0x00007fb3070393ca:   mov    %r9,0x60(%rsp)
   0.22%       0x00007fb3070393cf:   mov    0x8(,%r8,8),%r9d
   0.06%       0x00007fb3070393d7:   movabs $0x800000000,%r13
   0.02%       0x00007fb3070393e1:   lea    0x0(%r13,%r9,1),%r9
   0.07%       0x00007fb3070393e6:   test   %r8d,%r8d
          ╭    0x00007fb3070393e9:   je     0x00007fb3070393f8
   0.17%  │    0x00007fb3070393ef:   cmp    %r9,%rbp
          │    0x00007fb3070393f2:   jne    0x00007fb30703b76e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
          │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.04%  ↘    0x00007fb3070393f8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop rsi=Oop r8=NarrowOop r10=Oop r11=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.01%       0x00007fb307039400:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fb30703c7c6
   0.19%       0x00007fb307039409:   jb     0x00007fb30703b700
   0.05%       0x00007fb30703940f:   mov    0xc(%r10),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.04%       0x00007fb307039413:   test   %r9d,%r9d
               0x00007fb307039416:   je     0x00007fb30703a065
   0.02%       0x00007fb30703941c:   mov    %r10,0x58(%rsp)
   0.18%       0x00007fb307039421:   mov    0x8(,%r9,8),%r13d
   0.06%       0x00007fb307039429:   movabs $0x800000000,%r10
   0.02%       0x00007fb307039433:   lea    (%r10,%r13,1),%r13
   0.01%       0x00007fb307039437:   test   %r9d,%r9d
           ╭   0x00007fb30703943a:   je     0x00007fb307039449           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
           │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.21%   │   0x00007fb307039440:   cmp    %r13,%rbp
           │   0x00007fb307039443:   jne    0x00007fb30703bbbc           ; ImmutableOopMap {rax=Oop rbx=Oop rsi=Oop r8=NarrowOop r9=NarrowOop r11=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
           │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.04%   ↘   0x00007fb307039449:   cmpl   $0x4,0xc(,%r9,8)             ; implicit exception: dispatches to 0x00007fb30703c7e6
   0.02%       0x00007fb307039452:   jb     0x00007fb30703b585
   0.19%       0x00007fb307039458:   vmovsd 0x10(,%r8,8),%xmm7
   0.06%       0x00007fb307039462:   vmovsd 0x18(,%r8,8),%xmm6
   0.02%       0x00007fb30703946c:   vmovsd 0x20(,%r8,8),%xmm8
   0.02%       0x00007fb307039476:   vmovsd 0x28(,%r8,8),%xmm9           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.19%       0x00007fb307039480:   vaddsd 0x28(,%r9,8),%xmm9,%xmm9
   0.11%       0x00007fb30703948a:   vaddsd 0x20(,%r9,8),%xmm8,%xmm8
   0.20%       0x00007fb307039494:   vaddsd 0x18(,%r9,8),%xmm6,%xmm6
   0.12%       0x00007fb30703949e:   vaddsd 0x10(,%r9,8),%xmm7,%xmm7     ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.26%       0x00007fb3070394a8:   mov    0xc(%r11),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.08%       0x00007fb3070394ac:   test   %r8d,%r8d
               0x00007fb3070394af:   je     0x00007fb30703a076
   0.04%       0x00007fb3070394b5:   mov    0x8(,%r8,8),%r9d
   0.04%       0x00007fb3070394bd:   movabs $0x800000000,%r10
   0.22%       0x00007fb3070394c7:   lea    (%r10,%r9,1),%r9
   0.08%       0x00007fb3070394cb:   test   %r8d,%r8d
            ╭  0x00007fb3070394ce:   je     0x00007fb3070394dd
   0.03%    │  0x00007fb3070394d4:   cmp    %r9,%rbp
            │  0x00007fb3070394d7:   jne    0x00007fb30703c186           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
            │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.04%    ↘  0x00007fb3070394dd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop rbx=Oop rsi=Oop r8=NarrowOop r11=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.19%       0x00007fb3070394e0:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fb30703c806
   0.10%       0x00007fb3070394e9:   jb     0x00007fb30703c350
   0.04%       0x00007fb3070394ef:   vmovsd %xmm8,0x158(%rsp)
   0.20%       0x00007fb3070394f8:   vmovsd %xmm9,0x150(%rsp)
   0.05%       0x00007fb307039501:   mov    %r14d,0x174(%rsp)
   0.03%       0x00007fb307039509:   mov    0xa0(%rsp),%rbp
   0.03%       0x00007fb307039511:   mov    0xa8(%rsp),%r10
   0.17%       0x00007fb307039519:   vmovsd 0x28(,%r8,8),%xmm9
   0.05%       0x00007fb307039523:   vmovsd %xmm9,0x148(%rsp)
   0.04%       0x00007fb30703952c:   vmovsd 0x20(,%r8,8),%xmm9
   0.02%       0x00007fb307039536:   vmovsd 0x18(,%r8,8),%xmm5
   0.18%       0x00007fb307039540:   vmovsd 0x10(,%r8,8),%xmm8           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.08%       0x00007fb30703954a:   vsubsd %xmm14,%xmm15,%xmm14         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.02%       0x00007fb30703954f:   vaddsd %xmm0,%xmm14,%xmm14          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.05%       0x00007fb307039553:   vmulsd %xmm14,%xmm14,%xmm15         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.26%       0x00007fb307039558:   vmulsd %xmm8,%xmm7,%xmm7            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.12%       0x00007fb30703955d:   vaddsd %xmm1,%xmm7,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.64%       0x00007fb307039561:   vmulsd %xmm7,%xmm7,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   1.06%       0x00007fb307039565:   vaddsd %xmm8,%xmm15,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   1.12%       0x00007fb30703956a:   vmovsd %xmm0,0x140(%rsp)
   0.31%       0x00007fb307039573:   vsubsd %xmm12,%xmm13,%xmm12         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
               0x00007fb307039578:   vaddsd %xmm2,%xmm12,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.00%       0x00007fb30703957c:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.01%       0x00007fb307039581:   vmulsd %xmm5,%xmm6,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.33%       0x00007fb307039585:   vaddsd %xmm3,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
               0x00007fb307039589:   vmulsd %xmm5,%xmm5,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.00%       0x00007fb30703958d:   vaddsd %xmm6,%xmm13,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.01%       0x00007fb307039591:   vmovsd %xmm0,0x138(%rsp)
   0.27%       0x00007fb30703959a:   vsubsd %xmm10,%xmm11,%xmm10         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%       0x00007fb30703959f:   vaddsd %xmm4,%xmm10,%xmm10          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.00%       0x00007fb3070395a3:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
               0x00007fb3070395a8:   vmovsd 0x158(%rsp),%xmm0
   0.33%       0x00007fb3070395b1:   vmulsd %xmm9,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
               0x00007fb3070395b6:   vaddsd 0x1c8(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
               0x00007fb3070395bf:   vmovsd %xmm0,0x158(%rsp)
   0.00%       0x00007fb3070395c8:   vmulsd %xmm0,%xmm0,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.26%       0x00007fb3070395cc:   vaddsd %xmm9,%xmm11,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.22%       0x00007fb3070395d1:   vmovsd %xmm0,0x130(%rsp)
   0.13%       0x00007fb3070395da:   vmovsd 0x160(%rsp),%xmm0
   0.01%       0x00007fb3070395e3:   vsubsd 0x168(%rsp),%xmm0,%xmm0      ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.16%       0x00007fb3070395ec:   vaddsd 0x220(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
               0x00007fb3070395f5:   vmovsd %xmm0,0x168(%rsp)
   0.16%       0x00007fb3070395fe:   vmulsd %xmm0,%xmm0,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.00%       0x00007fb307039602:   vmovsd 0x150(%rsp),%xmm0
   0.15%       0x00007fb30703960b:   vmulsd 0x148(%rsp),%xmm0,%xmm0      ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
               0x00007fb307039614:   vaddsd 0x1d0(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.12%       0x00007fb30703961d:   vmovsd %xmm0,0x148(%rsp)
   0.01%       0x00007fb307039626:   vmulsd %xmm0,%xmm0,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.17%       0x00007fb30703962a:   vaddsd %xmm2,%xmm1,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.31%       0x00007fb30703962e:   mov    %rbx,%rsi
   0.10%       0x00007fb307039631:   mov    %rdx,%r8
   0.01%       0x00007fb307039634:   mov    %rax,%rdx
   0.05%       0x00007fb307039637:   mov    $0x4,%ecx
   0.19%       0x00007fb30703963c:   mov    %r8,%r11
   0.10%       0x00007fb30703963f:   mov    %r10,%r9
               0x00007fb307039642:   mov    %rbp,%rdi                    ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.06%       0x00007fb307039645:   vmovsd %xmm8,0x150(%rsp)
   0.20%       0x00007fb30703964e:   vmovsd %xmm6,0x160(%rsp)
   0.09%       0x00007fb307039657:   vmovsd %xmm9,0x128(%rsp)
   0.00%       0x00007fb307039660:   vmovsd %xmm2,0x120(%rsp)
   0.05%       0x00007fb307039669:   vmovsd %xmm15,0x118(%rsp)
   0.19%       0x00007fb307039672:   vmovsd %xmm13,0x110(%rsp)           ;   {no_reloc}
   0.08%       0x00007fb30703967b:   vmovsd %xmm11,0x108(%rsp)
   0.00%       0x00007fb307039684:   vmovsd %xmm1,0x100(%rsp)
   0.05%       0x00007fb30703968d:   vmovsd %xmm7,0xf8(%rsp)
   0.19%       0x00007fb307039696:   vmovsd %xmm5,0xf0(%rsp)
   0.06%       0x00007fb30703969f:   vmovsd %xmm14,0xe8(%rsp)
               0x00007fb3070396a8:   vmovsd %xmm12,0xe0(%rsp)
   0.05%       0x00007fb3070396b1:   vmovsd %xmm10,0xd8(%rsp)
   0.18%       0x00007fb3070396ba:   vmovsd %xmm0,0xd0(%rsp)
   0.19%       0x00007fb3070396c3:   call   0x00007fb307007b20           ; ImmutableOopMap {[112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                                                                         ;   {static_call}
   0.12%       0x00007fb3070396c8:   nop
               0x00007fb3070396c9:   mov    %rax,%r11                    ; ImmutableOopMap {r11=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
               0x00007fb3070396cc:   cmpl   $0xc3dce8,0x8(%r11)          ; implicit exception: dispatches to 0x00007fb30703c826
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.26%       0x00007fb3070396d4:   jne    0x00007fb30703c206           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.07%       0x00007fb3070396da:   mov    0x108(%r15),%rsi
   0.02%       0x00007fb3070396e1:   lea    0x10(%rsi),%rax
               0x00007fb3070396e5:   cmp    0x118(%r15),%rax
               0x00007fb3070396ec:   ja     0x00007fb30703a174
   0.26%       0x00007fb3070396f2:   mov    %rax,0x108(%r15)
   0.07%       0x00007fb3070396f9:   prefetchw 0xd0(%rsi)
   0.02%       0x00007fb307039700:   movq   $0x1,(%rsi)
   0.04%       0x00007fb307039707:   movl   $0xc3dce8,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.30%       0x00007fb30703970e:   movl   $0x0,0xc(%rsi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.08%       0x00007fb307039715:   mov    0x108(%r15),%rax
   0.03%       0x00007fb30703971c:   lea    0x30(%rax),%rdx
   0.05%       0x00007fb307039720:   cmp    0x118(%r15),%rdx
               0x00007fb307039727:   ja     0x00007fb30703a1c5
   0.28%       0x00007fb30703972d:   mov    %rdx,0x108(%r15)
   0.11%       0x00007fb307039734:   prefetchw 0xf0(%rax)
   0.19%       0x00007fb30703973b:   prefetchw 0x130(%rax)
   0.09%       0x00007fb307039742:   prefetchw 0x170(%rax)
   0.30%       0x00007fb307039749:   prefetchw 0x1b0(%rax)
   0.21%       0x00007fb307039750:   movq   $0x1,(%rax)
   0.08%       0x00007fb307039757:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.39%       0x00007fb30703975e:   movl   $0x4,0xc(%rax)
   0.39%       0x00007fb307039765:   movq   $0x0,0x10(%rax)
   0.58%       0x00007fb30703976d:   movq   $0x0,0x18(%rax)
   0.04%       0x00007fb307039775:   movq   $0x0,0x20(%rax)
   0.30%       0x00007fb30703977d:   movq   $0x0,0x28(%rax)
   0.30%       0x00007fb307039785:   vmovsd 0xd0(%rsp),%xmm0
   0.11%       0x00007fb30703978e:   vmovsd 0x130(%rsp),%xmm1
   0.11%       0x00007fb307039797:   vmovsd 0x138(%rsp),%xmm2
   0.16%       0x00007fb3070397a0:   vmovsd 0x140(%rsp),%xmm3
   0.09%       0x00007fb3070397a9:   vmovsd %xmm0,0x28(%rax)
   0.12%       0x00007fb3070397ae:   vmovsd %xmm1,0x20(%rax)
   0.23%       0x00007fb3070397b3:   vmovsd %xmm2,0x18(%rax)
   0.13%       0x00007fb3070397b8:   vmovsd %xmm3,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.12%       0x00007fb3070397bd:   mov    %rax,%rdx
   0.03%       0x00007fb3070397c0:   shr    $0x3,%rdx
   0.08%       0x00007fb3070397c4:   mov    %edx,0xc(%rsi)
   0.15%       0x00007fb3070397c7:   mov    %rsi,%rdx
   0.07%       0x00007fb3070397ca:   xor    %rax,%rdx
   0.02%       0x00007fb3070397cd:   test   $0xffffffffffe00000,%rdx
               0x00007fb3070397d4:   je     0x00007fb30703a05c
               0x00007fb3070397da:   nopw   0x0(%rax,%rax,1)
               0x00007fb3070397e0:   test   %rax,%rax
               0x00007fb3070397e3:   je     0x00007fb30703a0b4
               0x00007fb3070397e9:   mov    0x2b8(%rsp),%r9
               0x00007fb3070397f1:   mov    %rsi,%r10
               0x00007fb3070397f4:   shr    $0x9,%r10
               0x00007fb3070397f8:   nopl   0x0(%rax,%rax,1)
               0x00007fb307039800:   cmpb   $0x4,(%r10,%r9,1)
               0x00007fb307039805:   jne    0x00007fb30703a0c7
....................................................................................................
  20.02%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1016 

             [Verified Entry Point]
               # {method} {0x00000008000058a8} &apos;blend&apos; &apos;(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ILjdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$VectorMask;Ljdk/internal/vm/vector/VectorSupport$VectorBlendOp;)Ljdk/internal/vm/vector/VectorSupport$Vector;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
               # parm0:    rsi:rsi   = &apos;java/lang/Class&apos;
               # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
               # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
               # parm3:    r8        = int
               # parm4:    r9:r9     = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm5:    rdi:rdi   = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm6:    [sp+0x20]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;  (sp of caller)
               # parm7:    [sp+0x28]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorBlendOp&apos;
   0.18%       0x00007fb3070135c0:   mov    %eax,-0x14000(%rsp)
   0.30%       0x00007fb3070135c7:   sub    $0x18,%rsp
   0.06%       0x00007fb3070135cb:   mov    %rbp,0x10(%rsp)
   0.16%       0x00007fb3070135d0:   mov    0x20(%rsp),%r10
               0x00007fb3070135d5:   mov    0x28(%rsp),%r11
   0.08%       0x00007fb3070135da:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.05%       0x00007fb3070135e0:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007fb307013ac1
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.20%       0x00007fb3070135e8:   jne    0x00007fb307013a3e           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.01%       0x00007fb3070135ee:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007fb307013add
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.11%       0x00007fb3070135f5:   jne    0x00007fb307013a50           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@5
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.05%       0x00007fb3070135fb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.16%       0x00007fb307013600:   cmpl   $0xc3e318,0x8(%r10)          ; implicit exception: dispatches to 0x00007fb307013af9
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.04%       0x00007fb307013608:   jne    0x00007fb307013a93           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.12%       0x00007fb30701360e:   cmpl   $0xc867e8,0x8(%r11)          ; implicit exception: dispatches to 0x00007fb307013b15
                                                                         ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800c867e8&apos;)}
   0.07%       0x00007fb307013616:   jne    0x00007fb307013a81           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.12%       0x00007fb30701361c:   mov    0xc(%r9),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007fb307013620:   test   %esi,%esi
               0x00007fb307013622:   je     0x00007fb307013913
   0.12%       0x00007fb307013628:   mov    0x8(,%rsi,8),%edx
   0.11%       0x00007fb30701362f:   movabs $0x800000000,%rax
   0.14%       0x00007fb307013639:   lea    (%rax,%rdx,1),%rdx
   0.01%       0x00007fb30701363d:   movabs $0x800006650,%rbp            ;   {metadata({type array double})}
   0.13%       0x00007fb307013647:   test   %esi,%esi
          ╭    0x00007fb307013649:   je     0x00007fb307013658
   0.06%  │    0x00007fb30701364f:   cmp    %rdx,%rbp
          │    0x00007fb307013652:   jne    0x00007fb3070139b6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.18%  ↘    0x00007fb307013658:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.00%       0x00007fb307013660:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007fb307013b31
   0.15%       0x00007fb307013668:   jb     0x00007fb307013a13
   0.16%       0x00007fb30701366e:   mov    0xc(%rdi),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.00%       0x00007fb307013671:   test   %edx,%edx
               0x00007fb307013673:   je     0x00007fb30701392b
   0.12%       0x00007fb307013679:   mov    0x8(,%rdx,8),%eax
   0.19%       0x00007fb307013680:   movabs $0x800000000,%r8
   0.07%       0x00007fb30701368a:   lea    (%r8,%rax,1),%rax
   0.15%       0x00007fb30701368e:   test   %edx,%edx
           ╭   0x00007fb307013690:   je     0x00007fb30701369f
   0.06%   │   0x00007fb307013696:   cmp    %rax,%rbp
           │   0x00007fb307013699:   jne    0x00007fb307013a04           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.22%   ↘   0x00007fb30701369f:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.07%       0x00007fb3070136a3:   test   %eax,%eax
               0x00007fb3070136a5:   je     0x00007fb30701391f
   0.01%       0x00007fb3070136ab:   mov    0x8(,%rax,8),%r8d
   0.26%       0x00007fb3070136b3:   movabs $0x800000000,%rcx
   0.05%       0x00007fb3070136bd:   lea    (%rcx,%r8,1),%r8
   0.20%       0x00007fb3070136c1:   test   %eax,%eax
            ╭  0x00007fb3070136c3:   je     0x00007fb3070136dc
            │  0x00007fb3070136c9:   movabs $0x800000960,%rcx            ;   {metadata({type array bool})}
   0.04%    │  0x00007fb3070136d3:   cmp    %r8,%rcx
            │  0x00007fb3070136d6:   jne    0x00007fb3070139e6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
            │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.23%    ↘  0x00007fb3070136dc:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rdx=NarrowOop rsi=NarrowOop rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.04%       0x00007fb3070136e0:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fb307013b4d
   0.04%       0x00007fb3070136e8:   jb     0x00007fb3070139d7
   0.29%       0x00007fb3070136ee:   cmpb   $0x0,0x10(,%rax,8)
   0.04%       0x00007fb3070136f6:   je     0x00007fb3070138f3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.18%       0x00007fb3070136fc:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rdx=NarrowOop rsi=NarrowOop rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.04%       0x00007fb307013700:   cmpl   $0x0,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007fb307013b69
   0.05%       0x00007fb307013708:   je     0x00007fb3070139f5
   0.21%       0x00007fb30701370e:   vmovsd 0x10(,%rdx,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@67 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.08%       0x00007fb307013717:   mov    %eax,%r11d
   0.02%       0x00007fb30701371a:   shl    $0x3,%r11                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007fb30701371e:   mov    %edx,%r8d
   0.19%       0x00007fb307013721:   shl    $0x3,%r8                     ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.08%       0x00007fb307013725:   mov    %esi,%ecx
   0.02%       0x00007fb307013727:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007fb30701372b:   cmpb   $0x0,0x11(,%rax,8)
   0.29%       0x00007fb307013733:   je     0x00007fb307013905           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.08%       0x00007fb307013739:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rcx=Oop rdx=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*dastore {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@81 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007fb307013740:   cmpl   $0x2,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007fb307013b86
   0.17%       0x00007fb307013748:   jb     0x00007fb307013a65
   0.08%       0x00007fb30701374e:   vmovsd 0x18(,%rdx,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@67 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.04%       0x00007fb307013757:   nopw   0x0(%rax,%rax,1)
   0.16%       0x00007fb307013760:   cmpb   $0x0,0x12(,%rax,8)
   0.13%       0x00007fb307013768:   je     0x00007fb3070138d4           ; ImmutableOopMap {rax=NarrowOop rcx=Oop rdx=NarrowOop rsi=NarrowOop rdi=Oop r8=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*dastore {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@81 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007fb30701376e:   cmpl   $0x3,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007fb307013ba6
   0.17%       0x00007fb307013776:   jb     0x00007fb307013a22
   0.07%       0x00007fb30701377c:   vmovsd 0x20(,%rdx,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@67 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.04%       0x00007fb307013785:   cmpb   $0x0,0x13(,%rax,8)
   0.16%       0x00007fb30701378d:   je     0x00007fb3070138e5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.12%       0x00007fb307013793:   nopw   0x0(%rax,%rax,1)
   0.01%       0x00007fb30701379c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rdi=Oop r8=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*dastore {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.DoubleVector::bOpTemplate@81 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.12%       0x00007fb3070137a0:   cmpl   $0x4,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007fb307013bc6
   0.18%       0x00007fb3070137a8:   jb     0x00007fb307013aa5
   0.01%       0x00007fb3070137ae:   vmovsd 0x28(,%rdx,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@67 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.16%       0x00007fb3070137b7:   mov    0x108(%r15),%rsi
   0.03%       0x00007fb3070137be:   lea    0x10(%rsi),%rdx
   0.09%       0x00007fb3070137c2:   cmp    0x118(%r15),%rdx
               0x00007fb3070137c9:   ja     0x00007fb307013976
   0.07%       0x00007fb3070137cf:   mov    %rdx,0x108(%r15)
   0.14%       0x00007fb3070137d6:   prefetchw 0xd0(%rsi)
   0.27%       0x00007fb3070137dd:   movq   $0x1,(%rsi)
   0.22%       0x00007fb3070137e4:   movl   $0xc3dce8,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.76%       0x00007fb3070137eb:   movl   $0x0,0xc(%rsi)
   0.11%       0x00007fb3070137f2:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 226)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.02%       0x00007fb3070137f5:   mov    0x108(%r15),%rsi
   0.06%       0x00007fb3070137fc:   lea    0x30(%rsi),%rdx
   0.27%       0x00007fb307013800:   cmp    0x118(%r15),%rdx
               0x00007fb307013807:   ja     0x00007fb307013990
   0.12%       0x00007fb30701380d:   mov    %rdx,0x108(%r15)
   0.13%       0x00007fb307013814:   prefetchw 0xf0(%rsi)
   0.20%       0x00007fb30701381b:   prefetchw 0x130(%rsi)
   0.20%       0x00007fb307013822:   prefetchw 0x170(%rsi)
   0.13%       0x00007fb307013829:   prefetchw 0x1b0(%rsi)
   0.19%       0x00007fb307013830:   movq   $0x1,(%rsi)
   0.07%       0x00007fb307013837:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   1.12%       0x00007fb30701383e:   movl   $0x4,0xc(%rsi)
   0.05%       0x00007fb307013845:   movq   $0x0,0x10(%rsi)
   0.39%       0x00007fb30701384d:   movq   $0x0,0x18(%rsi)
   0.03%       0x00007fb307013855:   movq   $0x0,0x20(%rsi)
   0.27%       0x00007fb30701385d:   movq   $0x0,0x28(%rsi)
   0.33%       0x00007fb307013865:   vmovsd %xmm3,0x28(%rsi)
   0.21%       0x00007fb30701386a:   vmovsd %xmm2,0x20(%rsi)
   0.25%       0x00007fb30701386f:   vmovsd %xmm1,0x18(%rsi)
   0.10%       0x00007fb307013874:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 219)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800c867e8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.13%       0x00007fb307013879:   mov    %rsi,%rdx
   0.04%       0x00007fb30701387c:   shr    $0x3,%rdx
   0.09%       0x00007fb307013880:   mov    %edx,0xc(%rbx)
   0.09%       0x00007fb307013883:   mov    %rbx,%rdx
   0.12%       0x00007fb307013886:   xor    %rsi,%rdx
   0.04%       0x00007fb307013889:   test   $0xffffffffffe00000,%rdx
               0x00007fb307013890:   je     0x00007fb3070138bb
               0x00007fb307013896:   test   %rsi,%rsi
               0x00007fb307013899:   je     0x00007fb3070138bb
               0x00007fb30701389f:   mov    %rbx,%r10
               0x00007fb3070138a2:   shr    $0x9,%r10
               0x00007fb3070138a6:   movabs $0x7fb31a600000,%rbp
               0x00007fb3070138b0:   cmpb   $0x4,(%r10,%rbp,1)
               0x00007fb3070138b5:   jne    0x00007fb307013937           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  14.10%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 

                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.08%     0x00007fb30703980e:   mov    $0x5,%esi
             0x00007fb307039813:   mov    %r8,%rdx
   0.13%     0x00007fb307039816:   mov    %r11,%rcx                    ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.08%     0x00007fb307039819:   mov    %r8,0x50(%rsp)
   0.09%     0x00007fb30703981e:   nop
             0x00007fb30703981f:   nop
   0.14%     0x00007fb307039820:   data16 xchg %ax,%ax
   0.07%     0x00007fb307039823:   call   0x00007fb30700cec0           ; ImmutableOopMap {[80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                                                                       ;   {static_call}
   0.09%     0x00007fb307039828:   nop                                 ; ImmutableOopMap {rax=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.07%     0x00007fb307039829:   cmpl   $0xc3e318,0x8(%rax)          ; implicit exception: dispatches to 0x00007fb30703c846
                                                                       ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.06%     0x00007fb307039830:   jne    0x00007fb30703bcec           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@36 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.10%     0x00007fb307039836:   mov    0xc0(%rsp),%rsi
   0.15%     0x00007fb30703983e:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.28%     0x00007fb307039841:   cmpl   $0xc3dce8,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007fb30703c866
                                                                       ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   1.19%     0x00007fb30703984c:   jne    0x00007fb30703b5c8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@1 (line 614)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.28%     0x00007fb307039852:   mov    0x70(%rsp),%r11
   0.02%     0x00007fb307039857:   mov    0xc(%r11),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%     0x00007fb30703985b:   nopl   0x0(%rax,%rax,1)
   0.02%     0x00007fb307039860:   test   %r10d,%r10d
             0x00007fb307039863:   je     0x00007fb30703a09c
   0.29%     0x00007fb307039869:   mov    0x8(,%r10,8),%edx
   0.03%     0x00007fb307039871:   movabs $0x800000000,%rbp
   0.01%     0x00007fb30703987b:   lea    0x0(%rbp,%rdx,1),%rdx
   0.31%     0x00007fb307039880:   test   %r10d,%r10d
             0x00007fb307039883:   je     0x00007fb307039f68
   0.02%     0x00007fb307039889:   mov    0x298(%rsp),%rbp
   0.01%     0x00007fb307039891:   cmp    %rdx,%rbp
             0x00007fb307039894:   jne    0x00007fb30703baf9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.29%     0x00007fb30703989a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=Oop r10=NarrowOop r11=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
                                                                       ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%     0x00007fb3070398a0:   cmpl   $0x4,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007fb30703c886
   0.04%     0x00007fb3070398a9:   jb     0x00007fb30703befa
   0.23%     0x00007fb3070398af:   mov    0xc(,%rcx,8),%r8d            ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007fb3070398b7:   test   %r8d,%r8d
             0x00007fb3070398ba:   je     0x00007fb30703a0a8
   0.04%     0x00007fb3070398c0:   mov    0x8(,%r8,8),%edx
   0.03%     0x00007fb3070398c8:   movabs $0x800000000,%r9
   0.22%     0x00007fb3070398d2:   lea    (%r9,%rdx,1),%rdx
   0.04%     0x00007fb3070398d6:   test   %r8d,%r8d
          ╭  0x00007fb3070398d9:   je     0x00007fb3070398e9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
          │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
          │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
          │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
          │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
          │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%  │  0x00007fb3070398df:   nop
          │  0x00007fb3070398e0:   cmp    %rdx,%rbp
          │  0x00007fb3070398e3:   jne    0x00007fb30703be25           ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop r11=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
          │                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
          │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
          │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
          │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
          │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.52%  ↘  0x00007fb3070398e9:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fb30703c8a6
   0.02%     0x00007fb3070398f2:   jb     0x00007fb30703c47d
   0.00%     0x00007fb3070398f8:   mov    0x108(%r15),%rdx
   0.29%     0x00007fb3070398ff:   lea    0x10(%rdx),%r9
   0.01%     0x00007fb307039903:   cmp    0x118(%r15),%r9
             0x00007fb30703990a:   ja     0x00007fb30703a211
   0.01%     0x00007fb307039910:   mov    %r9,0x108(%r15)
   0.00%     0x00007fb307039917:   prefetchw 0xd0(%rdx)
   0.31%     0x00007fb30703991e:   movq   $0x1,(%rdx)
   0.01%     0x00007fb307039925:   movl   $0xc3dce8,0x8(%rdx)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%     0x00007fb30703992c:   movl   $0x0,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007fb307039933:   mov    0x108(%r15),%r9
   0.29%     0x00007fb30703993a:   lea    0x30(%r9),%rdi
   0.20%     0x00007fb30703993e:   xchg   %ax,%ax
   0.01%     0x00007fb307039940:   cmp    0x118(%r15),%rdi
             0x00007fb307039947:   ja     0x00007fb30703a23f
   0.24%     0x00007fb30703994d:   mov    %rdi,0x108(%r15)
   0.27%     0x00007fb307039954:   prefetchw 0xf0(%r9)
   0.49%     0x00007fb30703995c:   prefetchw 0x130(%r9)
   0.01%     0x00007fb307039964:   prefetchw 0x170(%r9)
   0.27%     0x00007fb30703996c:   prefetchw 0x1b0(%r9)
   0.28%     0x00007fb307039974:   movq   $0x1,(%r9)
   1.21%     0x00007fb30703997b:   movl   $0x6650,0x8(%r9)             ;   {metadata({type array double})}
   0.00%     0x00007fb307039983:   movl   $0x4,0xc(%r9)
   0.54%     0x00007fb30703998b:   movq   $0x0,0x10(%r9)
   0.02%     0x00007fb307039993:   movq   $0x0,0x18(%r9)
   0.23%     0x00007fb30703999b:   movq   $0x0,0x20(%r9)
   0.18%     0x00007fb3070399a3:   movq   $0x0,0x28(%r9)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.07%     0x00007fb3070399ab:   vmovsd 0x28(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007fb3070399b5:   vaddsd 0x28(,%r8,8),%xmm0,%xmm0     ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.25%     0x00007fb3070399bf:   vmovsd %xmm0,0x28(%r9)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.07%     0x00007fb3070399c5:   vmovsd 0x20(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007fb3070399cf:   vaddsd 0x20(,%r8,8),%xmm0,%xmm0     ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.21%     0x00007fb3070399d9:   vmovsd %xmm0,0x20(%r9)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%     0x00007fb3070399df:   vmovsd 0x18(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%     0x00007fb3070399e9:   vaddsd 0x18(,%r8,8),%xmm0,%xmm0     ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.23%     0x00007fb3070399f3:   vmovsd %xmm0,0x18(%r9)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.10%     0x00007fb3070399f9:   vmovsd 0x10(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007fb307039a03:   vaddsd 0x10(,%r8,8),%xmm0,%xmm0     ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.29%     0x00007fb307039a0d:   vmovsd %xmm0,0x10(%r9)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.09%     0x00007fb307039a13:   mov    %r9,%r10
   0.01%     0x00007fb307039a16:   shr    $0x3,%r10
   0.08%     0x00007fb307039a1a:   mov    %r10d,0xc(%rdx)
   0.12%     0x00007fb307039a1e:   mov    %rdx,%r10
   0.10%     0x00007fb307039a21:   xor    %r9,%r10
   0.00%     0x00007fb307039a24:   test   $0xffffffffffe00000,%r10
             0x00007fb307039a2b:   je     0x00007fb30703a091
             0x00007fb307039a31:   test   %r9,%r9
             0x00007fb307039a34:   je     0x00007fb30703a0bc
             0x00007fb307039a3a:   mov    0x2b8(%rsp),%r9
             0x00007fb307039a42:   mov    %rdx,%r10
             0x00007fb307039a45:   shr    $0x9,%r10
             0x00007fb307039a49:   cmpb   $0x4,(%r10,%r9,1)
             0x00007fb307039a4e:   jne    0x00007fb30703a0df           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  11.62%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 

                       --------------------------------------------------------------------------------
                       [Verified Entry Point]
                         # {method} {0x0000000800005640} &apos;broadcastCoerced&apos; &apos;(Ljava/lang/Class;Ljava/lang/Class;IJLjdk/internal/vm/vector/VectorSupport$VectorSpecies;Ljdk/internal/vm/vector/VectorSupport$BroadcastOperation;)Ljava/lang/Object;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
                         # parm0:    rsi:rsi   = &apos;java/lang/Class&apos;
                         # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
                         # parm2:    rcx       = int
                         # parm3:    r8:r8     = long
                         # parm4:    r9:r9     = &apos;jdk/internal/vm/vector/VectorSupport$VectorSpecies&apos;
                         # parm5:    rdi:rdi   = &apos;jdk/internal/vm/vector/VectorSupport$BroadcastOperation&apos;
                         #           [sp+0x20]  (sp of caller)
   0.30%                 0x00007fb307007b20:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.38%                 0x00007fb307007b27:   sub    $0x18,%rsp
   0.01%                 0x00007fb307007b2b:   mov    %rbp,0x10(%rsp)
   0.32%                 0x00007fb307007b30:   mov    %rdi,%r10                    ; ImmutableOopMap {r9=Oop r10=Oop }
                                                                                   ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) jdk.internal.vm.vector.VectorSupport::broadcastCoerced@0 (line 165)
   0.02%                 0x00007fb307007b33:   mov    0x8(%r10),%eax               ; implicit exception: dispatches to 0x00007fb307008054
   0.11%                 0x00007fb307007b37:   test   %r9,%r9
                         0x00007fb307007b3a:   je     0x00007fb307007f18
   0.02%                 0x00007fb307007b40:   mov    0x8(%r9),%esi
   0.24%                 0x00007fb307007b44:   movabs $0x800000000,%rdx
   0.02%                 0x00007fb307007b4e:   lea    (%rdx,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$72/0x0000000800c85968::broadcast@2
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.11%                 0x00007fb307007b52:   movabs $0x800000000,%rdx
   0.02%                 0x00007fb307007b5c:   lea    (%rdx,%rax,1),%rax
   0.20%                 0x00007fb307007b60:   cmp    -0x67(%rip),%rax        # 0x00007fb307007b00
                                                                                   ;   {section_word}
   0.02%  ╭              0x00007fb307007b67:   je     0x00007fb307007b8c
   0.00%  │              0x00007fb307007b6d:   cmp    -0x6c(%rip),%rax        # 0x00007fb307007b08
          │                                                                        ;   {section_word}
          │╭             0x00007fb307007b74:   je     0x00007fb307007d15
          ││             0x00007fb307007b7a:   cmp    -0x71(%rip),%rax        # 0x00007fb307007b10
          ││                                                                       ;   {section_word}
          ││             0x00007fb307007b81:   je     0x00007fb307007efc
          ││             0x00007fb307007b87:   jmp    0x00007fb30700800b
   0.11%  ↘│             0x00007fb307007b8c:   test   %r9,%r9
           │╭            0x00007fb307007b8f:   je     0x00007fb307007ba9
   0.00%   ││            0x00007fb307007b95:   movabs $0x800c3a888,%rax            ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$DoubleSpecies&apos;)}
   0.21%   ││            0x00007fb307007b9f:   nop
   0.02%   ││            0x00007fb307007ba0:   cmp    %rsi,%rax
           ││            0x00007fb307007ba3:   jne    0x00007fb307007fdb           ; ImmutableOopMap {r9=Oop r10=Oop }
           ││                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                      ; - (reexecute) jdk.internal.vm.vector.VectorSupport::broadcastCoerced@0 (line 165)
   0.11%   │↘            0x00007fb307007ba9:   mov    0xc(%r9),%r11d               ; implicit exception: dispatches to 0x00007fb307008070
   0.02%   │             0x00007fb307007bad:   mov    0x44(%r9),%ebx               ;*getfield dummyVector {reexecute=0 rethrow=0 return_oop=0}
           │                                                                       ; - jdk.incubator.vector.AbstractSpecies::dummyVector@1 (line 295)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::dummyVector@1 (line 3510)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@39 (line 3522)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │                                                                       ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.20%   │             0x00007fb307007bb1:   mov    0x108(%r15),%rdx
   0.02%   │             0x00007fb307007bb8:   mov    %r11d,%eax
   0.10%   │             0x00007fb307007bbb:   shl    $0x3,%rax
   0.01%   │             0x00007fb307007bbf:   lea    0x17(%rax),%rax
   0.21%   │             0x00007fb307007bc3:   and    $0xfffffffffffffff8,%rax
   0.03%   │             0x00007fb307007bc7:   mov    %rax,%rsi
   0.07%   │             0x00007fb307007bca:   add    %rdx,%rsi
   0.01%   │             0x00007fb307007bcd:   cmp    0x118(%r15),%rsi
           │             0x00007fb307007bd4:   ja     0x00007fb307007f34
   0.22%   │             0x00007fb307007bda:   mov    %rsi,0x108(%r15)
   0.02%   │             0x00007fb307007be1:   prefetchw 0xc0(%rax,%rdx,1)
   0.10%   │             0x00007fb307007be9:   prefetchw 0x100(%rax,%rdx,1)
   0.02%   │             0x00007fb307007bf1:   prefetchw 0x140(%rax,%rdx,1)
   0.19%   │             0x00007fb307007bf9:   prefetchw 0x180(%rax,%rdx,1)
   0.15%   │             0x00007fb307007c01:   movq   $0x1,(%rdx)
   0.10%   │             0x00007fb307007c08:   movl   $0x6650,0x8(%rdx)            ;   {metadata({type array double})}
   0.01%   │             0x00007fb307007c0f:   mov    %r11d,0xc(%rdx)
   0.22%   │             0x00007fb307007c13:   lea    -0x10(%rax),%rcx
   0.03%   │             0x00007fb307007c17:   nopw   0x0(%rax,%rax,1)
   0.10%   │             0x00007fb307007c20:   cmp    $0x800,%rcx
           │             0x00007fb307007c27:   jae    0x00007fb307007f68
   0.02%   │             0x00007fb307007c2d:   mov    $0x10,%rsi
   0.24%   │ ╭           0x00007fb307007c34:   jmp    0x00007fb307007c4c
           │ │           0x00007fb307007c39:   nopl   0x0(%rax)
   1.30%   │ │↗          0x00007fb307007c40:   movq   $0x0,(%rdx,%rsi,1)
   0.01%   │ ││          0x00007fb307007c48:   lea    0x8(%rsi),%rsi
   0.04%   │ ↘│          0x00007fb307007c4c:   cmp    %rsi,%rax
           │  ╰          0x00007fb307007c4f:   ja     0x00007fb307007c40           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@4 (line 3517)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │                                                                       ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.00%   │             0x00007fb307007c51:   cmp    $0x1,%r11d
           │   ╭         0x00007fb307007c55:   jl     0x00007fb307007cac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@12 (line 3518)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.30%   │   │         0x00007fb307007c5b:   nopl   0x0(%rax,%rax,1)
           │   │         0x00007fb307007c60:   cmp    $0x2,%r11d
           │   │╭        0x00007fb307007c64:   jl     0x00007fb307007c78
   0.00%   │   ││        0x00007fb307007c6a:   mov    %r11d,%eax
           │   ││        0x00007fb307007c6d:   dec    %eax
   0.32%   │   ││        0x00007fb307007c6f:   cmp    %eax,%r11d
           │   ││        0x00007fb307007c72:   jbe    0x00007fb307008045
           │   │↘        0x00007fb307007c78:   mov    %r8,0x10(%rdx)               ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@31 (line 3520)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.00%   │   │         0x00007fb307007c7c:   mov    $0x1,%eax
   0.00%   │   │ ╭       0x00007fb307007c81:   jmp    0x00007fb307007ca7           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@9 (line 3518)
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │ │                                                                 ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
           │   │ │       0x00007fb307007c86:   data16 data16 nopw 0x0(%rax,%rax,1)
           │   │ │       0x00007fb307007c91:   data16 data16 xchg %ax,%ax
           │   │ │       0x00007fb307007c95:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@12 (line 3518)
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │ │                                                                 ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │ │                                                                 ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   1.01%   │   │ │↗      0x00007fb307007ca0:   mov    %r8,0x10(%rdx,%rax,8)        ;*dastore {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@31 (line 3520)
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │ ││                                                                ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.00%   │   │ ││      0x00007fb307007ca5:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@32 (line 3518)
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │ ││                                                                ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │ ││                                                                ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.35%   │   │ ↘│      0x00007fb307007ca7:   cmp    %eax,%r11d
           │   │  ╰      0x00007fb307007caa:   jg     0x00007fb307007ca0           ; ImmutableOopMap {rdx=Oop r9=Oop }
           │   │                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │   │                                                                   ; - (reexecute) jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@38 (line 3522)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │   │                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │   │                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
           │   ↘         0x00007fb307007cac:   cmpl   $0xc3dce8,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fb30700808c
           │                                                                       ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.34%   │             0x00007fb307007cb7:   jne    0x00007fb30700801a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::dummyVector@4 (line 3510)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@39 (line 3522)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │                                                                       ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.00%   │             0x00007fb307007cbd:   mov    0x108(%r15),%rax
   0.02%   │             0x00007fb307007cc4:   lea    0x10(%rax),%rsi
   0.33%   │             0x00007fb307007cc8:   cmp    0x118(%r15),%rsi
           │             0x00007fb307007ccf:   ja     0x00007fb307007f51
   0.01%   │             0x00007fb307007cd5:   mov    %rsi,0x108(%r15)
   0.01%   │             0x00007fb307007cdc:   prefetchw 0xd0(%rax)
   0.01%   │             0x00007fb307007ce3:   movq   $0x1,(%rax)
   0.31%   │             0x00007fb307007cea:   movl   $0xc3dce8,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.11%   │             0x00007fb307007cf1:   movl   $0x0,0xc(%rax)
           │             0x00007fb307007cf8:   shr    $0x3,%rdx
           │             0x00007fb307007cfc:   mov    %edx,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
           │                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
           │                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@43 (line 3522)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::lambda$broadcastBits$1@7 (line 3443)
           │                                                                       ; - jdk.incubator.vector.DoubleVector$DoubleSpecies$$Lambda$63/0x0000000800c80840::broadcast@5
           │                                                                       ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.30%   │             0x00007fb307007cff:   mov    0x10(%rsp),%rbp
   0.05%   │             0x00007fb307007d04:   add    $0x18,%rsp
   0.00%   │             0x00007fb307007d08:   mov    0x348(%r15),%rcx
   0.04%   │             0x00007fb307007d0f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.36%   │             0x00007fb307007d11:   vzeroupper 
   0.33%   │             0x00007fb307007d14:   ret    
   0.01%   ↘             0x00007fb307007d15:   test   %r9,%r9
                   ╭     0x00007fb307007d18:   je     0x00007fb307007d31
   0.00%           │     0x00007fb307007d1e:   movabs $0x800c3a888,%rax            ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$DoubleSpecies&apos;)}
                   │     0x00007fb307007d28:   cmp    %rsi,%rax
                   │     0x00007fb307007d2b:   jne    0x00007fb307008036           ; ImmutableOopMap {r9=Oop r10=Oop }
                   │                                                               ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                   │                                                               ; - (reexecute) jdk.internal.vm.vector.VectorSupport::broadcastCoerced@0 (line 165)
   0.00%           ↘     0x00007fb307007d31:   mov    0xc(%r9),%r11d               ; implicit exception: dispatches to 0x00007fb3070080a8
   0.01%                 0x00007fb307007d35:   mov    0x44(%r9),%ebx               ;*getfield dummyVector {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.AbstractSpecies::dummyVector@1 (line 295)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::dummyVector@1 (line 3510)
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@39 (line 3522)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$zero$1@7 (line 425)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$72/0x0000000800c85968::broadcast@5
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                         0x00007fb307007d39:   nopl   0x0(%rax)
                         0x00007fb307007d40:   cmp    $0x1,%r11d
                    ╭    0x00007fb307007d44:   jl     0x00007fb307007d53
   0.00%            │    0x00007fb307007d4a:   test   %r11d,%r11d
                    │    0x00007fb307007d4d:   je     0x00007fb307007ffc           ;*dastore {reexecute=0 rethrow=0 return_oop=0}
                    │                                                              ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@31 (line 3520)
                    │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$zero$1@7 (line 425)
                    │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$72/0x0000000800c85968::broadcast@5
                    │                                                              ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.01%            ↘    0x00007fb307007d53:   mov    0x108(%r15),%rdx
   0.00%                 0x00007fb307007d5a:   mov    %r11d,%eax
                         0x00007fb307007d5d:   shl    $0x3,%rax
   0.00%                 0x00007fb307007d61:   lea    0x17(%rax),%rax
   0.01%                 0x00007fb307007d65:   and    $0xfffffffffffffff8,%rax
   0.01%                 0x00007fb307007d69:   mov    %rax,%rsi
                         0x00007fb307007d6c:   add    %rdx,%rsi
   0.01%                 0x00007fb307007d6f:   cmp    0x118(%r15),%rsi
                         0x00007fb307007d76:   ja     0x00007fb307007f77
   0.01%                 0x00007fb307007d7c:   mov    %rsi,0x108(%r15)
   0.00%                 0x00007fb307007d83:   prefetchw 0xc0(%rax,%rdx,1)
   0.02%                 0x00007fb307007d8b:   prefetchw 0x100(%rax,%rdx,1)
   0.00%                 0x00007fb307007d93:   prefetchw 0x140(%rax,%rdx,1)
   0.01%                 0x00007fb307007d9b:   prefetchw 0x180(%rax,%rdx,1)
   0.01%                 0x00007fb307007da3:   movq   $0x1,(%rdx)
   0.00%                 0x00007fb307007daa:   movl   $0x6650,0x8(%rdx)            ;   {metadata({type array double})}
                         0x00007fb307007db1:   mov    %r11d,0xc(%rdx)
   0.01%                 0x00007fb307007db5:   lea    -0x10(%rax),%r10
   0.00%                 0x00007fb307007db9:   nopl   0x0(%rax)
   0.01%                 0x00007fb307007dc0:   cmp    $0x800,%r10
                         0x00007fb307007dc7:   jae    0x00007fb307007fad
   0.00%                 0x00007fb307007dcd:   mov    $0x10,%rsi
   0.01%             ╭   0x00007fb307007dd4:   jmp    0x00007fb307007dec
                     │   0x00007fb307007dd9:   nopl   0x0(%rax)
   0.04%             │↗  0x00007fb307007de0:   movq   $0x0,(%rdx,%rsi,1)
   0.01%             ││  0x00007fb307007de8:   lea    0x8(%rsi),%rsi
   0.00%             ↘│  0x00007fb307007dec:   cmp    %rsi,%rax
                      ╰  0x00007fb307007def:   ja     0x00007fb307007de0           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@4 (line 3517)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$zero$1@7 (line 425)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$72/0x0000000800c85968::broadcast@5
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
   0.01%                 0x00007fb307007df1:   cmp    $0x2,%r11d
   0.00%                 0x00007fb307007df5:   mov    $0x1,%eax
                         0x00007fb307007dfa:   cmovl  %r11d,%eax
                         0x00007fb307007dfe:   mov    $0x0,%esi
                         0x00007fb307007e03:   jmp    0x00007fb307007e27           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::rvOp@9 (line 3518)
                                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$zero$1@7 (line 425)
                                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$72/0x0000000800c85968::broadcast@5
                                                                                   ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                         0x00007fb307007e08:   data16 data16 nopw 0x0(%rax,%rax,1)
                         0x00007fb307007e13:   data16 data16 xchg %ax,%ax
                         0x00007fb307007e17:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  10.04%  <total for region 5>

....[Hottest Regions]...............................................................................
  22.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
  20.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
  14.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1016 
  11.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
  10.04%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   7.91%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1008 
   3.03%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1008 
   1.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   1.01%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1016 
   0.86%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1008 
   0.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   0.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   0.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   0.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   0.14%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
   3.94%  <...other 694 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1035 
  15.11%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1016 
  11.80%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1008 
  10.23%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   1.36%               kernel  [unknown] 
   0.27%                       <unknown> 
   0.07%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1074 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  HeapRegionClaimer::claim_region 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  G1PrepareEvacuationTask::G1PrepareRegionsClosure::do_heap_region 
   0.03%          interpreter  dload  24 dload  
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  TypeArrayKlass::allocate_common 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   0.02%         libc-2.31.so  __strxfrm_l 
   1.17%  <...other 258 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.65%       jvmci, level 4
   1.36%               kernel
   1.17%            libjvm.so
   0.27%                     
   0.16%          interpreter
   0.11%         libc-2.31.so
   0.07%   libpthread-2.31.so
   0.07%          c1, level 3
   0.06%  libjvmcicompiler.so
   0.03%           ld-2.31.so
   0.03%       hsdis-amd64.so
   0.02%               [vdso]
   0.00%       perf-30724.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 1000, size = 512)

# Run progress: 62.50% complete, ETA 00:05:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 843.596 ms/op
# Warmup Iteration   2: 419.081 ms/op
# Warmup Iteration   3: 419.466 ms/op
# Warmup Iteration   4: 419.124 ms/op
# Warmup Iteration   5: 418.621 ms/op
Iteration   1: 418.947 ms/op
Iteration   2: 418.645 ms/op
Iteration   3: 418.401 ms/op
Iteration   4: 418.834 ms/op
Iteration   5: 418.831 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  418.732 ±(99.9%) 0.825 ms/op [Average]
  (min, avg, max) = (418.401, 418.732, 418.947), stdev = 0.214
  CI (99.9%): [417.906, 419.557] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 296607 total address lines.
Perf output processed (skipped 59.379 seconds):
 Column 1: cycles (51917 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 950 

                      --------------------------------------------------------------------------------
                      [Verified Entry Point]
                        # {method} {0x0000000800005590} &apos;binaryOp&apos; &apos;(ILjava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
                        # parm0:    rsi       = int
                        # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
                        # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
                        # parm3:    r8        = int
                        # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                        # parm5:    rdi:rdi   = &apos;java/lang/Object&apos;
                        # parm6:    [sp+0x20]   = &apos;java/util/function/BiFunction&apos;  (sp of caller)
   0.66%                0x00007fc0af008320:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   1.92%                0x00007fc0af008327:   sub    $0x18,%rsp
   0.18%                0x00007fc0af00832b:   mov    %rbp,0x10(%rsp)
   1.71%                0x00007fc0af008330:   mov    0x20(%rsp),%r10              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
                                                                                  ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.10%                0x00007fc0af008335:   mov    0x8(%r10),%eax               ; implicit exception: dispatches to 0x00007fc0af008a6d
   3.72%                0x00007fc0af008339:   movabs $0x800000000,%rsi
   0.08%                0x00007fc0af008343:   lea    (%rsi,%rax,1),%rax
   1.23%                0x00007fc0af008347:   movabs $0x800006650,%r11            ;   {metadata({type array double})}
   0.02%                0x00007fc0af008351:   cmp    -0x58(%rip),%rax        # 0x00007fc0af008300
                                                                                  ;   {section_word}
   1.41%  ╭             0x00007fc0af008358:   je     0x00007fc0af00837d
   0.60%  │             0x00007fc0af00835e:   cmp    -0x5d(%rip),%rax        # 0x00007fc0af008308
          │                                                                       ;   {section_word}
   0.04%  │╭            0x00007fc0af008365:   je     0x00007fc0af008560
   0.20%  ││            0x00007fc0af00836b:   cmp    -0x62(%rip),%rax        # 0x00007fc0af008310
          ││                                                                      ;   {section_word}
   0.00%  ││╭           0x00007fc0af008372:   je     0x00007fc0af0086ea
          │││           0x00007fc0af008378:   jmp    0x00007fc0af0089c8
   0.74%  ↘││           0x00007fc0af00837d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           ││                                                                     ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                     ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%   ││           0x00007fc0af008380:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007fc0af008a89
           ││                                                                     ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%   ││           0x00007fc0af008388:   jne    0x00007fc0af008a25           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           ││                                                                     ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                     ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.01%   ││           0x00007fc0af00838e:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007fc0af008aa6
           ││                                                                     ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.78%   ││           0x00007fc0af008395:   jne    0x00007fc0af008959           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                     ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@5
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%   ││           0x00007fc0af00839b:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%   ││           0x00007fc0af00839f:   nop
   0.01%   ││           0x00007fc0af0083a0:   test   %r8d,%r8d
           ││╭          0x00007fc0af0083a3:   je     0x00007fc0af008874
   0.74%   │││          0x00007fc0af0083a9:   mov    0x8(,%r8,8),%eax
   0.19%   │││          0x00007fc0af0083b1:   movabs $0x800000000,%rsi
   0.02%   │││          0x00007fc0af0083bb:   lea    (%rsi,%rax,1),%rax
   0.18%   │││          0x00007fc0af0083bf:   nop
   0.59%   │││          0x00007fc0af0083c0:   test   %r8d,%r8d
           │││╭         0x00007fc0af0083c3:   je     0x00007fc0af0083d2
   0.01%   ││││         0x00007fc0af0083c9:   cmp    %rax,%r11
           ││││         0x00007fc0af0083cc:   jne    0x00007fc0af0089a4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           ││││                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.19%   │││↘         0x00007fc0af0083d2:   data16 nopw 0x0(%rax,%rax,1)
   0.00%   │││          0x00007fc0af0083dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           │││                                                                    ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││                                                                    ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.59%   │││          0x00007fc0af0083e0:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fc0af008ac6
   0.18%   │││          0x00007fc0af0083e9:   jb     0x00007fc0af008a5b
           │││          0x00007fc0af0083ef:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.56%   │││          0x00007fc0af0083f2:   test   %ecx,%ecx
           │││          0x00007fc0af0083f4:   je     0x00007fc0af008880
   0.01%   │││          0x00007fc0af0083fa:   mov    0x8(,%rcx,8),%eax
   0.43%   │││          0x00007fc0af008401:   movabs $0x800000000,%rsi
   0.01%   │││          0x00007fc0af00840b:   lea    (%rsi,%rax,1),%rax
   0.62%   │││          0x00007fc0af00840f:   test   %ecx,%ecx
           │││ ╭        0x00007fc0af008411:   je     0x00007fc0af008420           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││ │                                                                  ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%   │││ │        0x00007fc0af008417:   cmp    %rax,%r11
           │││ │        0x00007fc0af00841a:   jne    0x00007fc0af00893b           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           │││ │                                                                  ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││ │                                                                  ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.52%   │││ ↘        0x00007fc0af008420:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007fc0af008ae6
   0.23%   │││          0x00007fc0af008428:   jb     0x00007fc0af008968
   0.42%   │││          0x00007fc0af00842e:   mov    0x108(%r15),%rax
   0.10%   │││          0x00007fc0af008435:   lea    0x30(%rax),%rsi
   0.00%   │││          0x00007fc0af008439:   nopl   0x0(%rax)
   0.20%   │││          0x00007fc0af008440:   cmp    0x118(%r15),%rsi
           │││          0x00007fc0af008447:   ja     0x00007fc0af0088d4
   0.42%   │││          0x00007fc0af00844d:   mov    %rsi,0x108(%r15)
   0.09%   │││          0x00007fc0af008454:   prefetchw 0xf0(%rax)
   0.02%   │││          0x00007fc0af00845b:   prefetchw 0x130(%rax)
   0.35%   │││          0x00007fc0af008462:   prefetchw 0x170(%rax)
   0.26%   │││          0x00007fc0af008469:   prefetchw 0x1b0(%rax)
   0.45%   │││          0x00007fc0af008470:   movq   $0x1,(%rax)
   0.57%   │││          0x00007fc0af008477:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.35%   │││          0x00007fc0af00847e:   movl   $0x4,0xc(%rax)
   0.53%   │││          0x00007fc0af008485:   movq   $0x0,0x10(%rax)
   1.87%   │││          0x00007fc0af00848d:   movq   $0x0,0x18(%rax)
   0.43%   │││          0x00007fc0af008495:   movq   $0x0,0x20(%rax)
   0.60%   │││          0x00007fc0af00849d:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.71%   │││          0x00007fc0af0084a5:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%   │││          0x00007fc0af0084af:   vaddsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.86%   │││          0x00007fc0af0084b8:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.67%   │││          0x00007fc0af0084bd:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │││          0x00007fc0af0084c7:   vaddsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.10%   │││          0x00007fc0af0084d0:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.75%   │││          0x00007fc0af0084d5:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%   │││          0x00007fc0af0084df:   vaddsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%   │││          0x00007fc0af0084e8:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.67%   │││          0x00007fc0af0084ed:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │││          0x00007fc0af0084f7:   vaddsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%   │││          0x00007fc0af008500:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.73%   │││    ↗  ↗  0x00007fc0af008505:   mov    %rax,%rdx
   0.03%   │││    │  │  0x00007fc0af008508:   mov    0x108(%r15),%rax
   0.12%   │││    │  │  0x00007fc0af00850f:   lea    0x10(%rax),%rsi
   0.64%   │││    │  │  0x00007fc0af008513:   cmp    0x118(%r15),%rsi
           │││    │  │  0x00007fc0af00851a:   ja     0x00007fc0af0088bd
   0.86%   │││    │  │  0x00007fc0af008520:   mov    %rsi,0x108(%r15)
   0.40%   │││    │  │  0x00007fc0af008527:   prefetchw 0xd0(%rax)
   0.03%   │││    │  │  0x00007fc0af00852e:   movq   $0x1,(%rax)
   1.40%   │││    │  │  0x00007fc0af008535:   movl   $0xc3dce8,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   3.32%   │││    │  │  0x00007fc0af00853c:   movl   $0x0,0xc(%rax)
   0.29%   │││    │  │  0x00007fc0af008543:   shr    $0x3,%rdx
           │││    │  │  0x00007fc0af008547:   mov    %edx,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.34%   │││    │  │  0x00007fc0af00854a:   mov    0x10(%rsp),%rbp
   0.82%   │││    │  │  0x00007fc0af00854f:   add    $0x18,%rsp
   0.29%   │││    │  │  0x00007fc0af008553:   mov    0x348(%r15),%rcx
   0.09%   │││    │  │  0x00007fc0af00855a:   test   %eax,(%rcx)                  ;   {poll_return}
   0.62%   │││    │  │  0x00007fc0af00855c:   vzeroupper 
   1.45%   │││    │  │  0x00007fc0af00855f:   ret                                 ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           │││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.48%   ↘││    │  │  0x00007fc0af008560:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007fc0af008b06
            ││    │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%    ││    │  │  0x00007fc0af008568:   jne    0x00007fc0af008a10           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            ││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.04%    ││    │  │  0x00007fc0af00856e:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007fc0af008b26
            ││    │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%    ││    │  │  0x00007fc0af008575:   jne    0x00007fc0af008a49           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@5
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%    ││    │  │  0x00007fc0af00857b:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    ││    │  │  0x00007fc0af00857f:   nop
   0.04%    ││    │  │  0x00007fc0af008580:   test   %r8d,%r8d
            ││    │  │  0x00007fc0af008583:   je     0x00007fc0af00888c
   0.02%    ││    │  │  0x00007fc0af008589:   mov    0x8(,%r8,8),%eax
   0.40%    ││    │  │  0x00007fc0af008591:   movabs $0x800000000,%rsi
   0.01%    ││    │  │  0x00007fc0af00859b:   lea    (%rsi,%rax,1),%rax
   0.08%    ││    │  │  0x00007fc0af00859f:   nop
   0.00%    ││    │  │  0x00007fc0af0085a0:   test   %r8d,%r8d
            ││  ╭ │  │  0x00007fc0af0085a3:   je     0x00007fc0af0085b2
   0.35%    ││  │ │  │  0x00007fc0af0085a9:   cmp    %rax,%r11
            ││  │ │  │  0x00007fc0af0085ac:   jne    0x00007fc0af008986           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││  │ │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    ││  ↘ │  │  0x00007fc0af0085b2:   data16 nopw 0x0(%rax,%rax,1)
   0.05%    ││    │  │  0x00007fc0af0085bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            ││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
            ││    │  │  0x00007fc0af0085c0:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fc0af008b46
   0.44%    ││    │  │  0x00007fc0af0085c9:   jb     0x00007fc0af008977
   0.04%    ││    │  │  0x00007fc0af0085cf:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
            ││    │  │  0x00007fc0af0085d2:   test   %ecx,%ecx
            ││    │  │  0x00007fc0af0085d4:   je     0x00007fc0af008898
   0.35%    ││    │  │  0x00007fc0af0085da:   mov    0x8(,%rcx,8),%eax
   0.20%    ││    │  │  0x00007fc0af0085e1:   movabs $0x800000000,%rsi
   0.04%    ││    │  │  0x00007fc0af0085eb:   lea    (%rsi,%rax,1),%rax
   0.32%    ││    │  │  0x00007fc0af0085ef:   test   %ecx,%ecx
            ││   ╭│  │  0x00007fc0af0085f1:   je     0x00007fc0af008600           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││   ││  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.11%    ││   ││  │  0x00007fc0af0085f7:   cmp    %rax,%r11
            ││   ││  │  0x00007fc0af0085fa:   jne    0x00007fc0af0089ec           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            ││   ││  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││   ││  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.39%    ││   ↘│  │  0x00007fc0af008600:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007fc0af008b66
   0.02%    ││    │  │  0x00007fc0af008608:   jb     0x00007fc0af0089fe
   0.43%    ││    │  │  0x00007fc0af00860e:   mov    0x108(%r15),%rax
   0.03%    ││    │  │  0x00007fc0af008615:   lea    0x30(%rax),%rsi
   0.02%    ││    │  │  0x00007fc0af008619:   nopl   0x0(%rax)
   0.00%    ││    │  │  0x00007fc0af008620:   cmp    0x118(%r15),%rsi
            ││    │  │  0x00007fc0af008627:   ja     0x00007fc0af0088ed
   0.39%    ││    │  │  0x00007fc0af00862d:   mov    %rsi,0x108(%r15)
   0.03%    ││    │  │  0x00007fc0af008634:   prefetchw 0xf0(%rax)
   0.02%    ││    │  │  0x00007fc0af00863b:   prefetchw 0x130(%rax)
   0.10%    ││    │  │  0x00007fc0af008642:   prefetchw 0x170(%rax)
   0.29%    ││    │  │  0x00007fc0af008649:   prefetchw 0x1b0(%rax)
   0.24%    ││    │  │  0x00007fc0af008650:   movq   $0x1,(%rax)
   0.27%    ││    │  │  0x00007fc0af008657:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.22%    ││    │  │  0x00007fc0af00865e:   movl   $0x4,0xc(%rax)
   0.46%    ││    │  │  0x00007fc0af008665:   movq   $0x0,0x10(%rax)
   1.29%    ││    │  │  0x00007fc0af00866d:   movq   $0x0,0x18(%rax)
   0.00%    ││    │  │  0x00007fc0af008675:   movq   $0x0,0x20(%rax)
   0.43%    ││    │  │  0x00007fc0af00867d:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.47%    ││    │  │  0x00007fc0af008685:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    ││    │  │  0x00007fc0af00868f:   vmulsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.44%    ││    │  │  0x00007fc0af008698:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%    ││    │  │  0x00007fc0af00869d:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    ││    │  │  0x00007fc0af0086a7:   vmulsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    ││    │  │  0x00007fc0af0086b0:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.37%    ││    │  │  0x00007fc0af0086b5:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    ││    │  │  0x00007fc0af0086bf:   vmulsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    ││    │  │  0x00007fc0af0086c8:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.45%    ││    │  │  0x00007fc0af0086cd:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    ││    │  │  0x00007fc0af0086d7:   vmulsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    ││    │  │  0x00007fc0af0086e0:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.42%    ││    ╰  │  0x00007fc0af0086e5:   jmp    0x00007fc0af008505           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            ││       │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││       │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.07%    ↘│       │  0x00007fc0af0086ea:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007fc0af008b86
             │       │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%     │       │  0x00007fc0af0086f2:   jne    0x00007fc0af00894a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@1
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%     │       │  0x00007fc0af0086f8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
             │       │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │       │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%     │       │  0x00007fc0af008700:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007fc0af008ba6
             │       │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.09%     │       │  0x00007fc0af008707:   jne    0x00007fc0af0089da           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@5
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%     │       │  0x00007fc0af00870d:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.08%     │       │  0x00007fc0af008711:   test   %r8d,%r8d
             │       │  0x00007fc0af008714:   je     0x00007fc0af0088b1
   0.00%     │       │  0x00007fc0af00871a:   mov    0x8(,%r8,8),%eax
   0.07%     │       │  0x00007fc0af008722:   movabs $0x800000000,%rsi
   0.01%     │       │  0x00007fc0af00872c:   lea    (%rsi,%rax,1),%rax
   0.09%     │       │  0x00007fc0af008730:   test   %r8d,%r8d
             │     ╭ │  0x00007fc0af008733:   je     0x00007fc0af008749           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │     │ │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%     │     │ │  0x00007fc0af008739:   nopl   0x0(%rax)
   0.07%     │     │ │  0x00007fc0af008740:   cmp    %rax,%r11
             │     │ │  0x00007fc0af008743:   jne    0x00007fc0af008a37           ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
             │     │ │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │     │ │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%     │     ↘ │  0x00007fc0af008749:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007fc0af008bc6
   0.08%     │       │  0x00007fc0af008752:   jb     0x00007fc0af00891a
   0.10%     │       │  0x00007fc0af008758:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af00875b:   nopl   0x0(%rax,%rax,1)
   0.07%     │       │  0x00007fc0af008760:   test   %ecx,%ecx
             │       │  0x00007fc0af008762:   je     0x00007fc0af0088a5
   0.00%     │       │  0x00007fc0af008768:   mov    0x8(,%rcx,8),%eax
   0.07%     │       │  0x00007fc0af00876f:   movabs $0x800000000,%rsi
   0.01%     │       │  0x00007fc0af008779:   lea    (%rsi,%rax,1),%rax
   0.09%     │       │  0x00007fc0af00877d:   data16 xchg %ax,%ax
   0.00%     │       │  0x00007fc0af008780:   test   %ecx,%ecx
             │      ╭│  0x00007fc0af008782:   je     0x00007fc0af008791           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%     │      ││  0x00007fc0af008788:   cmp    %rax,%r11
             │      ││  0x00007fc0af00878b:   jne    0x00007fc0af008995           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
             │      ││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │      ││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.02%     │      ↘│  0x00007fc0af008791:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007fc0af008be6
   0.08%     │       │  0x00007fc0af008799:   jb     0x00007fc0af0089b6
   0.06%     │       │  0x00007fc0af00879f:   mov    0x108(%r15),%rax
   0.03%     │       │  0x00007fc0af0087a6:   lea    0x30(%rax),%rsi
   0.05%     │       │  0x00007fc0af0087aa:   cmp    0x118(%r15),%rsi
             │       │  0x00007fc0af0087b1:   ja     0x00007fc0af008905
   0.02%     │       │  0x00007fc0af0087b7:   mov    %rsi,0x108(%r15)
   0.07%     │       │  0x00007fc0af0087be:   prefetchw 0xf0(%rax)
   0.02%     │       │  0x00007fc0af0087c5:   prefetchw 0x130(%rax)
   0.08%     │       │  0x00007fc0af0087cc:   prefetchw 0x170(%rax)
   0.04%     │       │  0x00007fc0af0087d3:   prefetchw 0x1b0(%rax)
   0.10%     │       │  0x00007fc0af0087da:   movq   $0x1,(%rax)
   0.06%     │       │  0x00007fc0af0087e1:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.10%     │       │  0x00007fc0af0087e8:   movl   $0x4,0xc(%rax)
   0.05%     │       │  0x00007fc0af0087ef:   movq   $0x0,0x10(%rax)
   0.10%     │       │  0x00007fc0af0087f7:   movq   $0x0,0x18(%rax)
   0.32%     │       │  0x00007fc0af0087ff:   movq   $0x0,0x20(%rax)
   0.19%     │       │  0x00007fc0af008807:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af00880f:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af008819:   vsubsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.16%     │       │  0x00007fc0af008822:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.13%     │       │  0x00007fc0af008827:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af008831:   vsubsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.12%     │       │  0x00007fc0af00883a:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.13%     │       │  0x00007fc0af00883f:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%     │       │  0x00007fc0af008849:   vsubsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af008852:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.17%     │       │  0x00007fc0af008857:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007fc0af008861:   vsubsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%     │       │  0x00007fc0af00886a:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.15%     │       ╰  0x00007fc0af00886f:   jmp    0x00007fc0af008505
             ↘          0x00007fc0af008874:   mov    $0x0,%rax
                        0x00007fc0af00887b:   jmp    0x00007fc0af0083bf           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                                  ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
....................................................................................................
  54.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1065 

                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@155 (line 117)
                        0x00007fc0af03e62d:   mov    %rax,0xb8(%rsp)
   0.00%                0x00007fc0af03e635:   mov    0x160(%rsp),%rsi
                        0x00007fc0af03e63d:   mov    0x158(%rsp),%rdx
                        0x00007fc0af03e645:   mov    $0x4,%ecx
                        0x00007fc0af03e64a:   mov    $0x0,%r8
                        0x00007fc0af03e651:   mov    0x150(%rsp),%r9
                        0x00007fc0af03e659:   mov    0x140(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
   0.00%                0x00007fc0af03e661:   xchg   %ax,%ax
                        0x00007fc0af03e663:   call   0x00007fc0a7500080           ; ImmutableOopMap {[184]=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                                                                                  ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                                                                                  ;   {static_call}
                        0x00007fc0af03e668:   nop                                 ; ImmutableOopMap {rax=Oop [184]=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                                                                                  ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.incubator.vector.DoubleVector::zero@31 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                        0x00007fc0af03e669:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fbc6
                                                                                  ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%                0x00007fc0af03e670:   jne    0x00007fc0af03f9a6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@31 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                        0x00007fc0af03e676:   mov    $0x0,%r13d
                        0x00007fc0af03e67c:   mov    %rax,0xb0(%rsp)
   0.01%                0x00007fc0af03e684:   mov    0xb8(%rsp),%r9
                        0x00007fc0af03e68c:   mov    0xc0(%rsp),%rdi
                        0x00007fc0af03e694:   rex.W push 0xc8(%rsp)
                        0x00007fc0af03e69c:   rex.W pop 0xa8(%rsp)
   0.00%                0x00007fc0af03e6a4:   rex.W push 0xd0(%rsp)
   0.00%                0x00007fc0af03e6ac:   rex.W pop 0xa0(%rsp)
   0.00%                0x00007fc0af03e6b4:   nopl   0x0(%rax,%rax,1)
                        0x00007fc0af03e6bc:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.04%      ↗      ↗  0x00007fc0af03e6c0:   mov    0x158(%rsp),%rbx
   0.08%      │      │  0x00007fc0af03e6c8:   mov    0x160(%rsp),%r11
   0.01%      │      │  0x00007fc0af03e6d0:   mov    0x168(%rsp),%rsi
   0.01%      │      │  0x00007fc0af03e6d8:   nopl   0x0(%rax,%rax,1)
   0.05%      │      │  0x00007fc0af03e6e0:   cmp    0x10(%rsi),%r13d
              │      │  0x00007fc0af03e6e4:   jge    0x00007fc0af03ef7b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@177 (line 121)
   0.12%      │      │  0x00007fc0af03e6ea:   mov    %r13d,0x17c(%rsp)
   0.01%      │      │  0x00007fc0af03e6f2:   movabs $0x7f1638d20,%r13            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$68+0x0000000800c85098&apos;{0x00000007f1638d20})}
   0.01%      │      │  0x00007fc0af03e6fc:   mov    $0x5,%esi
   0.04%      │      │  0x00007fc0af03e701:   mov    %r11,%rdx
   0.07%      │      │  0x00007fc0af03e704:   mov    %rbx,%rcx
   0.00%      │      │  0x00007fc0af03e707:   mov    $0x4,%r8d
   0.00%      │      │  0x00007fc0af03e70d:   mov    %r9,%r10
   0.04%      │      │  0x00007fc0af03e710:   mov    %rdi,%r9
   0.12%      │      │  0x00007fc0af03e713:   mov    %rdi,0x98(%rsp)
   0.00%      │      │  0x00007fc0af03e71b:   mov    %r10,%rdi
   0.01%      │      │  0x00007fc0af03e71e:   mov    %r13,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.08%      │      │  0x00007fc0af03e722:   mov    %r10,0x90(%rsp)
   0.08%      │      │  0x00007fc0af03e72a:   nop
   0.00%      │      │  0x00007fc0af03e72b:   call   0x00007fc0a7500080           ; ImmutableOopMap {[144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
              │      │                                                            ;   {static_call}
   0.11%      │      │  0x00007fc0af03e730:   nop                                 ; ImmutableOopMap {rax=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%      │      │  0x00007fc0af03e731:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fbe6
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%      │      │  0x00007fc0af03e738:   jne    0x00007fc0af03f5ed
   0.04%      │      │  0x00007fc0af03e73e:   movabs $0x7f1638cf8,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007f1638cf8})}
   0.13%      │      │  0x00007fc0af03e748:   mov    $0x4,%esi
   0.01%      │      │  0x00007fc0af03e74d:   mov    0x160(%rsp),%rdx
   0.31%      │      │  0x00007fc0af03e755:   mov    0x158(%rsp),%rcx
   0.01%      │      │  0x00007fc0af03e75d:   mov    $0x4,%r8d
   0.00%      │      │  0x00007fc0af03e763:   mov    %rax,%r9
   0.00%      │      │  0x00007fc0af03e766:   mov    0xf8(%rsp),%rdi
   0.15%      │      │  0x00007fc0af03e76e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.02%      │      │  0x00007fc0af03e772:   mov    %rax,0x88(%rsp)
   0.43%      │      │  0x00007fc0af03e77a:   nop
              │      │  0x00007fc0af03e77b:   call   0x00007fc0a7500080           ; ImmutableOopMap {[136]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
              │      │                                                            ;   {static_call}
   0.15%      │      │  0x00007fc0af03e780:   nop                                 ; ImmutableOopMap {rax=Oop [136]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.01%      │      │  0x00007fc0af03e781:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fc06
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%      │      │  0x00007fc0af03e788:   jne    0x00007fc0af03f147           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.04%      │      │  0x00007fc0af03e78e:   mov    %rax,0x80(%rsp)
   0.29%      │      │  0x00007fc0af03e796:   movabs $0x7f1638cf8,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007f1638cf8})}
   0.00%      │      │  0x00007fc0af03e7a0:   mov    $0x4,%esi
   0.02%      │      │  0x00007fc0af03e7a5:   mov    0x160(%rsp),%rdx
   0.02%      │      │  0x00007fc0af03e7ad:   mov    0x158(%rsp),%rcx
   0.13%      │      │  0x00007fc0af03e7b5:   mov    $0x4,%r8d
              │      │  0x00007fc0af03e7bb:   mov    0xa0(%rsp),%r9
   0.03%      │      │  0x00007fc0af03e7c3:   mov    0xa0(%rsp),%rdi              ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.01%      │      │  0x00007fc0af03e7cb:   mov    %rbp,(%rsp)
   0.09%      │      │  0x00007fc0af03e7cf:   call   0x00007fc0a7500080           ; ImmutableOopMap {[128]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
              │      │                                                            ;   {static_call}
   0.15%      │      │  0x00007fc0af03e7d4:   nop
   0.00%      │      │  0x00007fc0af03e7d5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop [128]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
              │      │  0x00007fc0af03e7e0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fc26
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%      │      │  0x00007fc0af03e7e7:   jne    0x00007fc0af03f96e
   0.09%      │      │  0x00007fc0af03e7ed:   movabs $0x7f1638d48,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007f1638d48})}
   0.00%      │      │  0x00007fc0af03e7f7:   mov    $0x6,%esi
              │      │  0x00007fc0af03e7fc:   mov    %rdx,%r10
   0.03%      │      │  0x00007fc0af03e7ff:   mov    0x160(%rsp),%rdx
   0.32%      │      │  0x00007fc0af03e807:   mov    0x158(%rsp),%rcx
   0.00%      │      │  0x00007fc0af03e80f:   mov    $0x4,%r8d
   0.03%      │      │  0x00007fc0af03e815:   mov    %rax,%r9
   0.00%      │      │  0x00007fc0af03e818:   mov    0xa8(%rsp),%rdi
   0.13%      │      │  0x00007fc0af03e820:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
              │      │  0x00007fc0af03e824:   mov    %rax,0x78(%rsp)
   0.46%      │      │  0x00007fc0af03e829:   xchg   %ax,%ax
   0.01%      │      │  0x00007fc0af03e82b:   call   0x00007fc0a7500080           ; ImmutableOopMap {[120]=Oop [128]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
              │      │                                                            ;   {static_call}
   0.05%      │      │  0x00007fc0af03e830:   nop                                 ; ImmutableOopMap {rax=Oop [120]=Oop [128]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.09%      │      │  0x00007fc0af03e831:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fc46
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%      │      │  0x00007fc0af03e838:   jne    0x00007fc0af03f09d
   0.07%      │      │  0x00007fc0af03e83e:   movabs $0x7f1638cf8,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007f1638cf8})}
   0.01%      │      │  0x00007fc0af03e848:   mov    $0x4,%esi
   0.06%      │      │  0x00007fc0af03e84d:   mov    0x160(%rsp),%rdx
   0.35%      │      │  0x00007fc0af03e855:   mov    0x158(%rsp),%rcx
   0.00%      │      │  0x00007fc0af03e85d:   mov    $0x4,%r8d
              │      │  0x00007fc0af03e863:   mov    %rax,%r9
              │      │  0x00007fc0af03e866:   mov    0xd8(%rsp),%rdi
   0.13%      │      │  0x00007fc0af03e86e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.00%      │      │  0x00007fc0af03e872:   mov    %rax,0x70(%rsp)
   0.43%      │      │  0x00007fc0af03e877:   call   0x00007fc0a7500080           ; ImmutableOopMap {[112]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
              │      │                                                            ;   {static_call}
   0.11%      │      │  0x00007fc0af03e87c:   nop
   0.00%      │      │  0x00007fc0af03e87d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [112]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
              │      │  0x00007fc0af03e880:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fc66
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.04%      │      │  0x00007fc0af03e887:   jne    0x00007fc0af03f808           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.11%      │      │  0x00007fc0af03e88d:   mov    %rax,0x68(%rsp)
   0.32%      │      │  0x00007fc0af03e892:   movabs $0x7f1638d48,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007f1638d48})}
   0.03%      │      │  0x00007fc0af03e89c:   mov    $0x6,%esi
   0.02%      │      │  0x00007fc0af03e8a1:   mov    %rdx,%r10
   0.00%      │      │  0x00007fc0af03e8a4:   mov    0x160(%rsp),%rdx
   0.15%      │      │  0x00007fc0af03e8ac:   mov    0x158(%rsp),%rcx
   0.02%      │      │  0x00007fc0af03e8b4:   mov    $0x4,%r8d
   0.00%      │      │  0x00007fc0af03e8ba:   mov    0x80(%rsp),%r9
   0.02%      │      │  0x00007fc0af03e8c2:   mov    0x80(%rsp),%rdi
   0.13%      │      │  0x00007fc0af03e8ca:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.01%      │      │  0x00007fc0af03e8ce:   nop
   0.01%      │      │  0x00007fc0af03e8cf:   call   0x00007fc0a7500080           ; ImmutableOopMap {[104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
              │      │                                                            ;   {static_call}
   0.03%      │      │  0x00007fc0af03e8d4:   nop
   0.06%      │      │  0x00007fc0af03e8d5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
              │      │  0x00007fc0af03e8e0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fc86
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.09%      │      │  0x00007fc0af03e8e7:   jne    0x00007fc0af03f4f2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.10%      │      │  0x00007fc0af03e8ed:   mov    %rax,0x60(%rsp)
   0.43%      │      │  0x00007fc0af03e8f2:   movabs $0x7f1638d48,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007f1638d48})}
              │      │  0x00007fc0af03e8fc:   mov    $0x6,%esi
   0.01%      │      │  0x00007fc0af03e901:   mov    %rdx,%r10
              │      │  0x00007fc0af03e904:   mov    0x160(%rsp),%rdx
   0.15%      │      │  0x00007fc0af03e90c:   mov    0x158(%rsp),%rcx
   0.01%      │      │  0x00007fc0af03e914:   mov    $0x4,%r8d
   0.01%      │      │  0x00007fc0af03e91a:   mov    0x68(%rsp),%r9
   0.01%      │      │  0x00007fc0af03e91f:   mov    0x68(%rsp),%rdi
   0.15%      │      │  0x00007fc0af03e924:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.25%      │      │  0x00007fc0af03e928:   data16 xchg %ax,%ax
   0.00%      │      │  0x00007fc0af03e92b:   call   0x00007fc0a7500080           ; ImmutableOopMap {[96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
              │      │                                                            ;   {static_call}
   0.04%      │      │  0x00007fc0af03e930:   nop                                 ; ImmutableOopMap {rax=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.07%      │      │  0x00007fc0af03e931:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fca6
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%      │      │  0x00007fc0af03e938:   jne    0x00007fc0af03f78d
   0.08%      │      │  0x00007fc0af03e93e:   movabs $0x7f1638cf8,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007f1638cf8})}
   0.02%      │      │  0x00007fc0af03e948:   mov    $0x4,%esi
   0.03%      │      │  0x00007fc0af03e94d:   mov    0x160(%rsp),%rdx
   0.33%      │      │  0x00007fc0af03e955:   mov    0x158(%rsp),%rcx
   0.00%      │      │  0x00007fc0af03e95d:   mov    $0x4,%r8d
              │      │  0x00007fc0af03e963:   mov    0x60(%rsp),%r9
   0.18%      │      │  0x00007fc0af03e968:   mov    %rax,%rdi
   0.01%      │      │  0x00007fc0af03e96b:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.35%      │      │  0x00007fc0af03e96f:   mov    %rax,0x58(%rsp)
              │      │  0x00007fc0af03e974:   data16 xchg %ax,%ax
              │      │  0x00007fc0af03e977:   call   0x00007fc0a7500080           ; ImmutableOopMap {[88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
              │      │                                                            ;   {static_call}
   0.18%      │      │  0x00007fc0af03e97c:   nop
   0.00%      │      │  0x00007fc0af03e97d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
              │      │  0x00007fc0af03e980:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fcc6
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.06%      │      │  0x00007fc0af03e987:   jne    0x00007fc0af03f49e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.12%      │      │  0x00007fc0af03e98d:   mov    %rax,0x50(%rsp)
   0.42%      │      │  0x00007fc0af03e992:   mov    0x160(%rsp),%rsi
   0.03%      │      │  0x00007fc0af03e99a:   mov    0x158(%rsp),%rdx
   0.01%      │      │  0x00007fc0af03e9a2:   mov    $0x4,%ecx
   0.01%      │      │  0x00007fc0af03e9a7:   mov    0x1c8(%rsp),%r8
   0.15%      │      │  0x00007fc0af03e9af:   mov    0x150(%rsp),%r9
   0.00%      │      │  0x00007fc0af03e9b7:   mov    0x148(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.09%      │      │  0x00007fc0af03e9bf:   nop
   0.00%      │      │  0x00007fc0af03e9c0:   data16 xchg %ax,%ax
   0.03%      │      │  0x00007fc0af03e9c3:   call   0x00007fc0a7500080           ; ImmutableOopMap {[80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
              │      │                                                            ;   {static_call}
   0.13%      │      │  0x00007fc0af03e9c8:   nop                                 ; ImmutableOopMap {rax=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.00%      │      │  0x00007fc0af03e9c9:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fce6
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%      │      │  0x00007fc0af03e9d0:   jne    0x00007fc0af03f46b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.04%      │      │  0x00007fc0af03e9d6:   mov    $0x5,%esi
   0.11%      │      │  0x00007fc0af03e9db:   mov    0x50(%rsp),%rdx              ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%      │      │  0x00007fc0af03e9e0:   mov    %rax,%rcx
   0.03%      │      │  0x00007fc0af03e9e3:   call   0x00007fc0a7500080           ; ImmutableOopMap {[80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
              │      │                                                            ;   {static_call}
   0.09%      │      │  0x00007fc0af03e9e8:   nop
   0.02%      │      │  0x00007fc0af03e9e9:   mov    %rax,0x48(%rsp)              ; ImmutableOopMap {rax=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.21%      │      │  0x00007fc0af03e9ee:   cmpl   $0xc3e318,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fd06
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.05%      │      │  0x00007fc0af03e9f5:   jne    0x00007fc0af03f408           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@36 (line 394)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%      │      │  0x00007fc0af03e9fb:   mov    0x168(%rsp),%rsi
   0.02%      │      │  0x00007fc0af03ea03:   mov    0x1c(%rsi),%edx              ; ImmutableOopMap {rax=Oop rdx=NarrowOop rsi=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.44%      │      │  0x00007fc0af03ea06:   cmpl   $0xc3dce8,0x8(,%rdx,8)       ; implicit exception: dispatches to 0x00007fc0af03fd26
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.82%      │      │  0x00007fc0af03ea11:   jne    0x00007fc0af03f06c
   0.14%      │      │  0x00007fc0af03ea17:   movabs $0x7f1638cf8,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007f1638cf8})}
              │      │  0x00007fc0af03ea21:   shl    $0x3,%rdx                    ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.00%      │      │  0x00007fc0af03ea25:   mov    $0x4,%esi
              │      │  0x00007fc0af03ea2a:   mov    %rdx,%r11
   0.18%      │      │  0x00007fc0af03ea2d:   mov    0x160(%rsp),%rdx
   0.00%      │      │  0x00007fc0af03ea35:   mov    0x158(%rsp),%rcx
   0.00%      │      │  0x00007fc0af03ea3d:   mov    $0x4,%r8d
              │      │  0x00007fc0af03ea43:   mov    0xb0(%rsp),%r9
   0.16%      │      │  0x00007fc0af03ea4b:   mov    %r11,%rdi
   0.00%      │      │  0x00007fc0af03ea4e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%      │      │  0x00007fc0af03ea52:   mov    %r11,0x40(%rsp)
   0.00%      │      │  0x00007fc0af03ea57:   call   0x00007fc0a7500080           ; ImmutableOopMap {[64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
              │      │                                                            ;   {static_call}
   0.13%      │      │  0x00007fc0af03ea5c:   nop
   0.00%      │      │  0x00007fc0af03ea5d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%      │      │  0x00007fc0af03ea60:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fd46
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%      │      │  0x00007fc0af03ea67:   jne    0x00007fc0af03f42e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.12%      │      │  0x00007fc0af03ea6d:   mov    0x48(%rsp),%r10
   0.20%      │      │  0x00007fc0af03ea72:   movabs $0x7f1638d98,%r9             ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800c867e8&apos;{0x00000007f1638d98})}
   0.02%      │      │  0x00007fc0af03ea7c:   mov    0x160(%rsp),%rsi
   0.03%      │      │  0x00007fc0af03ea84:   mov    0x138(%rsp),%rdx
   0.11%      │      │  0x00007fc0af03ea8c:   mov    0x158(%rsp),%rcx
   0.01%      │      │  0x00007fc0af03ea94:   mov    $0x4,%r8d
   0.03%      │      │  0x00007fc0af03ea9a:   mov    %r9,%r11
   0.01%      │      │  0x00007fc0af03ea9d:   mov    0xb0(%rsp),%r9
   0.12%      │      │  0x00007fc0af03eaa5:   mov    %rax,%rdi
              │      │  0x00007fc0af03eaa8:   mov    %r10,(%rsp)
   0.02%      │      │  0x00007fc0af03eaac:   mov    %r11,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.13%      │      │  0x00007fc0af03eab1:   mov    %rax,0x38(%rsp)
   0.53%      │      │  0x00007fc0af03eab6:   nop
   0.01%      │      │  0x00007fc0af03eab7:   call   0x00007fc0a7500080           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
              │      │                                                            ;   {static_call}
   0.05%      │      │  0x00007fc0af03eabc:   nop
   0.02%      │      │  0x00007fc0af03eabd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [56]=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
              │      │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
              │      │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.03%      │      │  0x00007fc0af03eac0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc0af03fd66
              │      │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.05%      │      │  0x00007fc0af03eac7:   jne    0x00007fc0af03f3c1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
              │      │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.06%      │      │  0x00007fc0af03eacd:   mov    0x48(%rsp),%r10
   0.05%      │      │  0x00007fc0af03ead2:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
              │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
              │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
              │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.06%      │      │  0x00007fc0af03ead6:   test   %r11d,%r11d
          ╭   │      │  0x00007fc0af03ead9:   je     0x00007fc0af03ebcb
   0.07%  │   │      │  0x00007fc0af03eadf:   mov    0x8(,%r11,8),%esi
   0.13%  │   │      │  0x00007fc0af03eae7:   movabs $0x800000000,%rdx
   0.02%  │   │      │  0x00007fc0af03eaf1:   lea    (%rdx,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
          │   │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
          │   │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │   │      │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │   │      │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │   │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.10%  │   │     ↗│  0x00007fc0af03eaf5:   test   %r11d,%r11d
          │╭  │     ││  0x00007fc0af03eaf8:   je     0x00007fc0af03eb85
   0.03%  ││  │     ││  0x00007fc0af03eafe:   movabs $0x800000960,%rdi            ;   {metadata({type array bool})}
   0.01%  ││  │     ││  0x00007fc0af03eb08:   cmp    %rsi,%rdi
          ││  │     ││  0x00007fc0af03eb0b:   jne    0x00007fc0af03f673           ; ImmutableOopMap {rax=Oop r10=Oop r11=NarrowOop [56]=Oop [64]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
          ││  │     ││                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          ││  │     ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
          ││  │     ││                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
          ││  │     ││                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
          ││  │     ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
          ││  │     ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
          ││  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.09%  ││  │↗    ││  0x00007fc0af03eb11:   mov    0xc(,%r11,8),%r8d            ; implicit exception: dispatches to 0x00007fc0af03fd86
   0.03%  ││  ││    ││  0x00007fc0af03eb19:   nopl   0x0(%rax)
   0.06%  ││  ││    ││  0x00007fc0af03eb20:   test   %r8d,%r8d
          ││╭ ││    ││  0x00007fc0af03eb23:   je     0x00007fc0af03ec0b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ ││    ││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │││ ││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │││ ││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │││ ││    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │││ ││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │││ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.00%  │││ ││    ││  0x00007fc0af03eb29:   mov    0x17c(%rsp),%r13d
   0.08%  │││ ││    ││  0x00007fc0af03eb31:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@275 (line 135)
   0.02%  │││ ││    ││  0x00007fc0af03eb34:   nopl   0x0(%rax,%rax,1)
   0.03%  │││ ││    ││  0x00007fc0af03eb3c:   data16 data16 xchg %ax,%ax
   0.01%  │││ ││    ││  0x00007fc0af03eb40:   cmpb   $0x0,0x10(,%r11,8)
   0.11%  │││╭││    ││  0x00007fc0af03eb49:   je     0x00007fc0af03eb91           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││    ││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          ││││││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          ││││││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          ││││││    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││││││    ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          ││││││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.03%  ││││││    ││  0x00007fc0af03eb4f:   mov    %rax,0xb0(%rsp)
   0.01%  ││││││    ││  0x00007fc0af03eb57:   mov    0x58(%rsp),%r9
   0.07%  ││││││    ││  0x00007fc0af03eb5c:   mov    0x60(%rsp),%rdi
   0.03%  ││││││    ││  0x00007fc0af03eb61:   rex.W push 0x68(%rsp)
   0.04%  ││││││    ││  0x00007fc0af03eb66:   rex.W pop 0xa8(%rsp)
   0.59%  ││││││    ││  0x00007fc0af03eb6e:   rex.W push 0x80(%rsp)
   0.12%  ││││││    ││  0x00007fc0af03eb76:   rex.W pop 0xa0(%rsp)
   0.44%  ││││││    ││  0x00007fc0af03eb7e:   xchg   %ax,%ax
   0.00%  ││││╰│    ││  0x00007fc0af03eb80:   jmp    0x00007fc0af03e6c0
          │↘││ │    ││  0x00007fc0af03eb85:   movabs $0x800000960,%rdi            ;   {metadata({type array bool})}
          │ ││ ╰    ││  0x00007fc0af03eb8f:   jmp    0x00007fc0af03eb11           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
          │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
          │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ ││      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ ││      ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.00%  │ │↘      ││  0x00007fc0af03eb91:   mov    $0x1,%r10d
          │ │   ╭   ││  0x00007fc0af03eb97:   jmp    0x00007fc0af03ebb8           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │   ││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@7 (line 125)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │   │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │   │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
          │ │   │   ││  0x00007fc0af03eb9c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │   │   ││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │   │   ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │   │   ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │   │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.02%  │ │   │  ↗││  0x00007fc0af03eba0:   cmp    %r10d,%r8d
          │ │   │  │││  0x00007fc0af03eba3:   jbe    0x00007fc0af03f32c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │   │  │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@14 (line 125)
          │ │   │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │   │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │   │  │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │   │  │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │   │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.00%  │ │   │  │││  0x00007fc0af03eba9:   cmpb   $0x0,0x10(%r10,%r11,8)
          │ │   │╭ │││  0x00007fc0af03ebaf:   jne    0x00007fc0af03ebd7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │   ││ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │   ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.02%  │ │   ││ │││  0x00007fc0af03ebb5:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││ │││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@24 (line 125)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │   ││ │││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │   ││ │││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │   ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%  │ │   ↘│ │││  0x00007fc0af03ebb8:   nopl   0x0(%rax,%rax,1)
          │ │    │ │││  0x00007fc0af03ebc0:   cmp    %r10d,%r8d
          │ │    │╭│││  0x00007fc0af03ebc3:   jle    0x00007fc0af03ec0b
          │ │    ││╰││  0x00007fc0af03ebc9:   jmp    0x00007fc0af03eba0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │    ││ ││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │ │    ││ ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │ │    ││ ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │ │    ││ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │    ││ ││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │ │    ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
          ↘ │    ││ ││  0x00007fc0af03ebcb:   mov    $0x0,%rsi
            │    ││ ╰│  0x00007fc0af03ebd2:   jmp    0x00007fc0af03eaf5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │    ││  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
            │    ││  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
            │    ││  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
            │    ││  │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
            │    ││  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
            │    ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%    │    ↘│  │  0x00007fc0af03ebd7:   mov    %rax,0xb0(%rsp)
            │     │  │  0x00007fc0af03ebdf:   mov    0x58(%rsp),%r9
            │     │  │  0x00007fc0af03ebe4:   mov    0x60(%rsp),%rdi
            │     │  │  0x00007fc0af03ebe9:   rex.W push 0x68(%rsp)
   0.01%    │     │  │  0x00007fc0af03ebee:   rex.W pop 0xa8(%rsp)
   0.02%    │     │  │  0x00007fc0af03ebf6:   rex.W push 0x80(%rsp)
   0.01%    │     │  │  0x00007fc0af03ebfe:   rex.W pop 0xa0(%rsp)
   0.03%    │     │  ╰  0x00007fc0af03ec06:   jmp    0x00007fc0af03e6c0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.00%    ↘     ↘     0x00007fc0af03ec0b:   mov    %rax,0x30(%rsp)              ;*getstatic DOUBLE_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@281 (line 137)
                        0x00007fc0af03ec10:   mov    0x160(%rsp),%rsi
                        0x00007fc0af03ec18:   mov    0x158(%rsp),%rdx
                        0x00007fc0af03ec20:   mov    $0x4,%ecx
                        0x00007fc0af03ec25:   mov    $0x0,%r8
                        0x00007fc0af03ec2c:   mov    0x150(%rsp),%r9
                        0x00007fc0af03ec34:   mov    0x140(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@284 (line 138)
....................................................................................................
  16.29%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.94%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 950 
  16.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1065 
   7.61%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1047 
   7.06%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 983 
   5.56%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   2.33%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   1.54%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1047 
   0.42%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   0.40%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1102 
   0.11%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1101 
   0.07%               kernel  [unknown] 
   0.06%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1101 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1065 
   0.06%         libc-2.31.so  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1065 
   0.05%               kernel  [unknown] 
   2.88%  <...other 670 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.95%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 950 
  16.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1065 
   9.15%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1047 
   8.32%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   7.09%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 983 
   1.87%               kernel  [unknown] 
   0.16%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1101 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1102 
   0.12%         libc-2.31.so  [unknown] 
   0.11%                       <unknown> 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.02%            libjvm.so  JVMCIRuntime::new_instance_common 
   1.05%  <...other 259 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.39%       jvmci, level 4
   1.87%               kernel
   0.92%            libjvm.so
   0.20%         libc-2.31.so
   0.17%          c1, level 3
   0.14%          interpreter
   0.11%                     
   0.08%  libjvmcicompiler.so
   0.04%   libpthread-2.31.so
   0.03%               [vdso]
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.01%       perf-30780.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 256)

# Run progress: 75.00% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 371.085 ms/op
# Warmup Iteration   2: 109.762 ms/op
# Warmup Iteration   3: 109.585 ms/op
# Warmup Iteration   4: 109.635 ms/op
# Warmup Iteration   5: 109.586 ms/op
Iteration   1: 109.597 ms/op
Iteration   2: 109.633 ms/op
Iteration   3: 109.575 ms/op
Iteration   4: 109.572 ms/op
Iteration   5: 110.234 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  109.722 ±(99.9%) 1.107 ms/op [Average]
  (min, avg, max) = (109.572, 109.722, 110.234), stdev = 0.287
  CI (99.9%): [108.615, 110.829] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 303317 total address lines.
Perf output processed (skipped 59.274 seconds):
 Column 1: cycles (51387 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 

               0x00007f4a6703b04c:   vmovsd 0x208(%rsp),%xmm0
               0x00007f4a6703b055:   vmovsd 0x210(%rsp),%xmm2
   0.00%       0x00007f4a6703b05e:   vmovsd 0x218(%rsp),%xmm4
               0x00007f4a6703b067:   mov    0x298(%rsp),%rax
   0.00%       0x00007f4a6703b06f:   mov    0x2a8(%rsp),%r13
               0x00007f4a6703b077:   mov    0xb0(%rsp),%rbp
               0x00007f4a6703b07f:   mov    0xb8(%rsp),%rbx
               0x00007f4a6703b087:   mov    0xc0(%rsp),%rsi
               0x00007f4a6703b08f:   nop                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.01%       0x00007f4a6703b090:   cmp    0x10(%rsi),%edi
               0x00007f4a6703b093:   jge    0x00007f4a6703d1d7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@177 (line 121)
   0.15%       0x00007f4a6703b099:   nopl   0x0(%rax)
   0.25%       0x00007f4a6703b0a0:   cmpl   $0x4,0xc(%r9)
   0.03%       0x00007f4a6703b0a5:   jb     0x00007f4a6703d586           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.00%       0x00007f4a6703b0ab:   cmpl   $0x4,0xc(%r8)
   0.06%       0x00007f4a6703b0b0:   jb     0x00007f4a6703dd9e
   0.22%       0x00007f4a6703b0b6:   vmovsd 0x28(%r8),%xmm8              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.03%       0x00007f4a6703b0bc:   vmovsd %xmm8,0x168(%rsp)
   0.01%       0x00007f4a6703b0c5:   vmovsd 0x28(%r9),%xmm9              ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.05%       0x00007f4a6703b0cb:   vmovsd %xmm9,0x160(%rsp)
   0.23%       0x00007f4a6703b0d4:   vmovsd 0x20(%r8),%xmm10             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.03%       0x00007f4a6703b0da:   vmovsd 0x20(%r9),%xmm11             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.02%       0x00007f4a6703b0e0:   vmovsd 0x18(%r8),%xmm12             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.07%       0x00007f4a6703b0e6:   vmovsd 0x18(%r9),%xmm13             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.21%       0x00007f4a6703b0ec:   vmovsd 0x10(%r8),%xmm14             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.04%       0x00007f4a6703b0f2:   vmovsd 0x10(%r9),%xmm15             ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%       0x00007f4a6703b0f8:   mov    %r8,0x68(%rsp)
   0.06%       0x00007f4a6703b0fd:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.19%       0x00007f4a6703b101:   test   %r8d,%r8d
               0x00007f4a6703b104:   je     0x00007f4a6703bdcb
   0.05%       0x00007f4a6703b10a:   mov    %r9,0x60(%rsp)
   0.00%       0x00007f4a6703b10f:   mov    0x8(,%r8,8),%r9d
   0.06%       0x00007f4a6703b117:   movabs $0x800000000,%r14
   0.21%       0x00007f4a6703b121:   lea    (%r14,%r9,1),%r9
   0.02%       0x00007f4a6703b125:   test   %r8d,%r8d
          ╭    0x00007f4a6703b128:   je     0x00007f4a6703b137
   0.01%  │    0x00007f4a6703b12e:   cmp    %r9,%rax
          │    0x00007f4a6703b131:   jne    0x00007f4a6703d52b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
          │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │                                                              ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.04%  ↘    0x00007f4a6703b137:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=Oop r8=NarrowOop r10=Oop r11=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.24%       0x00007f4a6703b140:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f4a6703e586
   0.03%       0x00007f4a6703b149:   jb     0x00007f4a6703d4be
   0.07%       0x00007f4a6703b14f:   mov    0xc(%r10),%r9d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.23%       0x00007f4a6703b153:   test   %r9d,%r9d
               0x00007f4a6703b156:   je     0x00007f4a6703be13
   0.03%       0x00007f4a6703b15c:   mov    %r10,0x58(%rsp)
   0.02%       0x00007f4a6703b161:   mov    0x8(,%r9,8),%r14d
   0.07%       0x00007f4a6703b169:   movabs $0x800000000,%r10
   0.22%       0x00007f4a6703b173:   lea    (%r10,%r14,1),%r14
   0.03%       0x00007f4a6703b177:   test   %r9d,%r9d
           ╭   0x00007f4a6703b17a:   je     0x00007f4a6703b189           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
           │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
           │                                                             ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.01%   │   0x00007f4a6703b180:   cmp    %r14,%rax
           │   0x00007f4a6703b183:   jne    0x00007f4a6703da15           ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=Oop r8=NarrowOop r9=NarrowOop r11=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
           │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.07%   ↘   0x00007f4a6703b189:   cmpl   $0x4,0xc(,%r9,8)             ; implicit exception: dispatches to 0x00007f4a6703e5a6
   0.25%       0x00007f4a6703b192:   jb     0x00007f4a6703d345
   0.01%       0x00007f4a6703b198:   vmovsd 0x10(,%r8,8),%xmm7
   0.07%       0x00007f4a6703b1a2:   vmovsd 0x18(,%r8,8),%xmm6
   0.21%       0x00007f4a6703b1ac:   vmovsd 0x20(,%r8,8),%xmm8
   0.02%       0x00007f4a6703b1b6:   vmovsd 0x28(,%r8,8),%xmm9           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.02%       0x00007f4a6703b1c0:   vaddsd 0x28(,%r9,8),%xmm9,%xmm9
   0.29%       0x00007f4a6703b1ca:   vaddsd 0x20(,%r9,8),%xmm8,%xmm8
   0.06%       0x00007f4a6703b1d4:   vaddsd 0x18(,%r9,8),%xmm6,%xmm6
   0.28%       0x00007f4a6703b1de:   vaddsd 0x10(,%r9,8),%xmm7,%xmm7     ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.06%       0x00007f4a6703b1e8:   mov    0xc(%r11),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.13%       0x00007f4a6703b1ec:   test   %r8d,%r8d
               0x00007f4a6703b1ef:   je     0x00007f4a6703be25
   0.13%       0x00007f4a6703b1f5:   mov    0x8(,%r8,8),%r9d
   0.08%       0x00007f4a6703b1fd:   movabs $0x800000000,%r10
   0.01%       0x00007f4a6703b207:   lea    (%r10,%r9,1),%r9
   0.10%       0x00007f4a6703b20b:   test   %r8d,%r8d
            ╭  0x00007f4a6703b20e:   je     0x00007f4a6703b21d
   0.10%    │  0x00007f4a6703b214:   cmp    %r9,%rax
            │  0x00007f4a6703b217:   jne    0x00007f4a6703e165           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
            │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
            │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.07%    ↘  0x00007f4a6703b21d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rbx=Oop rbp=Oop rsi=Oop r8=NarrowOop r11=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.01%       0x00007f4a6703b220:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f4a6703e5c6
   0.28%       0x00007f4a6703b229:   jb     0x00007f4a6703def3
   0.08%       0x00007f4a6703b22f:   vmovsd %xmm8,0x158(%rsp)
   0.01%       0x00007f4a6703b238:   vmovsd %xmm9,0x150(%rsp)
   0.11%       0x00007f4a6703b241:   mov    %edi,0x174(%rsp)
   0.13%       0x00007f4a6703b248:   mov    0xa0(%rsp),%r14
   0.08%       0x00007f4a6703b250:   mov    0xa8(%rsp),%rax
   0.01%       0x00007f4a6703b258:   vmovsd 0x28(,%r8,8),%xmm9
   0.11%       0x00007f4a6703b262:   vmovsd %xmm9,0x148(%rsp)
   0.12%       0x00007f4a6703b26b:   vmovsd 0x20(,%r8,8),%xmm9
   0.07%       0x00007f4a6703b275:   vmovsd 0x18(,%r8,8),%xmm5
   0.01%       0x00007f4a6703b27f:   vmovsd 0x10(,%r8,8),%xmm8           ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@47 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.08%       0x00007f4a6703b289:   vsubsd %xmm14,%xmm15,%xmm14         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800cc4ca0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.13%       0x00007f4a6703b28e:   vaddsd %xmm0,%xmm14,%xmm14          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.07%       0x00007f4a6703b292:   vmulsd %xmm14,%xmm14,%xmm15         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.71%       0x00007f4a6703b297:   vmulsd %xmm8,%xmm7,%xmm7            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.10%       0x00007f4a6703b29c:   vaddsd %xmm1,%xmm7,%xmm7            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.33%       0x00007f4a6703b2a0:   vmulsd %xmm7,%xmm7,%xmm8            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.91%       0x00007f4a6703b2a4:   vaddsd %xmm8,%xmm15,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   1.14%       0x00007f4a6703b2a9:   vmovsd %xmm0,0x140(%rsp)
   0.31%       0x00007f4a6703b2b2:   vsubsd %xmm12,%xmm13,%xmm12         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800cc4ca0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.00%       0x00007f4a6703b2b7:   vaddsd %xmm2,%xmm12,%xmm12          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
               0x00007f4a6703b2bb:   vmulsd %xmm12,%xmm12,%xmm13         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
               0x00007f4a6703b2c0:   vmulsd %xmm5,%xmm6,%xmm5            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.24%       0x00007f4a6703b2c4:   vaddsd %xmm3,%xmm5,%xmm5            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.00%       0x00007f4a6703b2c8:   vmulsd %xmm5,%xmm5,%xmm6            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.01%       0x00007f4a6703b2cc:   vaddsd %xmm6,%xmm13,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.01%       0x00007f4a6703b2d0:   vmovsd %xmm0,0x138(%rsp)
   0.33%       0x00007f4a6703b2d9:   vsubsd %xmm10,%xmm11,%xmm10         ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800cc4ca0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.00%       0x00007f4a6703b2de:   vaddsd %xmm4,%xmm10,%xmm10          ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.00%       0x00007f4a6703b2e2:   vmulsd %xmm10,%xmm10,%xmm11         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.00%       0x00007f4a6703b2e7:   vmovsd 0x158(%rsp),%xmm0
   0.29%       0x00007f4a6703b2f0:   vmulsd %xmm9,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
               0x00007f4a6703b2f5:   vaddsd 0x1c8(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.00%       0x00007f4a6703b2fe:   vmovsd %xmm0,0x158(%rsp)
   0.00%       0x00007f4a6703b307:   vmulsd %xmm0,%xmm0,%xmm9            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.28%       0x00007f4a6703b30b:   vaddsd %xmm9,%xmm11,%xmm0           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.25%       0x00007f4a6703b310:   vmovsd %xmm0,0x130(%rsp)
   0.15%       0x00007f4a6703b319:   vmovsd 0x160(%rsp),%xmm0
   0.00%       0x00007f4a6703b322:   vsubsd 0x168(%rsp),%xmm0,%xmm0      ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800cc4ca0::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800cc4a58::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.15%       0x00007f4a6703b32b:   vaddsd 0x220(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.00%       0x00007f4a6703b334:   vmovsd %xmm0,0x168(%rsp)
   0.16%       0x00007f4a6703b33d:   vmulsd %xmm0,%xmm0,%xmm1            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.01%       0x00007f4a6703b341:   vmovsd 0x150(%rsp),%xmm0
   0.15%       0x00007f4a6703b34a:   vmulsd 0x148(%rsp),%xmm0,%xmm0      ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
               0x00007f4a6703b353:   vaddsd 0x1d0(%rsp),%xmm0,%xmm0      ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.19%       0x00007f4a6703b35c:   vmovsd %xmm0,0x148(%rsp)
   0.00%       0x00007f4a6703b365:   vmulsd %xmm0,%xmm0,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800cc5108::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.14%       0x00007f4a6703b369:   vaddsd %xmm2,%xmm1,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.49%       0x00007f4a6703b36d:   mov    %rbx,%rsi
   0.03%       0x00007f4a6703b370:   mov    %rbp,%rdx
               0x00007f4a6703b373:   mov    $0x4,%ecx
   0.04%       0x00007f4a6703b378:   mov    %r13,%r8
   0.20%       0x00007f4a6703b37b:   mov    %rax,%r9
   0.04%       0x00007f4a6703b37e:   mov    %r14,%rdi                    ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
               0x00007f4a6703b381:   vmovsd %xmm8,0x150(%rsp)
   0.04%       0x00007f4a6703b38a:   vmovsd %xmm6,0x160(%rsp)
   0.25%       0x00007f4a6703b393:   vmovsd %xmm9,0x128(%rsp)
   0.04%       0x00007f4a6703b39c:   vmovsd %xmm2,0x120(%rsp)
   0.00%       0x00007f4a6703b3a5:   vmovsd %xmm15,0x118(%rsp)
   0.04%       0x00007f4a6703b3ae:   vmovsd %xmm13,0x110(%rsp)
   0.22%       0x00007f4a6703b3b7:   vmovsd %xmm11,0x108(%rsp)           ;   {no_reloc}
   0.05%       0x00007f4a6703b3c0:   vmovsd %xmm1,0x100(%rsp)
               0x00007f4a6703b3c9:   vmovsd %xmm7,0xf8(%rsp)
   0.04%       0x00007f4a6703b3d2:   vmovsd %xmm5,0xf0(%rsp)
   0.23%       0x00007f4a6703b3db:   vmovsd %xmm14,0xe8(%rsp)
   0.08%       0x00007f4a6703b3e4:   vmovsd %xmm12,0xe0(%rsp)
               0x00007f4a6703b3ed:   vmovsd %xmm10,0xd8(%rsp)
   0.05%       0x00007f4a6703b3f6:   vmovsd %xmm0,0xd0(%rsp)
   0.21%       0x00007f4a6703b3ff:   nop
   0.04%       0x00007f4a6703b400:   data16 xchg %ax,%ax
               0x00007f4a6703b403:   call   0x00007f4a5f500080           ; ImmutableOopMap {[112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                                                                         ;   {static_call}
   0.16%       0x00007f4a6703b408:   nop
               0x00007f4a6703b409:   mov    %rax,%r11                    ; ImmutableOopMap {r11=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                         ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
               0x00007f4a6703b40c:   cmpl   $0xc3d778,0x8(%r11)          ; implicit exception: dispatches to 0x00007f4a6703e5e6
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.21%       0x00007f4a6703b414:   jne    0x00007f4a6703e025           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                                                                         ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                                                                         ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                                                                         ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                         ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.12%       0x00007f4a6703b41a:   mov    0x108(%r15),%rsi
   0.01%       0x00007f4a6703b421:   lea    0x10(%rsi),%rax
               0x00007f4a6703b425:   cmp    0x118(%r15),%rax
               0x00007f4a6703b42c:   ja     0x00007f4a6703bf31
   0.19%       0x00007f4a6703b432:   mov    %rax,0x108(%r15)
   0.23%       0x00007f4a6703b439:   prefetchw 0xd0(%rsi)
   0.13%       0x00007f4a6703b440:   movq   $0x1,(%rsi)
   0.14%       0x00007f4a6703b447:   movl   $0xc3d778,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.67%       0x00007f4a6703b44e:   movl   $0x0,0xc(%rsi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.09%       0x00007f4a6703b455:   mov    0x108(%r15),%rax
   0.04%       0x00007f4a6703b45c:   lea    0x30(%rax),%rdx
   0.07%       0x00007f4a6703b460:   cmp    0x118(%r15),%rdx
               0x00007f4a6703b467:   ja     0x00007f4a6703bf7e
   0.27%       0x00007f4a6703b46d:   mov    %rdx,0x108(%r15)
   0.17%       0x00007f4a6703b474:   prefetchw 0xf0(%rax)
   0.34%       0x00007f4a6703b47b:   prefetchw 0x130(%rax)
   0.09%       0x00007f4a6703b482:   prefetchw 0x170(%rax)
   0.25%       0x00007f4a6703b489:   prefetchw 0x1b0(%rax)
   0.20%       0x00007f4a6703b490:   movq   $0x1,(%rax)
   0.05%       0x00007f4a6703b497:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.82%       0x00007f4a6703b49e:   movl   $0x4,0xc(%rax)
   0.19%       0x00007f4a6703b4a5:   movq   $0x0,0x10(%rax)
   0.64%       0x00007f4a6703b4ad:   movq   $0x0,0x18(%rax)
   0.06%       0x00007f4a6703b4b5:   movq   $0x0,0x20(%rax)
   0.31%       0x00007f4a6703b4bd:   movq   $0x0,0x28(%rax)
   0.21%       0x00007f4a6703b4c5:   vmovsd 0xd0(%rsp),%xmm0
   0.07%       0x00007f4a6703b4ce:   vmovsd 0x130(%rsp),%xmm1
   0.15%       0x00007f4a6703b4d7:   vmovsd 0x138(%rsp),%xmm2
   0.10%       0x00007f4a6703b4e0:   vmovsd 0x140(%rsp),%xmm3
   0.04%       0x00007f4a6703b4e9:   vmovsd %xmm0,0x28(%rax)
   0.20%       0x00007f4a6703b4ee:   vmovsd %xmm1,0x20(%rax)
   0.15%       0x00007f4a6703b4f3:   vmovsd %xmm2,0x18(%rax)
   0.09%       0x00007f4a6703b4f8:   vmovsd %xmm3,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                         ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                         ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                         ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.14%       0x00007f4a6703b4fd:   mov    %rax,%rdx
   0.03%       0x00007f4a6703b500:   shr    $0x3,%rdx
   0.09%       0x00007f4a6703b504:   mov    %edx,0xc(%rsi)
   0.10%       0x00007f4a6703b507:   mov    %rsi,%rdx
   0.09%       0x00007f4a6703b50a:   xor    %rax,%rdx
   0.03%       0x00007f4a6703b50d:   test   $0xffffffffffe00000,%rdx
               0x00007f4a6703b514:   je     0x00007f4a6703be0b
               0x00007f4a6703b51a:   nopw   0x0(%rax,%rax,1)
               0x00007f4a6703b520:   test   %rax,%rax
               0x00007f4a6703b523:   je     0x00007f4a6703be3c
               0x00007f4a6703b529:   mov    0x2b8(%rsp),%r8
               0x00007f4a6703b531:   mov    %rsi,%r10
               0x00007f4a6703b534:   shr    $0x9,%r10
               0x00007f4a6703b538:   nopl   0x0(%rax,%rax,1)
               0x00007f4a6703b540:   cmpb   $0x4,(%r10,%r8,1)
               0x00007f4a6703b545:   jne    0x00007f4a6703be60           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  21.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 

   0.13%    0x00007f4a6703b79a:   mov    %rdx,%r10
   0.10%    0x00007f4a6703b79d:   xor    %r8,%r10
   0.01%    0x00007f4a6703b7a0:   test   $0xffffffffffe00000,%r10
            0x00007f4a6703b7a7:   je     0x00007f4a6703bde8
            0x00007f4a6703b7ad:   test   %r8,%r8
            0x00007f4a6703b7b0:   je     0x00007f4a6703be31
            0x00007f4a6703b7b6:   mov    0x2b8(%rsp),%r8
            0x00007f4a6703b7be:   mov    %rdx,%r10
            0x00007f4a6703b7c1:   shr    $0x9,%r10
            0x00007f4a6703b7c5:   cmpb   $0x4,(%r10,%r8,1)
   0.00%    0x00007f4a6703b7ca:   jne    0x00007f4a6703be45           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
            0x00007f4a6703b7d0:   mov    %rdx,%rdi
            0x00007f4a6703b7d3:   mov    %rax,%r14
   0.09%    0x00007f4a6703b7d6:   movabs $0x7f1bb5940,%r10            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800cc61a8&apos;{0x00000007f1bb5940})}
            0x00007f4a6703b7e0:   shl    $0x3,%rcx                    ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.14%    0x00007f4a6703b7e4:   mov    0xb8(%rsp),%rsi
   0.09%    0x00007f4a6703b7ec:   mov    0x90(%rsp),%rdx
   0.11%    0x00007f4a6703b7f4:   mov    %rcx,0x48(%rsp)
   0.01%    0x00007f4a6703b7f9:   mov    0xb0(%rsp),%rcx
   0.14%    0x00007f4a6703b801:   mov    $0x4,%r8d
   0.06%    0x00007f4a6703b807:   mov    %r11,%r9
   0.11%    0x00007f4a6703b80a:   mov    %rdi,%r11
   0.00%    0x00007f4a6703b80d:   mov    %r14,(%rsp)
   0.14%    0x00007f4a6703b811:   mov    %r10,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.10%    0x00007f4a6703b816:   mov    %r11,0x40(%rsp)
   0.12%    0x00007f4a6703b81b:   mov    %r14,0x38(%rsp)
   0.01%    0x00007f4a6703b820:   data16 xchg %ax,%ax
   0.14%    0x00007f4a6703b823:   call   0x00007f4a5f500080           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                                                                      ;   {static_call}
   0.20%    0x00007f4a6703b828:   nop
   0.01%    0x00007f4a6703b829:   mov    %rax,%r11                    ; ImmutableOopMap {r11=Oop [56]=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.03%    0x00007f4a6703b82c:   cmpl   $0xc3d778,0x8(%r11)          ; implicit exception: dispatches to 0x00007f4a6703e686
                                                                      ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.07%    0x00007f4a6703b834:   jne    0x00007f4a6703d6cd           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.19%    0x00007f4a6703b83a:   mov    0x38(%rsp),%r10
   0.09%    0x00007f4a6703b83f:   mov    0xc(%r10),%r8d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800cc6808::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.11%    0x00007f4a6703b843:   test   %r8d,%r8d
            0x00007f4a6703b846:   je     0x00007f4a6703bddc
   0.21%    0x00007f4a6703b84c:   mov    0x8(,%r8,8),%esi
   0.27%    0x00007f4a6703b854:   movabs $0x800000000,%rax
   0.01%    0x00007f4a6703b85e:   lea    (%rax,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800cc6808::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.23%    0x00007f4a6703b862:   test   %r8d,%r8d
            0x00007f4a6703b865:   je     0x00007f4a6703bcd6
   0.09%    0x00007f4a6703b86b:   movabs $0x800000960,%r14            ;   {metadata({type array bool})}
   0.01%    0x00007f4a6703b875:   cmp    %rsi,%r14
            0x00007f4a6703b878:   jne    0x00007f4a6703dbf3           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=Oop [64]=Oop [72]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                      ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                                                                      ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.21%    0x00007f4a6703b87e:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f4a6703e6a6
   0.02%    0x00007f4a6703b886:   test   %r9d,%r9d
            0x00007f4a6703b889:   je     0x00007f4a6703d075           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800cc6808::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.10%    0x00007f4a6703b88f:   mov    0x174(%rsp),%edi
   0.03%    0x00007f4a6703b896:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@275 (line 135)
   0.20%    0x00007f4a6703b898:   nopl   0x0(%rax,%rax,1)
   0.02%    0x00007f4a6703b8a0:   cmpb   $0x0,0x10(,%r8,8)
   0.10%    0x00007f4a6703b8a9:   je     0x00007f4a6703bcf2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800cc6808::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.19%    0x00007f4a6703b8af:   mov    0x108(%r15),%rsi
   0.02%    0x00007f4a6703b8b6:   lea    0x10(%rsi),%rax
   0.09%    0x00007f4a6703b8ba:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f4a6703b8c0:   cmp    0x118(%r15),%rax
            0x00007f4a6703b8c7:   ja     0x00007f4a6703c254
   0.17%    0x00007f4a6703b8cd:   mov    %rax,0x108(%r15)
   0.02%    0x00007f4a6703b8d4:   prefetchw 0xd0(%rsi)
   0.09%    0x00007f4a6703b8db:   movq   $0x1,(%rsi)
   0.02%    0x00007f4a6703b8e2:   movl   $0xc3d778,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.19%    0x00007f4a6703b8e9:   movl   $0x0,0xc(%rsi)
   0.01%    0x00007f4a6703b8f0:   mov    %rsi,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.07%    0x00007f4a6703b8f3:   mov    0x108(%r15),%rsi
   0.03%    0x00007f4a6703b8fa:   lea    0x30(%rsi),%rax
   0.16%    0x00007f4a6703b8fe:   xchg   %ax,%ax
   0.01%    0x00007f4a6703b900:   cmp    0x118(%r15),%rax
            0x00007f4a6703b907:   ja     0x00007f4a6703c34c
   0.11%    0x00007f4a6703b90d:   mov    %rax,0x108(%r15)
   0.02%    0x00007f4a6703b914:   prefetchw 0xf0(%rsi)
   0.21%    0x00007f4a6703b91b:   prefetchw 0x130(%rsi)
   0.01%    0x00007f4a6703b922:   prefetchw 0x170(%rsi)
   0.10%    0x00007f4a6703b929:   prefetchw 0x1b0(%rsi)
   0.20%    0x00007f4a6703b930:   movq   $0x1,(%rsi)
   0.17%    0x00007f4a6703b937:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.34%    0x00007f4a6703b93e:   movl   $0x4,0xc(%rsi)
   0.03%    0x00007f4a6703b945:   movq   $0x0,0x10(%rsi)
   0.48%    0x00007f4a6703b94d:   movq   $0x0,0x18(%rsi)
   0.04%    0x00007f4a6703b955:   movq   $0x0,0x20(%rsi)
   0.19%    0x00007f4a6703b95d:   movq   $0x0,0x28(%rsi)
   0.17%    0x00007f4a6703b965:   mov    %rsi,%rbp
   0.01%    0x00007f4a6703b968:   vmovsd 0x168(%rsp),%xmm4
   0.03%    0x00007f4a6703b971:   vmovsd 0xd8(%rsp),%xmm10
   0.11%    0x00007f4a6703b97a:   vmovsd 0xe0(%rsp),%xmm12
   0.17%    0x00007f4a6703b983:   vmovsd 0xe8(%rsp),%xmm14
   0.03%    0x00007f4a6703b98c:   vmovsd %xmm4,0x28(%rbp)
   0.22%    0x00007f4a6703b991:   vmovsd %xmm10,0x20(%rbp)
   0.14%    0x00007f4a6703b996:   vmovsd %xmm12,0x18(%rbp)
   0.13%    0x00007f4a6703b99b:   vmovsd %xmm14,0x10(%rbp)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.14%    0x00007f4a6703b9a0:   mov    0x108(%r15),%rsi
   0.08%    0x00007f4a6703b9a7:   lea    0x10(%rsi),%rax
   0.02%    0x00007f4a6703b9ab:   cmp    0x118(%r15),%rax
            0x00007f4a6703b9b2:   ja     0x00007f4a6703c146
   0.11%    0x00007f4a6703b9b8:   mov    %rax,0x108(%r15)
   0.12%    0x00007f4a6703b9bf:   prefetchw 0xd0(%rsi)
   0.05%    0x00007f4a6703b9c6:   movq   $0x1,(%rsi)
   0.50%    0x00007f4a6703b9cd:   movl   $0xc3d778,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.35%    0x00007f4a6703b9d4:   movl   $0x0,0xc(%rsi)
   0.25%    0x00007f4a6703b9db:   mov    %rsi,%r8                     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.01%    0x00007f4a6703b9de:   mov    0x108(%r15),%rsi
   0.03%    0x00007f4a6703b9e5:   lea    0x30(%rsi),%rax
   0.05%    0x00007f4a6703b9e9:   cmp    0x118(%r15),%rax
            0x00007f4a6703b9f0:   ja     0x00007f4a6703c02d
   0.19%    0x00007f4a6703b9f6:   mov    %rax,0x108(%r15)
   0.08%    0x00007f4a6703b9fd:   prefetchw 0xf0(%rsi)
   0.35%    0x00007f4a6703ba04:   prefetchw 0x130(%rsi)
   0.04%    0x00007f4a6703ba0b:   prefetchw 0x170(%rsi)
   0.32%    0x00007f4a6703ba12:   prefetchw 0x1b0(%rsi)
   0.19%    0x00007f4a6703ba19:   movq   $0x1,(%rsi)
   0.31%    0x00007f4a6703ba20:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.27%    0x00007f4a6703ba27:   movl   $0x4,0xc(%rsi)
   0.88%    0x00007f4a6703ba2e:   movq   $0x0,0x10(%rsi)
   0.12%    0x00007f4a6703ba36:   movq   $0x0,0x18(%rsi)
   0.43%    0x00007f4a6703ba3e:   movq   $0x0,0x20(%rsi)
   0.03%    0x00007f4a6703ba46:   movq   $0x0,0x28(%rsi)
   0.19%    0x00007f4a6703ba4e:   mov    %rsi,%r9
   0.03%    0x00007f4a6703ba51:   vmovsd 0x148(%rsp),%xmm5
   0.12%    0x00007f4a6703ba5a:   vmovsd 0x158(%rsp),%xmm6
   0.01%    0x00007f4a6703ba63:   vmovsd 0xf0(%rsp),%xmm7
   0.16%    0x00007f4a6703ba6c:   vmovsd 0xf8(%rsp),%xmm8
   0.04%    0x00007f4a6703ba75:   vmovsd %xmm5,0x28(%r9)
   0.13%    0x00007f4a6703ba7b:   vmovsd %xmm6,0x20(%r9)
   0.02%    0x00007f4a6703ba81:   vmovsd %xmm7,0x18(%r9)
   0.15%    0x00007f4a6703ba87:   vmovsd %xmm8,0x10(%r9)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.03%    0x00007f4a6703ba8d:   mov    0x108(%r15),%rsi
   0.11%    0x00007f4a6703ba94:   lea    0x30(%rsi),%rax
   0.03%    0x00007f4a6703ba98:   nopl   0x0(%rax,%rax,1)
   0.15%    0x00007f4a6703baa0:   cmp    0x118(%r15),%rax
            0x00007f4a6703baa7:   ja     0x00007f4a6703c0d9
   0.05%    0x00007f4a6703baad:   mov    %rax,0x108(%r15)
   0.08%    0x00007f4a6703bab4:   prefetchw 0xf0(%rsi)
   0.04%    0x00007f4a6703babb:   prefetchw 0x130(%rsi)
   0.15%    0x00007f4a6703bac2:   prefetchw 0x170(%rsi)
   0.05%    0x00007f4a6703bac9:   prefetchw 0x1b0(%rsi)
   0.21%    0x00007f4a6703bad0:   movq   $0x1,(%rsi)
   0.25%    0x00007f4a6703bad7:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.46%    0x00007f4a6703bade:   movl   $0x4,0xc(%rsi)
   0.16%    0x00007f4a6703bae5:   movq   $0x0,0x10(%rsi)
   0.26%    0x00007f4a6703baed:   movq   $0x0,0x18(%rsi)
   0.14%    0x00007f4a6703baf5:   movq   $0x0,0x20(%rsi)
   0.21%    0x00007f4a6703bafd:   movq   $0x0,0x28(%rsi)
   0.20%    0x00007f4a6703bb05:   mov    %rsi,%rbx
   0.03%    0x00007f4a6703bb08:   vmovsd 0x100(%rsp),%xmm9
   0.04%    0x00007f4a6703bb11:   vmovsd 0x108(%rsp),%xmm11
   0.13%    0x00007f4a6703bb1a:   vmovsd 0x110(%rsp),%xmm13
   0.14%    0x00007f4a6703bb23:   vmovsd 0x118(%rsp),%xmm15
   0.03%    0x00007f4a6703bb2c:   vmovsd %xmm9,0x28(%rbx)
   0.03%    0x00007f4a6703bb31:   vmovsd %xmm11,0x20(%rbx)
   0.19%    0x00007f4a6703bb36:   vmovsd %xmm13,0x18(%rbx)
   0.13%    0x00007f4a6703bb3b:   vmovsd %xmm15,0x10(%rbx)            ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.14%    0x00007f4a6703bb40:   mov    0x108(%r15),%rsi
   0.03%    0x00007f4a6703bb47:   lea    0x30(%rsi),%rax
   0.09%    0x00007f4a6703bb4b:   cmp    0x118(%r15),%rax
            0x00007f4a6703bb52:   ja     0x00007f4a6703c1ff
   0.12%    0x00007f4a6703bb58:   mov    %rax,0x108(%r15)
   0.09%    0x00007f4a6703bb5f:   prefetchw 0xf0(%rsi)
   0.01%    0x00007f4a6703bb66:   prefetchw 0x130(%rsi)
   0.07%    0x00007f4a6703bb6d:   prefetchw 0x170(%rsi)
   0.11%    0x00007f4a6703bb74:   prefetchw 0x1b0(%rsi)
   0.21%    0x00007f4a6703bb7b:   movq   $0x1,(%rsi)
   0.27%    0x00007f4a6703bb82:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   0.26%    0x00007f4a6703bb89:   movl   $0x4,0xc(%rsi)
   0.25%    0x00007f4a6703bb90:   movq   $0x0,0x10(%rsi)
   0.22%    0x00007f4a6703bb98:   movq   $0x0,0x18(%rsi)
   0.23%    0x00007f4a6703bba0:   movq   $0x0,0x20(%rsi)
   0.19%    0x00007f4a6703bba8:   movq   $0x0,0x28(%rsi)
   0.18%    0x00007f4a6703bbb0:   mov    %rsi,%r13
   0.01%    0x00007f4a6703bbb3:   vmovsd 0x120(%rsp),%xmm2
   0.04%    0x00007f4a6703bbbc:   vmovsd 0x128(%rsp),%xmm9
   0.11%    0x00007f4a6703bbc5:   vmovsd 0x160(%rsp),%xmm6
   0.18%    0x00007f4a6703bbce:   vmovsd 0x150(%rsp),%xmm8
   0.03%    0x00007f4a6703bbd7:   vmovsd %xmm2,0x28(%r13)
   0.02%    0x00007f4a6703bbdd:   vmovsd %xmm9,0x20(%r13)
   0.25%    0x00007f4a6703bbe3:   vmovsd %xmm6,0x18(%r13)
   0.16%    0x00007f4a6703bbe9:   vmovsd %xmm8,0x10(%r13)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                      ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
                                                                      ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800cc4ec0::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                      ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                      ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                      ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.21%    0x00007f4a6703bbef:   mov    %rbp,%rsi
   0.01%    0x00007f4a6703bbf2:   shr    $0x3,%rsi
   0.01%    0x00007f4a6703bbf6:   mov    %esi,0xc(%rcx)
   0.25%    0x00007f4a6703bbf9:   mov    %rcx,%rsi
   0.04%    0x00007f4a6703bbfc:   xor    %rbp,%rsi
   0.00%    0x00007f4a6703bbff:   nop
   0.01%    0x00007f4a6703bc00:   test   $0xffffffffffe00000,%rsi
            0x00007f4a6703bc07:   je     0x00007f4a6703be78
            0x00007f4a6703bc0d:   test   %rbp,%rbp
            0x00007f4a6703bc10:   je     0x00007f4a6703be85
            0x00007f4a6703bc16:   mov    0x2b8(%rsp),%rbp
            0x00007f4a6703bc1e:   mov    %rcx,%r10
            0x00007f4a6703bc21:   shr    $0x9,%r10
            0x00007f4a6703bc25:   cmpb   $0x4,(%r10,%rbp,1)
            0x00007f4a6703bc2a:   jne    0x00007f4a6703be92
            0x00007f4a6703bc30:   mov    %rbp,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
....................................................................................................
  20.31%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 

                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
             0x00007f4a6703b54b:   mov    %rsi,%rbx
   0.22%     0x00007f4a6703b54e:   movabs $0x7f1bb58e8,%r9             ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$74+0x0000000800cc5968&apos;{0x00000007f1bb58e8})}
             0x00007f4a6703b558:   mov    $0x5,%esi
             0x00007f4a6703b55d:   mov    0xb8(%rsp),%rdx
   0.14%     0x00007f4a6703b565:   mov    0x90(%rsp),%rcx
   0.21%     0x00007f4a6703b56d:   mov    0xb0(%rsp),%r8
   0.00%     0x00007f4a6703b575:   mov    %r9,%rax
             0x00007f4a6703b578:   mov    $0x4,%r9d
   0.12%     0x00007f4a6703b57e:   mov    %rbx,%rdi
   0.17%     0x00007f4a6703b581:   mov    %r11,(%rsp)
   0.02%     0x00007f4a6703b585:   mov    %rax,0x8(%rsp)               ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%     0x00007f4a6703b58a:   mov    %rbx,0x50(%rsp)
   0.13%     0x00007f4a6703b58f:   call   0x00007f4a5f500080           ; ImmutableOopMap {[80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*invokestatic compare {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                                                                       ;   {static_call}
   0.15%     0x00007f4a6703b594:   nop
   0.02%     0x00007f4a6703b595:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector::compareTemplate@55 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.07%     0x00007f4a6703b5a0:   cmpl   $0xc3dda8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f4a6703e606
                                                                       ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.12%     0x00007f4a6703b5a7:   jne    0x00007f4a6703dc0f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@55 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.13%     0x00007f4a6703b5ad:   mov    0xc0(%rsp),%rsi
   0.13%     0x00007f4a6703b5b5:   mov    0x1c(%rsi),%ecx              ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.29%     0x00007f4a6703b5b8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector::compareTemplate@55 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.05%     0x00007f4a6703b5c0:   cmpl   $0xc3d778,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f4a6703e626
                                                                       ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   1.25%     0x00007f4a6703b5cb:   jne    0x00007f4a6703d387           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@1 (line 614)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.30%     0x00007f4a6703b5d1:   mov    0x70(%rsp),%r11
   0.02%     0x00007f4a6703b5d6:   mov    0xc(%r11),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.00%     0x00007f4a6703b5da:   nopw   0x0(%rax,%rax,1)
   0.01%     0x00007f4a6703b5e0:   test   %r10d,%r10d
             0x00007f4a6703b5e3:   je     0x00007f4a6703bdf3
   0.27%     0x00007f4a6703b5e9:   mov    0x8(,%r10,8),%edx
   0.01%     0x00007f4a6703b5f1:   movabs $0x800000000,%rbp
   0.00%     0x00007f4a6703b5fb:   lea    0x0(%rbp,%rdx,1),%rdx
   0.30%     0x00007f4a6703b600:   test   %r10d,%r10d
             0x00007f4a6703b603:   je     0x00007f4a6703bce5
   0.01%     0x00007f4a6703b609:   mov    0x298(%rsp),%rbx
   0.01%     0x00007f4a6703b611:   cmp    %rdx,%rbx
             0x00007f4a6703b614:   jne    0x00007f4a6703daed           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.29%     0x00007f4a6703b61a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=NarrowOop rsi=Oop r10=NarrowOop r11=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
                                                                       ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) jdk.incubator.vector.DoubleVector::compareTemplate@55 (line 1654)
                                                                       ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                                                                       ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.00%     0x00007f4a6703b620:   cmpl   $0x4,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f4a6703e646
   0.02%     0x00007f4a6703b629:   jb     0x00007f4a6703d833
   0.31%     0x00007f4a6703b62f:   mov    0xc(,%rcx,8),%ebp            ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                       ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007f4a6703b636:   test   %ebp,%ebp
             0x00007f4a6703b638:   je     0x00007f4a6703bdff
   0.02%     0x00007f4a6703b63e:   mov    0x8(,%rbp,8),%edx
   0.02%     0x00007f4a6703b645:   movabs $0x800000000,%r8
   0.27%     0x00007f4a6703b64f:   lea    (%r8,%rdx,1),%rdx
   0.01%     0x00007f4a6703b653:   test   %ebp,%ebp
          ╭  0x00007f4a6703b655:   je     0x00007f4a6703b669           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
          │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
          │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
          │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
          │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
          │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
          │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
          │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
          │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.00%  │  0x00007f4a6703b65b:   nopl   0x0(%rax,%rax,1)
   0.00%  │  0x00007f4a6703b660:   cmp    %rdx,%rbx
          │  0x00007f4a6703b663:   jne    0x00007f4a6703e1c8           ; ImmutableOopMap {rax=Oop rcx=NarrowOop rbp=NarrowOop rsi=Oop r10=NarrowOop r11=Oop [80]=Oop [112]=Oop [136]=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [184]=Oop [192]=Oop }
          │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::compareTemplate@55 (line 1654)
          │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
          │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
          │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.58%  ↘  0x00007f4a6703b669:   cmpl   $0x4,0xc(,%rbp,8)            ; implicit exception: dispatches to 0x00007f4a6703e666
   0.01%     0x00007f4a6703b671:   jb     0x00007f4a6703d953
   0.00%     0x00007f4a6703b677:   mov    0x108(%r15),%rdx
   0.29%     0x00007f4a6703b67e:   lea    0x10(%rdx),%r8
   0.00%     0x00007f4a6703b682:   cmp    0x118(%r15),%r8
             0x00007f4a6703b689:   ja     0x00007f4a6703becf
   0.00%     0x00007f4a6703b68f:   mov    %r8,0x108(%r15)
   0.00%     0x00007f4a6703b696:   prefetchw 0xd0(%rdx)
   0.33%     0x00007f4a6703b69d:   movq   $0x1,(%rdx)
             0x00007f4a6703b6a4:   movl   $0xc3d778,0x8(%rdx)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%     0x00007f4a6703b6ab:   movl   $0x0,0xc(%rdx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%     0x00007f4a6703b6b2:   mov    0x108(%r15),%r8
   0.31%     0x00007f4a6703b6b9:   lea    0x30(%r8),%r9
   0.28%     0x00007f4a6703b6bd:   data16 xchg %ax,%ax
   0.01%     0x00007f4a6703b6c0:   cmp    0x118(%r15),%r9
             0x00007f4a6703b6c7:   ja     0x00007f4a6703befd
   0.27%     0x00007f4a6703b6cd:   mov    %r9,0x108(%r15)
   0.26%     0x00007f4a6703b6d4:   prefetchw 0xf0(%r8)
   0.51%     0x00007f4a6703b6dc:   prefetchw 0x130(%r8)
   0.01%     0x00007f4a6703b6e4:   prefetchw 0x170(%r8)
   0.34%     0x00007f4a6703b6ec:   prefetchw 0x1b0(%r8)
   0.22%     0x00007f4a6703b6f4:   movq   $0x1,(%r8)
   1.39%     0x00007f4a6703b6fb:   movl   $0x6650,0x8(%r8)             ;   {metadata({type array double})}
   0.00%     0x00007f4a6703b703:   movl   $0x4,0xc(%r8)
   0.63%     0x00007f4a6703b70b:   movq   $0x0,0x10(%r8)
   0.02%     0x00007f4a6703b713:   movq   $0x0,0x18(%r8)
   0.25%     0x00007f4a6703b71b:   movq   $0x0,0x20(%r8)
   0.15%     0x00007f4a6703b723:   movq   $0x0,0x28(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%     0x00007f4a6703b72b:   vmovsd 0x28(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007f4a6703b735:   vaddsd 0x28(,%rbp,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.28%     0x00007f4a6703b73e:   vmovsd %xmm0,0x28(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%     0x00007f4a6703b744:   vmovsd 0x20(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007f4a6703b74e:   vaddsd 0x20(,%rbp,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.21%     0x00007f4a6703b757:   vmovsd %xmm0,0x20(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%     0x00007f4a6703b75d:   vmovsd 0x18(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%     0x00007f4a6703b767:   vaddsd 0x18(,%rbp,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.23%     0x00007f4a6703b770:   vmovsd %xmm0,0x18(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.07%     0x00007f4a6703b776:   vmovsd 0x10(,%r10,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.02%     0x00007f4a6703b780:   vaddsd 0x10(,%rbp,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800cc4838::apply@4
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.23%     0x00007f4a6703b789:   vmovsd %xmm0,0x10(%r8)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
                                                                       ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
                                                                       ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800cc43f0::apply@8
                                                                       ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                       ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                       ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                                                                       ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.07%     0x00007f4a6703b78f:   mov    %r8,%r10
   0.02%     0x00007f4a6703b792:   shr    $0x3,%r10
   0.09%     0x00007f4a6703b796:   mov    %r10d,0xc(%rdx)
   0.13%     0x00007f4a6703b79a:   mov    %rdx,%r10
   0.10%     0x00007f4a6703b79d:   xor    %r8,%r10
   0.01%     0x00007f4a6703b7a0:   test   $0xffffffffffe00000,%r10
             0x00007f4a6703b7a7:   je     0x00007f4a6703bde8
             0x00007f4a6703b7ad:   test   %r8,%r8
             0x00007f4a6703b7b0:   je     0x00007f4a6703be31
             0x00007f4a6703b7b6:   mov    0x2b8(%rsp),%r8
             0x00007f4a6703b7be:   mov    %rdx,%r10
             0x00007f4a6703b7c1:   shr    $0x9,%r10
             0x00007f4a6703b7c5:   cmpb   $0x4,(%r10,%r8,1)
   0.00%     0x00007f4a6703b7ca:   jne    0x00007f4a6703be45           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                       ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  12.75%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1028 

             [Verified Entry Point]
               # {method} {0x00000008000058a8} &apos;blend&apos; &apos;(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ILjdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$Vector;Ljdk/internal/vm/vector/VectorSupport$VectorMask;Ljdk/internal/vm/vector/VectorSupport$VectorBlendOp;)Ljdk/internal/vm/vector/VectorSupport$Vector;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
               # parm0:    rsi:rsi   = &apos;java/lang/Class&apos;
               # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
               # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
               # parm3:    r8        = int
               # parm4:    r9:r9     = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm5:    rdi:rdi   = &apos;jdk/internal/vm/vector/VectorSupport$Vector&apos;
               # parm6:    [sp+0x20]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorMask&apos;  (sp of caller)
               # parm7:    [sp+0x28]   = &apos;jdk/internal/vm/vector/VectorSupport$VectorBlendOp&apos;
   0.16%       0x00007f4a67012740:   mov    %eax,-0x14000(%rsp)
   0.17%       0x00007f4a67012747:   sub    $0x18,%rsp
   0.08%       0x00007f4a6701274b:   mov    %rbp,0x10(%rsp)
   0.15%       0x00007f4a67012750:   mov    0x20(%rsp),%r10
   0.00%       0x00007f4a67012755:   mov    0x28(%rsp),%r11
   0.08%       0x00007f4a6701275a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.07%       0x00007f4a67012760:   cmpl   $0xc3d778,0x8(%r9)           ; implicit exception: dispatches to 0x00007f4a67012c4e
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.15%       0x00007f4a67012768:   jne    0x00007f4a67012bd4           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.00%       0x00007f4a6701276e:   cmpl   $0xc3d778,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f4a67012c6a
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.11%       0x00007f4a67012775:   jne    0x00007f4a67012ba9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@5
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.07%       0x00007f4a6701277b:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.16%       0x00007f4a67012780:   cmpl   $0xc3dda8,0x8(%r10)          ; implicit exception: dispatches to 0x00007f4a67012c86
                                                                         ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.05%       0x00007f4a67012788:   jne    0x00007f4a67012b9a           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.09%       0x00007f4a6701278e:   cmpl   $0xcc61a8,0x8(%r11)          ; implicit exception: dispatches to 0x00007f4a67012ca6
                                                                         ;   {metadata(&apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800cc61a8&apos;)}
   0.08%       0x00007f4a67012796:   jne    0x00007f4a67012c06           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.14%       0x00007f4a6701279c:   mov    0xc(%r9),%esi                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007f4a670127a0:   test   %esi,%esi
               0x00007f4a670127a2:   je     0x00007f4a67012a9c
   0.09%       0x00007f4a670127a8:   mov    0x8(,%rsi,8),%edx
   0.08%       0x00007f4a670127af:   movabs $0x800000000,%rax
   0.13%       0x00007f4a670127b9:   lea    (%rax,%rdx,1),%rdx
   0.01%       0x00007f4a670127bd:   movabs $0x800006650,%rbp            ;   {metadata({type array double})}
   0.09%       0x00007f4a670127c7:   test   %esi,%esi
          ╭    0x00007f4a670127c9:   je     0x00007f4a670127d8
   0.07%  │    0x00007f4a670127cf:   cmp    %rdx,%rbp
          │    0x00007f4a670127d2:   jne    0x00007f4a67012b3f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
          │                                                              ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
          │                                                              ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
          │                                                              ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
          │                                                              ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
          │                                                              ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.16%  ↘    0x00007f4a670127d8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=NarrowOop rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.00%       0x00007f4a670127e0:   cmpl   $0x4,0xc(,%rsi,8)            ; implicit exception: dispatches to 0x00007f4a67012cc6
   0.16%       0x00007f4a670127e8:   jb     0x00007f4a67012c3c
   0.14%       0x00007f4a670127ee:   mov    0xc(%rdi),%edx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.00%       0x00007f4a670127f1:   test   %edx,%edx
               0x00007f4a670127f3:   je     0x00007f4a67012ab4
   0.11%       0x00007f4a670127f9:   mov    0x8(,%rdx,8),%eax
   0.33%       0x00007f4a67012800:   movabs $0x800000000,%r8
   0.05%       0x00007f4a6701280a:   lea    (%r8,%rax,1),%rax
   0.12%       0x00007f4a6701280e:   test   %edx,%edx
           ╭   0x00007f4a67012810:   je     0x00007f4a6701281f
   0.07%   │   0x00007f4a67012816:   cmp    %rax,%rbp
           │   0x00007f4a67012819:   jne    0x00007f4a67012c2a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │                                                             ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
           │                                                             ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
           │                                                             ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
           │                                                             ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
           │                                                             ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.14%   ↘   0x00007f4a6701281f:   mov    0xc(%r10),%eax               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.06%       0x00007f4a67012823:   test   %eax,%eax
               0x00007f4a67012825:   je     0x00007f4a67012aa8
   0.00%       0x00007f4a6701282b:   mov    0x8(,%rax,8),%r8d
   0.14%       0x00007f4a67012833:   movabs $0x800000000,%rcx
   0.15%       0x00007f4a6701283d:   lea    (%rcx,%r8,1),%r8
   0.13%       0x00007f4a67012841:   test   %eax,%eax
            ╭  0x00007f4a67012843:   je     0x00007f4a6701285c
            │  0x00007f4a67012849:   movabs $0x800000960,%rcx            ;   {metadata({type array bool})}
   0.04%    │  0x00007f4a67012853:   cmp    %r8,%rcx
            │  0x00007f4a67012856:   jne    0x00007f4a67012b6f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
            │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
            │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
            │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
            │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
            │                                                            ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.23%    ↘  0x00007f4a6701285c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rdx=NarrowOop rsi=NarrowOop rdi=Oop r9=Oop r10=Oop r11=Oop }
                                                                         ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) jdk.internal.vm.vector.VectorSupport::blend@0 (line 433)
   0.04%       0x00007f4a67012860:   cmpl   $0x4,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f4a67012ce6
   0.04%       0x00007f4a67012868:   jb     0x00007f4a67012b60
   0.22%       0x00007f4a6701286e:   cmpb   $0x0,0x10(,%rax,8)
   0.05%       0x00007f4a67012876:   jne    0x00007f4a67012a14           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.03%       0x00007f4a6701287c:   vmovsd 0x10(,%rsi,8),%xmm0          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007f4a67012885:   mov    %eax,%r11d
   0.19%       0x00007f4a67012888:   shl    $0x3,%r11                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@27 (line 222)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.05%       0x00007f4a6701288c:   mov    %edx,%r8d
   0.07%       0x00007f4a6701288f:   shl    $0x3,%r8                     ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@18 (line 221)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007f4a67012893:   mov    %esi,%ecx
   0.18%       0x00007f4a67012895:   shl    $0x3,%rcx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                         ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@9 (line 220)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.04%       0x00007f4a67012899:   nopl   0x0(%rax)
   0.08%       0x00007f4a670128a0:   cmpb   $0x0,0x11(,%rax,8)
   0.19%       0x00007f4a670128a8:   jne    0x00007f4a67012a7c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.00%       0x00007f4a670128ae:   vmovsd 0x18(,%rsi,8),%xmm1          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.02%       0x00007f4a670128b7:   nopw   0x0(%rax,%rax,1)
   0.16%       0x00007f4a670128c0:   cmpb   $0x0,0x12(,%rax,8)
   0.12%       0x00007f4a670128c8:   jne    0x00007f4a67012a3c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.01%       0x00007f4a670128ce:   vmovsd 0x20(,%rsi,8),%xmm2          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.05%       0x00007f4a670128d7:   nopw   0x0(%rax,%rax,1)
   0.04%       0x00007f4a670128e0:   cmpb   $0x0,0x13(,%rax,8)
   0.23%       0x00007f4a670128e8:   jne    0x00007f4a67012a5c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@52 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.00%       0x00007f4a670128ee:   vmovsd 0x28(,%rsi,8),%xmm3          ;*daload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@80 (line 224)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.03%       0x00007f4a670128f7:   mov    0x108(%r15),%rsi
   0.21%       0x00007f4a670128fe:   lea    0x10(%rsi),%rdx
   0.05%       0x00007f4a67012902:   cmp    0x118(%r15),%rdx
               0x00007f4a67012909:   ja     0x00007f4a67012aff
   0.04%       0x00007f4a6701290f:   mov    %rdx,0x108(%r15)
   0.04%       0x00007f4a67012916:   prefetchw 0xd0(%rsi)
   0.24%       0x00007f4a6701291d:   movq   $0x1,(%rsi)
   0.18%       0x00007f4a67012924:   movl   $0xc3d778,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.18%       0x00007f4a6701292b:   movl   $0x0,0xc(%rsi)
   0.18%       0x00007f4a67012932:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@91 (line 226)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.05%       0x00007f4a67012935:   mov    0x108(%r15),%rsi
   0.08%       0x00007f4a6701293c:   lea    0x30(%rsi),%rdx
   0.33%       0x00007f4a67012940:   cmp    0x118(%r15),%rdx
               0x00007f4a67012947:   ja     0x00007f4a67012b19
   0.25%       0x00007f4a6701294d:   mov    %rdx,0x108(%r15)
   0.24%       0x00007f4a67012954:   prefetchw 0xf0(%rsi)
   0.70%       0x00007f4a6701295b:   prefetchw 0x130(%rsi)
   0.05%       0x00007f4a67012962:   prefetchw 0x170(%rsi)
   0.12%       0x00007f4a67012969:   prefetchw 0x1b0(%rsi)
   0.17%       0x00007f4a67012970:   movq   $0x1,(%rsi)
   0.26%       0x00007f4a67012977:   movl   $0x6650,0x8(%rsi)            ;   {metadata({type array double})}
   1.15%       0x00007f4a6701297e:   movl   $0x4,0xc(%rsi)
   0.04%       0x00007f4a67012985:   movq   $0x0,0x10(%rsi)
   0.38%       0x00007f4a6701298d:   movq   $0x0,0x18(%rsi)
   0.12%       0x00007f4a67012995:   movq   $0x0,0x20(%rsi)
   0.16%       0x00007f4a6701299d:   movq   $0x0,0x28(%rsi)
   0.09%       0x00007f4a670129a5:   vmovsd %xmm3,0x28(%rsi)
   0.11%       0x00007f4a670129aa:   vmovsd %xmm2,0x20(%rsi)
   0.13%       0x00007f4a670129af:   vmovsd %xmm1,0x18(%rsi)
   0.25%       0x00007f4a670129b4:   vmovsd %xmm0,0x10(%rsi)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 219)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@10 (line 214)
                                                                         ; - jdk.incubator.vector.Double256Vector::bOp@4 (line 41)
                                                                         ; - jdk.incubator.vector.DoubleVector::lambda$blendTemplate$64@8 (line 1796)
                                                                         ; - jdk.incubator.vector.DoubleVector$$Lambda$76/0x0000000800cc61a8::apply@12
                                                                         ; - jdk.internal.vm.vector.VectorSupport::blend@32 (line 434)
   0.26%       0x00007f4a670129b9:   mov    %rsi,%rdx
   0.01%       0x00007f4a670129bc:   shr    $0x3,%rdx
   0.02%       0x00007f4a670129c0:   mov    %edx,0xc(%rbx)
   0.07%       0x00007f4a670129c3:   mov    %rbx,%rdx
   0.19%       0x00007f4a670129c6:   xor    %rsi,%rdx
   0.01%       0x00007f4a670129c9:   test   $0xffffffffffe00000,%rdx
               0x00007f4a670129d0:   je     0x00007f4a670129fb
               0x00007f4a670129d6:   test   %rsi,%rsi
               0x00007f4a670129d9:   je     0x00007f4a670129fb
               0x00007f4a670129df:   mov    %rbx,%r10
               0x00007f4a670129e2:   shr    $0x9,%r10
               0x00007f4a670129e6:   movabs $0x7f4a7a650000,%rbp
               0x00007f4a670129f0:   cmpb   $0x4,(%r10,%rbp,1)
               0x00007f4a670129f5:   jne    0x00007f4a67012ac0           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
                                                                         ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
....................................................................................................
  12.33%  <total for region 4>

....[Hottest Regions]...............................................................................
  21.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
  20.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
  12.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
  12.33%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1028 
   8.23%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1021 
   5.48%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   3.73%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1021 
   3.59%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   2.72%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1028 
   1.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   1.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.91%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1021 
   0.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.17%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
   0.13%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1105 
   3.45%  <...other 659 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 3, compile id 1055 
  15.05%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1028 
  12.87%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 1021 
   9.14%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 967 
   1.38%              kernel  [unknown] 
   0.22%                      <unknown> 
   0.13%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1105 
   0.13%        libc-2.31.so  [unknown] 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%           libjvm.so  JVMCIRuntime::new_array_common 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%        libc-2.31.so  __strncat_ssse3 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  G1RegionsOnNodes::add 
   1.02%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.73%      jvmci, level 4
   1.38%              kernel
   0.99%           libjvm.so
   0.24%        libc-2.31.so
   0.22%                    
   0.13%         interpreter
   0.13%         c1, level 3
   0.06%          ld-2.31.so
   0.06%  libpthread-2.31.so
   0.03%              [vdso]
   0.02%      hsdis-amd64.so
   0.00%      perf-30837.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized
# Parameters: (iterations = 2000, size = 512)

# Run progress: 87.50% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1534.791 ms/op
# Warmup Iteration   2: 810.667 ms/op
# Warmup Iteration   3: 812.850 ms/op
# Warmup Iteration   4: 809.831 ms/op
# Warmup Iteration   5: 808.533 ms/op
Iteration   1: 808.579 ms/op
Iteration   2: 810.538 ms/op
Iteration   3: 809.240 ms/op
Iteration   4: 808.911 ms/op
Iteration   5: 811.002 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized":
  809.654 ±(99.9%) 4.074 ms/op [Average]
  (min, avg, max) = (808.579, 809.654, 811.002), stdev = 1.058
  CI (99.9%): [805.580, 813.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark.vectorized:·asm":
PrintAssembly processed: 301260 total address lines.
Perf output processed (skipped 61.773 seconds):
 Column 1: cycles (54818 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 976 

                      --------------------------------------------------------------------------------
                      [Verified Entry Point]
                        # {method} {0x0000000800005590} &apos;binaryOp&apos; &apos;(ILjava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
                        # parm0:    rsi       = int
                        # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
                        # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
                        # parm3:    r8        = int
                        # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                        # parm5:    rdi:rdi   = &apos;java/lang/Object&apos;
                        # parm6:    [sp+0x20]   = &apos;java/util/function/BiFunction&apos;  (sp of caller)
   0.60%                0x00007f1777008aa0:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   1.90%                0x00007f1777008aa7:   sub    $0x18,%rsp
   0.14%                0x00007f1777008aab:   mov    %rbp,0x10(%rsp)
   1.64%                0x00007f1777008ab0:   mov    0x20(%rsp),%r10              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
                                                                                  ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.11%                0x00007f1777008ab5:   mov    0x8(%r10),%eax               ; implicit exception: dispatches to 0x00007f17770091ed
   4.81%                0x00007f1777008ab9:   movabs $0x800000000,%rsi
   0.09%                0x00007f1777008ac3:   lea    (%rsi,%rax,1),%rax
   1.30%                0x00007f1777008ac7:   movabs $0x800006650,%r11            ;   {metadata({type array double})}
   0.03%                0x00007f1777008ad1:   cmp    -0x58(%rip),%rax        # 0x00007f1777008a80
                                                                                  ;   {section_word}
   1.40%  ╭             0x00007f1777008ad8:   je     0x00007f1777008afd
   0.57%  │             0x00007f1777008ade:   cmp    -0x5d(%rip),%rax        # 0x00007f1777008a88
          │                                                                       ;   {section_word}
   0.03%  │╭            0x00007f1777008ae5:   je     0x00007f1777008ce0
   0.16%  ││            0x00007f1777008aeb:   cmp    -0x62(%rip),%rax        # 0x00007f1777008a90
          ││                                                                      ;   {section_word}
   0.00%  ││╭           0x00007f1777008af2:   je     0x00007f1777008e6a
          │││           0x00007f1777008af8:   jmp    0x00007f1777009148
   0.74%  ↘││           0x00007f1777008afd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           ││                                                                     ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                     ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.01%   ││           0x00007f1777008b00:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007f1777009209
           ││                                                                     ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.04%   ││           0x00007f1777008b08:   jne    0x00007f17770091a5           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           ││                                                                     ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                     ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.01%   ││           0x00007f1777008b0e:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f1777009226
           ││                                                                     ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.78%   ││           0x00007f1777008b15:   jne    0x00007f17770090d9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                     ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@5
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%   ││           0x00007f1777008b1b:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           ││                                                                     ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           ││                                                                     ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           ││                                                                     ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%   ││           0x00007f1777008b1f:   nop
   0.01%   ││           0x00007f1777008b20:   test   %r8d,%r8d
           ││╭          0x00007f1777008b23:   je     0x00007f1777008ff4
   0.76%   │││          0x00007f1777008b29:   mov    0x8(,%r8,8),%eax
   0.16%   │││          0x00007f1777008b31:   movabs $0x800000000,%rsi
   0.01%   │││          0x00007f1777008b3b:   lea    (%rsi,%rax,1),%rax
   0.10%   │││          0x00007f1777008b3f:   nop
   0.68%   │││          0x00007f1777008b40:   test   %r8d,%r8d
           │││╭         0x00007f1777008b43:   je     0x00007f1777008b52
   0.02%   ││││         0x00007f1777008b49:   cmp    %rax,%r11
           ││││         0x00007f1777008b4c:   jne    0x00007f1777009124           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           ││││                                                                   ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           ││││                                                                   ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           ││││                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.11%   │││↘         0x00007f1777008b52:   data16 nopw 0x0(%rax,%rax,1)
   0.01%   │││          0x00007f1777008b5c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           │││                                                                    ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││                                                                    ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.68%   │││          0x00007f1777008b60:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f1777009246
   0.10%   │││          0x00007f1777008b69:   jb     0x00007f17770091db
           │││          0x00007f1777008b6f:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.66%   │││          0x00007f1777008b72:   test   %ecx,%ecx
           │││          0x00007f1777008b74:   je     0x00007f1777009000
   0.01%   │││          0x00007f1777008b7a:   mov    0x8(,%rcx,8),%eax
   0.30%   │││          0x00007f1777008b81:   movabs $0x800000000,%rsi
   0.01%   │││          0x00007f1777008b8b:   lea    (%rsi,%rax,1),%rax
   0.69%   │││          0x00007f1777008b8f:   test   %ecx,%ecx
           │││ ╭        0x00007f1777008b91:   je     0x00007f1777008ba0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││ │                                                                  ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││ │                                                                  ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││ │                                                                  ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%   │││ │        0x00007f1777008b97:   cmp    %rax,%r11
           │││ │        0x00007f1777008b9a:   jne    0x00007f17770090bb           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           │││ │                                                                  ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││ │                                                                  ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.31%   │││ ↘        0x00007f1777008ba0:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f1777009266
   0.41%   │││          0x00007f1777008ba8:   jb     0x00007f17770090e8
   0.28%   │││          0x00007f1777008bae:   mov    0x108(%r15),%rax
   0.09%   │││          0x00007f1777008bb5:   lea    0x30(%rax),%rsi
   0.01%   │││          0x00007f1777008bb9:   nopl   0x0(%rax)
   0.43%   │││          0x00007f1777008bc0:   cmp    0x118(%r15),%rsi
           │││          0x00007f1777008bc7:   ja     0x00007f1777009054
   0.23%   │││          0x00007f1777008bcd:   mov    %rsi,0x108(%r15)
   0.09%   │││          0x00007f1777008bd4:   prefetchw 0xf0(%rax)
   0.02%   │││          0x00007f1777008bdb:   prefetchw 0x130(%rax)
   0.51%   │││          0x00007f1777008be2:   prefetchw 0x170(%rax)
   0.18%   │││          0x00007f1777008be9:   prefetchw 0x1b0(%rax)
   0.40%   │││          0x00007f1777008bf0:   movq   $0x1,(%rax)
   0.32%   │││          0x00007f1777008bf7:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.46%   │││          0x00007f1777008bfe:   movl   $0x4,0xc(%rax)
   0.38%   │││          0x00007f1777008c05:   movq   $0x0,0x10(%rax)
   1.42%   │││          0x00007f1777008c0d:   movq   $0x0,0x18(%rax)
   0.40%   │││          0x00007f1777008c15:   movq   $0x0,0x20(%rax)
   0.59%   │││          0x00007f1777008c1d:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.56%   │││          0x00007f1777008c25:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%   │││          0x00007f1777008c2f:   vaddsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.86%   │││          0x00007f1777008c38:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.67%   │││          0x00007f1777008c3d:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%   │││          0x00007f1777008c47:   vaddsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.22%   │││          0x00007f1777008c50:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.62%   │││          0x00007f1777008c55:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │││          0x00007f1777008c5f:   vaddsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.14%   │││          0x00007f1777008c68:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.65%   │││          0x00007f1777008c6d:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │││          0x00007f1777008c77:   vaddsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$39@2 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$67/0x0000000800c84e78::apply@4
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.17%   │││          0x00007f1777008c80:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││                                                                    ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││                                                                    ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││                                                                    ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.66%   │││    ↗  ↗  0x00007f1777008c85:   mov    %rax,%rdx
   0.03%   │││    │  │  0x00007f1777008c88:   mov    0x108(%r15),%rax
   0.12%   │││    │  │  0x00007f1777008c8f:   lea    0x10(%rax),%rsi
   0.70%   │││    │  │  0x00007f1777008c93:   cmp    0x118(%r15),%rsi
           │││    │  │  0x00007f1777008c9a:   ja     0x00007f177700903d
   0.78%   │││    │  │  0x00007f1777008ca0:   mov    %rsi,0x108(%r15)
   0.38%   │││    │  │  0x00007f1777008ca7:   prefetchw 0xd0(%rax)
   0.05%   │││    │  │  0x00007f1777008cae:   movq   $0x1,(%rax)
   1.56%   │││    │  │  0x00007f1777008cb5:   movl   $0xc3dce8,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   3.19%   │││    │  │  0x00007f1777008cbc:   movl   $0x0,0xc(%rax)
   0.30%   │││    │  │  0x00007f1777008cc3:   shr    $0x3,%rdx
   0.00%   │││    │  │  0x00007f1777008cc7:   mov    %edx,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@0 (line 171)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vectorFactory@2 (line 41)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@62 (line 206)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
           │││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$40@7 (line 636)
           │││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$66/0x0000000800c84a30::apply@8
           │││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.32%   │││    │  │  0x00007f1777008cca:   mov    0x10(%rsp),%rbp
   0.93%   │││    │  │  0x00007f1777008ccf:   add    $0x18,%rsp
   0.25%   │││    │  │  0x00007f1777008cd3:   mov    0x348(%r15),%rcx
   0.12%   │││    │  │  0x00007f1777008cda:   test   %eax,(%rcx)                  ;   {poll_return}
   0.55%   │││    │  │  0x00007f1777008cdc:   vzeroupper 
   1.33%   │││    │  │  0x00007f1777008cdf:   ret                                 ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           │││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.47%   ↘││    │  │  0x00007f1777008ce0:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007f1777009286
            ││    │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%    ││    │  │  0x00007f1777008ce8:   jne    0x00007f1777009190           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            ││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.05%    ││    │  │  0x00007f1777008cee:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f17770092a6
            ││    │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%    ││    │  │  0x00007f1777008cf5:   jne    0x00007f17770091c9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@5
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%    ││    │  │  0x00007f1777008cfb:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    ││    │  │  0x00007f1777008cff:   nop
   0.04%    ││    │  │  0x00007f1777008d00:   test   %r8d,%r8d
            ││    │  │  0x00007f1777008d03:   je     0x00007f177700900c
   0.04%    ││    │  │  0x00007f1777008d09:   mov    0x8(,%r8,8),%eax
   0.41%    ││    │  │  0x00007f1777008d11:   movabs $0x800000000,%rsi
   0.01%    ││    │  │  0x00007f1777008d1b:   lea    (%rsi,%rax,1),%rax
   0.07%    ││    │  │  0x00007f1777008d1f:   nop
            ││    │  │  0x00007f1777008d20:   test   %r8d,%r8d
            ││  ╭ │  │  0x00007f1777008d23:   je     0x00007f1777008d32
   0.37%    ││  │ │  │  0x00007f1777008d29:   cmp    %rax,%r11
            ││  │ │  │  0x00007f1777008d2c:   jne    0x00007f1777009106           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││  │ │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││  │ │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││  │ │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%    ││  ↘ │  │  0x00007f1777008d32:   data16 nopw 0x0(%rax,%rax,1)
   0.04%    ││    │  │  0x00007f1777008d3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            ││    │  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%    ││    │  │  0x00007f1777008d40:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f17770092c6
   0.43%    ││    │  │  0x00007f1777008d49:   jb     0x00007f17770090f7
   0.07%    ││    │  │  0x00007f1777008d4f:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
            ││    │  │  0x00007f1777008d52:   test   %ecx,%ecx
            ││    │  │  0x00007f1777008d54:   je     0x00007f1777009018
   0.39%    ││    │  │  0x00007f1777008d5a:   mov    0x8(,%rcx,8),%eax
   0.17%    ││    │  │  0x00007f1777008d61:   movabs $0x800000000,%rsi
   0.05%    ││    │  │  0x00007f1777008d6b:   lea    (%rsi,%rax,1),%rax
   0.26%    ││    │  │  0x00007f1777008d6f:   test   %ecx,%ecx
            ││   ╭│  │  0x00007f1777008d71:   je     0x00007f1777008d80           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││   ││  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││   ││  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││   ││  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.17%    ││   ││  │  0x00007f1777008d77:   cmp    %rax,%r11
            ││   ││  │  0x00007f1777008d7a:   jne    0x00007f177700916c           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            ││   ││  │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││   ││  │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.43%    ││   ↘│  │  0x00007f1777008d80:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f17770092e6
   0.02%    ││    │  │  0x00007f1777008d88:   jb     0x00007f177700917e
   0.40%    ││    │  │  0x00007f1777008d8e:   mov    0x108(%r15),%rax
   0.03%    ││    │  │  0x00007f1777008d95:   lea    0x30(%rax),%rsi
   0.03%    ││    │  │  0x00007f1777008d99:   nopl   0x0(%rax)
            ││    │  │  0x00007f1777008da0:   cmp    0x118(%r15),%rsi
            ││    │  │  0x00007f1777008da7:   ja     0x00007f177700906d
   0.41%    ││    │  │  0x00007f1777008dad:   mov    %rsi,0x108(%r15)
   0.03%    ││    │  │  0x00007f1777008db4:   prefetchw 0xf0(%rax)
   0.03%    ││    │  │  0x00007f1777008dbb:   prefetchw 0x130(%rax)
   0.11%    ││    │  │  0x00007f1777008dc2:   prefetchw 0x170(%rax)
   0.35%    ││    │  │  0x00007f1777008dc9:   prefetchw 0x1b0(%rax)
   0.21%    ││    │  │  0x00007f1777008dd0:   movq   $0x1,(%rax)
   0.23%    ││    │  │  0x00007f1777008dd7:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.20%    ││    │  │  0x00007f1777008dde:   movl   $0x4,0xc(%rax)
   0.45%    ││    │  │  0x00007f1777008de5:   movq   $0x0,0x10(%rax)
   1.20%    ││    │  │  0x00007f1777008ded:   movq   $0x0,0x18(%rax)
   0.01%    ││    │  │  0x00007f1777008df5:   movq   $0x0,0x20(%rax)
   0.43%    ││    │  │  0x00007f1777008dfd:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.45%    ││    │  │  0x00007f1777008e05:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    ││    │  │  0x00007f1777008e0f:   vmulsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.44%    ││    │  │  0x00007f1777008e18:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%    ││    │  │  0x00007f1777008e1d:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    ││    │  │  0x00007f1777008e27:   vmulsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.08%    ││    │  │  0x00007f1777008e30:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.47%    ││    │  │  0x00007f1777008e35:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    ││    │  │  0x00007f1777008e3f:   vmulsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    ││    │  │  0x00007f1777008e48:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.47%    ││    │  │  0x00007f1777008e4d:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%    ││    │  │  0x00007f1777008e57:   vmulsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dmul {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$43@2 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$71/0x0000000800c85748::apply@4
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    ││    │  │  0x00007f1777008e60:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
            ││    │  │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$44@7 (line 640)
            ││    │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$70/0x0000000800c85500::apply@8
            ││    │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.44%    ││    ╰  │  0x00007f1777008e65:   jmp    0x00007f1777008c85           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            ││       │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            ││       │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.07%    ↘│       │  0x00007f1777008e6a:   cmpl   $0xc3dce8,0x8(%r9)           ; implicit exception: dispatches to 0x00007f1777009306
             │       │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%     │       │  0x00007f1777008e72:   jne    0x00007f17770090ca           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@1
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%     │       │  0x00007f1777008e78:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
             │       │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │       │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%     │       │  0x00007f1777008e80:   cmpl   $0xc3dce8,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f1777009326
             │       │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.08%     │       │  0x00007f1777008e87:   jne    0x00007f177700915a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@5
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008e8d:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.10%     │       │  0x00007f1777008e91:   test   %r8d,%r8d
             │       │  0x00007f1777008e94:   je     0x00007f1777009031
   0.00%     │       │  0x00007f1777008e9a:   mov    0x8(,%r8,8),%eax
   0.07%     │       │  0x00007f1777008ea2:   movabs $0x800000000,%rsi
   0.00%     │       │  0x00007f1777008eac:   lea    (%rsi,%rax,1),%rax
   0.09%     │       │  0x00007f1777008eb0:   test   %r8d,%r8d
             │     ╭ │  0x00007f1777008eb3:   je     0x00007f1777008ec9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │     │ │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │     │ │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │     │ │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
             │     │ │  0x00007f1777008eb9:   nopl   0x0(%rax)
   0.06%     │     │ │  0x00007f1777008ec0:   cmp    %rax,%r11
             │     │ │  0x00007f1777008ec3:   jne    0x00007f17770091b7           ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
             │     │ │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │     │ │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.02%     │     ↘ │  0x00007f1777008ec9:   cmpl   $0x4,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f1777009346
   0.07%     │       │  0x00007f1777008ed2:   jb     0x00007f177700909a
   0.08%     │       │  0x00007f1777008ed8:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::vec@1 (line 117)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008edb:   nopl   0x0(%rax,%rax,1)
   0.06%     │       │  0x00007f1777008ee0:   test   %ecx,%ecx
             │       │  0x00007f1777008ee2:   je     0x00007f1777009025
   0.01%     │       │  0x00007f1777008ee8:   mov    0x8(,%rcx,8),%eax
   0.09%     │       │  0x00007f1777008eef:   movabs $0x800000000,%rsi
   0.00%     │       │  0x00007f1777008ef9:   lea    (%rsi,%rax,1),%rax
   0.06%     │       │  0x00007f1777008efd:   data16 xchg %ax,%ax
             │       │  0x00007f1777008f00:   test   %ecx,%ecx
             │      ╭│  0x00007f1777008f02:   je     0x00007f1777008f11           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@17 (line 202)
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │      ││                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │      ││                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │      ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%     │      ││  0x00007f1777008f08:   cmp    %rax,%r11
             │      ││  0x00007f1777008f0b:   jne    0x00007f1777009115           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
             │      ││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
             │      ││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.03%     │      ↘│  0x00007f1777008f11:   cmpl   $0x4,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f1777009366
   0.07%     │       │  0x00007f1777008f19:   jb     0x00007f1777009136
   0.07%     │       │  0x00007f1777008f1f:   mov    0x108(%r15),%rax
   0.02%     │       │  0x00007f1777008f26:   lea    0x30(%rax),%rsi
   0.05%     │       │  0x00007f1777008f2a:   cmp    0x118(%r15),%rsi
             │       │  0x00007f1777008f31:   ja     0x00007f1777009085
   0.02%     │       │  0x00007f1777008f37:   mov    %rsi,0x108(%r15)
   0.05%     │       │  0x00007f1777008f3e:   prefetchw 0xf0(%rax)
   0.02%     │       │  0x00007f1777008f45:   prefetchw 0x130(%rax)
   0.06%     │       │  0x00007f1777008f4c:   prefetchw 0x170(%rax)
   0.02%     │       │  0x00007f1777008f53:   prefetchw 0x1b0(%rax)
   0.06%     │       │  0x00007f1777008f5a:   movq   $0x1,(%rax)
   0.06%     │       │  0x00007f1777008f61:   movl   $0x6650,0x8(%rax)            ;   {metadata({type array double})}
   0.11%     │       │  0x00007f1777008f68:   movl   $0x4,0xc(%rax)
   0.05%     │       │  0x00007f1777008f6f:   movq   $0x0,0x10(%rax)
   0.15%     │       │  0x00007f1777008f77:   movq   $0x0,0x18(%rax)
   0.35%     │       │  0x00007f1777008f7f:   movq   $0x0,0x20(%rax)
   0.14%     │       │  0x00007f1777008f87:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008f8f:   vmovsd 0x28(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%     │       │  0x00007f1777008f99:   vsubsd 0x28(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.17%     │       │  0x00007f1777008fa2:   vmovsd %xmm0,0x28(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.14%     │       │  0x00007f1777008fa7:   vmovsd 0x20(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008fb1:   vsubsd 0x20(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.12%     │       │  0x00007f1777008fba:   vmovsd %xmm0,0x20(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.13%     │       │  0x00007f1777008fbf:   vmovsd 0x18(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%     │       │  0x00007f1777008fc9:   vsubsd 0x18(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008fd2:   vmovsd %xmm0,0x18(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.14%     │       │  0x00007f1777008fd7:   vmovsd 0x10(,%r8,8),%xmm0           ;*daload {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@42 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%     │       │  0x00007f1777008fe1:   vsubsd 0x10(,%rcx,8),%xmm0,%xmm0    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$41@2 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$69/0x0000000800c852e0::apply@4
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@48 (line 204)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.08%     │       │  0x00007f1777008fea:   vmovsd %xmm0,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::bOpTemplate@4 (line 200)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@6 (line 206)
             │       │                                                            ; - jdk.incubator.vector.Double256Vector::bOp@3 (line 41)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector::lambda$lanewiseTemplate$42@7 (line 638)
             │       │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$68/0x0000000800c85098::apply@8
             │       │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.16%     │       ╰  0x00007f1777008fef:   jmp    0x00007f1777008c85
             ↘          0x00007f1777008ff4:   mov    $0x0,%rax
                        0x00007f1777008ffb:   jmp    0x00007f1777008b3f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.Double256Vector::vec@4 (line 117)
                                                                                  ; - jdk.incubator.vector.DoubleVector::bOpTemplate@8 (line 201)
....................................................................................................
  54.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 6, compile id 1072 

                        0x00007f1777047618:   nop
                        0x00007f1777047619:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                                                                                  ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                                  ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@155 (line 117)
                        0x00007f1777047620:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048ba6
                                                                                  ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%                0x00007f1777047627:   jne    0x00007f1777048327           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                                                                                  ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                                                                                  ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@155 (line 117)
                        0x00007f177704762d:   mov    %rax,0xb8(%rsp)
   0.01%                0x00007f1777047635:   mov    0x160(%rsp),%rsi
                        0x00007f177704763d:   mov    0x158(%rsp),%rdx
                        0x00007f1777047645:   mov    $0x4,%ecx
                        0x00007f177704764a:   mov    $0x0,%r8
   0.00%                0x00007f1777047651:   mov    0x150(%rsp),%r9
                        0x00007f1777047659:   mov    0x140(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                        0x00007f1777047661:   xchg   %ax,%ax
                        0x00007f1777047663:   call   0x00007f176f500080           ; ImmutableOopMap {[184]=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                                                                                  ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                                                                                  ;   {static_call}
                        0x00007f1777047668:   nop                                 ; ImmutableOopMap {rax=Oop [184]=Oop [192]=Oop [200]=Oop [208]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                                                                                  ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.incubator.vector.DoubleVector::zero@31 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                        0x00007f1777047669:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048bc6
                                                                                  ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%                0x00007f1777047670:   jne    0x00007f1777048866           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@31 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@163 (line 119)
                        0x00007f1777047676:   mov    $0x0,%r13d
                        0x00007f177704767c:   mov    %rax,0xb0(%rsp)
   0.00%                0x00007f1777047684:   mov    0xb8(%rsp),%r9
                        0x00007f177704768c:   mov    0xc0(%rsp),%rdi
                        0x00007f1777047694:   rex.W push 0xc8(%rsp)
   0.01%                0x00007f177704769c:   rex.W pop 0xa8(%rsp)
   0.00%                0x00007f17770476a4:   rex.W push 0xd0(%rsp)
                        0x00007f17770476ac:   rex.W pop 0xa0(%rsp)
   0.01%                0x00007f17770476b4:   nopl   0x0(%rax,%rax,1)
                        0x00007f17770476bc:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.01%          ↗  ↗  0x00007f17770476c0:   mov    0x158(%rsp),%rbx
   0.07%          │  │  0x00007f17770476c8:   mov    0x160(%rsp),%r11
   0.05%          │  │  0x00007f17770476d0:   mov    0x168(%rsp),%rsi
   0.00%          │  │  0x00007f17770476d8:   nopl   0x0(%rax,%rax,1)
   0.01%          │  │  0x00007f17770476e0:   cmp    0x10(%rsi),%r13d
                  │  │  0x00007f17770476e4:   jge    0x00007f1777047f7b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@177 (line 121)
   0.19%          │  │  0x00007f17770476ea:   mov    %r13d,0x17c(%rsp)
   0.02%          │  │  0x00007f17770476f2:   movabs $0x7666b1af8,%r13            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$68+0x0000000800c85098&apos;{0x00000007666b1af8})}
   0.00%          │  │  0x00007f17770476fc:   mov    $0x5,%esi
   0.01%          │  │  0x00007f1777047701:   mov    %r11,%rdx
   0.15%          │  │  0x00007f1777047704:   mov    %rbx,%rcx
   0.01%          │  │  0x00007f1777047707:   mov    $0x4,%r8d
   0.00%          │  │  0x00007f177704770d:   mov    %r9,%r10
   0.01%          │  │  0x00007f1777047710:   mov    %rdi,%r9
   0.12%          │  │  0x00007f1777047713:   mov    %rdi,0x98(%rsp)
   0.02%          │  │  0x00007f177704771b:   mov    %r10,%rdi
   0.00%          │  │  0x00007f177704771e:   mov    %r13,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.02%          │  │  0x00007f1777047722:   mov    %r10,0x90(%rsp)
   0.16%          │  │  0x00007f177704772a:   nop
   0.02%          │  │  0x00007f177704772b:   call   0x00007f176f500080           ; ImmutableOopMap {[144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
                  │  │                                                            ;   {static_call}
   0.12%          │  │  0x00007f1777047730:   nop                                 ; ImmutableOopMap {rax=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::sub@5 (line 1098)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@184 (line 122)
   0.01%          │  │  0x00007f1777047731:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048be6
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%          │  │  0x00007f1777047738:   jne    0x00007f17770485db
   0.03%          │  │  0x00007f177704773e:   movabs $0x7666b1a68,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007666b1a68})}
   0.11%          │  │  0x00007f1777047748:   mov    $0x4,%esi
   0.01%          │  │  0x00007f177704774d:   mov    0x160(%rsp),%rdx
   0.34%          │  │  0x00007f1777047755:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f177704775d:   mov    $0x4,%r8d
                  │  │  0x00007f1777047763:   mov    %rax,%r9
                  │  │  0x00007f1777047766:   mov    0xf8(%rsp),%rdi
   0.15%          │  │  0x00007f177704776e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.01%          │  │  0x00007f1777047772:   mov    %rax,0x88(%rsp)
   0.47%          │  │  0x00007f177704777a:   nop
   0.00%          │  │  0x00007f177704777b:   call   0x00007f176f500080           ; ImmutableOopMap {[136]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
                  │  │                                                            ;   {static_call}
   0.14%          │  │  0x00007f1777047780:   nop                                 ; ImmutableOopMap {rax=Oop [136]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.01%          │  │  0x00007f1777047781:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048c06
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
                  │  │  0x00007f1777047788:   jne    0x00007f1777048146           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@189 (line 122)
   0.04%          │  │  0x00007f177704778e:   mov    %rax,0x80(%rsp)
   0.34%          │  │  0x00007f1777047796:   movabs $0x7666b1a68,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007666b1a68})}
                  │  │  0x00007f17770477a0:   mov    $0x4,%esi
   0.04%          │  │  0x00007f17770477a5:   mov    0x160(%rsp),%rdx
   0.02%          │  │  0x00007f17770477ad:   mov    0x158(%rsp),%rcx
   0.09%          │  │  0x00007f17770477b5:   mov    $0x4,%r8d
                  │  │  0x00007f17770477bb:   mov    0xa0(%rsp),%r9
   0.03%          │  │  0x00007f17770477c3:   mov    0xa0(%rsp),%rdi              ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
   0.01%          │  │  0x00007f17770477cb:   mov    %rbp,(%rsp)
   0.10%          │  │  0x00007f17770477cf:   call   0x00007f176f500080           ; ImmutableOopMap {[128]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
                  │  │                                                            ;   {static_call}
   0.14%          │  │  0x00007f17770477d4:   nop
   0.01%          │  │  0x00007f17770477d5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop [128]=Oop [160]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@198 (line 123)
                  │  │  0x00007f17770477e0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048c26
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.05%          │  │  0x00007f17770477e7:   jne    0x00007f177704810c
   0.10%          │  │  0x00007f17770477ed:   movabs $0x7666b19e8,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007666b19e8})}
   0.00%          │  │  0x00007f17770477f7:   mov    $0x6,%esi
                  │  │  0x00007f17770477fc:   mov    %rdx,%r10
   0.04%          │  │  0x00007f17770477ff:   mov    0x160(%rsp),%rdx
   0.35%          │  │  0x00007f1777047807:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f177704780f:   mov    $0x4,%r8d
   0.04%          │  │  0x00007f1777047815:   mov    %rax,%r9
   0.01%          │  │  0x00007f1777047818:   mov    0xa8(%rsp),%rdi
   0.12%          │  │  0x00007f1777047820:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.00%          │  │  0x00007f1777047824:   mov    %rax,0x78(%rsp)
   0.47%          │  │  0x00007f1777047829:   xchg   %ax,%ax
   0.00%          │  │  0x00007f177704782b:   call   0x00007f176f500080           ; ImmutableOopMap {[120]=Oop [128]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
                  │  │                                                            ;   {static_call}
   0.06%          │  │  0x00007f1777047830:   nop                                 ; ImmutableOopMap {rax=Oop [120]=Oop [128]=Oop [168]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@203 (line 123)
   0.08%          │  │  0x00007f1777047831:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048c46
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.01%          │  │  0x00007f1777047838:   jne    0x00007f177704809d
   0.08%          │  │  0x00007f177704783e:   movabs $0x7666b1a68,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007666b1a68})}
   0.03%          │  │  0x00007f1777047848:   mov    $0x4,%esi
   0.07%          │  │  0x00007f177704784d:   mov    0x160(%rsp),%rdx
   0.31%          │  │  0x00007f1777047855:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f177704785d:   mov    $0x4,%r8d
                  │  │  0x00007f1777047863:   mov    %rax,%r9
                  │  │  0x00007f1777047866:   mov    0xd8(%rsp),%rdi
   0.15%          │  │  0x00007f177704786e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.01%          │  │  0x00007f1777047872:   mov    %rax,0x70(%rsp)
   0.37%          │  │  0x00007f1777047877:   call   0x00007f176f500080           ; ImmutableOopMap {[112]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
                  │  │                                                            ;   {static_call}
   0.11%          │  │  0x00007f177704787c:   nop
   0.00%          │  │  0x00007f177704787d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [112]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
                  │  │  0x00007f1777047880:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048c66
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.04%          │  │  0x00007f1777047887:   jne    0x00007f17770487f9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@208 (line 123)
   0.12%          │  │  0x00007f177704788d:   mov    %rax,0x68(%rsp)
   0.33%          │  │  0x00007f1777047892:   movabs $0x7666b19e8,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007666b19e8})}
   0.03%          │  │  0x00007f177704789c:   mov    $0x6,%esi
   0.01%          │  │  0x00007f17770478a1:   mov    %rdx,%r10
   0.00%          │  │  0x00007f17770478a4:   mov    0x160(%rsp),%rdx
   0.11%          │  │  0x00007f17770478ac:   mov    0x158(%rsp),%rcx
   0.03%          │  │  0x00007f17770478b4:   mov    $0x4,%r8d
   0.01%          │  │  0x00007f17770478ba:   mov    0x80(%rsp),%r9
   0.02%          │  │  0x00007f17770478c2:   mov    0x80(%rsp),%rdi
   0.15%          │  │  0x00007f17770478ca:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.01%          │  │  0x00007f17770478ce:   nop
   0.01%          │  │  0x00007f17770478cf:   call   0x00007f176f500080           ; ImmutableOopMap {[104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
                  │  │                                                            ;   {static_call}
   0.03%          │  │  0x00007f17770478d4:   nop
   0.06%          │  │  0x00007f17770478d5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
                  │  │  0x00007f17770478e0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048c86
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.07%          │  │  0x00007f17770478e7:   jne    0x00007f17770484da           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@221 (line 126)
   0.11%          │  │  0x00007f17770478ed:   mov    %rax,0x60(%rsp)
   0.43%          │  │  0x00007f17770478f2:   movabs $0x7666b19e8,%rdx            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$70+0x0000000800c85500&apos;{0x00000007666b19e8})}
   0.00%          │  │  0x00007f17770478fc:   mov    $0x6,%esi
   0.01%          │  │  0x00007f1777047901:   mov    %rdx,%r10
                  │  │  0x00007f1777047904:   mov    0x160(%rsp),%rdx
   0.14%          │  │  0x00007f177704790c:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f1777047914:   mov    $0x4,%r8d
   0.01%          │  │  0x00007f177704791a:   mov    0x68(%rsp),%r9
   0.00%          │  │  0x00007f177704791f:   mov    0x68(%rsp),%rdi
   0.14%          │  │  0x00007f1777047924:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.26%          │  │  0x00007f1777047928:   data16 xchg %ax,%ax
                  │  │  0x00007f177704792b:   call   0x00007f176f500080           ; ImmutableOopMap {[96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
                  │  │                                                            ;   {static_call}
   0.06%          │  │  0x00007f1777047930:   nop                                 ; ImmutableOopMap {rax=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::mul@5 (line 1172)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@230 (line 127)
   0.07%          │  │  0x00007f1777047931:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048ca6
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.02%          │  │  0x00007f1777047938:   jne    0x00007f1777048786
   0.07%          │  │  0x00007f177704793e:   movabs $0x7666b1a68,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007666b1a68})}
   0.02%          │  │  0x00007f1777047948:   mov    $0x4,%esi
   0.05%          │  │  0x00007f177704794d:   mov    0x160(%rsp),%rdx
   0.34%          │  │  0x00007f1777047955:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f177704795d:   mov    $0x4,%r8d
                  │  │  0x00007f1777047963:   mov    0x60(%rsp),%r9
   0.17%          │  │  0x00007f1777047968:   mov    %rax,%rdi
   0.02%          │  │  0x00007f177704796b:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.33%          │  │  0x00007f177704796f:   mov    %rax,0x58(%rsp)
                  │  │  0x00007f1777047974:   data16 xchg %ax,%ax
                  │  │  0x00007f1777047977:   call   0x00007f176f500080           ; ImmutableOopMap {[88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
                  │  │                                                            ;   {static_call}
   0.16%          │  │  0x00007f177704797c:   nop
   0.01%          │  │  0x00007f177704797d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
                  │  │  0x00007f1777047980:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048cc6
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.07%          │  │  0x00007f1777047987:   jne    0x00007f1777048486           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@5 (line 1023)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@239 (line 130)
   0.12%          │  │  0x00007f177704798d:   mov    %rax,0x50(%rsp)
   0.37%          │  │  0x00007f1777047992:   mov    0x160(%rsp),%rsi
   0.03%          │  │  0x00007f177704799a:   mov    0x158(%rsp),%rdx
   0.02%          │  │  0x00007f17770479a2:   mov    $0x4,%ecx
   0.00%          │  │  0x00007f17770479a7:   mov    0x1c8(%rsp),%r8
   0.11%          │  │  0x00007f17770479af:   mov    0x150(%rsp),%r9
   0.02%          │  │  0x00007f17770479b7:   mov    0x148(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.10%          │  │  0x00007f17770479bf:   nop
                  │  │  0x00007f17770479c0:   data16 xchg %ax,%ax
   0.02%          │  │  0x00007f17770479c3:   call   0x00007f176f500080           ; ImmutableOopMap {[80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@18 (line 3440)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                  │  │                                                            ;   {static_call}
   0.14%          │  │  0x00007f17770479c8:   nop                                 ; ImmutableOopMap {rax=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%          │  │  0x00007f17770479c9:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048ce6
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.00%          │  │  0x00007f17770479d0:   jne    0x00007f1777048453           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcastBits@21 (line 3440)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$DoubleSpecies::broadcast@5 (line 3449)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::broadcastTemplate@7 (line 478)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 125)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::broadcast@2 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@5 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.03%          │  │  0x00007f17770479d6:   mov    $0x5,%esi
   0.11%          │  │  0x00007f17770479db:   mov    0x50(%rsp),%rdx              ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.03%          │  │  0x00007f17770479e0:   mov    %rax,%rcx
   0.02%          │  │  0x00007f17770479e3:   call   0x00007f176f500080           ; ImmutableOopMap {[80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic lambda$compareTemplate$62 {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@9
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
                  │  │                                                            ;   {static_call}
   0.08%          │  │  0x00007f17770479e8:   nop
   0.02%          │  │  0x00007f17770479e9:   mov    %rax,0x48(%rsp)              ; ImmutableOopMap {rax=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.20%          │  │  0x00007f17770479ee:   cmpl   $0xc3e318,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048d06
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector$Double256Mask&apos;)}
   0.05%          │  │  0x00007f17770479f5:   jne    0x00007f17770483f0           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@36 (line 394)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.01%          │  │  0x00007f17770479fb:   mov    0x168(%rsp),%rsi
   0.01%          │  │  0x00007f1777047a03:   mov    0x1c(%rsi),%edx              ; ImmutableOopMap {rax=Oop rdx=NarrowOop rsi=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector$$Lambda$74/0x0000000800c85fa8::apply@12
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@52 (line 1654)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::compareTemplate@8 (line 1723)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@5 (line 351)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::compare@3 (line 41)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@246 (line 130)
   0.39%          │  │  0x00007f1777047a06:   cmpl   $0xc3dce8,0x8(,%rdx,8)       ; implicit exception: dispatches to 0x00007f1777048d26
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.81%          │  │  0x00007f1777047a11:   jne    0x00007f177704806c
   0.15%          │  │  0x00007f1777047a17:   movabs $0x7666b1a68,%rbp            ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$66+0x0000000800c84a30&apos;{0x00000007666b1a68})}
   0.00%          │  │  0x00007f1777047a21:   shl    $0x3,%rdx                    ;*getfield ones {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@254 (line 131)
   0.01%          │  │  0x00007f1777047a25:   mov    $0x4,%esi
                  │  │  0x00007f1777047a2a:   mov    %rdx,%r11
   0.15%          │  │  0x00007f1777047a2d:   mov    0x160(%rsp),%rdx
   0.00%          │  │  0x00007f1777047a35:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f1777047a3d:   mov    $0x4,%r8d
                  │  │  0x00007f1777047a43:   mov    0xb0(%rsp),%r9
   0.16%          │  │  0x00007f1777047a4b:   mov    %r11,%rdi
   0.01%          │  │  0x00007f1777047a4e:   mov    %rbp,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.01%          │  │  0x00007f1777047a52:   mov    %r11,0x40(%rsp)
   0.00%          │  │  0x00007f1777047a57:   call   0x00007f176f500080           ; ImmutableOopMap {[64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@114 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                  │  │                                                            ;   {static_call}
   0.16%          │  │  0x00007f1777047a5c:   nop
   0.01%          │  │  0x00007f1777047a5d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                  │  │  0x00007f1777047a60:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048d46
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.03%          │  │  0x00007f1777047a67:   jne    0x00007f1777048416           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewiseTemplate@117 (line 630)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 279)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::lanewise@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@4 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.09%          │  │  0x00007f1777047a6d:   mov    0x48(%rsp),%r10
   0.22%          │  │  0x00007f1777047a72:   movabs $0x7666b1a78,%r9             ;   {oop(a &apos;jdk/incubator/vector/DoubleVector$$Lambda$76+0x0000000800c867e8&apos;{0x00000007666b1a78})}
   0.02%          │  │  0x00007f1777047a7c:   mov    0x160(%rsp),%rsi
   0.03%          │  │  0x00007f1777047a84:   mov    0x138(%rsp),%rdx
   0.09%          │  │  0x00007f1777047a8c:   mov    0x158(%rsp),%rcx
   0.01%          │  │  0x00007f1777047a94:   mov    $0x4,%r8d
   0.03%          │  │  0x00007f1777047a9a:   mov    %r9,%r11
   0.01%          │  │  0x00007f1777047a9d:   mov    0xb0(%rsp),%r9
   0.09%          │  │  0x00007f1777047aa5:   mov    %rax,%rdi
   0.01%          │  │  0x00007f1777047aa8:   mov    %r10,(%rsp)
   0.02%          │  │  0x00007f1777047aac:   mov    %r11,0x8(%rsp)               ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.14%          │  │  0x00007f1777047ab1:   mov    %rax,0x38(%rsp)
   0.54%          │  │  0x00007f1777047ab6:   nop
   0.00%          │  │  0x00007f1777047ab7:   call   0x00007f176f500080           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*invokestatic blend {reexecute=0 rethrow=0 return_oop=1}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@26 (line 1793)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
                  │  │                                                            ;   {static_call}
   0.08%          │  │  0x00007f1777047abc:   nop
   0.01%          │  │  0x00007f1777047abd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [56]=Oop [64]=Oop [72]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
                  │  │                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                  │  │                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.04%          │  │  0x00007f1777047ac0:   cmpl   $0xc3dce8,0x8(%rax)          ; implicit exception: dispatches to 0x00007f1777048d66
                  │  │                                                            ;   {metadata(&apos;jdk/incubator/vector/Double256Vector&apos;)}
   0.04%          │  │  0x00007f1777047ac7:   jne    0x00007f17770483a1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
                  │  │                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.08%          │  │  0x00007f1777047acd:   mov    0x48(%rsp),%r10
   0.08%          │  │  0x00007f1777047ad2:   mov    0xc(%r10),%r11d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@1 (line 537)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
                  │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                  │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.06%          │  │  0x00007f1777047ad6:   test   %r11d,%r11d
          ╭       │  │  0x00007f1777047ad9:   je     0x00007f1777047bce
   0.07%  │       │  │  0x00007f1777047adf:   mov    0x8(,%r11,8),%esi
   0.09%  │       │  │  0x00007f1777047ae7:   movabs $0x800000000,%rdx
   0.03%  │       │  │  0x00007f1777047af1:   lea    (%rdx,%rsi,1),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │       │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
          │       │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
          │       │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │       │  │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │       │  │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.06%  │       │ ↗│  0x00007f1777047af5:   test   %r11d,%r11d
          │╭      │ ││  0x00007f1777047af8:   je     0x00007f1777047bbf
   0.04%  ││      │ ││  0x00007f1777047afe:   movabs $0x800000960,%rdi            ;   {metadata({type array bool})}
   0.00%  ││      │ ││  0x00007f1777047b08:   cmp    %rsi,%rdi
          ││      │ ││  0x00007f1777047b0b:   jne    0x00007f1777048666           ; ImmutableOopMap {rax=Oop r10=Oop r11=NarrowOop [56]=Oop [64]=Oop [88]=Oop [96]=Oop [104]=Oop [128]=Oop [176]=Oop [216]=Oop [248]=Oop [304]=Oop [312]=Oop [320]=Oop [328]=Oop [336]=Oop [344]=Oop [352]=Oop [360]=Oop }
          ││      │ ││                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
          ││      │ ││                                                            ; - (reexecute) jdk.incubator.vector.DoubleVector::blendTemplate@29 (line 1793)
          ││      │ ││                                                            ; - jdk.incubator.vector.Double256Vector::blend@11 (line 364)
          ││      │ ││                                                            ; - jdk.incubator.vector.Double256Vector::blend@3 (line 41)
          ││      │ ││                                                            ; - jdk.incubator.vector.DoubleVector::lanewise@8 (line 669)
          ││      │ ││                                                            ; - jdk.incubator.vector.DoubleVector::add@6 (line 1060)
          ││      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@259 (line 131)
   0.06%  ││      │↗││  0x00007f1777047b11:   mov    0xc(,%r11,8),%r8d            ; implicit exception: dispatches to 0x00007f1777048d86
   0.03%  ││      ││││  0x00007f1777047b19:   nopl   0x0(%rax)
   0.05%  ││      ││││  0x00007f1777047b20:   test   %r8d,%r8d
          ││╭     ││││  0x00007f1777047b23:   je     0x00007f1777047c0e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││     ││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │││     ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │││     ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │││     ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │││     ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%  │││     ││││  0x00007f1777047b29:   mov    0x17c(%rsp),%r13d
   0.12%  │││     ││││  0x00007f1777047b31:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@275 (line 135)
   0.02%  │││     ││││  0x00007f1777047b34:   nopl   0x0(%rax,%rax,1)
   0.05%  │││     ││││  0x00007f1777047b3c:   data16 data16 xchg %ax,%ax
   0.01%  │││     ││││  0x00007f1777047b40:   cmpb   $0x0,0x10(,%r11,8)
   0.09%  │││╭    ││││  0x00007f1777047b49:   jne    0x00007f1777047b8b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││    ││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          ││││    ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          ││││    ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          ││││    ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││││    ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          ││││    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%  ││││    ││││  0x00007f1777047b4f:   mov    $0x1,%r10d
          ││││╭   ││││  0x00007f1777047b55:   jmp    0x00007f1777047b78           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││││   ││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@7 (line 125)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │││││   ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │││││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
          │││││   ││││  0x00007f1777047b5a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││   ││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │││││   ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │││││   ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │││││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%  │││││  ↗││││  0x00007f1777047b60:   cmp    %r10d,%r8d
          │││││  │││││  0x00007f1777047b63:   jbe    0x00007f177704897d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@14 (line 125)
          │││││  │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          │││││  │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          │││││  │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │││││  │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          │││││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
          │││││  │││││  0x00007f1777047b69:   cmpb   $0x0,0x10(%r10,%r11,8)
   0.01%  │││││╭ │││││  0x00007f1777047b6f:   jne    0x00007f1777047bda           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          ││││││ │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.01%  ││││││ │││││  0x00007f1777047b75:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@24 (line 125)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          ││││││ │││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││││││ │││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          ││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.00%  ││││↘│ │││││  0x00007f1777047b78:   nopl   0x0(%rax,%rax,1)
   0.00%  ││││ │ │││││  0x00007f1777047b80:   cmp    %r10d,%r8d
          ││││ │╭│││││  0x00007f1777047b83:   jle    0x00007f1777047c0e
   0.00%  ││││ ││╰││││  0x00007f1777047b89:   jmp    0x00007f1777047b60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││ ││││                                                            ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          ││││ ││ ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@7 (line 677)
          ││││ ││ ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
          ││││ ││ ││││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││││ ││ ││││                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
          ││││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.03%  │││↘ ││ ││││  0x00007f1777047b8b:   mov    %rax,0xb0(%rsp)
   0.01%  │││  ││ ││││  0x00007f1777047b93:   mov    0x58(%rsp),%r9
   0.07%  │││  ││ ││││  0x00007f1777047b98:   mov    0x60(%rsp),%rdi
   0.02%  │││  ││ ││││  0x00007f1777047b9d:   rex.W push 0x68(%rsp)
   0.05%  │││  ││ ││││  0x00007f1777047ba2:   rex.W pop 0xa8(%rsp)
   0.48%  │││  ││ ││││  0x00007f1777047baa:   rex.W push 0x80(%rsp)
   0.09%  │││  ││ ││││  0x00007f1777047bb2:   rex.W pop 0xa0(%rsp)
   0.46%  │││  ││ ╰│││  0x00007f1777047bba:   jmp    0x00007f17770476c0
          │↘│  ││  │││  0x00007f1777047bbf:   movabs $0x800000960,%rdi            ;   {metadata({type array bool})}
          │ │  ││  ╰││  0x00007f1777047bc9:   jmp    0x00007f1777047b11
          ↘ │  ││   ││  0x00007f1777047bce:   mov    $0x0,%rsi
            │  ││   ╰│  0x00007f1777047bd5:   jmp    0x00007f1777047af5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │  ││    │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::getBits@4 (line 537)
            │  ││    │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::lambda$anyTrue$9@4 (line 677)
            │  ││    │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask$$Lambda$79/0x0000000800c86e48::apply@8
            │  ││    │                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
            │  ││    │                                                            ; - jdk.incubator.vector.Double256Vector$Double256Mask::anyTrue@23 (line 675)
            │  ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@266 (line 132)
   0.00%    │  ↘│    │  0x00007f1777047bda:   mov    %rax,0xb0(%rsp)
            │   │    │  0x00007f1777047be2:   mov    0x58(%rsp),%r9
            │   │    │  0x00007f1777047be7:   mov    0x60(%rsp),%rdi
   0.00%    │   │    │  0x00007f1777047bec:   rex.W push 0x68(%rsp)
   0.00%    │   │    │  0x00007f1777047bf1:   rex.W pop 0xa8(%rsp)
   0.02%    │   │    │  0x00007f1777047bf9:   rex.W push 0x80(%rsp)
   0.02%    │   │    │  0x00007f1777047c01:   rex.W pop 0xa0(%rsp)
   0.03%    │   │    ╰  0x00007f1777047c09:   jmp    0x00007f17770476c0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@171 (line 121)
   0.00%    ↘   ↘       0x00007f1777047c0e:   mov    %rax,0x30(%rsp)              ;*getstatic DOUBLE_VECTOR_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@281 (line 137)
                        0x00007f1777047c13:   mov    0x160(%rsp),%rsi
                        0x00007f1777047c1b:   mov    0x158(%rsp),%rdx
                        0x00007f1777047c23:   mov    $0x4,%ecx
                        0x00007f1777047c28:   mov    $0x0,%r8
                        0x00007f1777047c2f:   mov    0x150(%rsp),%r9
                        0x00007f1777047c37:   mov    0x140(%rsp),%rdi             ;*invokestatic broadcastCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.incubator.vector.DoubleVector::zero@28 (line 423)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized@284 (line 138)
....................................................................................................
  16.22%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.97%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 976 
  16.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 6, compile id 1072 
   7.81%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1033 
   5.70%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 991 
   5.59%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   2.41%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   1.48%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1033 
   1.01%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 991 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1111 
   0.43%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   0.43%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1110 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.05%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%               kernel  [unknown] 
   2.78%  <...other 692 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.97%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 976 
  16.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::vectorized, version 6, compile id 1072 
   9.30%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1033 
   8.44%       jvmci, level 4  jdk.incubator.vector.DoubleVector::lambda$compareTemplate$62, version 2, compile id 1044 
   6.80%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::broadcastCoerced, version 2, compile id 991 
   1.91%               kernel  [unknown] 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 2, compile id 1111 
   0.23%                       <unknown> 
   0.15%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MandelbrotVectorApiBenchmark::baseline, version 1, compile id 1110 
   0.05%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.03%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   1.01%  <...other 247 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.39%       jvmci, level 4
   1.91%               kernel
   0.87%            libjvm.so
   0.23%                     
   0.15%          c1, level 3
   0.13%          interpreter
   0.11%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.06%   libpthread-2.31.so
   0.03%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.02%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:24

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

Benchmark                                     (iterations)  (size)  Mode  Cnt    Score   Error  Units
MandelbrotVectorApiBenchmark.baseline                 1000     256  avgt    5   32.915 ± 0.006  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 1000     512  avgt    5  131.323 ± 0.035  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 2000     256  avgt    5   64.637 ± 0.002  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.baseline                 2000     512  avgt    5  258.023 ± 0.045  ms/op
MandelbrotVectorApiBenchmark.baseline:·asm            2000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               1000     256  avgt    5   56.162 ± 0.260  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               1000     512  avgt    5  418.732 ± 0.825  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          1000     512  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               2000     256  avgt    5  109.722 ± 1.107  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     256  avgt           NaN            ---
MandelbrotVectorApiBenchmark.vectorized               2000     512  avgt    5  809.654 ± 4.074  ms/op
MandelbrotVectorApiBenchmark.vectorized:·asm          2000     512  avgt           NaN            ---
